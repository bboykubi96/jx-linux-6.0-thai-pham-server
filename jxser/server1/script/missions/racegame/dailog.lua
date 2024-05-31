IncludeLib("SETTING")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\missions\\racegame\\ready\\ready.lua")
IncludeLib("TASKSYS");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function racegame_SignUp_main(nStep)
	if DangDuaTop == 1 then
		Say("�ang trong qu� tr�nh �ua top, kh�ng th� th�c hi�n thao t�c n�y")
		return
	end
	jiefang_0804_ResetTask()
	local tbSay = {}
	if nStep == 1 then
		tbSay = 
		{
			"<dec><npc>H�ng n�m d�p c�n t�t l� quan th��ng xuy�n t� ch�c gi�i �ua th� ng��i c� mu�n tham gia kh�ng ?",
			"Ta s� kh�ng b� qua ng�n n�m c� m�t n�y!/#racegame_SignUp_main(2)",
			--"T�m hi�u th�ng tin ho�t ��ng/#racegame_SignUp_main(3)",
			"Th�t ng�i qu�, ta kh�ng th�ch �ua./OnCancel",	
		}
	elseif nStep == 2 then
		local nReadyMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState)
		local nMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.MissionState)
		--local nPlayerCount	= racegame_tbReadyMission:GetMSPlayerCount()
		
--		if nPlayerCount >= racegame_tbReadyMission.nPlayerCountLimit then
--			Say("�ⳡ������Ѿ��ﵽ���ޣ���μ���һ���ɣ�",0)
--			return 
--		end
		
		if GetLevel() < racegame_tbReadyMission.nLevelLimit then
			Say(format("��ng c�p kh�ng �� %s, kh�ng th� tham gia ho�t ��ng.", racegame_tbReadyMission.nLevelLimit), 0 )
			return 
		end
		local giatochona= CalcEquiproomItemCount(6,1,4392,-1)
		if giatochona>0 then
			ConsumeEquiproomItem(giatochona,6,1,4392,-1)
		end
		
		if nReadyMissionState == 1 then
	local szNews = format("Tay �ua <color=green>"..GetName().."<color=white> �� v�o ��u tr��ng �ua Ng�a chu�n b� cu�c �ua t�i.<color=pink> (B�o Danh 204/198 Ba L�ng Huy�n )");
	--AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			local w = GetWorldPos()
			SetTask(jiefang_0804_TSK_MapId, w)			
			local nRandId = random(1, getn(racegame_tbReadyMission.tbWaitPos) )
			return NewWorld(racegame_tbReadyMission.nMapId, racegame_tbReadyMission.tbWaitPos[nRandId][1], racegame_tbReadyMission.tbWaitPos[nRandId][2])
		elseif (nReadyMissionState == 0 and nMissionState ~= 0) or nReadyMissionState == 3 then
			tbSay = 
			{
				"��i hi�p �� tr� m�t r�i, cu�c �ua �� b�t ��u.",
				"Th�t ng�i qu�, ta s� quay l�i sau./OnCancel",	
			}
			tbSay[1] = "<dec><npc>"..tbSay[1]
		elseif nReadyMissionState == 0 and nMissionState == 0 then
			tbSay = 
			{
				"Cu�c �ua v�n ch�a b�t ��u.....",
				"Th�t ng�i qu�, ta s� quay l�i sau./OnCancel",
			}
			tbSay[1] = "<dec><npc>"..tbSay[1]
		end
	elseif nStep == 3 then
		tbSay = 
		{
			"<dec><npc>M�i cu�c �ua di�n ra trong 30 ph�t, trong �� c� 5 ph�t �� chu�n b�. Sau khi b�o danh tham gia, ng��i ch�i s� ���c ��a ��n khu v�c chu�n b�. Sau khi cu�c tranh t�i b�t ��u, c�c tuy�n th� ph�i ra s�c ch�y th�t nhanh v� ��ch. Trong qu� tr�nh �ua, tr�n ���ng �ua s� xu�t hi�n c�c ��o c� h� tr�, s� d�ng ��o c� n�y c� th� gi�p t�ng t�c �� ch�y c�a b�n th�n ho�c l�m gi�m t�c �� c�a ng��i kh�c. 30 ng��i ��u ti�n v� ��ch tr��c s� nh�n ���c ph�n th��ng c� gi� tr�.",
			"Th�t ng�i qu�, ng��a ta h�t x�ng r�i./OnCancel",	
		}
		
	end
	CreateTaskSay(tbSay)
