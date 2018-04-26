# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-26 03:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0004_latestworksection'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='android_demo_url',
            field=models.URLField(blank=True, default='', max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='project',
            name='ios_demo_url',
            field=models.URLField(blank=True, default='', max_length=500, null=True),
        ),
    ]