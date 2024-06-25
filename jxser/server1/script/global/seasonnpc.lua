-- Tinh nang da tau edit by mcteam dong mo chuc nang

IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--���а�
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- ��������ͷ�ļ�
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- �������Ľ���ͷ�ļ�
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function storm_goon_start(gameid, b_nonext)
	
	local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
	
		nNum = nNum + 1;
		SetTask(ID_TASKLINK_LIMITNUM, nNum);
		
	if b_nonext then return end
	tl_dealtask()
	Task_MainDialog()
end

function checkTask_Limit()
	
local nNowDate = tonumber(GetLocalDate("%y%m%d"));
local nOldDate = GetTask(ID_TASKLINK_LIMITDATE);
local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
local nTinvat = GetTask(3001)
	
	if nNowDate~=nOldDate then
		
		SetTask(ID_TASKLINK_LIMITDATE, tonumber(GetLocalDate("%y%m%d")) );
		SetTask(ID_TASKLINK_LIMITNUM, 0);
		SetTask(ID_TASKLINK_LIMITCancelCount, 0);
		SetTask(3001,0)
		return 1;
		
	else	
		
		if GetTask(3001) == 0 then

			if nNum >= 20 then
				Say("Ha! Ha! V� thi�u hުp n�y! M�i ng�y l�m 20 l�n l� �� r�i! Ng�y mai tr� l�i nh�!", 0);
				return 0;
			end;
		
			

		end

		if GetTask(3001) == 1 then

			if nNum >= 25 then
				Say("Ha! Ha! V� thi�u hުp n�y! M�i ng�y l�m 25 l�n l� �� r�i! Ng�y mai tr� l�i nh�!", 0);
				return 0;
			end;
		
			
		end
		if GetTask(3001) == 2 then

			if nNum >= 30 then
				Say("Ha! Ha! V� thi�u hުp n�y! M�i ng�y l�m 30 l�n l� �� r�i! Ng�y mai tr� l�i nh�!", 0);
				return 0;
			end;
		end
		if GetTask(3001) == 3 then

			if nNum >= 35 then
				Say("Ha! Ha! V� thi�u hުp n�y! M�i ng�y l�m 35 l�n l� �� r�i! Ng�y mai tr� l�i nh�!", 0);
				return 0;
			end;
		end
		
				if GetTask(3001) == 4 then

			if nNum >= 40 then
				Say("Ha! Ha! V� thi�u hުp n�y! M�i ng�y l�m 40 l�n l� �� r�i! Ng�y mai tr� l�i nh�!", 0);
				return 0;
			end;
		end
				
		return 1;

	end;
	
end;
	
	
--Task_BuyGoods = {}
--Task_FindGoods = {}
--Task_ShowGoods = {}
--Task_FindMaps = {}
--Task_UpGround = {}
--Task_WorldMaps = {}
--Task_Level = {}
--Task_MainLevelRate = {}


Task_BuyGoods = AssignValue(Task_BuyGoods,TL_BUYGOODS)
Task_FindGoods = AssignValue(Task_FindGoods,TL_FINDGOODS)
Task_ShowGoods = AssignValue(Task_ShowGoods,TL_SHOWGOODS)
Task_FindMaps = AssignValue(Task_FindMaps,TL_FINDMAPS)
Task_UpGround = AssignValue(Task_UpGround,TL_UPGROUND)
Task_WorldMaps = AssignValue(Task_WorldMaps,TL_WORLDMAPS)

Task_MainTaskLink = AssignValue_TaskLink(Task_MainTaskLink,TL_LEVELLINK)
Task_MainLevelRate = AssignValue_TaskRate(Task_MainLevelRate,TL_MAINTASKLEVEL)

Task_AwardBasic = AssignValue_Award(Task_AwardBasic,TL_AWARDBASIC)

Task_AwardLink = AssignValue_LinkAward(TL_AWARDLINK)

Task_AwardLoop = AssignValue_Award(Task_AwardLoop,TL_AWARDLOOP)

Task_TalkGoods = AssignValue_TaskTalk(Task_TalkGoods,TL_TASKGOODSTALK)
Task_TalkBuy = AssignValue_TaskTalk(Task_TalkBuy,TL_TASKBUYTALK)
Task_TalkShow = AssignValue_TaskTalk(Task_TalkShow,TL_TASKSHOWTALK)
Task_TalkFind = AssignValue_TaskTalk(Task_TalkFind,TL_TASKFINDMAPS)
Task_TalkUp = AssignValue_TaskTalk(Task_TalkUp,TL_TASKUPGROUNDTALK)
Task_TalkWorld = AssignValue_TaskTalk(Task_TalkWorld,TL_TASKWORLDTALK)

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


