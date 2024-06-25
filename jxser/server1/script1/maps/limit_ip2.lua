Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
tbNewSkillMap = {};
tbNewSkillMap.MapId_GioiHan		= {959,337,338,339,333};	-- AÐÍµØÍ¼ID
tbLimitIP = {}
tbInfoIP = {}
tbInfoHW = {}
tbLimitHW = {}

function tbNewSkillMap:checkMapIP()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_GioiHan) do
		if(nSubWorldID == self.MapId_GioiHan[i]) then 
			return 1;
		end
	end
	return 0;	
end



function OnNewWorld(szParam)
	local nMapTypeIP = tbNewSkillMap:checkMapIP();
	local szName = GetName()
	local str4 = split(GetInfo(),"-")[4]
	local str5 = split(GetInfo(),"-")[5]
	local str6 = split(GetInfo(),"-")[6]
	local str7 = split(GetInfo(),"-")[7]
	local hwid = LimitAccountPerIP:GetIP()
	Msg2Player(hwid)
	--if hwid~="171.247.165.21" and hwid~="113.22.213.200" and hwid~="27.3.32.161" and hwid~="42.119.228.73" and hwid~="42.113.185.214" and hwid~="42.112.227.41" then
	tbInfoHW[szName] = hwid
	tbLimitHW[hwid] = tbLimitHW[hwid] or 0

	


	if ( nMapTypeIP == 1 ) then

		tbLimitHW[hwid] = tbLimitHW[hwid] + 1
		if ( tbLimitHW[hwid] > 8) then
			NewWorld (53,1600,3200)
			SetFightState(0)
			Say("Giíi h¹n 8 acc 1 PC")
		end

		

	end
	nSubWorldID = SubWorldIdx2ID()		
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
	local szName = GetName()

local hwid = LimitAccountPerIP:GetIP()
	tbLimitHW[tbInfoHW[szName]] = tbLimitHW[tbInfoHW[szName]] - 1
	OnLeaveWorldDefault(szParam)
end

