--TÝnh n¨ng thÊt thµnh ®¹i chiÕn tiÕp ®Çu seach key "T¹m thêi ch­a më."
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
-- ¹¥³ÇÕ½Àñ°ü½±Àø
AWARD_BOX = {
	Name = "C«ng Thµnh LÔ Bao",
	ID = {6, 1, 2815, 1},
	RemoteCall = "Protocol:ReduceBox",
}

-- »ìÔªÁéÂ¶½±Àø
AWARD_DEW = {
	Name = "Hçn Nguyªn Linh Lé",
	ID = {6, 1, 2312, 1},
	RemoteCall = "Protocol:ReduceDew",
}

AWARD_GUARD = {
	Name = "VÖ Trô LÔ Bao",
	ID = {6, 1, 2814, 1},
	RemoteCall = "Protocol:ReduceGuardAward",
}

-- ²éÑ¯½±ÀøµÄ×´Ì¬±í
QUERY_TABLE = {}

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\missions\\citywar_global\\citybulletin.lua")
Include("\\script\\global\\g7vn\\g7quanly.lua")

function main()
	--dofile("script/missions/sevencity/dialog_npc.lua")
	--dofile("script/global/g7vn/g7configall.lua")
	--dofile("script/missions/citywar_global/citybulletin.lua");
	--dofile("script/global/g7vn/g7quanly.lua")

	Say("§©y lµ n¬i nghÞ sù c«ng thµnh chiÕn, ng­¬i ®Õn cã viÖc g×?",
		8,
	--	"Th«ng tin, cai qu¶n thµnh thÞ/main123",
		"Ta ®Õn giao khiªu chiÕn lÖnh/GiveTiaoZhanLing",
		"Ta muèn xem sè l­îng khiªu chiÕn lÖnh cña bang/ViewTiaoZhanLing",
		"B¸o danh tham gia thÊt thµnh ®¹i chiÕn/dlg_signup",
		"Vµo chiÕn tr­êng thÊt thµnh ®¹i chiÕn/dlg_enter",
	--	"NhËn phÇn th­ëng thÊt thµnh ®¹i chiÕn/dlg_query",
		--"NhËn phÇn th­ëng ChiÕm lÜnh T­¬ng D­¬ng Thµnh/nhanTDCTLB",
		"Kh«ng muèn g× c¶ /Cancel")
end

function dlg_signup()
	local state = BattleWorld.m_State
	if (state == STATE_INIT) then
		Say("ThÊt ®¹i chiÕn vÉn ch­a b¾t ®Çu, xin h·y nhÉn n¹i chê ®îi.")
	elseif (state == STATE_CLOSESIGNUP) then
		Say("Thêi gian b¸o danh thÊt thµnh ®¹i chiÕn ®· hÕt.")
	elseif (state == STATE_PREPARING) then
		Say("ThÊt thµnh ®¹i chiÕn ®· b¾t ®Çu giai ®o¹n chuÈn bÞ, hiÖn t¹i kh«ng thÓ b¸o danh")
	elseif (state == STATE_STARTWAR) then
		Say("ThÊt thµnh ®¹i chiÕn ®· b¾t ®Çu, kh«ng thÓ b¸o danh ®­îc.")
	elseif (state == STATE_CLOSEWAR) then
		Say("ThÊt thµnh ®¹i chiÕn ®· kÕt thóc")
	elseif (state == STATE_STARTSIGNUP) then
		Say("ThÊt thµnh ®¹i chiÕn ®ang vµo giai ®o¹n b¸o danh, ch­ vÞ bang chñ h·y ®¹i diÖn bæn bang ®Ó b¸o danh tham gia, phÝ b¸o danh <color=red>2000 v¹n ng©n l­îng<color> vµ<color=red> 200 khiªu chiÕn lÖnh<color>. \nBang héi chiÕm thµnh kh«ng cÇn b¸o danh vµ cã thÓ trùc tiÕp vµo",
			2,
			"Ta muèn b¸o danh tham gia/action_signup",
			"§Ó ta suy nghÜ l¹i/Cancel")
	end
end

