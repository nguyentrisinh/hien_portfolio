from django.conf.urls import url

from .views import ProjectIndexView

urlpatterns = [
    url(r'^$', ProjectIndexView.as_view(), name='project index')
]