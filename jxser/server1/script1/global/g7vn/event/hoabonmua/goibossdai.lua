-- ÎÄ¼þÃû¡¡£ºcallbosslingpai.lua
-- ´´½¨Õß¡¡£ºwangjingjun
-- ÄÚÈÝ¡¡¡¡£ºÖ»¿ÉÒÔÔÚ¸÷´óÖ÷³Ç£¬ÐÂÊÖ´åµÄÒ°ÍâºÍ°ï»áµØÍ¼call
-- ´´½¨Ê±¼ä£º2011-11-11 14:56:18
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
function checkfightstate()
	if ( GetFightState() == 0 ) then	--·ÇÕ½¶·Çø½ûÓÃ
		Msg2Player("Kh«ng ë trong tr¹ng th¸i chiÕn ®Êu th× kh«ng thÓ sö dông");
		return 0
	end
	return 1
end

function checkmap()
	-- Æß´ó³ÇÊÐ£¬°Ë´óÐÂÊÖ´å£¬°ï»áµØÍ¼
	local ACTIVITY_MAP = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53, 586,587,588,589,590,591,593,594,595,596,597}
	--local ACTIVITY_MAP = {989}
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
		lib:ShowMessage("CÇn ph¶i sö dông t¹i  b¶n ®å th«n trang, thµnh thÞ")
		return 0
	end
	return 1
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[1481] = {739,95,"V­¬ng T¸",},		
		[1482] = {740,95,"HuyÒn Gi¸c §¹i S­",},	
		[1486] = {1366,95,"§­êng Phi YÕn",},	
		--[1484] = {568,95,"Hµ Linh Phiªu",},	
		[1487] = {744,95,"Yªn HiÓu Tr¸i",},	
		[1488] = {583,95,"M¹nh Th­¬ng L­¬ng",},	
	--	[1487] = {563,95,"Gia LuËt TÞ Ly",},	
	--	[1488] = {562,95,"§¹o Thanh Ch©n Nh©n",},	
		[1489] = {747,95,"TuyÒn C¬ Tö",},	
		[1490] = {582,95,"Lam Y Y",},	
	--	[1491] = {565,95,"§oan Méc DuÖ",},	
	--	[1492] = {566,95,"Cæ B¸ch",},	
		--[3084] = {1874,95,"Kim ThÝ L­îng",},		
		--[3085] = {1875,95,"Mé Dung Toµn",},		
	}
	--local G,D,P = GetItemProp(nItemIdx)
	
	local P=random(1486,1490)
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
	SetNpcScript(npcindex, "\\script\\missions\\boss\\bossdeath.lua");
	if npcindex then
		Msg2SubWorld("<color=green>§¹i hiÖp <color=yellow>"..GetName().."<color> ®· triÖu håi BOSS")
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] Dïng lÖnh bµi gäi Boss ®Ó gäi Boss Hoµng Kim: "..szBossname);
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
		Msg2Player("TriÖu håi Boss thÊt b¹i, xin thö l¹i")
		return 1
	end
	
	return 0
end