----------------***Heart*Doldly***----------------------
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\misc\\eventsys\\type\\npcdeath.lua")
Include("\\script\\lib\\awardtemplet.lua")
----------------------------------------------------------------
local tbDropItem = {
	[1] = {
		{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=100},
		{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=100},
		{szName="C�n Kh�n",tbProp={6,1,2219,1,0,0},nCount=1},
		{szName="Bi Kip 150",tbProp={6,1,4814,1,0,0},nCount=1},
	},
	[2] = {
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 5,nRate=0.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 4,nRate=1.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 3,nRate=2.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 2,nRate=3.5},
		{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0}, nCount = 1,nRate=4.5},
	},
	[3] = {--100%/10 mon trang Bi
		{szName="V� Danh",tbProp={0,4120},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4125},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4130},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4121},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4126},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4131},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4122},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4127},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4132},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4123},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4128},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4133},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4124},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4129},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
		{szName="V� Danh",tbProp={0,4134},nCount=1,nRate=6.6,nQuality=1,nExpiredTime=1440},
	},
}

local tbNpcInfo = {
	[1] = {1873,"Tr��ng Tuy�n",},		
	[2] = {1874,"Kim Th� L��ng",},		
	[3] = {1875,"M� Dung To�n",},
	[4] = {1959,"H� Ng�c H�",},		
	[5] = {1960,"C�c B�",},		
	[6] = {1958,"Admin ��p Trai",},
       [7] = {1395,"Ti�u Xu�n Ng�u",},
       [8] = {1396,"��i Xu�n Ng�u",},
       [9] = {1397,"Ng�u Ma V��ng",},	
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
	local szNews = format("��i hi�p <color=yellow>%s<color> t�i <color=yellow>%s<color> �� ti�u di�t th�nh c�ng <color=yellow>%s<color>!", szName, SubWorldName(SubWorld),szNpcName)
	AddGlobalNews(szNews)
end
--------------------------------------Ph�n Th��ng Ti�u Di�t Boss------------------------------------------------------------------------------------------------------------------------------------------
function goldbossdeath(nNpcIndex, nPlayerIndex)
	if checkNpc(nNpcIndex) ~= 1 then
		return 
	end

	addNews(nNpcIndex, nPlayerIndex)

	local tbItemAward = {
		[1873] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1874] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1875] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1959] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1960] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1958] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1395] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1396] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
		[1397] = {
			{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0}, nCount = 20},
		},
	}
	--Ph�n Th��ng T� ��i Ti�u Di�t Boss V� R�t Ra T� Boss ��i
	local nKind = GetNpcParam(nNpcIndex, 1)
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	--tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbItemAward[nKind],format("killed_%s",szNpcName))
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbDropItem,format("killed_%s",szNpcName))
	
	local tbAwardExp = {
		["Killer"] = {nExp_tl = 2e8, szName = "�i�m kinh nghi�m"},
		["Around"] = {nExp_tl = 1e8, szName = "�i�m kinh nghi�m"},
	}
	--Ph�n Th��ng Kinh Nghi�m Cho Ng��i Ti�u Di�t Boss V� T� ��i--------------------------------------------------------------------------------------------
	nOldPlayer = PlayerIndex	
	local nTeamSize = GetTeamSize();	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			PlayerIndex = GetTeamMember(i)
			tbAwardTemplet:Give(tbAwardExp["Killer"], 1, {"DCPhanThuongBoss", "Ph�n th��ng exp cho t� ��i ti�u di�t "..szNpcName})
		end
	else		
		tbAwardTemplet:Give(tbAwardExp["Killer"], 1, {"DCPhanThuongBoss", "Ph�n th��ng exp cho ng��i ti�u di�t "..szNpcName})
	end
	--Ph�n Th��ng Cho Ng��i ��ng G�n Boss-----------------------------------------------------------------------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);	
	for i=1,nCount do	
		PlayerIndex = tbRoundPlayer[i]
		tbAwardTemplet:Give(tbAwardExp["Around"], 1, {"DCPhanThuongBoss", "Ph�n th��ng exp cho ng��i ��ng g�n "..szNpcName})
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
		szName = "R��ng Thi�n Chi", 
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