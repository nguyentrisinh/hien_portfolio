# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-10 09:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contact_me_plugin', '0002_callactionsection'),
    ]

    operations = [
        migrations.AddField(
            model_name='callactionsection',
            name='image_background',
            field=models.ImageField(blank=True, default='', null=True, upload_to='contact_me/img/'),
        ),
    ]
