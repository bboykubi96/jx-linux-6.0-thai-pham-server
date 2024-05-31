-- ��ɽ��̨�Ի�

Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\missions\\huashanqunzhan\\high_grade\\ready\\readyclass.lua")
Include("\\script\\missions\\huashanqunzhan\\mid_grade\\ready\\readyclass.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
IncludeLib("LEAGUE")
IncludeLib("TIMER")


function huashanqunzhan_SignUpMain(nStep)
	local tbSay = nil
	local nPlayerLevel = GetLevel()
	local tbReadyMission = nil
	if nPlayerLevel < 80 or  nPlayerLevel>200 then
		tbReadyMission = nil
	else--if nPlayerLevel >= 100 then
		tbReadyMission = huashanqunzhan_tbReady_H
	end
	
	local nState = tbReadyMission and tbReadyMission:CheckMathState() or nil
	if nStep == 1 then
		if nState == 1 then
			tbSay = 
			{
				format("<dec><npc>��u Tr��ng t� chi�n b�t ��u b�o danh ��i hi�p c� ��ng � tham gia kh�ng?"),
				 "B�o danh tham gia/#huashanqunzhan_SignUpMain(2)",
			}
		elseif nState == 0 or nState == -1 then
			local tbWorld = 
			{

				{"Tr�n ��u","Ch�a T�i Gi�","B�t ��u"},
			}
			local szMsg = nState == 0 and "Tr�n ��u v�n ch�a b�t ��u." or "Tr�n ��u �ang ���c ti�n h�nh."
			tbSay = 
			{
				"<dec><npc>"..szMsg.."Th�i gian thi ��u nh� sau:<enter>"..huashanqunzhan_drawtable(tbWorld),
			}
		elseif nState == -2 then
			local tbMacthMission	= tbReadyMission.tbRef
			
			local szWinerName		= tbMacthMission:GetMissionS(tbMacthMission.tbMissionS.WINER_INDEX)
			local szMsg				= (szWinerName and szWinerName ~= "")  and format("Ng��i chi�n th�ng: <color=yellow>%s<color>", szWinerName) or "Tr�n n�y kh�ng c� Ng��i chi�n th�ng"
			
			tbSay = 
			{
				format("<dec><npc>L�i ��i Lo�n Chi�n �� ph�n th�ng b�i, %s", szMsg),
				
			}
		elseif nState == nil then
			tbSay = 
			{
				"<dec><npc>Ng��i ch�i c�p tr�n 50 �� n�p th� m�i c� th� tham gia ��u Tr��ng. C�p t� 50 ��n 119 c� th� tham gia ��u Tr��ng  trung c�p; c�p 120 tr� l�n c� th� tham gia ��u Tr��ng  cao c�p. Ng��i ch�a �� ��ng c�p �� tham gia.",
			}
		end		
	elseif nStep == 2 then			
		if tbReadyMission == nil then
			return Say("��ng c�p ch�a �� 50, kh�ng th� tham gia b�o danh.", 0)
		else
			return huashanqunzhan_SignUpStep(tbReadyMission)
		end
	end
	
	if  huashanqunzhan_CheckGetAward(tbReadyMission.tbRef) then
		tinsert(tbSay,2,"Ph�n th��ng cho ng��i chi�n th�ng./huashanqunzhan_GetAward")
	end
	
	tinsert(tbSay, "K�t th�c ��i tho�i/OnCancel")
	CreateTaskSay(tbSay)
end


function huashanqunzhan_SignUpStep(tbMission)
	local nState = tbMission:CheckMathState()
	if nState == 1 then
		tbMission:GotoReadyPlace()
	local szNews = format("��i hi�p <color=green>"..GetName().."<color> �� v�o ��u tr��ng<color=yellow> ��i Chi�n Hoa S�n <color=blue> (B�o Danh 199/201 T��ng D��ng NPC Hoa S�n L�o T�u)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	--mautrogiup()
	elseif nState == 0 then
		Say("Tr�n ��u v�n ch�a b�t ��u.", 0)
	elseif nState == -1 then
		Say("Tr�n ��u �ang ti�n h�nh, xin ��i ��n tr�n sau.", 0)
	elseif nState == -2 then
		
		local tbMacthMission	= tbMission.tbRef
		local szWinerName		= tbMacthMission:GetMissionS(tbMacthMission.tbMissionS.WINER_INDEX)
		local szMsg				= szWinerName and format("Ng��i chi�n th�ng: <color=yellow>%s<color>", szWinerName) or "Tr�n n�y kh�ng c� Ng��i chi�n th�ng"
		local tbSay = 
		{
			format("<dec><npc>Tr�n L�i ��i �� ph�n th�ng b�i, %s", szMsg),
			"K�t th�c ��i tho�i/OnCancel"
		}
		CreateTaskSay(tbSay)
	end
	
end
function mautrogiup()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
	return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end

function huashanqunzhan_GetAward()
--ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)	
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=yellow>Ch�c m�ng ��i cao th� <color=green>%s<enter><color=yellow> <pic=26><pic=125>�� nh�n <color=pink><%s><color=yellow><enter>Ph�n th��ng <color=green>< �� Nh�t ��u Tr��ng ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
	local tbAward =
	{
		{szName="Ti�n ��ng",tbProp={4,417,1,0,0,0},nCount=50},
		{szName="R��ng �� Xanh Hi�m",tbProp={6,1,4478,1,0,0},nCount=2},
		{szName="L�nh B�i G�i Boss",tbProp={6,1,4489,1,0,0},nCount=1,nRate=2},
	}
		local tbAward22 =
	{
		{szName="Ti�n ��ng",tbProp={4,417,1,0,0,0},nCount=100},
		{szName="R��ng �� Xanh Hi�m",tbProp={6,1,4478,1,0,0},nCount=5},
		{szName="L�nh B�i G�i Boss",tbProp={6,1,4489,1,0,0},nCount=1,nRate=5},
	}
	local nCount = GetTask(huashanqunzhan.TSK_Winer)
	
	--tinsert(tbAward, { nJxb = 10000 * nCount})
	 local nWeek	= tonumber(date("%w"))
 if nWeek>=1 and nWeek<=5 then
	tbAwardTemplet:GiveAwardByList(tbAward, "L�i ��i Sinh T�")
	else
	tbAwardTemplet:GiveAwardByList(tbAward22, "L�i ��i Sinh T�")
	end
		tbAwardTemplet:GiveAwardByList({{szName = "L� C� �� Thi�u Nhi",tbProp={6,1,4500,1,1},nCount=5},}, "test", 1);
	SetTask(huashanqunzhan.TSK_Winer, 0)
--	if GetSkillState(1658)>=1 or GetSkillState(1663)>=1 or GetSkillState(1662)>=1 then
	--	RemoveSkillState(1658,20,3,559872000,1) 
	--	RemoveSkillState(1663,20,3,559872000,1) 
	--	RemoveSkillState(1662,20,3,559872000,1) 
--	end
--	if GetSkillState(1660)>=1 or GetSkillState(1661)>=1 or GetSkillState(1664)>=1 or GetSkillState(1665)>=1 then
--		PlayerFunLib:AddSkillState(1546,20,3,18*60*60*23*1,1)
---	else
--		PlayerFunLib:AddSkillState(1546,20,3,18*60*60*23*1,1)
--		PlayerFunLib:AddSkillState(1659,20,3,18*60*60*23*1,1)
--	end
end


function huashanqunzhan_CheckGetAward(tbMission)
	local nState = tbMission:GetMissionState()
	local nPlayerMathId = GetTask(tbMission.TSK_MatchId)
	local nMathId = tbMission:GetMissionV(tbMission.tbMissionV.MATCH_ID)
	if nPlayerMathId == nMathId and nState == 2 and GetTask(tbMission.TSK_Winer) > 0 then
		
		return 1
	end
	return nil
end

function OnCancel()
	
end




function huashanqunzhan_drawtable(tbWord)
	local nLen = 0
	local str = ""
	for _, tb2 in tbWord do
		for _, sz in tb2 do
			if sz and nLen < strlen(sz) then
				nLen = strlen(sz)
			end
		end
	end
	for _, tb2 in tbWord do
		local str_space
		for j, sz in tb2 do
			if sz ~= "-" or ( sz == "-" and j==1 )then
				str = str.."|"
			else
				str = str.."-"
			end
			 str_space = sz == "-" and "-" or " "
			str = str..strfill_center(sz,nLen, str_space)
		end
		str = str.."|"
	
		str = str.."<enter>"
	end
	return str
end
function OnTimer()
local nHour = tonumber(GetLocalDate("%H%M"))
if nHour < 1900 or nHour > 2040 then
return
end
huashanqunzhan_SignUpMain(2)
end