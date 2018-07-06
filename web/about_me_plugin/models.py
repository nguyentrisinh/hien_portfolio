from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from djangocms_text_ckeditor.fields import HTMLField
from django.utils.translation import ugettext_lazy as _
from cms.models.pluginmodel import CMSPlugin


SKILL_CHOICES = (
    (1, 'Android'),
    (2, 'IOS'),
    (3, 'React Native'),
    (4, 'Flutter'),
)


# Create your models here.
class AboutMe(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=250, blank=False, null=False)
    description = HTMLField(_('description'), blank=True, default='')

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title

    def order_by_percentage_skill_set(self):
        return self.skill_set.order_by('-percentage')


class Skill(models.Model):
    objects = models.Manager()

    name = models.CharField(max_length=100, null=False, blank=False)
    percentage = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])

    skill_type = models.SmallIntegerField(choices=SKILL_CHOICES, default=1)

    about_me_id = models.ForeignKey(AboutMe, on_delete=models.CASCADE)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.name


class Statistic(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=100, blank=False, null=False, default='')
    statistic = models.CharField(max_length=20, null=False, blank=False, default='')
    fa_icon = models.CharField(max_length=80, null=False, blank=False, default='')

    about_me_id = models.ForeignKey(AboutMe, on_delete=models.CASCADE)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)

    def __str__(self):
        return self.title


