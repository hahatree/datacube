from django.shortcuts import render,redirect
from datetime import datetime
from django.http import HttpResponse
from .models import Post,form,user
from django.contrib.auth import authenticate
from django.contrib import auth
# from django.contrib.auth.models import User


def hello_world(request):
    return render(request, 'hello_world.html', {
        'current_time': str(datetime.now()),
    })

def home(request):
    return render(request, 'index.html')
def homepage(request):
    return render(request, 'index.html')
# def post_detail(request, pk):
#     post = Post.objects.get(pk=pk)
#     print(request,pk)
#     # return render(request, 'post.html', {'post': post})

def loginpage(request):
    return render(request, 'login.html')

def userpage(request):
    return render(request, 'adduser.html')   

def messagepage(request):
    return render(request, 'addmessage.html')
    
def addmessage(request):
    name=request.POST['name']
    email=request.POST['email']
    note=request.POST['note']
    #time = datetime.now()
    message =form.objects.create(name=name,email=email,note=note)
    message .save()
    return render(request, 'messagepage.html')

def adduser(request):
    try:
        User = user.objects.get(username=request.POST['username'])  #以 user 取得名稱為「test」的資料
    except:
        User = None   #若「test」不存在則設定為 None
    if User != None:
        message =str(User) + '帳號已經建立!'  
        print(message)
        return HttpResponse(message)
    else:  #建立 test 帳號
        username= request.POST['username']
        userpassword = request.POST['userpassword']
        userlastname = request.POST['userlastname']
        userfirstname = request.POST['userfirstname']
        email = request.POST['email']
        gender = request.POST['gender']
        newuser =user.objects.create(username=username,userpassword=userpassword,lastname=userlastname,firstname=userfirstname,useremail=email,sex=gender)
        newuser.save()    #將資料寫入資料庫
        return render(request, 'index.html')
        #return redirect('/home.html')   #若成功建立，重新導向至 admin 管理介面，方便觀察建立完成的資料


def usermanagepage(request):
    try:
        User = user.objects.get(username=request.POST['username'])  
    except:
        User = None   
    userpassword = request.POST['userpassword']
    userpassword_db=user.objects.get(username=request.POST['username']).userpassword
    print(User)
    print(userpassword)
    print(userpassword_db)
    if User is not None :         #若驗證成功，以 auth.login(request,user) 登入
        if userpassword_db==userpassword:
            message = User
            return render(request, 'usermanage.html',{'message':message})  
        else:
            message = '密碼錯誤!'
            print(message)
            return render(request, 'login.html',{'message':message}) 
    else:
        message = '登入失敗!'
        print(message)
        return render(request, 'login.html',{'message':message}) 

def showall(request):
    allInfo = form.objects.all()
    return render(request,'messagepage.html',{'allInfo':allInfo})
 
