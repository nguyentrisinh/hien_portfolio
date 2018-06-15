from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import ServicesComponent, ServiceItem
from .admin import ServiceItemInline


@plugin_pool.register_plugin
class ServicesComponentPlugin(CMSPluginBase):
    model = ServicesComponent
    inlines = [ServiceItemInline]
    render_template = 'services_plugin/plugin/homepage_services_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ServicesComponentPlugin, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class ServicesListComponentPlugin(CMSPluginBase):
    model = CMSPlugin
    render_template = 'services_plugin/plugin/services_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ServicesListComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        service_component = ServicesComponent.objects.all().first()

        context['instance'] = service_component

        return context