function dlg_enter()
	local state = BattleWorld.m_State
	if (state ~= STATE_PREPARING and state ~= STATE_STARTWAR) then
		Say("HiÖn t¹i kh«ng thÓ tiÕn vµo chiÕn tr­êng, xin h·y ®îi th«ng b¸o.")
	else
		local srcid = SubWorldIdx2ID(SubWorld)
		local dstid = BATTLE_LIST[srcid]
		if (not dstid) then
			WriteLog("[ERROR SEVENCITY]wrong entrance map: %d", srcid)
			Say("Ng­¬i ®Õn tõ ®©u? Muèn ®i ®©u?")
		else
			Say("Chµo mõng tham gia thÊt thµnh ®¹i chiÕn.",
				2,
				format("TiÕn vµo %s/#action_enter(%d)", MAP_INFO[dstid].Name, dstid),
				"T¹m thêi kh«ng tham gia/Cancel")
		end
	end
end

function dlg_query()
	--Change request 14/06/2011 - Modified by DinhHQ
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nWeekDay==5 and (nHour < 2145 or nHour > 2350) then
	Talk(1, "", "Thø <color=red>6<color>, tõ <color=red>21h45<color> ®Õn <color=red>23h50<color> míi lµ thêi gian nhËn th­ëng, xin ®¹i hiÖp h·y quay l¹i sau.")
	end
	
	if nWeekDay ~= 5  and nWeekDay ~= 6 and nWeekDay ~= 7 then
		Talk(1, "", "Thø <color=red>7-CN<color>,míi lµ thêi gian nhËn th­ëng, xin ®¹i hiÖp h·y quay l¹i sau.")
		return
	end
	
	--Avoid dupe exp award - Modified by DinhHQ - 20110428
	local nTime = GetCurServerTime();
	local name = GetName()
	if tbVngLimitTime[name] then
		local nLastAwardTime = tbVngLimitTime[name]
		local nRestTime =(nTime - nLastAwardTime)
		if nRestTime < 30  then
			Talk(1, "", format("Mçi lÇn nhËn th­ëng ph¶i c¸ch nhau <color=red>30<color> s. VÞ §¹i hiÖp nµy <color=red>%d<color> gi©y n÷a h·y thö l¹i.", (30 - nRestTime)))
			return
		end	
	end	
	tbVngLimitTime[name] = nTime
	
	local state = BattleWorld.m_State
	if (state == STATE_PREPARING or state == STATE_STARTWAR) then
		Say("Xin h·y coi träng viÖc chiÕn sù tr­íc råi míi nghÜ ®Õn viÖc nhËn phÇn th­ëng")
	else
		-- ·ÀÖ¹ÖØ¸´Áì½±
		if (QUERY_TABLE[name] ~= nil) then
			return
		end
		QUERY_TABLE[name] = PlayerIndex
		local buff = ObjBuffer:New()
		buff:Push(name)
		RemoteExecute(
			REMOTE_SCRIPT,
			"Protocol:QueryAward",
			buff.m_Handle,
			"process_award")
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
			player:Say("Ch­a tõng nghe qua cã n¬i nµy")
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
		player:Say("Ng­¬i vÉn ch­a cã phÇn th­ëng thÊt thµnh ®¹i chiÕn")
		return
	end
	if (info.BoxCount == 0 and info.GuardAwardCount == 0 and info.ExpAward == 0) then
		player:Say("Ng­¬i ®· nhËn qua phÇn th­ëng nµy råi.")
		return
	end
	local caption = format("Ng­¬i cßn cã<color=red>%d<color> C«ng Thµnh LÔ Bao, <color=red>%d<color> VÖ Trô LÔ Bao vµ <color=red>%d<color> phÇn th­ëng kinh nghiÖm ch­a nhËn.",
						info.BoxCount,
						info.GuardAwardCount,
						info.ExpAward)
	local options = {}
	if (info.BoxCount > 0) and (GetName() == GetTongMaster())  then
		tinsert(options, format("Ta muèn nhËn C«ng Thµnh LÔ Bao/#action_awardbox(%d)", info.BoxCount))
	end
	if (info.GuardAwardCount > 0) then
		tinsert(options, format("Ta muèn nhËn VÖ Trô LÔ Bao/#action_guardaward(%d)", info.GuardAwardCount))
	end
	if (info.ExpAward > 0) then
		tinsert(options, format("Ta muèn nhËn phÇn th­ëng kinh nghiÖm/#action_expaward(%d)", info.ExpAward))
	end
	tinsert(options, "Lóc kh¸c nhËn/Cancel")
	Say(caption, getn(options), options)
