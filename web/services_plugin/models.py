from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class ServicesComponent(CMSPlugin):
    objects = models.Manager()

    def copy_relations(self, old_instance):
        for service_item in old_instance.serviceitem_set.all():
            service_item_object = ServiceItem()

            service_item_object.title = service_item.title
            service_item_object.icon_class_name = service_item.icon_class_name
            service_item_object.content = service_item.content
            service_item_object.services_component_id = self

            service_item_object.save()
            # self.overviewitem_set.add(overview_item)
        pass


class ServiceItem(models.Model):
    objects = models.Manager()

    title = models.CharField(max_length=100, null=False, blank=False)
    content = models.CharField(max_length=500, null=False, blank=False)
    icon_class_name = models.CharField(max_length=250, null=False, blank=False)

    services_component_id = models.ForeignKey(ServicesComponent, on_delete=models.CASCADE)

    def __str__(self):
        return self.title
