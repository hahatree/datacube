# """mysite URL Configuration

# The `urlpatterns` list routes URLs to views. For more information please see:
#     https://docs.djangoproject.com/en/2.1/topics/http/urls/
# Examples:
# Function views
#     1. Add an import:  from my_app import views
#     2. Add a URL to urlpatterns:  path('', views.home, name='home')
# Class-based views
#     1. Add an import:  from other_app.views import Home
#     2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
# Including another URLconf
#     1. Import the include() function: from django.urls import include, path
#     2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
# """
from django.contrib import admin
from django.urls import path
from django.conf.urls import include, url
#from blog.views import hello_world,home,post_detail,post
from blog.views import addmessage,home,adduser,showall
from blog.views import userpage,loginpage,messagepage,usermanagepage,homepage

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^$', home),
    #url(r'^post/(?P<pk>\d+)/$', post_detail, name='post_detail'),
    #url(r'^post/$', post),
    path('addmessage/', addmessage),
    path('', home),
    path('adduser/', adduser),
    path('loginpage/', loginpage),
    path('userpage/', userpage),
    path('messagepage/', messagepage),
    path('usermanagepage/', usermanagepage),
    path('showall/',showall),
    path('homepage/',homepage),
]
