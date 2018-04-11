from django.contrib import admin

from .models import TestimonialItem, TestimonialComponent


# Register your models here.
class TestimonialItemInline(admin.StackedInline):
    model = TestimonialItem


class TestimonialComponentAdmin(admin.ModelAdmin):
    inlines = [
        TestimonialItemInline
    ]


admin.site.register(TestimonialComponent, TestimonialComponentAdmin)
admin.site.register(TestimonialItem)
