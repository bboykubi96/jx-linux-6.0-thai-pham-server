--T�nh n�ng th�t th�nh ��i chi�n ti�p ��u seach key "T�m th�i ch�a m�."
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\missions\\citywar_global\\infocenter_head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\lib\\awardtemplet.lua")

--VNG_TSK_AWARD_LIMIT_TIME = 2747
--VNG_TSK_EXP_LIMIT_TIME = 2743
tbVngLimitTime = {}

-- Include to call  ITEM_SetExpiredTime - Created by TinhPN - 20110425
IncludeLib("ITEM")
-- ����ս�������
AWARD_BOX = {
	Name = "C�ng Th�nh L� Bao",
	ID = {6, 1, 2815, 1},
	RemoteCall = "Protocol:ReduceBox",
}

-- ��Ԫ��¶����
AWARD_DEW = {
	Name = "H�n Nguy�n Linh L�",
	ID = {6, 1, 2312, 1},
	RemoteCall = "Protocol:ReduceDew",
}

AWARD_GUARD = {
	Name = "V� Tr� L� Bao",
	ID = {6, 1, 2814, 1},
	RemoteCall = "Protocol:ReduceGuardAward",
}

-- ��ѯ������״̬��
QUERY_TABLE = {}

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\missions\\citywar_global\\citybulletin.lua")
Include("\\script\\global\\g7vn\\g7quanly.lua")

function main()
	--dofile("script/missions/sevencity/dialog_npc.lua")
	--dofile("script/global/g7vn/g7configall.lua")
	--dofile("script/missions/citywar_global/citybulletin.lua");
	--dofile("script/global/g7vn/g7quanly.lua")

	Say("��y l� n�i ngh� s� c�ng th�nh chi�n, ng��i ��n c� vi�c g�?",
		8,
	--	"Th�ng tin, cai qu�n th�nh th�/main123",
		"Ta ��n giao khi�u chi�n l�nh/GiveTiaoZhanLing",
		"Ta mu�n xem s� l��ng khi�u chi�n l�nh c�a bang/ViewTiaoZhanLing",
		"B�o danh tham gia th�t th�nh ��i chi�n/dlg_signup",
		"V�o chi�n tr��ng th�t th�nh ��i chi�n/dlg_enter",
		"Nh�n ph�n th��ng th�t th�nh ��i chi�n/dlg_query",
		--"Nh�n ph�n th��ng Chi�m l�nh T��ng D��ng Th�nh/nhanTDCTLB",
		"Kh�ng mu�n g� c� /Cancel")
end

function dlg_signup()
	local state = BattleWorld.m_State
	if (state == STATE_INIT) then
		Say("Th�t ��i chi�n v�n ch�a b�t ��u, xin h�y nh�n n�i ch� ��i.")
	elseif (state == STATE_CLOSESIGNUP) then
		Say("Th�i gian b�o danh th�t th�nh ��i chi�n �� h�t.")
	elseif (state == STATE_PREPARING) then
		Say("Th�t th�nh ��i chi�n �� b�t ��u giai �o�n chu�n b�, hi�n t�i kh�ng th� b�o danh")
	elseif (state == STATE_STARTWAR) then
		Say("Th�t th�nh ��i chi�n �� b�t ��u, kh�ng th� b�o danh ���c.")
	elseif (state == STATE_CLOSEWAR) then
		Say("Th�t th�nh ��i chi�n �� k�t th�c")
	elseif (state == STATE_STARTSIGNUP) then
		Say("Th�t th�nh ��i chi�n �ang v�o giai �o�n b�o danh, ch� v� bang ch� h�y ��i di�n b�n bang �� b�o danh tham gia, ph� b�o danh <color=red>2000 v�n ng�n l��ng<color> v�<color=red> 200 khi�u chi�n l�nh<color>. \nBang h�i chi�m th�nh kh�ng c�n b�o danh v� c� th� tr�c ti�p v�o",
			2,
			"Ta mu�n b�o danh tham gia/action_signup",
			"�� ta suy ngh� l�i/Cancel")
	end