function Task_NewVersionAward()
	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "yesourenwu")
	G_ACTIVITY:OnMessage("FinishYesou", nNum, nCancelNum);

	Msg2Player("��i hi�p �� ho�n th�nh <color=green>"..nNum.."<color> nhi�m v� trong ng�y")
	Msg2Player("��i hi�p �� h�y b� <color=yellow>"..nCancelNum.."<color> nhi�m v� trong ng�y")

	

	--Hoan thanh lien tiep 2 nv da tau khong huy xong nv thu 3 tan thu
	if (nNum - nCancelNum >= 2) then
		local tasknv1 = GetTask(idtaskgiftcodet92015)
		local tasknv2 = GetTask(idtaskCodetanthuG7nv2)
		local tasknv3 = GetTask(idtaskCodetanthuG7nv3)
		local tasknv4 = GetTask(idtaskCodetanthuG7nv4)
		local tasknv5 = GetTask(idtaskCodetanthuG7nv5)

		if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 0 and tasknv4 == 0 then
			local nlevel = GetLevel()
			local ntrungs = ST_GetTransLifeCount()
			SetTask(idtaskCodetanthuG7nv3,1)
			--if nlevel <99 and ntrungs == 0 then
			if nlevel < 79 then
				local lvthem = 79 - GetLevel()
				ST_LevelUp(lvthem)
				Msg2Player("Ch�c m�ng ��i hi�p �� <color=yellow>ho�n th�nh xong nhi�m v� th� 3<color> trong chu�i nhi�m v� t�n th�, v� g�p NPC H� tr� t�n th� �� xem nhi�m v� ti�p theo")
			end
		end
	end
	
	-----=== phan thuong da tau 20 nhiem vu lien tiep==========-----------
	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);	
	
	if (nNum - nCancelNum) == 20 then
		tbAward = 
			{

	
			{szName="�i�m Kinh Nghi�m",nExp = 200e6,nRate=70},
			{szName="M�t T�ch K� N�ng 150 C�p 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=3},
			{szName="M�t T�ch K� N�ng 150 C�p 22",tbProp={6,1,4346,1,0,0},nCount=1,nRate=1},
			--{szName="M�t T�ch K� N�ng 150 C�p 23",tbProp={6,1,4371,1,0,0},nCount=1,nRate=1},
			{szName="C�n kh�n song tuy�t b�i",tbProp={6, 1, 2219, 1, 1, 0},nCount=1,nRate=3},
			{szName="Tinh Ng�c",tbProp={6, 1, 4807, 1, 1, 0},nCount=random(20,50),nRate=4},
			
	
			}
		tbAwardTemplet:Give(tbAward, 1, {"DT", "test"})


		--logplayer("dulieu/moc20dt.txt"Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Da nhan moc 20 dt trong ngay ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> ho�n th�nhl 20 nhi�m v� d� t�u trong ng�y <color> nh�n ���c  <color=yellow>Nhi�u ph�n th��ng gi� tr�<color>")
	end
	
	-----=== phan thuong da tau 40 nhiem vu lien tiep==========-----------
		local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);
	if (nNum - nCancelNum) == 40 then
		
		tbAwardTemplet:GiveAwardByList({{szName="M�t T�ch K� N�ng 150 C�p 23",tbProp={6,1,4347,1,0,0},nCount=1,},}, "test", 1);	
		Msg2Player("H�m nay ho�n th�nh li�n t�c nhi�m v� D� T�u l�n th� 40 li�n ti�p kh�ng h�y , nh�n ��c ph�n th��ng!");

		


	end
	
end

-----------------------
	



function main()
	
	dofile("script/global/seasonnpc.lua");
	--dofile("script/global/g7vn/g7configall.lua")

	--do Say("Hi�n  t�i dang dua top! tinh nang nay se duoc mo khi dua top xong") return end

	
	if GetLevel() < 170 then
		Say("��ng c�p 170 tr� l�n m�i l�m nhi�m v� d� t�u .")
		return 1;

	end

	

	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);

	Msg2Player("��i hi�p �� ho�n th�nh <color=green>"..nNum.."<color> nhi�m v� trong ng�y")
	Msg2Player("��i hi�p �� h�y b� <color=yellow>"..nCancelNum.."<color> nhi�m v� trong ng�y")

	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if (nDate >= 60808 and nDate <= 60815) then
		local tab_Content = {
			"Xem c�n nhi�m v� g� �� l�m kh�ng/tasklink_entence",
		}
		tinsert(tab_Content, "Ta mu�n l�m m�t v�ng Li�n Hoa/menglanjie");
		tinsert(tab_Content, "R�i kh�i/Task_Wait");
		Say("M�y n�m nay chi�n tranh tri�n mi�n, d�n t�nh th�ng kh�. Ph��ng tr��ng Thi�u L�m t� mu�n t� ch�c th� trai m�ng L� Vu Lan �� m�i ng��i h��ng ch�t gi�y ph�t y�n b�nh", getn(tab_Content), tab_Content);
		return
	end;
	
	tasklink_entence();
end;

function menglanjie()
	if (GetExtPoint(0) <= 0 or GetLevel() < 30) then
		Say("Xin l�i! Ch� c� ng��i ch�i t� c�p <color=red>30, �� n�p th�<color> m�i c� th� tham gia ho�t ��ng n�y", 0)
		return 
	end;
	local tab_Content = {
		"Ta mu�n k�t v�ng Kim Li�n Hoa [c�n 9 Kim Li�n Hoa]/#process(1)",
		"Ta mu�n h�p th�nh v�ng M�c Li�n Hoa [c�n 9 M�c Li�n Hoa]/#process(2)",
		"Ta mu�n h�p th�nh v�ng Th�y Li�n Hoa [c�n 9 Th�y Li�n Hoa]/#process(3)",
		"Ta mu�n h�p th�nh v�ng H�a Li�n Hoa [c�n 9 H�a Li�n Hoa]/#process(4)",
		"Ta mu�n h�p th�nh v�ng Th� Li�n Hoa [c�n 9 Th� Li�n Hoa]/#process(5)",
		"Ch� ��n th�m �ng ch�t th�i!/Task_Wait"
	}
	Say("Ch� c�n ng��i �i thu th�p �� s� Li�n Hoa v� <color=yellow>"..MAKING_COST.."<color> l��ng ta s� gi�p ng��i k�t v�ng hoa tuy�t ��p. Nh�ng l�u �: m�i ng�y ch� c� th� k�t ���c 2 v�ng Li�n Hoa c�ng thu�c t�nh m� th�i.", getn(tab_Content), tab_Content);
end;

--{name, product}
MAKING_COST = 10000;
MAKING_COUNT = 9;
tab_Flower = {
	{1126, "Kim", 1131, 1760, 1761}, {1127, "M�c", 1132, 1762, 1763}, {1128, "Th�y ", 1133, 1764, 1765}, {1129, "H�a", 1134, 1766, 1767}, {1130, "Th� ", 1135, 1768, 1769}
}

function process(nIdx)
	if (nIdx < 1 or nIdx > getn(tab_Flower)) then
		return
	end;
	
	local nIndex;
	if (nIdx == 1) then
		nIndex = 1;
	elseif (nIdx == 2) then
		nIndex = 2;
	elseif (nIdx == 3) then
		nIndex = 3;
	elseif (nIdx == 4) then
		nIndex = 4;
	elseif (nIdx == 5) then
		nIndex = 5;
	end;
	
	Say("Mu�n l�m 1 v�ng <color=yellow>"..tab_Flower[nIdx][2].." Li�n Hoa<color> c�n c� 9 <color=yellow>"..tab_Flower[nIdx][2].."Li�n Hoa<color>. Ng��i x�c ��nh l�m ch�?", 2, "��ng! Xin l�o b�i tr� t�i!/#make_round("..nIndex..")", "Ta s� quay l�i sau!/Task_Wait");
end;

