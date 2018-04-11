from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import Project, Tag, MediaAsset, LatestWorkSection


@plugin_pool.register_plugin
class LastestWorkSectionComponentPlugin(CMSPluginBase):
    model = LatestWorkSection
    render_template = 'portfolio_app/plugin/latest_work.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(LastestWorkSectionComponentPlugin, self).render(context, instance, placeholder)

        # get 3 latest project
        project_list = Project.objects.all().order_by('-created_at')[:3]
        context['project_list'] = project_list

        return context


@plugin_pool.register_plugin
class CallActionPortfolioComponentPlugin(CMSPluginBase):
    model = CMSPlugin
    render_template = 'portfolio_app/plugin/call_action_portfolio.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(CallActionPortfolioComponentPlugin, self).render(context, instance, placeholder)

        return context
