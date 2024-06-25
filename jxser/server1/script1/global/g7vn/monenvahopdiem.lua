-- �ļ�������callbosslingpai.lua
-- �����ߡ���wangjingjun
-- ���ݡ�����ֻ�����ڸ������ǣ����ִ��Ұ��Ͱ���ͼcall
-- ����ʱ�䣺2011-11-11 14:56:18
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
	if ( GetFightState() == 0 ) then	--��ս��������
		Msg2Player("Tr�ng th�i phi chi�n ��u th� kh�ng th� s� d�ng");
		return 0
	end
	return 1
end
local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
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
Msg2Player("�� ��t th�nh c�ng "..GetTask(3005).." N�n.")
if GetTask(3005)==10 then
	tbAwardTemplet:GiveAwardByList({{szName="H�nh Qu�n L�nh",tbProp={6,1,30395,1},nCount=1,nExpiredTime=60*24*15},}, "test", 1);
	Msg2SubWorld("<color=green>��i Hi�p <color=yellow>"..GetName().."<color> ��t th�nh c�ng 10 N�n nh�n ���c <color=cyan>H�nh Qu�n L�nh<color> .!")	
	SetTask(3005,0)
end
call_npc1()
--Msg2SubWorld("<color=green>��i Hi�p <color=yellow>"..GetName().."<color> �� m� th�nh c�ng <color=blue>N�i N�u Th�t Ch�<color> v�  ph�n th��ng:<color=cyan> 1kg Th�t Ch� T��i .!")	
end
function call_npc1() 
  local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
  if (SId >= 0) then
	  	nNpcIndex = AddNpc(1495, 1, SId, nPosX16 * 32, nPosY16 * 32, 1, "C�y Th�ng Noel c�a "..GetName().."");
		AddTimer(30*60* 18, "OnTimeout", nNpcIndex);
	  	if nNpcIndex > 0 then
	  		SetNpcScript(nNpcIndex,"\\script\\global\\abfhjashfj.lua");

	  	end
end
end
function checkmap()
	-- �ߴ���У��˴����ִ壬����ͼ
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
		lib:ShowMessage("C�n ph�i s� d�ng t�i <color=yellow>Ng� 3 T�nh<color> b�n �� <color=red>Chi�n Long ��ng")
		return 0
	end
	return 1
end
local _OnBreak = function()
Msg2Player("B� ��nh kh�ng th� ��t N�n ���c.")
end
function monenvahopdiem()
if checkfightstate() ~= 1 then
		return 1
	end
	
	if checkmap() ~= 1 then
		return 1
	end
	if  CalcEquiproomItemCount(6, 1, 1228, -1)<1 then
		Say("H�nh trang kh�ng c� c�y N�n n�o.")
		return
	end
	if  CalcEquiproomItemCount(6, 1, 30309, -1)<1 then
		Say("H�nh trang kh�ng c� H�p Di�m  n�o.")
		return
	end
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nHour <= 1900 or nHour >= 2100 then
		Say("Ch� ���c m� t� 19h00 --> 21h00.")
		return
	end
	local nNpcIdx = GetLastDiagNpc();
		local dwNpcId = GetNpcId(nNpcIdx)
if %_Limit(nNpcIdx) == nil then
		return
	end
		Msg2SubWorld("<color=green>K� Tr�m <color=yellow>"..GetName().."<color> �ang ��t Nh� tr�n <color=cyan>Chi�n Long ��ng<color>. C�c ��i Hi�p mau ��n ch�a ch�y .!")	
	--����������
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
	Say("Event �� k�t th�c v�o 21h00 ng�y 31-12-2020")
	return 1
	end
local szTitle =  "B�n ch�n ch�c n�ng n�o?"
local tbOpt = 
{

{"B�t ��u ��t n�n", monenvahopdiem},

{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
	
end