function make_round(nIdx)
	if (GetCash() < MAKING_COST) then
		Say("Xin t�m �� 10000 l��ng r�i h�y quay l�i! Ta � ��y ch�!", 1, "���c th�i! Ta �i l�y th�m ti�n!/Task_Wait");
		return
	end;
	
	local nCount = CalcEquiproomItemCount(6,1,tab_Flower[nIdx][1],-1);
	if (nCount < 9) then
		Say("Ng��i h�nh nh� ch�a �� <color=yellow>"..tab_Flower[nIdx][2].." Li�n Hoa<color=yellow>. Ch�a �� 9 <color=yellow>"..tab_Flower[nIdx][2].." Li�n Hoa<color> th� ta kh�ng th� gi�p ng��i k�t v�ng "..tab_Flower[nIdx][2].." Li�n Hoa ho�n", 1, "�� ta �i chu�n b� ��!/Task_Wait");
		return
	end;
	
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if (nDate ~= GetTask(tab_Flower[nIdx][4])) then
		SetTask(tab_Flower[nIdx][4], nDate);
		SetTask(tab_Flower[nIdx][5], 0);
	end;
	
	local nTimes = GetTask(tab_Flower[nIdx][5]);
	if (nTimes >= 2) then
		Say(tab_Flower[nIdx][2].."H�m nay �� k�t th�nh c�ng 2 v�ng r�i! Mai h�y ��n nh�!", 0)
		return
	end;
	
	Pay(MAKING_COST);
	ConsumeEquiproomItem(9, 6, 1, tab_Flower[nIdx][1], -1);
	SetTask(tab_Flower[nIdx][5], nTimes + 1);
	AddItem(6, 1, tab_Flower[nIdx][3], 1, 0, 0, 0);
	Say("V�ng "..tab_Flower[nIdx][2].." Li�n Hoa c�a ng��i �� k�t xong. H�y mang n� ��n ch� L� Quan �i!", 1, "Nh�n v�ng hoa/Task_Wait");
	Msg2Player("B�n nh�n ���c m�t"..tab_Flower[nIdx][2].." Li�n Hoa ho�n");
end;
    
function tasklink_entence()

_TaskLinkDebug() -- �����������޷�������ȥ�� BUG �޸�

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

local myCountLinks
local myCountTimes

local myCanceled = nt_getTask(1036)
local myTaskTime = GetGameTime() -- ��ȡ��Ϸʱ�䣬�����ж�����Ƿ񱻷�
local n = myTaskTime - nt_getTask(1029)
local myTaskInfo = ""


if (tl_gettaskcourse() == 2) then
	Task_GiveAward()
	return
end

	if ( myCanceled == 10) then
		if (n < 605) then
			Task_Punish()
			return
		else
			myCanceled = 0
			nt_setTask(1036,0)
			Task_Confirm()
		end
	end

	if (tl_gettaskcourse() == 0) then
		Say(" V� "..GetPlayerSex().." n�y xem ra �� b�n ba giang h� ���c m�t th�i gian d�i r�i nh�, c� mu�n tham gia kh�o nghi�m nhi�m v� li�n t�c c�a ta kh�ng?",3,"���c th�i! Ta kh�ng tin c� nhi�m v� n�o l�m kh� d� ���c ta/Task_Confirm","Ta mu�n bi�t kh�o nghi�m c�a ng��i n�i c� n�i dung ra sao/Task_Info","Ta b�n r�i, kh�ng r�nh ng�i t�n g�u v�i �ng/Task_Exit");
	end
	
	if (tl_gettaskcourse() == 3) then

		if checkTask_Limit()~=1 then return end;
	
		myCountLinks = tl_counttasklinknum(2)
		myCountTimes = tl_counttasklinknum(1)
		Say(":<enter>V� "..GetPlayerSex().." �� ho�n th�nh <color=yellow>"..myCountTimes.."<color>, nhi�m v� n�y ng�y h�m nay c� th� th�c hi�n l�i<color=yellow>"..(40 - GetTask(ID_TASKLINK_LIMITNUM)).."<color>, ng��i c� mu�n l�m n�a kh�ng?",2,"���ng nhi�n, mau cho ta bi�t nhi�m v� ti�p theo l� g� /Task_TaskProcess","�� ta ngh� ng�i m�t l�t ��! Ta b�n r�i/Task_Wait");
	elseif (tl_gettaskcourse() == 1) then
		Task_MainDialog()
	end

end

function Task_Confirm()

local myTaskID

tl_settaskstate(1,0) -- ���ڽ��е�һ������
tl_settaskstate(2,tl_getfirstlink()) -- ���ڽ��е�һ������
tl_settaskstate(3,tl_getfirstloop()) -- ���ڽ��е�һ������

tl_settaskstate(4,0) -- ʣ�� 0 ��ȡ������Ļ���
nt_setTask(DEBUG_TASKVALUE, 0);

tl_settaskstate(6,0)

storm_ask2start(4)	--Storm ��ʼ��ս
tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuDaTau")
end

function Task_TaskProcess()

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

if checkTask_Limit()~=1 then return end;

tl_taskprocess() -- ����ִ����һ�ֺ���

storm_goon_start()	--Storm�ָ�

end

function Task_MainDialog()

local myTaskInfo = tl_gettaskinfo() -- �������ϸ��Ϣ
local myTaskTotalNum = tl_counttasklinknum(1) + 1; -- ���������ͳ��
local myTitleText = "";

if (myTaskInfo == nil) then
	myTaskInfo = ""
end

tl_settaskcourse(1)


if myTaskTotalNum==0 or myTaskTotalNum==nil then
	myTitleText = "D� T�u:<enter><enter>"..myTaskInfo;
else
	myTitleText = "D� T�u:<enter><enter> ��y l� <color=green>"..myTaskTotalNum.."<color> nhi�m v� th�, "..myTaskInfo;
end;

Say(myTitleText,
	4,
	"Bi�t r�i, �� ta ho�n th�nh nhi�m v� xong m�i l�i t�m ng��i/Task_Wait",
	"Ta �� ho�n th�nh nhi�m v� l�n n�y, xin h�y ki�m tra l�i!/Task_Accept",
	--"Ta �� ho�n th�nh nhi�m v� l�n n�y, xin h�y ki�m tra l�i!/Task_GiveAward",
	"Nhi�m v� l�n n�y kh� qu�, Ta mu�n h�y b� kh�ng l�m n�a/Task_CancelConfirm",
	"Ta mu�n bi�t kh�o nghi�m c�a ng��i n�i c� n�i dung ra sao/Task_Info"
	);

nt_setTask(1045, 1);

end


function Task_CancelConfirm()

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

local myCountTimes = tl_counttasklinknum(1);  -- ��ҽ��е���������

if (myTaskCancel==0) then
	
	Say(" Hi�n t�i b�n kh�ng c� c� h�i n�o �� h�y b� nhi�m v�, b�n ch� c� th� l�m l�i t� ��u th�i! ��ng th�i ph�n th��ng t�ch l�y c�a b�n l�c tr��c s� ���c t�nh l�i t� ��u.",
		3,
		"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u/Task_NormalCancel",
		"Ta mu�n s� d�ng 100 m�nh s�n H� X� T�c �� h�y b� nhi�m v� l�n n�y/#Task_Cancel(2)",
		"Uhm! �� ta suy ngh� l�i ��/Task_Wait");
	
else
	
	Say(" Hi�n t�i b�n c�n"..myTaskCancel.." s� l�n c� h�i h�y b� nhi�m v�, b�n x�c ��nh h�y b� nhi�m v� l�n n�y ��ng kh�ng?",
		2,
		"��ng, ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u/#Task_Cancel(1)",
		"Uhm! �� ta suy ngh� l�i ��/Task_Wait");
	
