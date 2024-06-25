Include("\\script\\event\\springfestival08\\lib\\compose.lua")
Include("\\script\\event\\springfestival08\\lib\\addaward.lua")
Include("\\script\\event\\springfestival08\\allbrother\\taskhead.lua")
Include("\\script\\lib\\pay.lua")
Include("\\script\\lib\\log.lua")
--------------------------------------------------------------------------------
allbrother_0801_tbPhucMenh = {
		{szName="L÷nh Bµi Bæc ß»u", tbProp={6, 1, 4821, 1, 0, 0}, nCount = 30},
	}
-------------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_main()
local nDate = tonumber(GetLocalDate("%y%m%d"))
local nTime = tonumber(GetLocalDate("%H%M"));
local nWeek = tonumber(GetLocalDate("%w"))
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"","<bclr=violet>"..myplayersex().." Ch≠a ßÒ C p 150 TrÎ L™n TrÔng Sinh Kh´ng GiÌi   Hπn ßºng C p MÌi C„ Th” Tham Gia Hoπt ßÈng Nµy")
return end
	if (nTime >= 0800 and nTime < 2300) then
		local szTitle = "<bclr=violet>Xin Chµo "..myplayersex().." C∏c Hπ C«n G◊<bclr>\n<bclr=red>Hi÷n Tπi SË L«n Nhi÷m VÙ CÒa "..myplayersex().." ßang Lµm: "..PlayerFunLib:GetTaskDailyCount(5981).."/30"
		local tbOpt = {
			"NhÀn Nhi÷m VÙ/allbrother_0801_WantTask",
			"Giao Nhi÷m VÙ/allbrother_0801_TaskPersonTaskAward",
			"HÒy B· Nhi÷m VÙ/allbrother_0801_CancelTask",
			"Xem Nhi÷m VÙ ß∑ NhÀn/allbrother_0801_QueryPersonTask",
			"NÈp L÷nh Bµi Bæc ß»u PhÙc M÷nh/allbrother_0801_TaskAward_PhucMenh",
			"Tπi Hπ C∏o Tı/OnCancel"
		}
		Say(szTitle, getn(tbOpt), tbOpt)
	else
		Talk(1,"","<bclr=violet>ThÍi Gian Hoπt ßÈng Bæt ß«u Tı 08h:00 ß’n 23h:00\n                      "..myplayersex().." Vui Lﬂng Quay Lπi Sau")
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
--------------------------------------------------------------Xem Nhi÷m VÙ------------------------------------------------------------------------------------------------------------
function allbrother_0801_QueryPersonTask()
local nTaskState = GetTask(TSK_StartNhiemVu_TaskState)
	if nTaskState == 0 then
		Talk(1,"","<bclr=red>"..myplayersex().." Ch≠a Ti’p NhÀn Nhi÷m VÙ Kh´ng Th” Xem")
	else
		if nTaskState > 1073741824 then
			nTaskState = nTaskState - 1073741824
		end
		Say(format("<bclr=violet>Nhi÷m VÙ Hi÷n Tπi Lµ: %s", allbrother_0801_tbTaskList[nTaskState].szShow), 0)
	end
end
-------------------------------------------------------------------NhÀn Nhi÷m VÙ C∏ Nh©n------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_WantTask()
local nTaskState = GetTask(TSK_StartNhiemVu_TaskState)
local nTaskTime = GetTask(TSK_StartTime_TaskTime)

if NhiemVuBacDau_CheckTaskLimit() == 0 then
	return 1
