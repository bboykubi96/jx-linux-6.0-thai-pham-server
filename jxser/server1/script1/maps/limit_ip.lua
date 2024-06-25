Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua")
tbNewSkillMap = {};
tbNewSkillMap.MapId_GioiHan		= {380,379,378,355};	-- AÐÍµØÍ¼ID
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

