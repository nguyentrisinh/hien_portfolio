from django.contrib import admin

from .models import ContactMe, GoogleMap, Message


# Register your models here.
admin.site.register(ContactMe)
admin.site.register(GoogleMap)
admin.site.register(Message)