end

function dlg_enter()
	local state = BattleWorld.m_State
	if (state ~= STATE_PREPARING and state ~= STATE_STARTWAR) then
		Say("Hi�n t�i kh�ng th� ti�n v�o chi�n tr��ng, xin h�y ��i th�ng b�o.")
	else
		local srcid = SubWorldIdx2ID(SubWorld)
		local dstid = BATTLE_LIST[srcid]
		if (not dstid) then
			WriteLog("[ERROR SEVENCITY]wrong entrance map: %d", srcid)
			Say("Ng��i ��n t� ��u? Mu�n �i ��u?")
		else
			Say("Ch�o m�ng tham gia th�t th�nh ��i chi�n.",
				2,
				format("Ti�n v�o %s/#action_enter(%d)", MAP_INFO[dstid].Name, dstid),
				"T�m th�i kh�ng tham gia/Cancel")
		end
	end
end

function dlg_query()
	--Change request 14/06/2011 - Modified by DinhHQ
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nWeekDay ~= 5  or nHour < 2145 or nHour > 2250 then
		Talk(1, "", "Th� <color=red>6<color>, t� <color=red>21h45<color> ��n <color=red>23h50<color> m�i l� th�i gian nh�n th��ng, xin ��i hi�p h�y quay l�i sau.")
		return
	end
	
	--Avoid dupe exp award - Modified by DinhHQ - 20110428
	local nTime = GetCurServerTime();
	local name = GetName()
	if tbVngLimitTime[name] then
		local nLastAwardTime = tbVngLimitTime[name]
		local nRestTime =(nTime - nLastAwardTime)
		if nRestTime < 60*2  then
			Talk(1, "", format("M�i l�n nh�n th��ng ph�i c�ch nhau <color=red>2<color> ph�t. V� ��i hi�p n�y <color=red>%d<color> gi�y n�a h�y th� l�i.", (60*2 - nRestTime)))
			return
		end	
	end	
	tbVngLimitTime[name] = nTime
	
	local state = BattleWorld.m_State
	if (state == STATE_PREPARING or state == STATE_STARTWAR) then
		Say("Xin h�y coi tr�ng vi�c chi�n s� tr��c r�i m�i ngh� ��n vi�c nh�n ph�n th��ng")
	else
		-- ��ֹ�ظ��콱
		if (QUERY_TABLE[name] ~= nil) then
			return
		end
		QUERY_TABLE[name] = PlayerIndex
		local buff = ObjBuffer:New()
		buff:Push(name)
	local	tbAward = {
	[1] = {	
	{nExp_tl=100e6},	
	{szName="D� T�u Chi L�nh",tbProp={6,1,4407,1,0,0},nCount=10},
		{szName="R��ng �� Xanh",tbProp={6,1,4517,1,0,0},nCount=1},
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=1},
	
		--{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=1},	
		
			},
}
tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng");
		buff:Destroy()
	end
end

function action_signup()
	local player = Player:New(PlayerIndex)
	local err = {}
	if (BattleWorld:Signup(player, err) == 0) then
		player:Say(err.Msg)
	end
	tbLog:PlayerActionLog("TinhNangKey","BaoDanhThatThanhDaiChien")
end

function action_enter(mapid)
	local player = Player:New(PlayerIndex)
	local err = {}
	if (BattleWorld:CheckPermission(mapid, player, err) == 0) then
		player:Say(err.Msg)
	else
		local field = BattleWorld:FindField(mapid)
		if (not field) then
			player:Say("Ch�a t�ng nghe qua c� n�i n�y")
			BattleWorld:Log(format("[ERROR SEVENCITY]field(%d) not found", mapid))
		elseif (field:Login(player) == 0) then
			BattleWorld:Log(format("[ERROR SEVENCITY]failed to login field(%d)", mapid))
		end
	end
