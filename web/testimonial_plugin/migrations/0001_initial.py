# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-11 02:46
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
            name='TestimonialCompnent',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='testimonial_plugin_testimonialcompnent', serialize=False, to='cms.CMSPlugin')),
                ('background_image', models.ImageField(upload_to='testimonial/img/')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.CreateModel(
            name='TestimonialItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
                ('content', models.CharField(max_length=500)),
                ('testimonial_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='testimonial_plugin.TestimonialCompnent')),
            ],
        ),
    ]