end

end

function Task_NormalCancel()

Say(" B�n suy ngh� k� h�y b� nhi�m v� l�n n�y ��ng kh�ng?",2,"��ng l�i th�i n�a! ta kh�ng mu�n l�m nhi�m v� qu� qu�i n�y ��u/#Task_Cancel(1)","Th�i �� ta suy ngh� l�i ��!/Task_Wait");

end;

-- 1000 
function Task_TotalCancel()
	GiveItemUI("Giao th�y tinh cho D� T�u", "N�u ng��i �� quy�t h�y b� chu�i nhi�m v�, ta c�ng kh�ng ng�n c�n, h�y ��t v�o vi�n L�c Th�y Tinh!", "Task_TotalCancel_Main", "Task_Wait");
end;


function Task_TotalCancel_Main(nCount)
	
	local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = 0,0,0,0,0,0;
	local nIndex = 0;
	
	if nCount~=1 then
		Say("D� T�u: Ng��i ��a g� cho ta v�y? Ta ch� c�n <color=yellow>1 vi�n L�c Th�y Tinh<color> th�i!", 0);
		return
	end;
	
	nIndex = GetGiveItemUnit(1);
	nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(nIndex);
	
	if nGenre==4 and nDetail==240 and nParticular==1 then
		Task_Cancel(1);  -- ȫ��ȡ��
	else
		Say("D� T�u: Ng��i ��a g� cho ta v�y? Ta ch� c�n <color=yellow>1 vi�n L�c Th�y Tinh<color> th�i!", 0);
		return		
	end;
	
end;

function Task_ProcessInfo()

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

local myTaskType = tl_getplayertasktype()

local myTimes = tl_gettaskstate(1)
local myLinks = tl_gettaskstate(2)

local myCountTimes = tl_counttasklinknum(1)

-- local myTaskValue1 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue1"))
-- local myTaskValue2 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue2"))
	

-- local myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myCountLinks+myTimes)*0.1))

-- local myMainValueText1 = "��Ŀǰ��������Ʒ��ֵΪ: "..myTaskValue1.."  �����ֵΪ: "..myTaskValue2.."<enter>".."�����ڵ������ܼ�ֵ��Ϊ: "..myMainValue

--	Say("Ұ�ţ������ڽ��е��˵� "..myTaskLoops.." ���еĵ� "..myTaskLinks.." ���еĵ� "..myTaskTimes.." �Ρ�<enter>���������еĴ���Ϊ��"..tl_counttasklinknum(1).." ��<enter>���������е�����Ϊ��"..tl_counttasklinknum(2).." ��<enter>"..myMainValueText1,0);

	Say(" Hi�n t�i ng��i �� ho�n th�nh <color=yellow>"..myCountTimes.."<color> s� l�n nhi�m v� ta giao cho, c�n c� g�ng h�n nh�!", 0);

end

function Task_Accept()
	if (CalcFreeItemCellCount() < 5) then
		Say("H�nh trang �� ��y, h�y s�p x�p l�i cho ng�n n�p.",0);
		return
	end;
local myTaskType = tl_getplayertasktype()

	if (myTaskType == 1) then
		GiveItemUI("Nhi�m v� t�m v�t ph�m"," �a? Nh�ng th� ta c�n ng��i t�m ���c cho ta ch�a?","Task_Accept_01","Task_Wait");
	elseif (myTaskType == 2) then
		GiveItemUI("Nhi�m v� mua v�t ph�m"," �a? Nh�ng th� ta c�n ng��i t�m ���c cho ta ch�a?","Task_Accept_02","Task_Wait");
	elseif (myTaskType == 3) then
		GiveItemUI("Nhi�m v� hi�n th� v�t ph�m"," �a? Nh�ng th� ta c�n ng��i t�m ���c cho ta ch�a?","Task_Accept_03","Task_Wait");
	elseif (myTaskType == 4) then
		Task_Accept_04()
	elseif (myTaskType == 5) then
		Task_Accept_05()
	elseif (myTaskType == 6) then
		Task_Accept_06()
	else -- �쳣����
		Say(" Nh�ng th� ng��i giao cho ta ch�a ��t ��ng y�u c�u, c� g�ng h�n nh�!",0);
	end

end

function Task_Accept_01(nCount)
local myTaskGoods
local ItemGenre,DetailType,ParticularType,Level,nSeries,Luck

if ( nCount > 1 ) then
	Say(" V� n�y"..GetPlayerSex()..", Ng��i b� nhi�u �� v� nh� v�y xem t�i ta hoa c� m�t, t� t� th�i n�o!",0);
	return 0
elseif ( nCount == 0) then
	Say(" V� n�y"..GetPlayerSex()..", ng��i c� th�t �� b� v�o th� ta c�n kh�ng? Kh�ng ph�i l�o phu hoa m�t ch�?",0);
	return 0
end

	ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1))
--	magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1)
	myTaskGoods = {ItemGenre,DetailType,ParticularType,nSeries,Level}
	
--	tl_print ("Ұ�ż�������Ʒ��"..ItemGenre..DetailType..ParticularType..nSeries..Level)
	
	if (tl_checktask(myTaskGoods) == 1) then
		RemoveItemByIndex(GetGiveItemUnit(1)) -- ɾ��������ϵ���Ʒ
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say(" Nh�ng vi�c b�n l�m ch�a ��t ��ng y�u c�u, c� g�ng h�n nh�!",0);
	end
end

function Task_Accept_02(nCount)

local myTaskGoods
local ItemGenre, DetailType, ParticularType, Level, nSeries, Luck
local magictype,p1,p2,p3
local i,n,m = 0,0,0

if ( nCount > 1 ) then
	Say(" V� n�y"..GetPlayerSex()..", Ng��i b� nhi�u �� v� nh� v�y xem t�i ta hoa c� m�t, t� t� th�i n�o!",0);
	return 0
elseif ( nCount == 0) then
	Say(" V� n�y"..GetPlayerSex()..", ng��i c� th�t �� b� v�o th� ta c�n kh�ng? Kh�ng ph�i l�o phu hoa m�t ch�?",0);
	return 0
end

	for i=1,6 do
		ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1))
		magictype , p1, p2, p3 = GetItemMagicAttrib(GetGiveItemUnit(1), i)
		myTaskGoods = {ItemGenre,DetailType,ParticularType,Level,nSeries,magictype,p1,p2,p3}