end

function process_award(param, result)
	local buff = ObjBuffer:New(result)
	local name = buff:Pop()
	local info = buff:Pop()
	buff:Destroy()
	local nPlayerIndex = QUERY_TABLE[name]
	QUERY_TABLE[name] = nil
	if (nPlayerIndex ~= PlayerIndex) then
		return
	end
	local index = SearchPlayer(name)
	if (index <= 0) then
		return
	end
	local player = Player:New(index)
	if (not info or GetName() ~= name) then
		player:Say("Ng��i v�n ch�a c� ph�n th��ng th�t th�nh ��i chi�n")
		return
	end
	if (info.BoxCount == 0 and info.GuardAwardCount == 0 and info.ExpAward == 0) then
		player:Say("Ng��i �� nh�n qua ph�n th��ng n�y r�i.")
		return
	end
	local caption = format("Ng��i c�n c�<color=red>%d<color> C�ng Th�nh L� Bao, <color=red>%d<color> V� Tr� L� Bao v� <color=red>%d<color> ph�n th��ng kinh nghi�m ch�a nh�n.",
						info.BoxCount,
						info.GuardAwardCount,
						info.ExpAward)
	local options = {}
	if (info.BoxCount > 0) and (GetName() == GetTongMaster())  then
	--	tinsert(options, format("Ta mu�n nh�n C�ng Th�nh L� Bao/#action_awardbox(%d)", info.BoxCount))
	end
	if (info.GuardAwardCount > 0) then
	--	tinsert(options, format("Ta mu�n nh�n V� Tr� L� Bao/#action_guardaward(%d)", info.GuardAwardCount))
	end
	if (info.ExpAward > 0) then
		tinsert(options, format("Ta mu�n nh�n ph�n th��ng kinh nghi�m/#action_expaward(%d)", info.ExpAward))
	end
	tinsert(options, "L�c kh�c nh�n/Cancel")
	Say(caption, getn(options), options)
end

function action_expaward(exp)
	--Change request 14/06/2011 - Modified by DinhHQ
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nWeekDay ~= 5  or nHour < 2145 or nHour > 2350 then
		Talk(1, "", "Th� <color=red>6<color>, t� <color=red>21h45<color> ��n <color=red>23h50<color> m�i l� th�i gian nh�n th��ng, xin ��i hi�p h�y quay l�i sau.")
		return
	end
	StackExp(50000000)
	local buff = ObjBuffer:New()
	buff:Push(GetName())
	RemoteExecute(REMOTE_SCRIPT, "Protocol:ClearExpAward", buff.m_Handle)
	buff:Destroy()
	tbLog:PlayerActionLog("SEVENCITY", "PhanThuongExp", 50000000)
end

function action_guardaward(count)
	action_awarditem(count, AWARD_GUARD)
end

function action_awardbox(count)
	if GetName() ~= GetTongMaster() then
		Talk(1, "", "Ch� c� bang ch� m�i c� quy�n nh�n th��ng")
		return
	end	
	action_awarditem(count, AWARD_BOX, 20)
end

function action_awarddew(count)
	action_awarditem(count, AWARD_DEW)
end

