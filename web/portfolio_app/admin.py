from __future__ import absolute_import, print_function, unicode_literals

from django.contrib import admin

from .models import Project, MediaAsset, Tag, LatestWorkSection


# Register your models here.
admin.site.register(LatestWorkSection)
admin.site.register(Tag)
admin.site.register(MediaAsset)


class MediaAssetInline(admin.TabularInline):
    model = MediaAsset


class ProjectAdmin(admin.ModelAdmin):
    list_display = (
        'title',
    )
    list_filter = (
        'title',
    )
    inlines = (
        # TypeOfProjectInline,
        MediaAssetInline,
    )


admin.site.register(Project, ProjectAdmin)


