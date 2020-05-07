from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from rest_framework import routers
from djangocrud.api import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.goHome),
    url(r'^/', views.goHome, name='register'),
]