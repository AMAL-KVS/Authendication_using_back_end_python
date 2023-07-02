from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
# Create your views here.

@api_view(['POST'])
def form_submission(request):
    print("call camedddddddddddddddd")
    data = request.data
    return Response({'MESSAGE':'Form Submitted successfully'})