function action_awarditem(count, award, max_count)
--[DinhHQ]
--20110318:Fix bug nh�n c�ng th�nh chi�n l� bao	
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nWeekDay ~= 5  or nHour < 2145 or nHour > 2350 then
		Talk(1, "", "Th� <color=red>6<color>, t� <color=red>21h45<color> ��n <color=red>23h50<color> m�i l� th�i gian nh�n th��ng, xin ��i hi�p h�y quay l�i sau.")
		return
	end
	if (CalcFreeItemCellCount() < 60) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>60<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return
	end
	local actual_count = 0

	for i = 1, count do
		-- add expired time to city and guard award item - Created by TinhPN - 20110421
		--if (AddItemIntoEquipmentBox(award.ID[1], award.ID[2], award.ID[3], award.ID[4], 0, 0) > 0) then
		local nItemIndex = AddItemIntoEquipmentBox(award.ID[1], award.ID[2], award.ID[3], award.ID[4], 0, 0)
		if (nItemIndex > 0) then
			-- add expired time to city and guard award item - Created by TinhPN - 20110421
			if (award.ID[3] == 2815 or award.ID[3] == 2814) then
				ITEM_SetExpiredTime(nItemIndex, 43200)
				SyncItem(nItemIndex)
			end
			
			actual_count = actual_count + 1
		else
			break
		end
		-- ÿ���ܽ�����ֻ���ܵ����50�����������
		if (max_count ~= nil and actual_count >= max_count) then
			break
		end
	end
	local buff = ObjBuffer:New()
	buff:Push(GetName())
	buff:Push(actual_count)
	RemoteExecute(REMOTE_SCRIPT, award.RemoteCall, buff.m_Handle)
	buff:Destroy()
	if (actual_count == count) then
		Say(format("��y l� <color=red>%d<color> <color=red>%s<color>, xin h�y nh�n l�y.", count, award.Name))
	else
		Say(format("�� nh�n <color=red>%d<color> <color=red>%s<color>, xin h�y d�n d�p h�nh l� �� nh�n s� c�n l�i <color=red>%d<color> %s.",
			actual_count,
			award.Name,
			count - actual_count,
			award.Name))
	end
	--WriteLog(format("[SEVENCITY]%s take award: %s(%d)", GetName(), "Ten Bang: "..strTongName, "ID Bang: "..nTongID,award.Name, actual_count))
	tbLog:PlayerActionLog("SEVENCITY", "PhanThuongItem", award.Name, actual_count)
end

function add_dew(name, count)
	add_award("Protocol:AddDew", name, count)
end

function add_box(name, count)
	add_award("Protocol:AddBox", name, count)
end

function add_award(call, name, count)
	local buff = ObjBuffer:New()
	buff:Push(name)
	buff:Push(count)
	RemoteExecute(REMOTE_SCRIPT, call, buff.m_Handle)
	buff:Destroy()
end

function nhanTDCTLB()
	
	if GetName() ~= GetTongMaster() then
		Talk(1, "", "Ch� c� bang ch� m�i c� quy�n nh�n th��ng")
		return
	end	

	if (CalcFreeItemCellCount() < 50) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>50<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return
	end

	local szTong = GetTong()

	if GetCityOwner(5) ~= GetTong() then
		Say("Ng��i kh�ng ph�i th�i th� th�nh T��ng D��ng tu�n n�y")
		return
	end

	local szFile = "\\dulieu\\bandbygm.dat"
	local slLeBao = server_getdata(szFile,"BANGHOI_TDLEBAO",szTong);
	if not slLeBao or slLeBao == "" or slLeBao=="0" then 
		Say("Ng��i �� nh�n h�t T��ng D��ng c�ng th�nh l� bao r�i")
		return
	end

	local numLeBao = tonumber(slLeBao)
	
	local tbAward = 
	{	
			{szName = "Tuong duong cong thanh le bao",	tbProp = {6, 1, 4322, 1, 0, 0},nCount=numLeBao,},
	}
	tbAwardTemplet:Give(tbAward, 1, {"NhanTDCTLBao", "NhanTDCTLBao"})

	server_setdata(szFile,"BANGHOI_TDLEBAO",szTong,"0")
	server_savedata(szFile);

	local strmgs = "Ch�c m�ng bang h�i <color=pink>" .. GetTong() .. "<color> �� nh�n ���c ph�n th��ng chi�m l�nh T��ng D��ng Th�nh"
	Say(strmgs)
	AddGlobalCountNews(strmgs,5)
end