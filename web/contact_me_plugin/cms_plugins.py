from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import ContactMe, GoogleMap, Message, CallActionSection


@plugin_pool.register_plugin
class ContactMeComponentPlugin(CMSPluginBase):
    model = ContactMe
    render_template = 'contact_me_plugin/plugin/contact_me_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ContactMeComponentPlugin, self).render(context, instance, placeholder)

        request = context['request']

        if request.GET.get('name') is not None:
            message = Message(name=request.GET.get('name'), email=request.GET.get('email'),
                              message=request.GET.get('message'))
            message.save()

        return context


@plugin_pool.register_plugin
class GoogleMapComponentPlugin(CMSPluginBase):
    model = GoogleMap
    render_template = 'contact_me_plugin/plugin/google_map_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(GoogleMapComponentPlugin, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class CallActionComponentPlugin(CMSPluginBase):
    model = CallActionSection
    render_template = 'contact_me_plugin/plugin/call_action_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(CallActionComponentPlugin, self).render(context, instance, placeholder)

        return context
