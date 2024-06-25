Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\task\\random\\task_head.lua");
Include("\\script\\baoruongthanbi\\head.lua");
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\task_addplayerexp.lua");
IncludeLib("FILESYS")
Include("\\script\\global\\g7vn\\g7libgm.lua")


tbKandy = {}
tbKandy.szFile = "\\dulieu\\baodanh.ini"

server_loadfile(tbKandy.szFile)


function OnlineAward()


	 OnlineAward_ResetStillOnlineNewDay()
	
	local tbOpt = {};
		local szTitle = format("Khi online �� 12 ti�ng ��i hi�p b�o danh �� nh�n ph�n qu� h�p d�n khi Open Server:");
		tbOpt = 
		{
			"Ta mu�n b�o danh v� �� online �� 12h/OnlineAward_GetBonus",
			"Ki�m tra th�i gian Online/OnlineAward_ShowTimeNow",
			"K�t th�c/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
end

function OnlineAward_GetBonus()
--if GetTask(3239) >= 1 then
		--Say("��i hi�p �� b�o danh r�i kh�ng c�n b�o danh n�a.")
		--return
	--end
--	if CheckIPBonus() == 0 then
--		Say("Hi�n t�i ��i hi�p ch�a th� nh�n th��ng, h�y th� l�i sau!",0)
--		return
--	end
		--if GetLevel() < 105 then
	--	Say("��ng c�p t� 105 tr� l�n m�i c� th� nh�n.")
		--return
	--end
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("Hi�n t�i ��i hi�p ch�a th� xem tin t�c v� ch�a online ���c gi� n�o xin h�y th� l�i sau!",0)
		return		
	end

	OnlineAward_SummaryOnlineTime()
	OnlineAward_StartTime()
	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	if nHour < 12 then
		Say("��i hi�p ch�a �� 12 gi� online tr�n m�ng kh�ng th� b�o danh",0)
		return
	end
		if (PlayerFunLib:CheckTaskDaily(BNCQ_TASKID_GET_TIMES,1,"��i hi�p �� b�o danh r�i","<") ~= 1) then

	--if (PlayerFunLib:CheckTaskDaily(BNCQ_TASKID_GET_TIMES,1,"H�m nay ��i hi�p �� nh�n th��ng 2 l�n r�i. Ng�y mai quay l�i nh�!","<") ~= 1) then
			return
	end
	
--	if CalcFreeItemCellCount() < 30 then
		--Say("Kh�ng �� 30 � tr�ng trong h�nh trang c�a ��i hi�p!",0)
		--return
--	end
	
	local tbOpt = {};
		local szTitle = format("��i hi�p, xin h�y ch�n ph�n th��ng:");
		tbOpt = 
		{
			"Ta �� �� �i�u ki�n b�o danh/#OnlineAward_ConfirmBonus()",
--			"Nh�n ph�n th��ng lo�i 2/#OnlineAward_ConfirmBonus(2)",
			"K�t th�c/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
	
	
--	if OnlineAward_PayTime(1*60*60) == 1 then	
--		PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
--		for i = 1, 10 do AddLenhBaiBH() end
--		for i = 1, 10 do AddMocNhan() end
--		tbAwardTemplet:GiveAwardByList({szName = "Huy�n Thi�n Ch�y", tbProp={6,1,2348,1,0,0}, nExpiredTime = 10080, nBindState = -2, nCount = 2}, "Online nh�n th��ng");
--	end
	
end


function OnlineAward_ConfirmBonus()
	--if CalcFreeItemCellCount() < 30 then
	--	Say("Kh�ng �� 30 � tr�ng trong h�nh trang c�a ��i hi�p!",0)
		--return
	--end
--	if (nType == 1) then
		if OnlineAward_PayTime(12*60*60) == 1 then	
			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
			batdaubaodanh()
--			for i = 1, 10 do AddLenhBaiBH() end
--			for i = 1, 10 do AddMocNhan() end
--			if (IsActiveGetHuyenTinh() == 1) then
--				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online nh�n th��ng");
--			end
--tl_addPlayerExp(10000000)
--tbAwardTemplet:GiveAwardByList({{szName="Ph� Qu� C�m H�p",tbProp={6,1,2402,1,1,0,0}, nBindState=-2,nCount=2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ph� Qu� C�m H�p",tbProp={6,1,2402,1,1,0,0}, nBindState=-2,nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Qu� Hoa T�u",tbProp={6,1,125,1,1,0,0}, nBindState=-2,nCount=2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thi�n S�n b�o L�",tbProp={6,1,72,1,1,0,0}, nBindState=-2,nCount=2,},}, "test", 1);
--SetTask(5110,GetTask(5110)+5)
--SetTask(3239,1)
--tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
--Msg2Player("<color=green>Ch�c m�ng ��i hi�p nh�n ���c<color=pink> 5 �i�m n�ng ��ng.")	
	--local szNews = format("Ch�c M�ng ��i Hi�p <color=green>"..GetName().."<color=yellow> �� b�o danh th�nh c�ng khi ��t �i�u ki�n online �� 12 ti�ng");
	--AddGlobalNews(szNews);
--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		end
--	else
--		if OnlineAward_PayTime(1*60*60) == 1 then	
--			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
--			tbAwardTemplet:GiveAwardByList(tbOnlineAwardExp[1], "Online nh�n th��ng");
--			if (IsActiveGetHuyenTinh() == 1) then
--				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online nh�n th��ng");
--			end
--		end
--	end
end


function OnlineAward_ShowTimeNow()
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("Hi�n t�i ��i hi�p ch�a th� xem tin t�c, h�y th� l�i sau!",0)
		return		
	end
	OnlineAward_SummaryOnlineTime()	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	local strMsg = format("Th�i gian tr�n m�ng c�a ��i hi�p l�:\n\t<color=yellow> %d <color> gi� <color=yellow> %d <color> ph�t <color=yellow> %d <color> gi�y.",nHour, nMin, nSec)
	OnlineAward_StartTime()
	Talk(1,"Online Nh�n Th��ng",strMsg)
end

function AddLenhBaiBH2222()
do return end
	--local nRandomTaskID = createRandomTask();
	local nRandomIndex = random(1, getn(tbRandomTask))
	local nRandomTaskID = tbRandomTask[nRandomIndex]
	
	nRandomItemIndex = AddItem(6, 2, 1020, 0, 1, 0, 0);
	SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
	nExpiredTime = BNCQ_OneDayTime
	ITEM_SetExpiredTime(nRandomItemIndex, nExpiredTime);
	SetItemBindState(nRandomItemIndex, -2);
	SyncItem(nRandomItemIndex);
	local strItem = GetItemName(nRandomItemIndex)
	Msg2Player("B�n nh�n ���c "..strItem)
	WriteLog(date("%Y%m%d %H%M%S").."\t".." Online nh�n th��ng "..GetAccount().."\t"..GetName().."\t".." Online nh�n th��ng nh�n ���c "..strItem)
end

function AddMocNhan2222()
do return end
		local ndx = AddItem(6,1,1085,1,0,0)
		SetSpecItemParam(ndx, 2, 9)
		nExpiredTime = BNCQ_OneDayTime
		ITEM_SetExpiredTime(ndx, nExpiredTime);
		SetItemBindState(ndx, -2);
		SyncItem(ndx)
		local strItem = GetItemName(ndx)
		Msg2Player("B�n nh�n ���c "..strItem)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Online nh�n th��ng "..GetAccount().."\t"..GetName().."\t".." Online nh�n th��ng "..strItem)
end

function Cancel()
end

function batdaubaodanh()
local szName = GetAccount()
local nBaoDanh = server_getdata(tbKandy.szFile,"BAO_DANH",szName);
if (tonumber(nBaoDanh) == 1 ) then
Say("T�i kho�n �� b�o danh r�i")
return
end 
if ( nBaoDanh == "" ) or ( nBaoDanh == nil ) then
--Msg2Player("T�i kho�n �� ch�a b�o dang ti�n h�nh b�o danh")
local szName = GetAccount()
	server_setdata(tbKandy.szFile,"BAO_DANH",szName,1);
	server_savedata(tbKandy.szFile);
	Say("B�o danh th�nh c�ng h�y ch� ��i ��n ng�y oppen d�ng t�i kho�n n�y �� nh�n ���c qu� h�p d�n nh�")
end
end


function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end