end
	if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then
		SetTask(TSK_StartNhiemVu_TaskState, 0)
		Msg2Player("Nhi÷m VÙ ß∑ V≠Ót Qu∏ ThÍi Gian Quy ßﬁnh N™n Bﬁ HÒy B· Nhi÷m VÙ Th t Bπi")
	end

	if nTaskState == 0 then
		for i = 1,1 do
			local nTaskId = random(1,getn(allbrother_0801_tbTaskList))
			SetTask(TSK_StartNhiemVu_TaskState, nTaskId)
			SetTask(TSK_NhiemVuBacDau_TaskLimit,GetTask(TSK_NhiemVuBacDau_TaskLimit)+1)
			SetTask(TSK_StartTime_TaskTime, GetCurServerTime())
			Msg2Player(format("NhÀn Æ≠Óc nhi÷m vÙ: %s", allbrother_0801_tbTaskList[nTaskId].szShow))
		end
	else
		Say("<bclr=violet>"..myplayersex().." ß∑ Ti’p NhÀn Nhi÷m VÙ CÒa Bæc ß»u L∑o Nh©n")
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
		Say(format("<bclr=violet>%s H´m Nay ß∑ NhÀn %d Nhi÷m VÙ Nµy RÂi.\n                                 Ngµy Mai Quay Lπi", myplayersex(), TSKV_NhiemVuBacDau_TaskLimit))
		return 0;
	end
	return 0;
end
---------------------------------------------HÒy Nhi÷m VÙ-------------------------------------------------------------------------------------------------
function allbrother_0801_CancelTask()
	if GetTask(TSK_StartNhiemVu_TaskState) == 0 then
		Say("<bclr=violet>Hi÷n Tπi: "..myplayersex().." Kh´ng C„ Nhi÷m VÙ Nµo C∂")
		return 0;
	end
	SetTask(TSK_StartNhiemVu_TaskState, 0)
	Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ HÒy B· Nhi÷m VÙ Thµnh C´ng")
end
------------------------------------------------Giao Nhi÷m VÙ---------------------------------------------------------------------------------------------------------------
function allbrother_0801_TaskPersonTaskAward()
local nTaskState	= GetTask(TSK_StartNhiemVu_TaskState)
local nTaskTime	= GetTask(TSK_StartTime_TaskTime)
local nTaskId		= 0;
	if nTaskState == 0 then
		Say("<bclr=violet>"..myplayersex().." Ch≠a Ti’p NhÀn Nhi÷m VÙ Nµo C∂")
		return	
	end
	if nTaskState < 1073741824 then
		if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then
			SetTask(TSK_StartNhiemVu_TaskState, 0)
			Say("Nhi÷m VÙ ß∑ V≠Ót Qu∏ ThÍi Gian Quy ßﬁnh N™n Bﬁ HÒy B· Nhi÷m VÙ Th t Bπi")
			return
		end
		nTaskId = nTaskState
		if allbrother_0801_tbTaskList[nTaskId].nTaskType == 0 then 
			local tbAward = {0, allbrother_0801_TaskFindItemAward, 1}
			springfestival08_lib_material_compose({allbrother_0801_tbTaskList[nTaskId].tbList, tbAward, "Hoµn thµnh nhi÷m vÙ ", "VÀt ph»m nhi÷m vÙ kh´ng ÆÛng ho∆c sË l≠Óng kh´ng ÆÒ", "Nhi÷m vÙ sai"}, "Giao vÀt ph»m")
		else
			Say("<bclr=violet>"..myplayersex().." V…n Ch≠a Hoµn Thµnh Nhi÷m VÙ Mau ßi Lµm ßi")	
		end
	else
		allbrother_0801_TaskFindNpcAward();
	end
