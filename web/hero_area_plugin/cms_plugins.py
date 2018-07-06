from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import HeroArea, ShortHeroArea
from about_me_plugin.models import AboutMe


@plugin_pool.register_plugin
class HeroAreaComponentPlugin(CMSPluginBase):
    model = HeroArea
    render_template = 'hero_area_plugin/plugin/hero_area_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(HeroAreaComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        context['isHasVideoIntro'] = True
        if instance.youtube_introduction == '':
            context['isHasVideoIntro'] = False

        return context


@plugin_pool.register_plugin
class HeroAreaOneComponentPlugin(CMSPluginBase):
    model = HeroArea
    render_template = 'hero_area_plugin/plugin/hero-area-1-component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(HeroAreaOneComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        context['isHasVideoIntro'] = True
        if instance.youtube_introduction == '':
            context['isHasVideoIntro'] = False

        about_me = AboutMe.objects.all().order_by('created_at').first()
        context['about_me'] = None
        if about_me is not None:
            context['about_me'] = about_me

        return context


@plugin_pool.register_plugin
class ShortHeroAreaComponentPlugin(CMSPluginBase):
    model = ShortHeroArea
    render_template = 'hero_area_plugin/plugin/short_hero_area_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ShortHeroAreaComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context


@plugin_pool.register_plugin
class ShortHeroAreaOneComponentPlugin(CMSPluginBase):
    model = ShortHeroArea
    render_template = 'hero_area_plugin/plugin/short_hero_area_1_component.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ShortHeroAreaOneComponentPlugin, self).render(context, instance, placeholder)
        instance = context['instance']

        return context