--		tl_print("������ħ������ "..i.." :".." ħ�� ID Ϊ: "..magictype.."  ħ������1Ϊ: "..p1.."  ħ������2Ϊ: "..p2.." ħ������3Ϊ: "..p3);
		n = tl_checktask(myTaskGoods)
		if (n == 1) then
			m = 1
		end
	end
	
	if (m == 1) then
		RemoveItemByIndex(GetGiveItemUnit(1)) -- ɾ��������ϵ���Ʒ
		Task_AwardRecord()
		Task_GiveAward()
	else
		Say(" Nh�ng vi�c b�n l�m ch�a ��t ��ng y�u c�u, c� g�ng h�n nh�!",0);
	end
	
end


function Task_Accept_03(nCount)

local myTaskGoods
local magictype,p1,p2,p3
local i,n,m = 0,0,0

if ( nCount > 1 ) then
	Say(" V� n�y"..GetPlayerSex()..", Ng��i b� nhi�u �� v� nh� v�y xem t�i ta hoa c� m�t, t� t� th�i n�o!",0);
	return 0
elseif ( nCount == 0) then
	Say(" V� n�y"..GetPlayerSex()..", ng��i c� th�t �� b� v�o th� ta c�n kh�ng? Kh�ng ph�i l�o phu hoa m�t ch�?",0);
	return 0
end

	for i=1,6 do -- ѭ���������е�ħ�����Կ����Ƿ��к��ʵ�
		magictype,p1,p2,p3 = GetItemMagicAttrib(GetGiveItemUnit(1),i)
		myTaskGoods = {magictype,p1,p2,p3}
		n = tl_checktask(myTaskGoods)
		if (n == 1) then
			m = 1
		end
	end	

	if (m == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say(" Nh�ng vi�c b�n l�m ch�a ��t ��ng y�u c�u, c� g�ng h�n nh�!",0);
	end
	
end

function Task_Accept_04()

	if (tl_checktask() == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say(" Nh�ng vi�c b�n l�m ch�a ��t ��ng y�u c�u, c� g�ng h�n nh�!",0);
	end
	
end

function Task_Accept_05()

	if (tl_checktask() == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say(" Nh�ng vi�c b�n l�m ch�a ��t ��ng y�u c�u, c� g�ng h�n nh�!",0);
	end
	
end

function Task_Accept_06()
	
	if (tl_checktask()==1) then
		Task_AwardRecord()
		Task_GiveAward()
		return 1
	else
		Say(" Hahaha! V� n�y"..GetPlayerSex()..", ta tuy b�t t�i, nh�ng c�ng hi�u ���c ch� t�n tr�n giang h�, ng��i c�n ch�a thu th�p �� m�nh s�n H� X� T�c m� ta y�u c�u sao c� th� ��n l�nh th��ng ��y?",0);
		return 0
	end

end

function Task_Cancel(nType)

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���

local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���
local myCanceled = nt_getTask(1036) -- ����Ѿ�����ȡ���˶��ٴ�
local myMapNum = nt_getTask(1027) -- ������������ж��ٸ�ɽ�����ͼ��Ƭ

local myNewCancel = GetTask(DEBUG_TASKVALUE);  -- ���ݵ�ȡ������

local nTotalTaskNum = tl_counttasklinknum(1); -- ��ȡ��ǰ���һ�����˶��ٴ�����

if nt_getTask(1045)~=1 then
	return
end;

if _CancelTaskDebug()~=1 then
	Say("Uhm! B�n tr� n�y h�nh nh� kh�ng c�n c� h�i h�y b� ", 0);
	return
end;

if checkTask_Limit()~=1 then return end;

	if (nType==2) then
		if (myMapNum>=100) then
			myMapNum = myMapNum - 100;
			nt_setTask(1027, myMapNum);
			myTaskCancel = myTaskCancel + 1;
			Msg2Player("B�n �� s� d�ng 100 m�nh s�n H� X� T�c �� h�y b� nhi�m v� n�y!");
			Msg2Player("M�nh s�n H� X� T�c hi�n t�i c�a b�n c�n d� "..myMapNum.." T�m!");
		else
			Say(" ng��i c� ��ng �� mang <color=yellow>100<color> m�nh s�n H� X� T�c kh�ng? Ta c� nh�n l�m kh�ng v�y?",0);
			return
		end;
	end;

	if (myTaskTimes == 0) and (myTaskLinks == tl_getfirstlink()) then
	
		if (myTaskCancel == 0) then
		
			myCanceled = myCanceled + 1
			nt_setTask(1036,myCanceled)
	
			if ( myCanceled > 2) then -- �����������ڳ���ȡ��������������������
				myCanceled = 10	
				nt_setTask(1036,myCanceled)
				nt_setTask(1029,GetGameTime())
				Task_Punish()
				
				return
				
			end
			
		end
		
		SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- ���ӵ����ȡ������
		storm_ask2start(4)	--Storm ��ʼ��ս
		
		return
		
	end

	if (myTaskCancel >= 1) then -- �����һ��л���ȡ���Ļ�����������ǰ�ȼ�������
	
		-- д��ȡ������ʱ�� LOG
		_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel);
		
		myTaskCancel = myTaskCancel - 1
		
		tl_settaskstate(4,myTaskCancel)
		
		nt_setTask(DEBUG_TASKVALUE, myTaskCancel);
			
	else
		-- д��ȡ������ʱ�� LOG
		_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel);
	
		tl_settaskstate(1,0) -- ���ڽ��е�һ������
		tl_settaskstate(2,tl_getfirstlink()) -- ���ڽ��е�һ������
		tl_settaskstate(3,0) -- �ӵ� 0 ����ʼ
		
		tl_settaskstate(4,0) -- ʣ�� 0 ��ȡ������Ļ���
		nt_setTask(DEBUG_TASKVALUE, 0);
		
		tl_settaskstate(6,0) -- ��ǰ���������� 0 ��
		nt_setTask(1036,0) -- �ͷ������ۻ���Ϊ 0 
		-- �������¼һ�����������
		nt_setTask(1044, tl_counttasklinknum(1));
		
		Msg2Player("<color=yellow>Chu�i nhi�m v� D� T�u �� x�a b� ho�n to�n, b�y gi� s� ph�i l�m l�i t� nhi�m v� ��u ti�n<color>!");
	end
	
	nt_setTask(1045, 2);
	
	SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- ���ӵ����ȡ������
	storm_ask2start(4)	--Storm ��ʼ��ս
end;


function Task_Info()
	Talk(4,
		"tasklink_entence",
		" L�n n�y ta �� s�p x�p c�c lo�i kh�o nghi�m nhi�m v� nh� �� th� th�ch v� thu�t c�ng nh� t�nh ki�n nh�n c�a c�c v� anh h�ng h�o ki�t ��y.",
		" M�i l�n ho�n th�nh nhi�m v� ��u c� <color=red>ph�n th��ng t��ng �ng<color> cho c�c v�, n�u c� th� li�n t�c ho�n th�nh nhi�m v� ���c ��t ra th� c� ���c <color=red>l� v�t t�t h�n<color>d�ng t�ng ri�ng, n�u nh� ai �� c� th� ��t ��n <color=red>8000<color> nhi�m v� s� nh�n ���c <color=red>s� ��n ��p ��n b�t ng�<color>!",
		" N�u nh� ng��i b� qua m�t nhi�m v� trong s� nhi�m v� th� t�nh l�i t� nhi�m v� ban ��u. Nh�ng m�, ta c� l�c c�ng cho c� h�i h�y b� nhi�m v�, �� xem ng��i n�m b�t ra sao th�i!",
		" Sao r�i? Ng��i thanh ni�n c� mu�n ti�p nh�n s� kh�o nghi�m c�a ta kh�ng?"
		);
end


function Task_Exit()

	if (GetSex() == 0) then
		Say(" Hahaha! ��i sau khi v� ��i hi�p n�y th�ng qua kh�o nghi�m xong nh�n ���c c�c ph�n th��ng phong ph�, t� nhi�n l�i bi�t ��n t�m ta th�i!",0);
	else
		Say(" Hahaha! ��i sau khi v� n� hi�p n�y th�ng qua kh�o nghi�m xong nh�n ���c c�c ph�n th��ng phong ph�, t� nhi�n l�i bi�t ��n t�m ta th�i!",0);
	end

end


function Task_Wait()

end


function Task_Punish()
	Say(" V� n�y"..GetPlayerSex().."C� ph�i g�p l�m kh�ng, kh�o nghi�m c�a ta s�p x�p kh� ��n nh� v�y �? L�n sau ��n v�y!",0);
	return 0
end

function Task_GiveAward()

	local i
	
	local myAward
	local myLinkAward,myLoopAward
	
	local myGoodsText = ""
	local ShowText = {"","",""}

	-- local nTotalTaskNum = tl_counttasklinknum(1); -- ��ȡ��ǰ���һ�����˶��ٴ�����
	-- if (nTotalTaskNum ~= 0 and mod(nTotalTaskNum, 10) == 0 and GetTask(TKS_TASKLINK_SPITEM) ~= nTotalTaskNum) then
		-- SetTask(TKS_TASKLINK_SPITEM, nTotalTaskNum);
		-- local tbItem = {tbProp = {6, 1, 2374, 1, 0, 0}}
		-- tbAwardTemplet:GiveAwardByList(tbItem, "seasonnpc_10task")
		-- Msg2Player(format("Ch�c m�ng ��i hi�p �� ho�n th�nh li�n ti�p %d nhi�m v� D� T�u, nh�n ���c ph�n th��ng %s!", 10, "B�o r��ng th�n b� c�a D� T�u"));
	-- end

	local nTongValue;
	myAward, nTongValue = tl_giveplayeraward(1);
	if (not nTongValue) then
		nTongValue = 0;
	end	
	local nBeishu = greatnight_huang_event(4);
	if (nBeishu > 0) then
		nTongValue = floor(nTongValue / nBeishu);
	end;
	
	for i=1,3 do
		if (myAward[i][1] == 1) then
			ShowText[i] = "Nh�n ���c "..myAward[i][9].."/3".."/"..myAward[i][2].."/SelectAward_Money"
		elseif (myAward[i][1] == 2) then
			ShowText[i] = "Nh�n ���c "..myAward[i][9].."/4".."/"..myAward[i][2].."/SelectAward_Exp"
		elseif (myAward[i][1] == 3) then
			myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8]
			ShowText[i] = "Nh�n ���c "..myAward[i][9].."/5".."/"..myGoodsText.."/mySG"
		elseif (myAward[i][1] == 4) then
			if (myAward[i][10]==1) then
				myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8]
				ShowText[i] = myAward[i][9].."/6".."/"..myGoodsText.."/mySG"
			elseif (myAward[i][10]==2) then
				ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Exp"
			elseif (myAward[i][10]==3) then
				ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Money"
			end
			
		elseif (myAward[i][1] == 5) then
			ShowText[i] = "Nh�n ���c "..myAward[i][9].."/7".."/"..myAward[i][1].."/SelectAward_Cancel"
		end
		
	end
	
	tl_print(ShowText[1])
	tl_print(ShowText[2])
	tl_print(ShowText[3])
	
	Prise( "Ng��i v�t v� qu�, xin m�i v� "..GetPlayerSex().." ch�n m�n m�nh th�ch �i! ",ShowText[1],ShowText[2],ShowText[3] );
	
