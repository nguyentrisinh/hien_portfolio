from django.contrib import admin

from .models import AboutMe, Skill, Statistic


# Register your models here.
class SkillInline(admin.TabularInline):
    model = Skill


class StatisticInline(admin.TabularInline):
    model = Statistic


class AboutMeAdmin(admin.ModelAdmin):
    inlines = [
        SkillInline,
        StatisticInline
    ]


admin.site.register(AboutMe, AboutMeAdmin)
admin.site.register(Statistic)
admin.site.register(Skill)
