Include("\\script\\activitysys\\config\\1037\\head.lua")
Include("\\script\\activitysys\\config\\1037\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
pActivity.tbConfig = tbConfig
pActivity:InitTaskGroup()
G_ACTIVITY:AddActivity(pActivity)
