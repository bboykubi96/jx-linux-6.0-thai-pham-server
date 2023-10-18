Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua")
IncludeLib("TONG")
tbNewSkillMap = {};
tbNewSkillMap.MapId_GioiHan		= {380,379,378,355};	-- AÃÃÂµÃ˜ÃÂ¼ID
tbLimitIP = {}
tbInfoIP = {}
tbInfoHW = {}
tbLimitHW = {}


tbClass = {
nCount = 10,
tbTong = {},
}
function tbNewSkillMap:checkMapIP()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_GioiHan) do
		if(nSubWorldID == self.MapId_GioiHan[i]) then 
			return 1;
		end
	end
	return 0;	
end
function tbClass:Init()
	local nTongID = TONG_GetFirstTong()
	local szTong 
	while (nTongID > 0) do
		local szTong = TONG_GetName(nTongID)
		-- nTongID = TONG_GetNextTong(nTongID)
		if not self.tbTong[szTong] then
			self.tbTong[szTong] = self.nCount
		end
		self.nCount = self.nCount + 1
		nTongID = TONG_GetNextTong(nTongID)
	end	
end
tbClass:Init()
function tbClass:GetTongCamp(szTong)
	local nCamp = self.tbTong[szTong]
	if not nCamp then
		self.tbTong[szTong] = self.nCount
		nCamp = self.nCount
		self.nCount = self.nCount + 1
	end
	return nCamp
end

function OnNewWorld(szParam)
	local nMapTypeIP = tbNewSkillMap:checkMapIP();
	local szName = GetName()
	local hwid = LimitAccountPerIP:GetIP()
	tbInfoHW[szName] = hwid
	tbLimitHW[hwid] = tbLimitHW[hwid] or 0

	


	if ( nMapTypeIP == 1 ) then

		tbLimitHW[hwid] = tbLimitHW[hwid] + 1
		local nDate = tonumber(GetLocalDate("%H"));
		if nDate>=20 and nDate<=22 then
			if ( tbLimitHW[hwid] > 4) then
			NewWorld (53,1600,3200)
			SetFightState(0)
			Say("Giíi H¹n §Êu Tr­êng 4 acc 1 IP")
			end
		else
		if ( tbLimitHW[hwid] > 4) then
			NewWorld (53,1600,3200)
			SetFightState(0)
			Say("Giíi H¹n §Êu Tr­êng 4 acc 1 IP")
		end

		end


	end
	SetPKFlag(1)	-- chuyen pk chien dau
	ForbidChangePK(1);	-- khong duoc doi pk

	local nCamp = GetCamp();
	local szTong = GetTong()
	if not szTong or  szTong == "" then
		SetCreateTeam(0);
		SetCurCamp(4);
				-- Msg2Player("Tham gia chiÃ•n trÂ­Ãªng")
	else
		SetTmpCamp(tbClass:GetTongCamp(szTong))
		SetCreateTeam(0);
	--	Msg2Player("Tham gia chiÃ•n trÂ­Ãªng")
	end
	OnNewWorldDefault(szParam)
end
function OnLeaveWorld(szParam)
	local szName = GetName()


	tbLimitHW[tbInfoHW[szName]] = tbLimitHW[tbInfoHW[szName]] - 1
	
	OnLeaveWorldDefault(szParam)
end