end
------------------------------------------------Ph«n Th≠Îng Hoµn Thµnh Nhi÷m VÙ-------------------------------------------------------------------------------------------------------
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
	--Ph«n Th≠Îng 1
	local tbAward = {
		[1] = {
			{nExp = nExpAward},
			{szName="Hµnh Hi÷p L÷nh",tbProp={6,1,4834,1,0,0},nCount=10},
		},
		[2] = {--80%
			{szName="PhÛc Duy™n LÈ ßπi",tbProp={6,1,124,1,0,0},nCount=1,nRate=20},
		},
	}
	--Ph«n Th≠Îng 2
	local tbAward_x2 = {
		[1] = {
			{nExp = nExpAward*2},
			{szName="Hµnh Hi÷p L÷nh",tbProp={6,1,4834,1,0,0},nCount=20},
		},
		[2] = {--80%
			{szName="PhÛc Duy™n LÈ ßπi",tbProp={6,1,124,1,0,0},nCount=2,nRate=20},
		},
	}
	if (nTaskState > 1073741824) then 
		if (GetTask(HUYETLINHDON) == 0) then
			SetTask(TSK_StartNhiemVu_TaskState, 0)
		
			if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then 
				Say("Nhi÷m VÙ ß∑ V≠Ót Qu∏ ThÍi Gian Quy ßﬁnh N™n Bﬁ HÒy B· Nhi÷m VÙ Th t Bπi")
				return
			end

			tbAwardTemplet:GiveAwardByList(tbAward, "allbrother_0801_szActName");
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuBacDau")
			if (solan >= 30) then tbAwardTemplet:GiveAwardByList({tbProp={6,1,4821,1,0,0},nCount=30,nExpiredTime=HanSuDung,nBindState = -2},"Hoµn Thµnh 30 L«n Nhi÷m VÙ Bæc ß»u") end
		elseif (GetTask(HUYETLINHDON) == 1) then
			SetTask(TSK_StartNhiemVu_TaskState, 0)
		
			if nTaskTime + TSKV_StartTime_TaskTime <= GetCurServerTime() then 
				Say("Nhi÷m VÙ ß∑ V≠Ót Qu∏ ThÍi Gian Quy ßﬁnh N™n Bﬁ HÒy B· Nhi÷m VÙ Th t Bπi")
				return
			end

			tbAwardTemplet:GiveAwardByList(tbAward_x2, "allbrother_0801_szActName"); SetTask(HUYETLINHDON, 0)
			DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuBacDau")
			if (solan >= 30) then tbAwardTemplet:GiveAwardByList({tbProp={6,1,4821,1,0,0},nCount=30,nExpiredTime=HanSuDung,nBindState = -2},"Hoµn Thµnh 30 L«n Nhi÷m VÙ Bæc ß»u") end
		end
	else
		Say("Bπn d≠Íng nh≠ v…n ch≠a hoµn thµnh nhi÷m vÙ.", 0)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function allbrother_0801_TaskAward_PhucMenh()
	local tbAward = {0, allbrother_0801_TaskAwardFun, 1}
	springfestival08_lib_material_compose({allbrother_0801_tbPhucMenh, tbAward, "ChÛc Mıng "..myplayersex().." ß∑ PhÙc M÷nh Thµnh C´ng", "<bclr=violet>VÀt Ph»m Nhi÷m VÙ B· Vµo Kh´ng ßÛng Sai SË L≠Óng<bclr>", "Nhi÷m VÙ Sai"}, "Giao VÀt Ph»m", "30 L÷nh Bµi Bæc ß»u")
end

function allbrother_0801_TaskAwardFun()
if PhucMenhBacDau_CheckTaskLimit() == 0 then
	return 1;
end
	local tbAward = {{nExp_tl = 2e9},}
	tbAwardTemplet:GiveAwardByList(tbAward, allbrother_0801_szActName)
	SetTask(TSK_PhucMenhBacDau_TaskLimit, GetTask(TSK_PhucMenhBacDau_TaskLimit)+1)
	Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc Ph«n Th≠Îng PhÙc M÷nh Thµnh C´ng")
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
		Msg2Player(format("H´m Nay %s ß∑ Hoµn Thµnh %d L«n Nhi÷m VÙ RÂi Kh´ng Th” NhÀn Ph«n Th≠Îng N˜a", myplayersex(), TSKV_PhucMenhBacDau_TaskLimit))
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4514,1,0,0},nCount=30,nBindState = -2},"L÷nh Bµi Bæc ß»u")
		return 0; 
	end
	return 0;
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------