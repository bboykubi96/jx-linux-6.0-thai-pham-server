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

local tbUseOnlyInMap = 
{
	586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,53
}
local checkOnlyUseInMap = function()
	local nMapId = SubWorldIdx2MapCopy(SubWorld)
	for i = 1, getn( %tbUseOnlyInMap ) do		--ÌØÊâµØÍ¼½ûÓÃ
		if( %tbUseOnlyInMap[i] == nMapId ) then
			return 1
		end
	end
	return 0
end


function getbossinfo(nItemIdx)
	local tbBossInfomation = {
		-- bossid, bosslvl, bossname
		[4346] = {1335,95,"Ng­êi TuyÕt LuyÖn Skill",},		
	}
	local G,D,P = GetItemProp(nItemIdx)
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
	if basemission_CallNpc(tbGoldBoss, nMapId, nPosX * 32, nPosY * 32) then
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] Dïng lÖnh bµi gäi Boss ®Ó gäi Boss Hoµng Kim: "..szBossname);
		return 1
	end
	return 0
end

function main(nItemIdx)
	if checkfightstate() ~= 1 then
		return 1
	end
	
	--if %checkOnlyUseInMap() ~= 1 then
		--Msg2Player("Kh«ng thÓ sö dông vËt phÈm nµy t¹i ®©y.")
	--	return 1
	--end
	
	local szBossname, nBossLevel, nBossId = getbossinfo(nItemIdx)
	
	if callboss(szBossname, nBossLevel, nBossId) ~= 1 then
		Msg2Player("TriÖu håi Boss thÊt b¹i, xin thö l¹i")
		return 1
	end
	
	return 0
end