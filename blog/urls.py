from django.urls import path
from blog import views as blog_views


urlpatterns = [
    # localhost:8000/article/1
    path('<int:blog_pk>', blog_views.blog_detail, name='blog_detail'),
    # localhost:8000/article/
    path('', blog_views.blog_list, name='blog_list'),
    path('type/<int:blog_type_pk>', blog_views.blogs_with_type, name='blogs_with_type'),
    path('date/<int:year>/<int:month>', blog_views.blogs_with_date, name='blogs_with_date'),
]
