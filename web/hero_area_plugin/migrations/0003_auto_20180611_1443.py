# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-06-11 07:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hero_area_plugin', '0002_shortheroarea'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shortheroarea',
            name='background_image',
            field=models.ImageField(blank=True, default='', null=True, upload_to='hero_area/img/'),
        ),
    ]
