-- 文件名　：callbosslingpai.lua
-- 创建者　：wangjingjun
-- 内容　　：只可以在各大主城，新手村的野外和帮会地图call
-- 创建时间：2011-11-11 14:56:18
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
function checkfightstate()
	if ( GetFightState() == 0 ) then	--非战斗区禁用
		Msg2Player("Kh玭g � trong tr筺g th竔 chi課 u th� kh玭g th� s� d鬾g");
		return 0
	end
	return 1
end

function checkmap()
	-- 七大城市，八大新手村，帮会地图
	local ACTIVITY_MAP = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53}
--	local ACTIVITY_MAP = {53}
	local W,X,Y = GetWorldPos()
	local nMapId = W
	local nIsInMap = 0
	
	for i = 1, getn(ACTIVITY_MAP) do
		if nMapId == ACTIVITY_MAP[i] and GetFightState() == 1 then
			nIsInMap = 1
			break	
		end
	end
	
	if nIsInMap == 0 then
		lib:ShowMessage("C莕 ph秈 s� d鬾g t筰  b秐  th祅h th�, th玭 trang.")
		return 0
	end
	return 1
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[1481] = {523,90,"Li評 Thanh Thanh",},		
		[1482] = {513,90,"Di謚 Nh�",},	
		[1483] = {511,90,"Trng T玭g Ch輓h",},	
		[1484] = {1358,90,"T﹜ Vng T� чc",},	
		[1485] = {1360,90,"Do穘 Thanh V﹏",},	
		[1486] = {1361,90,"H綾 Y S竧 Th�",},	
		[1487] = {1356,90,"Ng筼 Thi猲 Tng Qu﹏",},	
		[1488] = {1362,90,"Th藀 Phng C﹗ Di謙",},	
		[1489] = {1364,90,"Thanh Y T�",},	
		[1490] = {1355,90,"T辬h Th玭g",},	
		--[3084] = {1874,90,"Kim Th� Lng",},		
		--[3085] = {1875,90,"M� Dung To祅",},		
	}
	--local G,D,P = GetItemProp(nItemIdx)
	
	local P=random(1481,1490)
	local szBossname = tbBossInfomation[P][3]
	local nBossLevel = tbBossInfomation[P][2]
	local nBossId = tbBossInfomation[P][1]
	return szBossname, nBossLevel, nBossId
end

function callboss(szBossname, nBossLevel, nBossId)
	local nMapId,nPosX,nPosY = GetWorldPos()
	local tbGoldBoss = 
	{
		szName = szBossname, 
		nLevel = nBossLevel,
		nNpcId = nBossId,
		nIsboss = 1,
		tbNpcParam = {nBossId,},
	}
	local npcindex=basemission_CallNpc(tbGoldBoss, nMapId, nPosX * 32, nPosY * 32) 
	SetNpcScript(npcindex, "\\script\\missions\\boss\\bosstieudeath1.lua");
	if npcindex then
		if GetAccount()~="testgame4" then
			Msg2SubWorld("<color=green>Чi hi謕 <color=yellow>"..GetName().."<color>  th� BOSS Ti觰, C竎 hi課 s� nhanh ch﹏ n cp 畂箃.")
		end
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] D飊g l謓h b礽 g鋓 Boss  g鋓 Boss Ho祅g Kim: "..szBossname);
		return 1
	end
	return 0
end

function main(nItemIdx)
	if checkfightstate() ~= 1 then
		return 1
	end
	
	if checkmap() ~= 1 then
		return 1
	end
	
	local szBossname, nBossLevel, nBossId = getbossinfo(nItemIdx)
	
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		Msg2Player("Tri謚 h錳 Boss th蕋 b筰, xin th� l筰")
		return 1
	end
	
	return 0
end