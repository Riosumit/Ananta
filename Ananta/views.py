from email import message
from django.shortcuts import render, redirect, HttpResponse
from django.core.mail import send_mail
import random
import mysql.connector

def home(request):
    return render(request,'home.html')