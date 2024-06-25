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
	--local ACTIVITY_MAP = {53}
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
		lib:ShowMessage("CÇn ph¶i sö dông t¹i  b¶n ®å Thµnh ThÞ, Th«n Trang")
		return 0
	end
	return 1
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[1481] = {1329,95,"Ng­êi TuyÕt Noel",},			
	}
	--local G,D,P = GetItemProp(nItemIdx)
	
	local P=1481
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
	SetNpcScript(npcindex, "\\script\\global\\g7vn\\event\\hoabonmua\\nguoituyet_death.lua");
	if npcindex then
	--	Msg2SubWorld("<color=green>§¹i hiÖp <color=yellow>"..GetName().."<color> ®· th¶ BOSS ë Ba L¨ng HuyÖn")
		--WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] Dïng lÖnh bµi gäi Boss ®Ó gäi Boss Hoµng Kim: "..szBossname);
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