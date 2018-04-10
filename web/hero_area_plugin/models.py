from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class HeroArea(CMSPlugin):
    objects = models.Manager()

    intro_title = models.CharField(max_length=250, null=False, blank=False)
    title = models.CharField(max_length=250, null=False, blank=False)
    background_image = models.ImageField(upload_to='hero_area/img/', null=False)
    youtube_introduction = models.CharField(max_length=500, null=True, blank=True, default='')

    def __str__(self):
        return self.title
