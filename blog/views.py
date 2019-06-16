from django.shortcuts import get_object_or_404, render
from .models import Blog, BlogType
from django.core.paginator import Paginator
from django.conf import settings
from django.db.models import Count
# from django.contrib.contenttypes.models import ContentType
from read_statistics.utils import read_statisstics_once_read
from datetime import datetime
# from comment.models import Comment
# from comment.forms import CommentForm


def get_blog_list_comon_data(request, blogs_all_list):
    # 每10篇进行分页
    paginator = Paginator(blogs_all_list, settings.EACH_PAGE_BLOGS_NUMBER)
    # 获取url页码参数(GET请求)
    page_num = request.GET.get('page', 1)
    page_of_blogs = paginator.get_page(page_num)
    current_page_num = page_of_blogs.number     # 获取当前页码
    # 获取当前页码前后各2页的页码范围
    page_range = list(range(max(current_page_num - 2, 1), current_page_num)) + \
                 list(range(current_page_num, min(current_page_num + 2, paginator.num_pages) + 1))
    # 加上省略页码标记
    if page_range[0] - 1 >= 2:
        page_range.insert(0, '...')
    if paginator.num_pages - page_range[-1] >= 2:
        page_range.append('...')
    # 加上首页和尾页
    if page_range[0] != 1:
        page_range.insert(0, 1)
    if page_range[-1] != paginator.num_pages:
        page_range.append(paginator.num_pages)

    # 获取博客分类的对应博客数量
    # 第二种方法 annotate, 需要 from django.db.models import Count
    blog_types_list = BlogType.objects.annotate(blog_count=Count('blog'))    # blog是Blog模型的小写

    # 第一种方法通过给模型增加一个属性来实现数量的统计
    '''blog_types = BlogType.objects.all()
    blog_types_list = []
    for blog_type in blog_types:
        # 给BlogType增加一个数量的属性 
        blog_type.blog_count = Blog.objects.filter(blog_type=blog_type).count()
        blog_types_list.append(blog_type)
    '''

    # 获取日期归档对应的博客数量
    '''blog_dates = Blog.objects.dates('create_time', 'month', order='DESC') \
                            .annotate(blog_count=Count('create_time'))
    blog_dates_dict = {}
    for blog_date in blog_dates[::2]:
        pass
    '''

    blog_dates = Blog.objects.dates('create_time', 'month', order='DESC')
    blog_dates_dict = {}
    for blog_date in blog_dates:
        blog_count = Blog.objects.filter(create_time__year=blog_date.year, \
                                         create_time__month=blog_date.month).count()
        blog_dates_dict[blog_date] = blog_count

    context = {}
    context['blogs'] = page_of_blogs.object_list
    context['page_of_blogs'] = page_of_blogs
    context['page_range'] = page_range
    context['blog_types'] = blog_types_list
    context['blog_dates'] = blog_dates_dict

    return context


def blog_list(request):
    blogs_all_list = Blog.objects.all()
    context = get_blog_list_comon_data(request, blogs_all_list)
    return render(request, 'blog/blog_list.html', context)


def blogs_with_type(request, blog_type_pk):
    blog_type = get_object_or_404(BlogType, pk=blog_type_pk)
    blogs_all_list = Blog.objects.filter(blog_type=blog_type)   
    context = get_blog_list_comon_data(request, blogs_all_list)
    context['blog_type'] = blog_type
    return render(request, 'blog/blogs_with_type.html', context)


def blogs_with_date(request, year, month):
    blogs_all_list = Blog.objects.filter(create_time__year=year, create_time__month=month)
    context = get_blog_list_comon_data(request, blogs_all_list)
    context['blogs_with_date'] = '%s年%s月' % (year, month)
    return render(request, 'blog/blogs_with_date.html', context)


def blog_detail(request, blog_pk):
    blog = get_object_or_404(Blog, pk=blog_pk)
    # 第三种方法，使用django自带的ConteentType
    read_cookie_key = read_statisstics_once_read(request, blog)
    # blog_content_type = ContentType.objects.get_for_model(blog)
    # comments = Comment.objects.filter(content_type=blog_content_type, object_id=blog.pk, parent=None)

    '''# if not request.COOKIES.get('blog_%s_readed' % blog_pk):
        # blog.readed_num += 1      第一种统计方法，直接在Blog模型加一个read_num字段
        # blog.save()

        # 第二种方法，把read_num单独拿出来作为Blog的外键
        if ReadNum.objects.filter(blog=blog).count():
            # 存在记录
            readnum = ReadNum.objects.get(blog=blog)
        else:
            # 不存在对应的记录
            readnum = ReadNum(blog=blog)
        # 计数加1
        readnum.read_num += 1
        readnum.save()'''

    context = {}
    context['privious_blog'] = Blog.objects.filter(create_time__gt=blog.create_time).last()
    context['next_blog'] = Blog.objects.filter(create_time__lt=blog.create_time).first()    
    context['blog'] = blog
    # context['comments'] = comments.order_by('-comment_time')
    # context['comment_count'] = Comment.objects.filter(content_type=blog_content_type, object_id=blog.pk).count()
    # data = {}
    # data['content_type'] = blog_content_type.model
    # data['object_id'] = blog_pk
    # context['comment_form'] = CommentForm(initial={'content_type': blog_content_type.model, 'object_id': blog_pk, 'reply_comment_id': 0})
    # context['user'] = request.user
    response = render(request, 'blog/blog_detail.html', context)     # 响应
    response.set_cookie(read_cookie_key, 'true', max_age=60, expires=datetime)      # 阅读cookie标记

    return response
