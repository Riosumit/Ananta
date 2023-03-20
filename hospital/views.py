from django.shortcuts import render, redirect
from django.core.files.storage import FileSystemStorage
import mysql.connector

# Create your views here.

def home(request):
    try:
        loggedin = request.session['loggedin_hospital']
    except:
        loggedin = False
    if not loggedin:
        return redirect('h_login')
    mydb = mysql.connector.connect(host="localhost",user="root",password="",charset='utf8',database="Ananta")
    cursor=mydb.cursor()
    cursor.execute('SELECT * FROM hospital WHERE id = %s', (request.session['loggedin_hospital_id'],))
    account = cursor.fetchone()
    cursor.execute('SELECT * FROM appointment WHERE id = %s', (request.session['loggedin_hospital_id'],))
    appointment = cursor.fetchall()
    param = {'name' : account[1], 'about': account[2], 'appointment':appointment}
    return render(request, 'hospital_home.html', param)

def login(request):
    try:
        loggedin = request.session['loggedin_hospital']
    except:
        loggedin = False
    if loggedin:
        return redirect('h_home')
    else:
        msg=''
        id = request.POST.get('id','')
        password = request.POST.get('password','')
        if(id != '' and password != ''):
            mydb = mysql.connector.connect(host="localhost",user="root",password="",charset='utf8',database="Ananta")
            cursor=mydb.cursor()
            cursor.execute('SELECT * FROM hospital WHERE id = %s and password = %s', (id, password,))
            account = cursor.fetchone()
            if account:
                request.session['loggedin_hospital'] = True
                request.session['loggedin_hospital_name'] = account[1]
                request.session['loggedin_hospital_id'] = account[0]
                return redirect('h_home')
            else:
                msg = "Invalid Hospital ID or Password"
        param = {'msg':msg}
        return render(request, 'hospital_login.html', param)

def logout(request):
    try:
        loggedin = request.session['loggedin_hospital']
    except:
        loggedin = False
    if loggedin:
        request.session['loggedin_hospital'] = False
    return redirect('home')

def upload_report(request):
    msg = ''
    try:
        loggedin = request.session['loggedin_hospital']
    except:
        loggedin = False
    if not loggedin:
        return redirect('login')
    if request.method == "POST":
        aadhar = request.POST.get('aadhar','')
        about = request.POST.get('about','')
        date = request.POST.get('date','')
        report = request.FILES['report']
        if aadhar != '':
            report_name=str(request.session['document_no'])+"_medreport."+(report.name).split('.')[-1]
            request.session['document_no'] = request.session['document_no'] + 1
            fs = FileSystemStorage()
            fs.save(report_name,report)
            mydb = mysql.connector.connect(host="localhost",user="root",password="",charset='utf8',database="Ananta")
            cursor=mydb.cursor()
            cursor.execute('INSERT INTO report VALUES (%s, %s, %s, %s)', (aadhar, about,date, report_name))
            msg = 'Added Successfully !!!'
    param = {'msg':msg}
    return render(request, 'upload_report.html', param)