from django.shortcuts import render,redirect
from .models import *
from django.http import HttpResponse
import time,datetime
def mt5users(request):
    if request.method == 'GET':
        login_user = request.GET['login']
        print(login_user)
        data = Mt5Users.objects.get(login = login_user)
        data = data.toJSON()
        return HttpResponse(data, content_type="application/json")

def home(request):
    return render(request, 'login.html')

def page_changeuser(request):
    account = request.COOKIES.get("Login_Cookie")
    try:
        User = Mt5Users.objects.get(login=account)
    except:
        User = None
    print(account)
    if User is not None :
        return render(request, 'changeuser.html',{'User_detail':User})
    else:
        message_login="請重新登入"
        return render(request, 'login.html',{'message_login':message_login})

def page_historytrade(request):
    account = request.COOKIES.get("Login_Cookie")
    try:
        User = Mt5Users.objects.get(login=account)
    except:
        User = None
    print(account)
    if User is not None :
        return render(request, 'historytrade.html',{'User_detail':User})
    else:
        message_login="請重新登入"
        return render(request, 'login.html',{'message_login':message_login})

def page_todaytrade(request):
    account = request.COOKIES.get("Login_Cookie")
    try:
        User = Mt5Users.objects.get(login=account)
    except:
        User = None
    print(account)
    if User is not None :
        try:
            todaytrade = Mt5Positions.objects.filter(login=account)
        except:
            todaytrade = None
        now = datetime.datetime.now().date()
        stardate = time.mktime(now.timetuple())
        print(todaytrade)
        User_todaytrade=[]
        for h in todaytrade:   
            print(h)     
            if h.timestamp >=stardate and h.timestamp <stardate+86400:
                User_todaytrade.append(h)
        print(User_todaytrade)
        if User_todaytrade !=[] :
            return render(request, 'todaytrade.html',{'User_detail':User,'todaytrade_detail':User_todaytrade})
        else:
            return render(request, 'todaytrade.html',{'User_detail':User})
    else:
        message_login="請重新登入"
        return render(request, 'login.html',{'message_login':message_login})

def logout(request):
    rep = render(request, 'login.html')
    rep.delete_cookie('Login_Cookie')
    account = request.COOKIES.get("Login_Cookie")
    print(account)
    return rep

def login(request):
    try:
        User = Mt5Login.objects.get(login=request.POST['username_db'])        
    except:
        User = None   
    print(User.login)
    message_login = request.POST['username_db']
    #print(message_login)       
    if User is not None :         #若驗證成功，以 auth.login(request,user) 登入
        userpassword = request.POST['userpassword_db']
        userpassword_db=Mt5Login.objects.get(login=request.POST['username_db']).password
        #print(userpassword)
        #print(userpassword_db)
        if userpassword_db==userpassword:
            #message_login = request.COOKIES.get("Login_Cookie")
            rep = render(request, 'usermanage.html',{'message_login':message_login})
            rep.set_cookie("Login_Cookie",message_login,max_age=1800)
            return rep
        else:
            message_login = '密碼錯誤!'
            print(message_login)
            return render(request, 'login.html',{'message_login':message_login}) 
    else:
        message_login = '帳號不存在!'
        print(message_login)
        return render(request, 'login.html',{'message_login':message_login}) 


def historytrade(request):
    account = request.COOKIES.get("Login_Cookie")
    try:
        User = Mt5Users.objects.get(login=account)
    except:
        User = None
    print(account)
    if User is not None :
        try:
            historytrade = Mt5OrdersHistory.objects.filter(login=account)
        except:
            historytrade = None
        print(historytrade)
        stardate=time.strptime(request.POST['stardate_db'],'%Y-%m-%d')
        stardate=time.mktime(stardate)
        enddate=time.strptime(request.POST['enddate_db'],'%Y-%m-%d')
        enddate=time.mktime(enddate)
        User_historytrade=[]
        for h in historytrade:
            tradetime=time.strptime(str(h.timesetup),'%Y-%m-%d %H:%M:%S+00:00')
            tradetime=time.mktime(tradetime)            
            if tradetime >=stardate and tradetime <enddate+86400:
                User_historytrade.append(h)
        print(User_historytrade)
        if User_historytrade !=[] :
            return render(request, 'historytrade.html',{'User_detail':User,'historytrade_detail':User_historytrade})
        else:
            return render(request, 'historytrade.html',{'User_detail':User})
    else:
        message_login="請重新登入"
        return render(request, 'login.html',{'message_login':message_login})
