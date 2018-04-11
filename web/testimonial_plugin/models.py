from django.db import models
from cms.models.pluginmodel import CMSPlugin


# Create your models here.
class TestimonialComponent(CMSPlugin):
    objects = models.Manager()

    background_image = models.ImageField(upload_to='testimonial/img/', null=False, blank=False)

    def copy_relations(self, old_instance):
        for testimonial_item in old_instance.testimonialitem_set.all():
            testimonial_item_object = TestimonialItem()

            testimonial_item_object.name = testimonial_item.name
            testimonial_item_object.content = testimonial_item.content
            testimonial_item_object.testimonial_id = self

            testimonial_item_object.save()
            # self.overviewitem_set.add(overview_item)
        pass


class TestimonialItem(models.Model):
    objects = models.Manager()

    name = models.CharField(max_length=250, null=False, blank=False)
    content = models.CharField(max_length=500, null=False, blank=False)

    testimonial_id = models.ForeignKey(TestimonialComponent, on_delete=models.CASCADE)

    def __str__(self):
        return self.name
