from django.contrib import admin

from .models import ServiceItem, ServicesComponent


# Register your models here.
class ServiceItemInline(admin.TabularInline):
    model = ServiceItem


class ServiceComponentAdmin(admin.ModelAdmin):
    inlines = [
        ServiceItemInline
    ]


admin.site.register(ServicesComponent, ServiceComponentAdmin)
admin.site.register(ServiceItem)