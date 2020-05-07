from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from rest_framework.response import Response
from django.shortcuts import render
from django.shortcuts import redirect
from django.http import JsonResponse
from djangocrud.api.models import Ue, Seance, Cours
from collections import OrderedDict 

def goHome(request):
    b = Ue.objects.all()
    tex = myDict()
    cpt = 0
    for i in Ue.objects.all():
        idue = 'idue'+ str(cpt)
        nom = 'nom'+ str(cpt)
        quad = 'quadri' + str(cpt)
        nbcred = 'nbcredit' + str(cpt)
        tex.add(idue, i.idue)
        tex.add(nom, i.nom)
        tex.add(quad, i.quadri)
        tex.add(nbcred, i.nbcredit)

      #  tex.update({'idue' : i.idue, 'nom' : i.nom, 'quadri' : i.quadri})
        cpt += 1

    dict1 = myDict()
    

    return JsonResponse(tex)
#    return redirect('http://localhost:4200')

class myDict(dict):

    def __init__(self):
        self = dict()

    def add(self, key, value):
        self[key] = value