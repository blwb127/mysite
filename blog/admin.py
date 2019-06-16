from django.contrib import admin
from .models import BlogType, Blog


# Register your models here.
# @admin.register(BlogType)
class BlogTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name')
    ordering = ('id',)

@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
    # list_display = ('id', 'title', 'blog_type', 'author', 'is_deleted', 'last_updated_time')
    # ordering = ('id',)
    list_display = ('id', 'title', 'blog_type', 'author', 'get_read_num', 'is_deleted', 'last_updated_time')


'''@admin.register(ReadNum)
class ReadNumAdmin(admin.ModelAdmin):
    list_display = ('read_num', 'blog')'''


admin.site.register(BlogType, BlogTypeAdmin)