end

function Task_AwardRecord()
	--Storm �ӻ���
	local filename = tl_gettasktextID(tl_getplayertasktype())
	local tabcol = tl_gettasktablecol()
	local myTaskValue1 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue1"))
	local myTaskValue2 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue2"))
	local myMainValue = myTaskValue1 + myTaskValue2
	storm_addpoint(4, myMainValue)
	
	tl_settaskcourse(2) -- ����Ľ�չ�̶�Ϊ2�����ǻ�û�з���
	nt_setTask(1037, GetGameTime() + tonumber(GetLocalDate("%H%M%S")));
end


function mySG(myQuality,myGenre,myDetail,myParticular,myLevel,myFive)

if (tl_gettaskcourse() == 3) then
	Say("Ng��i �� l�nh th��ng r�i! ��nh g�t gi� n�y �?",0);
	return
end

	if (CalcFreeItemCellCount() < 5) then
		Say("H�nh trang �� ��y, h�y s�p x�p l�i cho ng�n n�p.",0);
		return
	end;
	
	if (myQuality == 0) then
		local nItemIndex =  AddItem(myGenre,myDetail,myParticular,myLevel,myFive,0,0)
		if (GetProductRegion() == "vn") then
			-- LLG_ALLINONE_TODO_20070802
			if (myDetail==238) or (myDetail==239) or (myDetail==240) or (myDetail==252) then
				WriteLog(" [Ghi nh� nh�n ph�n th��ng]"..date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]")..": T�i kho�n"..GetAccount()..", nh�n v�t"..GetName().."Trong nhi�m v� li�n ti�p nh�n ���c ph�n th��ng l� b�o th�ch, s� th� t� lo�i b�o th�ch l�:"..myDetail)
			elseif (myGenre == 6 and myDetail == 1 and myParticular ==1475) then
				local nLastTime = FormatTime2Number(GetCurServerTime() + 7*24*60*60);
				local nYear = floor(nLastTime / 100000000);
				local nMMDD = mod(floor(nLastTime / 10000) , 10000);
				SetItemMagicLevel(nItemIndex, 1, GetTask(TSK_TASKLINK_SEANSONPOINT));
				SetItemMagicLevel(nItemIndex, 2, nYear);
				SetItemMagicLevel(nItemIndex, 3, nMMDD);
				SyncItem(nItemIndex);
				WriteLog(format("[Log ph�n th��ng chu�i nhi�m v� D� T�u]%s: T�i kho�n %s, nh�n v�t %s ho�n th�nh chu�i nhi�m v� D� T�u nh�n ���c �i�m T�ch l�y D� T�u (�i�m kinh nghi�m: %d)",
					date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]"),
					GetAccount(),
					GetName(),
					GetTask(TSK_TASKLINK_SEANSONPOINT)
				))
				SetTask(TSK_TASKLINK_SEANSONPOINT, 0);
			end
		else
			WriteLog(" [Ghi nh� nh�n ph�n th��ng]"..date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]").." [m�t m�:"..GetAccount().."] [nh�n v�t:"..GetName().."]".."Nh�n ���c 1 "..szName);
		end
	else
		AddGoldItem(0,myGenre)
		AddGlobalNews("Ng��i ch�i "..GetName().." �� ho�n th�nh nhi�m v� D� T�u n�n �� nh�n ���c 1 trang b� Ho�ng Kim!!!");
		WriteLog(" [Ghi nh� nh�n ph�n th��ng]"..date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]")..": T�i kho�n"..GetAccount()..", nh�n v�t"..GetName().."Trong nhi�m v� li�n ti�p nh�n ���c ph�n th��ng l� trang b� Ho�ng Kim s� th� t� l�:"..myGenre)
	end
	Msg2Player("B�n nh�n ���c m�t ph�n th��ng nhi�m v�!");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();
	
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end

