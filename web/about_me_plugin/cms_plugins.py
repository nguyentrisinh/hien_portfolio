from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models import CMSPlugin

from .models import AboutMe


@plugin_pool.register_plugin
class AboutMeComponentPlugin(CMSPluginBase):
    model = CMSPlugin
    render_template = 'about_me_plugin/plugin/about_me_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(AboutMeComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        about_me = AboutMe.objects.all().order_by('created_at').first()
        context['about_me'] = None
        if about_me is not None:
            context['about_me'] = about_me

        return context
