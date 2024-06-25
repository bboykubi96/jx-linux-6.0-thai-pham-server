Include("\\script\\event\\springfestival08\\lib\\compose.lua")
Include("\\script\\event\\springfestival08\\lib\\addaward.lua")
Include("\\script\\event\\springfestival08\\allbrother\\taskhead.lua")
Include("\\script\\lib\\pay.lua")
Include("\\script\\lib\\log.lua")
--------------------------------------------------------------------------------
allbrother_0801_tbPhucMenh = {
		{szName="L�nh B�i B�c ��u", tbProp={6, 1, 4821, 1, 0, 0}, nCount = 30},
	}
-------------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_main()
local nDate = tonumber(GetLocalDate("%y%m%d"))
local nTime = tonumber(GetLocalDate("%H%M"));
local nWeek = tonumber(GetLocalDate("%w"))
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a �� C�p 150 Tr� L�n Tr�ng Sinh Kh�ng Gi�i   H�n ��ng C�p M�i C� Th� Tham Gia Ho�t ��ng N�y")
return end
	if (nTime >= 0800 and nTime < 2300) then
		local szTitle = "<bclr=violet>Xin Ch�o "..myplayersex().." C�c H� C�n G�<bclr>\n<bclr=red>Hi�n T�i S� L�n Nhi�m V� C�a "..myplayersex().." �ang L�m: "..PlayerFunLib:GetTaskDailyCount(5981).."/30"
		local tbOpt = {
			"Nh�n Nhi�m V�/allbrother_0801_WantTask",
			"Giao Nhi�m V�/allbrother_0801_TaskPersonTaskAward",
			"H�y B� Nhi�m V�/allbrother_0801_CancelTask",
			"Xem Nhi�m V� �� Nh�n/allbrother_0801_QueryPersonTask",
			"N�p L�nh B�i B�c ��u Ph�c M�nh/allbrother_0801_TaskAward_PhucMenh",
			"T�i H� C�o T�/OnCancel"
		}
		Say(szTitle, getn(tbOpt), tbOpt)
	else
		Talk(1,"","<bclr=violet>Th�i Gian Ho�t ��ng B�t ��u T� 08h:00 ��n 23h:00\n                      "..myplayersex().." Vui L�ng Quay L�i Sau")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_PlayerDo(nPlayerIdx,fun,...)
	local nOldPlayer = PlayerIndex;
	PlayerIndex = nPlayerIdx
	local re = call(fun, arg);
	PlayerIndex = nOldPlayer;
	return re
end
--------------------------------------------------------------Xem Nhi�m V�------------------------------------------------------------------------------------------------------------
function allbrother_0801_QueryPersonTask()
local nTaskState = GetTask(TSK_StartNhiemVu_TaskState)
	if nTaskState == 0 then
		Talk(1,"","<bclr=red>"..myplayersex().." Ch�a Ti�p Nh�n Nhi�m V� Kh�ng Th� Xem")
	else
		if nTaskState > 1073741824 then
			nTaskState = nTaskState - 1073741824
		end
		Say(format("<bclr=violet>Nhi�m V� Hi�n T�i L�: %s", allbrother_0801_tbTaskList[nTaskState].szShow), 0)
	end
end
-------------------------------------------------------------------Nh�n Nhi�m V� C� Nh�n------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_WantTask()
local nTaskState = GetTask(TSK_StartNhiemVu_TaskState)
local nTaskTime = GetTask(TSK_StartTime_TaskTime)

if NhiemVuBacDau_CheckTaskLimit() == 0 then
	return 1
end
	if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then
		SetTask(TSK_StartNhiemVu_TaskState, 0)
		Msg2Player("Nhi�m V� �� V��t Qu� Th�i Gian Quy ��nh N�n B� H�y B� Nhi�m V� Th�t B�i")
	end

	if nTaskState == 0 then
		for i = 1,1 do
			local nTaskId = random(1,getn(allbrother_0801_tbTaskList))
			SetTask(TSK_StartNhiemVu_TaskState, nTaskId)
			SetTask(TSK_NhiemVuBacDau_TaskLimit,GetTask(TSK_NhiemVuBacDau_TaskLimit)+1)
			SetTask(TSK_StartTime_TaskTime, GetCurServerTime())
			Msg2Player(format("Nh�n ���c nhi�m v�: %s", allbrother_0801_tbTaskList[nTaskId].szShow))
		end
	else
		Say("<bclr=violet>"..myplayersex().." �� Ti�p Nh�n Nhi�m V� C�a B�c ��u L�o Nh�n")
	end
