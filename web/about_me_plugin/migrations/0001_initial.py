# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-09 07:38
from __future__ import unicode_literals

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion
import djangocms_text_ckeditor.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AboutMe',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=250)),
                ('description', djangocms_text_ckeditor.fields.HTMLField(blank=True, default='', verbose_name='description')),
            ],
        ),
        migrations.CreateModel(
            name='Skill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('percentage', models.IntegerField(validators=[django.core.validators.MinValueValidator(0), django.core.validators.MaxValueValidator(100)])),
                ('about_me_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='about_me_plugin.AboutMe')),
            ],
        ),
        migrations.CreateModel(
            name='Statistic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=100)),
                ('statistic', models.IntegerField(default=0)),
                ('about_me_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='about_me_plugin.AboutMe')),
            ],
        ),
    ]