end

function action_expaward(exp)
	--Change request 14/06/2011 - Modified by DinhHQ
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nWeekDay==5 and (nHour < 2145 or nHour > 2350) then
	Talk(1, "", "Thø <color=red>6<color>, tõ <color=red>21h45<color> ®Õn <color=red>23h50<color> míi lµ thêi gian nhËn th­ëng, xin ®¹i hiÖp h·y quay l¹i sau.")
	end
	
	if nWeekDay ~= 5  and nWeekDay ~= 6 and nWeekDay ~= 7 then
		Talk(1, "", "Thø <color=red>7-CN<color>,míi lµ thêi gian nhËn th­ëng, xin ®¹i hiÖp h·y quay l¹i sau.")
		return
	end
	StackExp(exp)
	local buff = ObjBuffer:New()
	buff:Push(GetName())
	RemoteExecute(REMOTE_SCRIPT, "Protocol:ClearExpAward", buff.m_Handle)
	buff:Destroy()
	tbLog:PlayerActionLog("SEVENCITY", "PhanThuongExp", exp)
end

function action_guardaward(count)
	action_awarditem(count, AWARD_GUARD)
end

function action_awardbox(count)
	if GetName() ~= GetTongMaster() then
		Talk(1, "", "ChØ cã bang chñ míi cã quyÒn nhËn th­ëng")
		return
	end	
	action_awarditem(count, AWARD_BOX, 50)
end

function action_awarddew(count)
	action_awarditem(count, AWARD_DEW)
end

function action_awarditem(count, award, max_count)
--[DinhHQ]
--20110318:Fix bug nhËn c«ng thµnh chiÕn lÔ bao	
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nWeekDay==5 and (nHour < 2145 or nHour > 2350) then
	Talk(1, "", "Thø <color=red>6<color>, tõ <color=red>21h45<color> ®Õn <color=red>23h50<color> míi lµ thêi gian nhËn th­ëng, xin ®¹i hiÖp h·y quay l¹i sau.")
	end
	
	if nWeekDay ~= 5  and nWeekDay ~= 6 and nWeekDay ~= 7 then
		Talk(1, "", "Thø <color=red>7-CN<color>,míi lµ thêi gian nhËn th­ëng, xin ®¹i hiÖp h·y quay l¹i sau.")
		return
	end
	if (CalcFreeItemCellCount() < 60) then
		Say("Hµnh trang Ýt nhÊt ph¶i cã <color=red>60<color> « trèng míi nhËn ®­îc phÇn th­ëng.")
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
		-- Ã¿´ÎÊÜ½±°ïÖ÷Ö»ÄÜÊÜµ½×î¶à50¡¾¹¥³ÇÀñ°ü¡¿
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
		Say(format("§©y lµ <color=red>%d<color> <color=red>%s<color>, xin h·y nhËn lÊy.", count, award.Name))
	else
		Say(format("§· nhËn <color=red>%d<color> <color=red>%s<color>, xin h·y dän dÑp hµnh lý ®Ó nhËn sè cßn l¹i <color=red>%d<color> %s.",
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
		Talk(1, "", "ChØ cã bang chñ míi cã quyÒn nhËn th­ëng")
		return
	end	

	if (CalcFreeItemCellCount() < 50) then
		Say("Hµnh trang Ýt nhÊt ph¶i cã <color=red>50<color> « trèng míi nhËn ®­îc phÇn th­ëng.")
		return
	end

	local szTong = GetTong()

	if GetCityOwner(5) ~= GetTong() then
		Say("Ng­¬i kh«ng ph¶i th¸i thó thµnh T­¬ng D­¬ng tuÇn nµy")
		return
	end

	local szFile = "\\dulieu\\bandbygm.dat"
	local slLeBao = server_getdata(szFile,"BANGHOI_TDLEBAO",szTong);
	if not slLeBao or slLeBao == "" or slLeBao=="0" then 
		Say("Ng­¬i ®· nhËn hÕt T­¬ng D­¬ng c«ng thµnh lÔ bao råi")
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

	local strmgs = "Chóc mõng bang héi <color=pink>" .. GetTong() .. "<color> ®· nhËn ®­îc phÇn th­ëng chiÕm lÜnh T­¬ng D­¬ng Thµnh"
	Say(strmgs)
	AddGlobalCountNews(strmgs,5)
end
