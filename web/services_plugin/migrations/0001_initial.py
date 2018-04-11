# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-11 04:10
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('cms', '0018_pagenode'),
    ]

    operations = [
        migrations.CreateModel(
            name='ServiceItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('content', models.CharField(max_length=500)),
                ('icon_class_name', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='ServicesComponent',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='services_plugin_servicescomponent', serialize=False, to='cms.CMSPlugin')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.AddField(
            model_name='serviceitem',
            name='services_component_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='services_plugin.ServicesComponent'),
        ),
    ]
