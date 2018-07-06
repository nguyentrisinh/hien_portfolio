from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class ContactMe(CMSPlugin):
    objects = models.Manager()

    phone = models.CharField(max_length=100, blank=False, null=False)
    address = models.CharField(max_length=250, blank=False, null=False)
    email = models.EmailField(max_length=150, blank=False, null=False)

    background_image = models.ImageField(upload_to='contact_me/img/', null=True, blank=True, default='')

    def __str__(self):
        return self.email


class Message(models.Model):
    objects = models.Manager()

    name = models.CharField(max_length=150, null=False, blank=False)
    email = models.CharField(max_length=250, null=False, blank=False)
    message = models.TextField()

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.name


class GoogleMap(CMSPlugin):
    objects = models.Manager()

    address = models.CharField(max_length=250, null=False, blank=False)

    def __str__(self):
        return self.address


class CallActionSection(CMSPlugin):
    objects = models.Manager()

    title = models.CharField(max_length=150, null=False, blank=False)
    message = models.CharField(max_length=500, null=False, blank=False)
    image = models.ImageField(upload_to='contact_me/img/', null=False, blank=False)
    background_image = models.ImageField(upload_to='contact_me/img/', null=True, blank=True, default='')

    def __str__(self):
        return self.title
