from django.shortcuts import render
import json
from django.views import generic
from django.shortcuts import get_object_or_404, render

# get youtube video id
from urllib.parse import urlparse, parse_qs

from .models import Project, Tag, MediaAsset


# Create your views here.
class ProjectIndexView(generic.ListView):
    model = Project
    template_name = 'portfolio_app/index.html'

    def get_queryset(self):
        qs = super(ProjectIndexView, self).get_queryset()
        return qs

    def get_paginate_by(self, queryset):
        return 1000

    def get_context_data(self, **kwargs):
        context = super(ProjectIndexView, self).get_context_data(**kwargs)
        # object_list = context['object_list']

        # Remove all unpublished project
        object_list = Project.objects.filter(is_published=True, is_list_display=True)
        context['object_list'] = object_list

        # get list of project slug for init popup image
        slug_list = []
        for project in object_list.all():
            slug_list.append(project.slug)

        context['slug_list'] = slug_list
        # end of getting list project slug for init popup image

        # get all Tags
        tags = Tag.objects.all()
        context['tags'] = tags

        return context


class ProjectDetailView(generic.DetailView):
    model = Project
    template_name = 'portfolio_app/project_detail.html'
    slug_field = 'slug'

    def get_context_data(self, **kwargs):
        context = super(ProjectDetailView, self).get_context_data(**kwargs)
        object = context['object']

        # Begin get next and previous project
        # list project id to not make previous and next same project
        project_exclude_id = [object.id]
        # Get the next project
        next_project = Project.objects.filter(updated_at__gte=object.updated_at, is_published=True) \
            .order_by('updated_at').exclude(id__in=project_exclude_id)

        if next_project.exists():
            next_project = next_project.first()
            project_exclude_id.append(next_project.id)
        else:
            next_project = None

        context['next_project'] = next_project
        # end get next project

        # Get previous project
        previous_project = Project.objects.filter(updated_at__lte=object.updated_at, is_published=True) \
            .order_by('-updated_at').exclude(id__in=project_exclude_id)

        if previous_project.exists():
            previous_project = previous_project.first()
        else:
            previous_project = None

        # add to context
        context['previous_project'] = previous_project
        context['next_project'] = next_project

        # End get next and previous project
        return context