end



function racegame_Award_main()
	jiefang_0804_ResetTask()
	local nAwardState = GetTask(jiefang_0804_TSK_AwardState)
	local nPlayerMapId = GetTask(jiefang_0804_TSK_MapId)
	if nPlayerMapId == 0 then
		nPlayerMapId = 1
	end
	if nAwardState == 1 then
		return NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2])
	end
	local nRankCount = racegame_tbMission:GetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER)
	nRankCount = nRankCount + 1
	racegame_tbMission:SetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER, nRankCount)
	local szMsg = format("Ha ha, ��i hi�p trong cu�c �ua n�y ���c x�p h�ng <color=yellow>%d<color>.",  nRankCount)
	
	Msg2MSAll(racegame_tbMission.nMissionId, format("<color=yellow>%s<color> trong cu�c �ua n�y ���c x�p h�ng <color=yellow>%d<color>.",GetName(),  nRankCount))
	Msg2Player(szMsg)
	if nRankCount >= 1 and nRankCount<=3 then
AddOwnExp(7000000)
for i=1,3 do
tbAwardTemplet:GiveAwardByList({{szName="Th�y Tinh",tbProp={4,random(238,240),1,1,0},nCount=1,},}, "test", 1);
end
Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=cyan> �� v� ��ch th� "..nRankCount.." trong gi�i �ua ng�a h�m nay. Ph�n th��ng: <color=yellow> 7.000.000 EXP + 3 Th�y Tinh")
	end
	if nRankCount > 3 and nRankCount<=10 then
AddOwnExp(6000000)
tbAwardTemplet:GiveAwardByList({{szName="Th�y Tinh",tbProp={4,random(238,240),1,1,0},nCount=1,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=cyan> �� v� ��ch th� "..nRankCount.." trong gi�i �ua ng�a h�m nay. Ph�n th��ng: <color=yellow> 6.000.000 EXP + 1 Th�y Tinh")
	end
		if nRankCount > 10 and nRankCount<=20 then
AddOwnExp(5000000)
Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=cyan> �� v� ��ch th� "..nRankCount.." trong gi�i �ua ng�a h�m nay. Ph�n th��ng: <color=yellow> 5.000.000 EXP")
	end
			if nRankCount > 20 and nRankCount<=50 then
AddOwnExp(4000000)
Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=cyan> �� v� ��ch th� "..nRankCount.." trong gi�i �ua ng�a h�m nay. Ph�n th��ng: <color=yellow> 4.000.000 EXP")
	end
				if nRankCount > 50 and nRankCount<=100 then
AddOwnExp(3000000)
Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=cyan> �� v� ��ch th� "..nRankCount.." trong gi�i �ua ng�a h�m nay. Ph�n th��ng: <color=yellow> 3.000.000 EXP")
	end
--	if nRankCount >= 31 and nRankCount<=40 then

--tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=10,},}, "test", 1);

--Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=cyan> �� v� ��ch th� "..nRankCount.." trong gi�i �ua ng�a h�m nay<pic=48><pic=108>")
--	end 	

	
	SetTask(jiefang_0804_TSK_AwardState, 1)
	if nRankCount >= 100 then
		racegame_tbMission:CloseGame();
	end
	
	NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2])
end

function OnCancel()
end




function vongduanguatop1() 
n_title = 363 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 432000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1502,1,3,7776000,1)
end

function vongduantopall() 
n_title = 364 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 107000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1503,1,3,3125600,1)
end