function SelectAward_Money(nAward)

if (tl_gettaskcourse() == 3) then
	Say("Ng��i �� l�nh th��ng r�i! ��nh g�t gi� n�y �?",0);
	return
end
	local nAward = nAward * 2
	Earn(nAward)
	Msg2Player("B�n nh�n ���c <color=green>"..nAward.."<color> l��ng  b�c");
	
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	
	if nAward>=300000 then
		WriteLog(" [Ghi nh� chu�i nhi�m v�]"..
				 date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]")..
				 " [T�i kho�n]"..GetAccount()..
				 " [Nh�n v�t]"..GetName()..
				 "Trong nhi�m v� li�n ti�p nh�n ���c<money>"..nAward.."</money>ph�n th��ng l� l��ng b�c!");
	end;
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end


function SelectAward_Exp(nAward)
local nExp = 4318540
local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
if nNum <= 4 then
	nAward = nExp + nExp  * (nNum + 1)
end
if nNum > 4 then
	nAward = nExp * nNum  + nExp * (nNum - 5)
end

if (tl_gettaskcourse() == 3) then
	Say("Ng��i �� l�nh th��ng r�i! ��nh g�t gi� n�y �?",0);
	return
end
	
	tl_addPlayerExp(nAward)
	Msg2Player("B�n nh�n ���c <color=green>"..nAward.."<color> �i�m kinh nghi�m");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end

function SelectAward_Change(nAward)

if (tl_gettaskcourse() == 3) then
	Say("Ng��i �� l�nh th��ng r�i! ��nh g�t gi� n�y �?",0);
	return
end

	Msg2Player("B�n c� th�m c� h�i nh�n ���c m�t ph�n th��ng ng�u nhi�n!");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();

end

function SelectAward_Cancel(nAward)

local myCancel = 0;
local myNewCancel = GetTask(DEBUG_TASKVALUE);

	if (tl_gettaskcourse() == 3) then
		Say("Ng��i �� l�nh th��ng r�i! ��nh g�t gi� n�y �?",0);
		return
	end
	
	myCancel = tl_gettaskstate(4)
	myCancel = myCancel + 1
	
	if myNewCancel==0 then
		myNewCancel = myCancel;
	else
		myNewCancel = myNewCancel + 1;		
	end;
	
	if myNewCancel<=254 then

		nt_setTask(DEBUG_TASKVALUE, myNewCancel);
	end;
	
	tl_settaskstate(4, myCancel);
	
	if myCancel<=254 then
		Msg2Player("B�n nh�n ���c <color=green>1 c� h�i h�y b� nhi�m v�<color>!");
	end;

	WriteLog(" [Ghi nh� nh�n ph�n th��ng]"..
			 date(" [%yn�m%mth�ng%dng�y%Hgi�%Mph�t%Sgi�y]")..
			 " [T�i kho�n]"..GetAccount()..
			 " [Nh�n v�t]"..GetName()..
			 "B�n nh�n ���c c� h�i h�y b� nhi�m v�, hi�n t�i c�n c� th� c� h�i h�y <"..myCancel.."> l�n.");
	
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end


function PayPlayerLinkAward()

--local myGolden = {2,6,11,16,21,22,26,31,39,40,42,46,51,54,56,60,61,67,71,76,81,87,92,94,96,101,106,107,115,119,121,122,126,132,136,144,145,146} -- 20 �������ƽ�װ���ı��
local myGolden = {204,205,206,207,190,191,192,193,159,160,161,162,163,164,165,166,167} -- 20 �������ƽ�װ���ı��
local vkhkmp = {6,11,16,21,26,31,39,46,51,54,61,71,76,81,96,101,116,121,122,126} -- vu khi hkmp
local anban =  {6,11} -- trang bi an bang
local dinhquoc =  {6,11} -- trang bi dinhquoc
local hiepcot =  {6,11} -- trang bi hiep cot
local nhutinh =  {6,11} -- trang bi nhu tinh
local nGoldenID = 0

local myTaskTimes = tl_gettaskstate(1)
local myTaskLinks = tl_gettaskstate(2)
local myTaskLoops = tl_gettaskstate(3)

local nTotalTask = tl_counttasklinknum(1);

Ladder_NewLadder(10118, GetName(), nTotalTask, 1);

--nTotalTask = 100 --test so lan nhiem vu da tau

tl_getlinkaward(Task_AwardLink, nTotalTask);