end

function NhiemVuBacDau_CheckTaskLimit()
	local nTaskLimit = GetTask(TSK_NhiemVuBacDau_TaskLimit)
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	if nDate ~= floor(nTaskLimit/256) then
		nTaskLimit = nDate * 256
		SetTask(TSK_NhiemVuBacDau_TaskLimit, nTaskLimit)
	end
	if mod(nTaskLimit, 256) < TSKV_NhiemVuBacDau_TaskLimit then
		return 1;
	else
		Say(format("<bclr=violet>%s H�m Nay �� Nh�n %d Nhi�m V� N�y R�i.\n                                 Ng�y Mai Quay L�i", myplayersex(), TSKV_NhiemVuBacDau_TaskLimit))
		return 0;
	end
	return 0;
end
---------------------------------------------H�y Nhi�m V�-------------------------------------------------------------------------------------------------
function allbrother_0801_CancelTask()
	if GetTask(TSK_StartNhiemVu_TaskState) == 0 then
		Say("<bclr=violet>Hi�n T�i: "..myplayersex().." Kh�ng C� Nhi�m V� N�o C�")
		return 0;
	end
	SetTask(TSK_StartNhiemVu_TaskState, 0)
	Msg2Player("Ch�c M�ng "..myplayersex().." �� H�y B� Nhi�m V� Th�nh C�ng")
end
------------------------------------------------Giao Nhi�m V�---------------------------------------------------------------------------------------------------------------
function allbrother_0801_TaskPersonTaskAward()
local nTaskState	= GetTask(TSK_StartNhiemVu_TaskState)
local nTaskTime	= GetTask(TSK_StartTime_TaskTime)
local nTaskId		= 0;
	if nTaskState == 0 then
		Say("<bclr=violet>"..myplayersex().." Ch�a Ti�p Nh�n Nhi�m V� N�o C�")
		return	
	end
	if nTaskState < 1073741824 then
		if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then
			SetTask(TSK_StartNhiemVu_TaskState, 0)
			Say("Nhi�m V� �� V��t Qu� Th�i Gian Quy ��nh N�n B� H�y B� Nhi�m V� Th�t B�i")
			return
		end
		nTaskId = nTaskState
		if allbrother_0801_tbTaskList[nTaskId].nTaskType == 0 then 
			local tbAward = {0, allbrother_0801_TaskFindItemAward, 1}
			springfestival08_lib_material_compose({allbrother_0801_tbTaskList[nTaskId].tbList, tbAward, "Ho�n th�nh nhi�m v� ", "V�t ph�m nhi�m v� kh�ng ��ng ho�c s� l��ng kh�ng ��", "Nhi�m v� sai"}, "Giao v�t ph�m")
		else
			Say("<bclr=violet>"..myplayersex().." V�n Ch�a Ho�n Th�nh Nhi�m V� Mau �i L�m �i")	
		end
	else
		allbrother_0801_TaskFindNpcAward();
	end
end
------------------------------------------------Ph�n Th��ng Ho�n Th�nh Nhi�m V�-------------------------------------------------------------------------------------------------------
function allbrother_0801_TaskFindItemAward(nTaskId)
	if allbrother_0801_CompleteTask() == 1 then
		return allbrother_0801_TaskFindNpcAward()
	end
end

