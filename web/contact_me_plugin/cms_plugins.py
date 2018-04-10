from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import ContactMe, GoogleMap, Message


@plugin_pool.register_plugin
class ContactMeComponentPlugin(CMSPluginBase):
    model = ContactMe
    render_template = 'contact_me_plugin/plugin/contact_me_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ContactMeComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        request = context['request']

        if request.GET.get('name') is not None:
            print(request.GET.get('name'))

        return context


@plugin_pool.register_plugin
class GoogleMapComponentPlugin(CMSPluginBase):
    model = GoogleMap
    render_template = 'contact_me_plugin/plugin/google_map_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(GoogleMapComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context