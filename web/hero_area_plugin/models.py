from django.db import models
from cms.models.pluginmodel import CMSPlugin
from djangocms_text_ckeditor.fields import HTMLField
from django.utils.translation import get_language, ugettext_lazy as _


# Create your models here.
class HeroArea(CMSPlugin):
    objects = models.Manager()

    intro_title = models.CharField(max_length=250, null=False, blank=False)
    title = models.CharField(max_length=250, null=False, blank=False)
    introduction = HTMLField(_('introduction'), null=True, blank=True, default='')
    background_image = models.ImageField(upload_to='hero_area/img/', null=False)
    youtube_introduction = models.CharField(max_length=500, null=True, blank=True, default='')

    def __str__(self):
        return self.title


class ShortHeroArea(CMSPlugin):
    objects = models.Manager()

    page_title = models.CharField(max_length=100, blank=False, null=False)
    page_message = models.CharField(max_length=150, blank=False, null=False)
    background_image = models.ImageField(upload_to='hero_area/img/', null=True, blank=True, default='')

    def __str__(self):
        return self.page_title