function allbrother_0801_TaskFindNpcAward()
	
	local nExpAward = 0;
	local nTransCount = ST_GetTransLifeCount();
	
	if nTransCount >= 0 and nTransCount < 1 then
		nExpAward = 80000000;
	elseif nTransCount >= 1 and nTransCount < 2 then
		nExpAward = 100000000;
	elseif nTransCount >= 2 and nTransCount < 3 then
		nExpAward = 150000000;
	elseif nTransCount >= 3 and nTransCount < 4 then
		nExpAward = 200000000;
	elseif nTransCount >= 4 and nTransCount < 5 then
		nExpAward = 250000000;
	elseif nTransCount >= 5 and nTransCount < 6 then
		nExpAward = 300000000;
	end
		
	local solan = PlayerFunLib:GetTaskDailyCount(5981)
	local nTaskState = GetTask(TSK_StartNhiemVu_TaskState)
	local nTaskTime = GetTask(TSK_StartTime_TaskTime)
	local Gio = tonumber(date("%H"))
	local Phut = tonumber(date("%M"))
	local nTime = Gio*60
	local HanSuDung = 1440 - nTime - Phut
	--Ph�n Th��ng 1
	local tbAward = {
		[1] = {
			{nExp = nExpAward},
			{szName="H�nh Hi�p L�nh",tbProp={6,1,4834,1,0,0},nCount=10},
		},
		[2] = {--80%
			{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=20},
		},
	}
	--Ph�n Th��ng 2
	local tbAward_x2 = {
		[1] = {
			{nExp = nExpAward*2},
			{szName="H�nh Hi�p L�nh",tbProp={6,1,4834,1,0,0},nCount=20},
		},
		[2] = {--80%
			{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=2,nRate=20},
		},
	}
	if (nTaskState > 1073741824) then 
		if (GetTask(HUYETLINHDON) == 0) then
			SetTask(TSK_StartNhiemVu_TaskState, 0)
		
			if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then 
				Say("Nhi�m V� �� V��t Qu� Th�i Gian Quy ��nh N�n B� H�y B� Nhi�m V� Th�t B�i")
				return
			end

			tbAwardTemplet:GiveAwardByList(tbAward, "allbrother_0801_szActName");
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuBacDau")
			if (solan >= 30) then tbAwardTemplet:GiveAwardByList({tbProp={6,1,4821,1,0,0},nCount=30,nExpiredTime=HanSuDung,nBindState = -2},"Ho�n Th�nh 30 L�n Nhi�m V� B�c ��u") end
		elseif (GetTask(HUYETLINHDON) == 1) then
			SetTask(TSK_StartNhiemVu_TaskState, 0)
		
			if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then 
				Say("Nhi�m V� �� V��t Qu� Th�i Gian Quy ��nh N�n B� H�y B� Nhi�m V� Th�t B�i")
				return
			end

			tbAwardTemplet:GiveAwardByList(tbAward_x2, "allbrother_0801_szActName"); SetTask(HUYETLINHDON, 0)
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuBacDau")
			if (solan >= 30) then tbAwardTemplet:GiveAwardByList({tbProp={6,1,4821,1,0,0},nCount=30,nExpiredTime=HanSuDung,nBindState = -2},"Ho�n Th�nh 30 L�n Nhi�m V� B�c ��u") end
		end
	else
		Say("B�n d��ng nh� v�n ch�a ho�n th�nh nhi�m v�.", 0)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_TaskAward_PhucMenh()
	local tbAward = {0, allbrother_0801_TaskAwardFun, 1}
	springfestival08_lib_material_compose({allbrother_0801_tbPhucMenh, tbAward, "Ch�c M�ng "..myplayersex().." �� Ph�c M�nh Th�nh C�ng", "<bclr=violet>V�t Ph�m Nhi�m V� B� V�o Kh�ng ��ng Sai S� L��ng<bclr>", "Nhi�m V� Sai"}, "Giao V�t Ph�m", "30 L�nh B�i B�c ��u")
end

function allbrother_0801_TaskAwardFun()
if PhucMenhBacDau_CheckTaskLimit() == 0 then
	return 1;
end
	local tbAward = {{nExp_tl = 2e9},}
	tbAwardTemplet:GiveAwardByList(tbAward, allbrother_0801_szActName)
	SetTask(TSK_PhucMenhBacDau_TaskLimit, GetTask(TSK_PhucMenhBacDau_TaskLimit)+1)
	Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n ���c Ph�n Th��ng Ph�c M�nh Th�nh C�ng")
	return 1;
end

function PhucMenhBacDau_CheckTaskLimit()
	local nTaskLimit = GetTask(TSK_PhucMenhBacDau_TaskLimit)
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	if nDate ~= floor(nTaskLimit/256) then
		nTaskLimit = nDate * 256
		SetTask(TSK_PhucMenhBacDau_TaskLimit, nTaskLimit)
	end
	if mod(nTaskLimit, 256) < TSKV_PhucMenhBacDau_TaskLimit then
		return 1;
	else
		Msg2Player(format("H�m Nay %s �� Ho�n Th�nh %d L�n Nhi�m V� R�i Kh�ng Th� Nh�n Ph�n Th��ng N�a", myplayersex(), TSKV_PhucMenhBacDau_TaskLimit))
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4514,1,0,0},nCount=30,nBindState = -2},"L�nh B�i B�c ��u")
		return 0; 
	end
	return 0;
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------