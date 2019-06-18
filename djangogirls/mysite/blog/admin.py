from django.contrib import admin
from .models import Post,form,user
# Register your models here.
# Post為資料庫名稱


admin.site.register(Post)
admin.site.register(form)
admin.site.register(user)