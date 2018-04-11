from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import TestimonialComponent, TestimonialItem
from .admin import TestimonialItemInline


@plugin_pool.register_plugin
class TestimonialComponentPlugin(CMSPluginBase):
    model = TestimonialComponent
    inlines = [TestimonialItemInline]
    render_template = 'testimonial_plugin/plugin/testimonial_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(TestimonialComponentPlugin, self).render(context, instance, placeholder)

        return context
