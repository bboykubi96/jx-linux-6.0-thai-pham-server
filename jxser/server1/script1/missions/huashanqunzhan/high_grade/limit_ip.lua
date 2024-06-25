Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua")
tbNewSkillMap = {};
tbNewSkillMap.MapId_GioiHan		= {867};	-- A型地图ID
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
		if ( tbLimitHW[hwid] > 1) then
			NewWorld (53,1600,3200)
			Say("Gi韎 h筺 1 acc 1 PC")
			return
		end

		


	end
	tbMissionClass:JoinGame(PlayerIndex, tbMissionClass:GetGroupId(), SubWorldIdx2ID(SubWorld))
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
	local szName = GetName()


	tbLimitHW[tbInfoHW[szName]] = tbLimitHW[tbInfoHW[szName]] - 1
	
		if tbMissionClass:GetMissionState(SubWorldIdx2ID(SubWorld)) == 0 then
		tbMissionClass:LeaveGame() --会自动调用 OnLevel，但当没有mission的时候不会调用
	end
	OnLeaveWorldDefault(szParam)
end