if (nTotalTask == 8000) then
	nGoldenID = vkhkmp[random(getn(vkhkmp))]
	AddGoldItem( 0, nGoldenID )
	--WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."����������������Ϊ��� 8000 ������õ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..nGoldenID)
	logplayer("dulieu/datau8000.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoan thanh 8000 da tau nhan duoc [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nGoldenID))
	AddGlobalCountNews("��i hi�p "..GetName().." �� ho�n th�nh 8000 chu�i nhi�m v� d� t�u li�n ti�p may m�n nh�n ���c trang b� HK ", 3);
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 8000 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c trang b� HK ");
	end
	return
end

if (nTotalTask == 5000) then
	nGoldenID = nAnBang[random(getn(nAnBang))]
	AddGoldItem( 0, nGoldenID )
	--WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."����������������Ϊ��� 8000 ������õ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..nGoldenID)
	logplayer("dulieu/datau4000.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoan thanh 4000 da tau nhan duoc [%s] ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nGoldenID))
	AddGlobalCountNews("��i hi�p "..GetName().." �� ho�n th�nh 5000 chu�i nhi�m v� d� t�u li�n ti�p may m�n nh�n ���c trang b� an bang", 3);
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 5000 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c trang b� an bang");
	end
	return
end


if (nTotalTask == 3500) then
	nGoldenID = nNhuTinh[random(getn(nNhuTinh))]
	AddGoldItem( 0, nGoldenID )
	--WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."����������������Ϊ��� 8000 ������õ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..nGoldenID)
	logplayer("dulieu/datau2000.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoan thanh 3500 da tau nhan duoc [%s] ! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nGoldenID))
	AddGlobalCountNews("��i hi�p "..GetName().." �� ho�n th�nh 3500 chu�i nhi�m v� d� t�u li�n ti�p may m�n nh�n ���c trang b� nhu t�nh", 3);
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 3000 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c trang b� nhu t�nh");
	end
	return
end

if (nTotalTask == 3000) then
	nGoldenID = nDinhQuoc[random(getn(nDinhQuoc))]
	AddGoldItem( 0, nGoldenID )
	--WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."����������������Ϊ��� 8000 ������õ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..nGoldenID)
	logplayer("dulieu/datau2000.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoan thanh 3000 da tau nhan duoc [%s] ! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nGoldenID))
	AddGlobalCountNews("��i hi�p "..GetName().." �� ho�n th�nh 3000 chu�i nhi�m v� d� t�u li�n ti�p may m�n nh�n ���c trang b� ��nh qu�c", 3);
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 3000 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c trang b� ��nh Qu�c");
	end
	return
end

if (nTotalTask == 2500) then
	nGoldenID = nHiepCot[random(getn(nHiepCot))]
	AddGoldItem( 0, nGoldenID )
	--WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."����������������Ϊ��� 8000 ������õ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..nGoldenID)
	logplayer("dulieu/datau2000.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoan thanh 2500 da tau nhan duoc [%s] ! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nGoldenID))
	AddGlobalCountNews("��i hi�p "..GetName().." �� ho�n th�nh 2500 chu�i nhi�m v� d� t�u li�n ti�p may m�n nh�n ���c trang b� hi�p c�t", 3);
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 2500 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c trang b� hi�p c�t");
	end
	return
end

if (nTotalTask == 200) then
tbAwardTemplet:GiveAwardByList({{szName = "Ti�n Th�o L� 1h ", tbProp ={ 6, 1, 71, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Ti�n Th�o L�"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 200 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c Ti�n Th�o L�");
	end
	return
end

if (nTotalTask == 400) then
tbAwardTemplet:GiveAwardByList({{szName = "Qu� Hoa T�u", tbProp ={ 6, 1, 125, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Qu� Hoa T�u"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 400 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c Qu� Hoa T�u");
	end
	return
end

if (nTotalTask == 600) then
tbAwardTemplet:GiveAwardByList({{szName = "Th�y Tinh", tbProp ={ 4, 239, 1, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Th�y Tinh"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 600 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c Th�y Tinh");
	end
	return
end

if (nTotalTask == 800) then
tbAwardTemplet:GiveAwardByList({{szName = "Tinh H�ng B�o Th�ch", tbProp ={ 4, 353, 1, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Tinh H�ng B�o Th�ch"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 800 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c Tinh H�ng B�o Th�ch");
	end
	return
end

if (nTotalTask == 1000) then
tbAwardTemplet:GiveAwardByList({{szName = "Ti�n Th�o L� ��c Bi�t", tbProp ={ 6, 1, 1181, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Ti�n Th�o L� ��c Bi�t"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 1000 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c Ti�n Th�o L� ��c Bi�t");
	end
	return
end

if (nTotalTask == 1500) then
tbAwardTemplet:GiveAwardByList({{szName = "V� L�m M�t T�ch", tbProp ={ 6, 1, 26, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "V� L�m M�t T�ch"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 1500 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c V� L�m M�t T�ch");
	end
	return
end

if (nTotalTask == 2000) then
tbAwardTemplet:GiveAwardByList({{szName = "T�y T�y Kinh", tbProp ={ 6, 1, 22, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "T�y T�y Kinh"))
	for i=1,3 do
		Msg2Player("�� ho�n th�nh 2000 nhi�m v� d� t�u li�n ti�p may m�n nh�n ����c T�y T�y Kinh");
	end
	return
end
---------------------------------------------------------------
storm_ask2start(4, 1)	--Storm ��ʼ��ս

end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function _TaskLinkDebug()

	if (nt_getTask(1030)==0) and (tl_gettaskcourse()==1) then
		nt_setTask(1030,2);
		tl_savetalkvalue(1,2);
		tl_savetalkvalue(2,2);
		tl_savetalkvalue(3,2);
		tl_savetalkvalue(4,2);
		tl_savetalkvalue(5,2);
		tl_savetalkvalue(6,2);
	end

end

function _CancelTaskDebug()

local nOrgTask = GetTask(DEBUG_TASKVALUE);
local nDecTask = tl_gettaskstate(4);
local nDiff    = 0;

	if nOrgTask==nDecTask or nOrgTask==0 then
		return 1;
	else
		WriteLog(" [B�ng nhi�m v� �� ghi nh� sai]"..
				 date(" [%yn�m%mth�ng%dng�y%Hgi�%Mph�t%Sgi�y]")..
				 " [T�i kho�n]"..GetAccount()..
				 " [Nh�n v�t]"..GetName()..
				 "C� h�i h�y b� kh�ng c�n b�ng, hi�n t�i c� h�i h�y b� c�n <"..nDecTask.."> l�n, ph�n c� h�i h�y b� c�n <"..nOrgTask..">.");
		return 0;
	end;

end;


function _WriteCancelLog(nType, nTime, nCancel)

	if nType==1 then
		WriteLog(" [H�y b� k� l�c nhi�m v� li�n ti�p]"..date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]")..": T�i kho�n"..GetAccount()..", nh�n v�t"..GetName().."T�i nhi�m v� th� "..nTime.."H�y b� c� h�i c�n d� "..nCancel.."gi� h�y b� m�t l�n nhi�m v�.");
	else
		WriteLog(" [H�y b� k� l�c nhi�m v� li�n ti�p]"..date(" [%y n�m %m th�ng %d ng�y  %H gi� %M ph�t]")..": T�i kho�n"..GetAccount()..", nh�n v�t"..GetName().."T�i nhi�m v� th� "..nTime.." d�ng 100 t�m s�n H� X� T�c h�y b� nhi�m v�.");
	end;

end;

