from django.urls import path
from . import views


urlpatterns = [
    path('form-submission/',views.form_submission, name='form_submission_views'),
]