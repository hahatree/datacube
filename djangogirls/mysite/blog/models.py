from django.db import models
from django.utils import timezone
#from django.contrib.auth.models import User

class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField(blank=True)
    photo = models.URLField(blank=True)
    location = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.title
    
    def __unicode__(self):
        return self.title

class form(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100, blank=True, default='')
    note = models.TextField(null=False)
    time = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.name

class user(models.Model):
    gender = (
        ('male','男'),
        ('female','女'),
    )
    username = models.CharField(max_length=100,unique=True)
    userpassword = models.CharField(max_length=256)
    lastname = models.CharField(max_length=100)
    firstname = models.CharField(max_length=100)
    useremail = models.EmailField(blank=True, default='')
    sex = models.CharField(max_length=32,choices=gender,default='男')
    time = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.username