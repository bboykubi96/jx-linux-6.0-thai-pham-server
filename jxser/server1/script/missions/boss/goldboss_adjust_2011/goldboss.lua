----------------***Heart*Doldly***----------------------
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\misc\\eventsys\\type\\npcdeath.lua")
Include("\\script\\lib\\awardtemplet.lua")
----------------------------------------------------------------
local tbDropItem = {
	[1] = {
		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=100},
		{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=100},
		{szName="Cµn Kh«n",tbProp={6,1,2219,1,0,0},nCount=1},
		{szName="Bi Kip 150",tbProp={6,1,4814,1,0,0},nCount=1},
	},
	[2] = {
		{szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0}, nCount = 5,nRate=0.5},
		{szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0}, nCount = 4,nRate=1.5},
		{szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0}, nCount = 3,nRate=2.5},
		{szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0}, nCount = 2,nRate=3.5},
		{szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0}, nCount = 1,nRate=4.5},
	},
	[3] = {--100%/10 mon trang Bi
		{szName="V« Danh",tbProp={0,4120},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4125},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4130},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4121},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4126},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4131},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4122},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4127},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4132},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4123},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4128},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4133},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4124},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4129},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V« Danh",tbProp={0,4134},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
	},
}

local tbNpcInfo = {
	[1] = {1873,"Tr­¬ng Tuyªn",},		
	[2] = {1874,"Kim ThÝ L­îng",},		
	[3] = {1875,"Mé Dung Toµn",},
	[4] = {1959,"Hå Ngäc Hµ",},		
	[5] = {1960,"CÆc Bö",},		
	[6] = {1958,"Admin §Ñp Trai",},
       [7] = {1395,"TiÓu Xu©n Ng­u",},
       [8] = {1396,"§¹i Xu©n Ng­u",},
       [9] = {1397,"Ng­u Ma V­¬ng",},	
}

function checkNpc(nNpcIndex)
	local nNpcId = GetNpcSettingIdx(nNpcIndex)
	local szName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szName = NpcName2Replace(szName)
	end
	
	for i=1,getn(%tbNpcInfo) do	
		local szNpcName = %tbNpcInfo[i][2]
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end 
		if (szNpcName == szName) and (nNpcId == %tbNpcInfo[i][1]) then
			return 1
		end
	end
	return 0
end

function addNews(nNpcIndex, nPlayerIndex)
	local szName = GetName(nPlayerIndex)
	if NpcName2Replace then
		szName = NpcName2Replace(szName)
	end
	
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local szNews = format("§¹i hiÖp <color=yellow>%s<color> t¹i <color=yellow>%s<color> ®· tiªu diÖt thµnh c«ng <color=yellow>%s<color>!", szName, SubWorldName(SubWorld),szNpcName)
	AddGlobalNews(szNews)
end
--------------------------------------Ph©n Th­ëng Tiªu DiÖt Boss------------------------------------------------------------------------------------------------------------------------------------------
function goldbossdeath(nNpcIndex, nPlayerIndex)
	if checkNpc(nNpcIndex) ~= 1 then
		return 
	end

	addNews(nNpcIndex, nPlayerIndex)

	local tbItemAward = {
		[1873] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1874] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1875] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1959] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1960] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1958] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1395] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1396] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1397] = {
			{szName="Thiªn Linh §¬n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
	}
	--PhÇn Th­ëng Tæ §éi Tiªu DiÖt Boss Vµ Rít Ra Tõ Boss §¹i
	local nKind = GetNpcParam(nNpcIndex, 1)
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	--tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbItemAward[nKind],format("killed_%s",szNpcName))
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbDropItem,format("killed_%s",szNpcName))
	
	local tbAwardExp = {
		["Killer"] = {nExp_tl = 2e8, szName = "§iÓm kinh nghiÖm"},
		["Around"] = {nExp_tl = 1e8, szName = "§iÓm kinh nghiÖm"},
	}
	--PhÇn Th­ëng Kinh NghiÖm Cho Ng­êi Tiªu DiÖt Boss Vµ Tæ §éi--------------------------------------------------------------------------------------------
	nOldPlayer = PlayerIndex	
	local nTeamSize = GetTeamSize();	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			PlayerIndex = GetTeamMember(i)
			tbAwardTemplet:Give(tbAwardExp["Killer"], 1, {"DCPhanThuongBoss", "PhÇn th­ëng exp cho tæ ®éi tiªu diÖt "..szNpcName})
		end
	else		
		tbAwardTemplet:Give(tbAwardExp["Killer"], 1, {"DCPhanThuongBoss", "PhÇn th­ëng exp cho ng­êi tiªu diÖt "..szNpcName})
	end
	--PhÇn Th­ëng Cho Ng­êi §øng GÇn Boss-----------------------------------------------------------------------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);	
	for i=1,nCount do	
		PlayerIndex = tbRoundPlayer[i]
		tbAwardTemplet:Give(tbAwardExp["Around"], 1, {"DCPhanThuongBoss", "PhÇn th­ëng exp cho ng­êi ®øng gÇn "..szNpcName})
	end
	PlayerIndex = nOldPlayer
end

function getPlayerTeam()
	local tbTeam = {}
	local nTeamSize = GetTeamSize()
	if nTeamSize == 0 then
		tinsert(tbTeam, PlayerIndex)
	else
		for i = 1, nTeamSize do
			local nPlayerIndex = GetTeamMember(i)
			tinsert(tbTeam, nPlayerIndex)
		end
	end
	return tbTeam
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function addTianzhibaoxiang(nCount, nNpcIndex, tbTeam)
	local tbTianzhibaoxiang = 
	{
		szName = "R­¬ng Thiªn Chi", 
		nLevel = 95,
		nNpcId = 1876,
		nIsboss = 0,
		nTime = 5 * 60,
		szScriptPath = "\\script\\missions\\boss\\goldboss_adjust_2011\\tianzhibaoxiang.lua",
	}
	local nNpcX,nNpcY,nMapIndex = GetNpcPos(nNpcIndex)
	local nMapId = SubWorldIdx2ID(nMapIndex)
	tbTianzhibaoxiang.tbNpcParam = tbTianzhibaoxiang.tbNpcParam or {}
	tbTianzhibaoxiang.tbNpcParam[1] = GetLocalTime()
	tbTianzhibaoxiang.tbNpcParam[2] = getn(tbTeam)
	for i=1, getn(tbTeam) do
		tbTianzhibaoxiang.tbNpcParam[i+2] = tbTeam[i]
	end
	
	local nRow = 6
	local nOffset = 3 * 32
	local nClow = floor(nCount / nRow) + 1
	local nMidRow = floor(nRow / 2)
	local nMidClow = floor(nClow / 2)
	local nStartX = nNpcX - nMidRow * nOffset
	local nStartY = nNpcY - nMidClow * nOffset
	
	for j=1, nClow do
		for i=1, nRow do
			if nCount > 0 then
				if j ~= nMidClow or i ~= nMidRow then
					local x = nStartX + i * nOffset
					local y = nStartY + j * nOffset
					basemission_CallNpc(tbTianzhibaoxiang, nMapId, x, y)
					nCount = nCount - 1
				end
			else
				break
			end
		end
	end	
end

function OnTimer(nNpcIndex)
	DelNpc(nNpcIndex)
end

function register()
	for i=1,getn(%tbNpcInfo) do	
		local szNpcName = %tbNpcInfo[i][2]
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end 
		EventSys:GetType("NpcDeath"):Reg(szNpcName, goldbossdeath)
	end
end
register()
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------