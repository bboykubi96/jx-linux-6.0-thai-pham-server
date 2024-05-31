-- ÎÄ¼þÃû¡¡£ºcallbosslingpai.lua
-- ´´½¨Õß¡¡£ºwangjingjun
-- ÄÚÈÝ¡¡¡¡£ºÖ»¿ÉÒÔÔÚ¸÷´óÖ÷³Ç£¬ÐÂÊÖ´åµÄÒ°ÍâºÍ°ï»áµØÍ¼call
-- ´´½¨Ê±¼ä£º2011-11-11 14:56:18
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
function checkfightstate()
	if ( GetFightState() == 0 ) then	--·ÇÕ½¶·Çø½ûÓÃ
		Msg2Player("Tr¹ng th¸i phi chiÕn ®Êu th× kh«ng thÓ sö dông");
		return 0
	end
	return 1
end
local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end


	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end


	return nGetSeedLevel
end
local _GetFruit = function(nNpcIdx, dwNpcId)

	local nGetSeedLevel = %_Limit(nNpcIdx)

ConsumeEquiproomItem(1, 6, 1, 1228, -1)
ConsumeEquiproomItem(1, 6, 1, 30309, -1)
SetTask(3005,GetTask(3005)+1)
Msg2Player("§· ®èt thµnh c«ng "..GetTask(3005).." NÕn.")
if GetTask(3005)==10 then
	tbAwardTemplet:GiveAwardByList({{szName="Hµnh Qu©n LÖnh",tbProp={6,1,30395,1},nCount=1,nExpiredTime=60*24*15},}, "test", 1);
	Msg2SubWorld("<color=green>§¹i HiÖp <color=yellow>"..GetName().."<color> ®èt thµnh c«ng 10 NÕn nhËn ®­îc <color=cyan>Hµnh Qu©n LÖnh<color> .!")	
	SetTask(3005,0)
end
call_npc1()
--Msg2SubWorld("<color=green>§¹i HiÖp <color=yellow>"..GetName().."<color> §· më thµnh c«ng <color=blue>Nåi NÊu ThÞt Chã<color> vµ  phÇn th­ëng:<color=cyan> 1kg ThÞt Chã T­¬i .!")	
end
function call_npc1() 
  local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
  if (SId >= 0) then
	  	nNpcIndex = AddNpc(1495, 1, SId, nPosX16 * 32, nPosY16 * 32, 1, "C©y Th«ng Noel cña "..GetName().."");
		AddTimer(30*60* 18, "OnTimeout", nNpcIndex);
	  	if nNpcIndex > 0 then
	  		SetNpcScript(nNpcIndex,"\\script\\global\\abfhjashfj.lua");

	  	end
end
end
function checkmap()
	-- Æß´ó³ÇÊÐ£¬°Ë´óÐÂÊÖ´å£¬°ï»áµØÍ¼
	--local ACTIVITY_MAP = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53, 586,587,588,589,590,591,593,594,595,596,597}
	local ACTIVITY_MAP = {959}
	local W,X,Y = GetWorldPos()
	local nMapX=X
	local nMapY=Y
	local nMapId = W
	local nIsInMap = 0
	
	for i = 1, getn(ACTIVITY_MAP) do
		if nMapId == ACTIVITY_MAP[i] and GetFightState() == 1 and (nMapX>=1496 and nMapX<=1516) and (nMapY>=3084 and nMapY<=3117) then
			nIsInMap = 1
			break	
		end
	end
	
	if nIsInMap == 0 then
		lib:ShowMessage("CÇn ph¶i sö dông t¹i <color=yellow>Ng· 3 T×nh<color> b¶n ®å <color=red>ChiÕn Long §éng")
		return 0
	end
	return 1
end
local _OnBreak = function()
Msg2Player("BÞ ®¸nh kh«ng thÓ ®èt NÕn ®­îc.")
end
function monenvahopdiem()
if checkfightstate() ~= 1 then
		return 1
	end
	
	if checkmap() ~= 1 then
		return 1
	end
	if  CalcEquiproomItemCount(6, 1, 1228, -1)<1 then
		Say("Hµnh trang kh«ng cã c©y NÕn nµo.")
		return
	end
	if  CalcEquiproomItemCount(6, 1, 30309, -1)<1 then
		Say("Hµnh trang kh«ng cã Hép Diªm  nµo.")
		return
	end
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nHour <= 1900 or nHour >= 2100 then
		Say("ChØ ®­îc më tõ 19h00 --> 21h00.")
		return
	end
	local nNpcIdx = GetLastDiagNpc();
		local dwNpcId = GetNpcId(nNpcIdx)
if %_Limit(nNpcIdx) == nil then
		return
	end
		Msg2SubWorld("<color=green>KÎ Trém <color=yellow>"..GetName().."<color> ®ang §èt Nhµ trªn <color=cyan>ChiÕn Long §éng<color>. C¸c §¹i HiÖp mau ®Õn ch÷a ch¸y .!")	
	--¿ªÆô½ø¶ÈÌõ
		tbProgressBar:OpenByConfig(27, %_GetFruit, {nNpcIdx, dwNpcId})

	
	return 0

end
function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
function main(nItemIndex)
dofile("script/global/g7vn/monenvahopdiem.lua")
local nHour = tonumber(GetLocalDate("%H%M"))
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20201231 and  nHour >= 2100  then
	Say("Event ®· kÕt thóc vµo 21h00 ngµy 31-12-2020")
	return 1
	end
local szTitle =  "B¹n chän chøc n¨ng nµo?"
local tbOpt = 
{

{"B¾t ®Çu ®èt nÕn", monenvahopdiem},

{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
	
end