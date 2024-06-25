Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\missions\\boss\\goldboss_adjust_2011\\goldboss.lua")

G7CallBoss150 = {}

--Chinh drop cho boss 150 ok

function G7CallBoss150:G7callboss150(nParamHandle, nResultHandle)
	self:G7callboss150OK()
end

function G7CallBoss150:G7callboss150OK()

	local idbossran = random(3083,3085)
	local szBossname, nBossLevel, nBossId = getbossinfo(idbossran)
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		return 1
	end

	return 0

end

function getbossinfo(nItemIdx)
	--Msg2Player("nItemIdx="..nItemIdx.."")
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[3083] = {1873,95,"Tr��ng Tuy�n",},		
		[3084] = {1874,95,"Kim Th� L��ng",},		
		[3085] = {1875,95,"M� Dung To�n",},		
	}
	--local G,D,P = GetItemProp(nItemIdx)
	local szBossname = tbBossInfomation[nItemIdx][3]
	local nBossLevel = tbBossInfomation[nItemIdx][2]
	local nBossId = tbBossInfomation[nItemIdx][1]
	return szBossname, nBossLevel, nBossId
end

function testdropbosss()
	goldbossdeath(1873,PlayerIndex)
end

function testbosss()
	local idbossran = random(3083,3085)
	local szBossname, nBossLevel, nBossId = getbossinfo(idbossran)
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		return 1
	end

	return 0
end

function callboss(szBossname, nBossLevel, nBossId)

	local arrRanboss = 
	{
		[1] = {36, 37, 1576, 3243},
		[2] = {10, 11, 3263, 5275},
		[3] = {75, 78, 1701, 3461},
		[4] = {0, 1, 1401, 3018},
		[5] = {146, 162, 1718, 2993},
		[6] = {77, 80, 1633, 2870},
		[7] = {160, 176, 1744, 3425},
		[8] = {36, 37, 1576, 3243},--bien kinh nam
		[9] = {619, 959, 1466, 3069},
	}

	local ranpos = random(1,9)

	local nMapIndex = arrRanboss[ranpos][1]
	local nMapId = arrRanboss[ranpos][2]
	local nPosX = arrRanboss[ranpos][3]
	local nPosY = arrRanboss[ranpos][4]

	local tbGoldBoss = 
	{
		szName = szBossname, 
		nLevel = nBossLevel,
		nNpcId = nBossId,
		nIsboss = 1,
		tbNpcParam = {nBossId,},
	}
	if basemission_CallNpc(tbGoldBoss, nMapId, nPosX * 32, nPosY * 32) then
		WriteLog(date("%Y-%m-%d %H:%M:%S").." T� ��ng g�i Boss Ho�ng Kim 150: "..szBossname .. "T�a �� X="..nPosX.." Y="..nPosY.." B�n ��: "..nMapId.."");
		--local MapName = SubWorldName(nMapIndex)
		--local strmsg = "Giang h� t��ng truy�n <color=red>"..szBossname .. "<color> �� xu�t hi�n t�i <color=red>"..MapName.."<color> giang h� s� c� m�t cu�c chi�n ��m m�u!"
		local strmsg = "Giang h� t��ng truy�n <color=red>"..szBossname .. "<color> �� xu�t hi�n giang h� s� c� m�t cu�c chi�n ��m m�u!"
		AddGlobalCountNews(strmsg,5)
		--OutputMsg("Create Boss "..szBossname..","..nBossId..","..nBossLevel..","..nMapId..","..nPosX..","..nPosY.."")
		return 1
	end
	return 0

end
