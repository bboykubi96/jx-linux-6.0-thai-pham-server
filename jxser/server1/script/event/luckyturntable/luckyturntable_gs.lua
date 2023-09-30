if MODEL_GAMESERVER ~= 1 then
	return 
end

Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\event\\luckyturntable\\head.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

LuckyTurntable.Enable = 0	-- Bat / Tat vong quay may man
LuckyTurntable.TASK_RESULT_AWARD = 4090	-- Task luu phan thuong
LuckyTurntable.TASK_STATE = 4091	-- Task luu trang thai

LuckyTurntable.MAX_RATE = 10000

LuckyTurntable.tbState = {
	STATE_NORMAL = 0,
	STATE_AWARD = 1,
	STATE_WAIT = 2,
}

-- Item yeu cau
LuckyTurntable.ItemRequired = {szName="ThÎ Quay Sè",tbProp={6,1,4222,-1,0,0},nCount=1}

-- Danh sach phan thuong vong quay may man. Phai bang 22 item
LuckyTurntable.ITEM_LIST = {
	[1] = {szName="Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=1},
	[2] = {szName="Thiªn s¬n B¶o Lé",tbProp={6,1,72,1,0,0},nCount=1},
	[3] = {szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,0,0},nCount=1},
	[4] = {szName="B¹ch C©u hoµn",tbProp={6,1,74,1,0,0},nCount=1},
	[5] = {szName="Phóc Duyªn Lé (TiÓu)",tbProp={6,1,122,1,0,0},nCount=1},
	[6] = {szName="Phóc Duyªn Lé (Trung)",tbProp={6,1,123,1,0,0},nCount=1},
	[7] = {szName="Phóc Duyªn Lé (§¹i)",tbProp={6,1,124,1,0,0},nCount=1},
	[8] = {szName="QuÕ Hoa Töu",tbProp={6,1,125,1,0,0},nCount=1},
	[9] = {szName="§¹i B¹ch C©u hoµn",tbProp={6,1,130,1,0,0},nCount=1},
	[10] = {szName="Ph¸o hoa",tbProp={6,0,11,1,0,0},nCount=5},
	[11] = {szName="Hoa hång",tbProp={6,0,20,1,0,0},nCount=5},
	[12] = {szName="Hoa TuyÕt",tbProp={6,0,1013,1,0,0},nCount=5},
	[13] = {szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount=1},
	[14] = {szName="BÝ quyÕt kü n¨ng cÊp 120",tbProp={6,1,1125,1,0,0},nCount=1},
	[15] = {szName="B¹ch C©u Hoµn ®Æc biÖt",tbProp={6,1,1157,1,0,0},nCount=1},
	[16] = {szName="Tiªn Th¶o Lé ®Æc biÖt",tbProp={6,1,1181,1,0,0},nCount=1},
	[17] = {szName="B¹ch C©u Hoµn kü n¨ng ®Æc biÖt",tbProp={6,1,1182,1,0,0},nCount=1},
	[18] = {szName="MÆt n¹ V­¬ng Gi¶",tbProp={0,11,561,1,0,0},nCount=1},
	[19] = {szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0},nCount=1},
	[20] = {szName="TiÒn ®ång",tbProp={4,417,1,1,0,0},nCount=10},
	[21] = {szName="HuyÒn Ch©n §¬n",tbProp={6,1,1678,1,0,0},nCount=1,tbParam={1500000000}},
	[22] = {szName="HuyÕt Ch©n §¬n",tbProp={6,1,1677,1,0,0},nCount=1,tbParam={1000000000}},
};

-- Danh sach phan thuong moc su dung vong quay may man
LuckyTurntable.TimesAwardList = {
	[1] = {szName="Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=1},
	[2] = {szName="Thiªn s¬n  B¶o Lé",tbProp={6,1,72,1,0,0},nCount=1},
	[3] = {szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,0,0},nCount=1},
	[4] = {szName="B¹ch C©u hoµn",tbProp={6,1,74,1,0,0},nCount=1},
	[5] = {szName="Phóc Duyªn Lé (TiÓu)",tbProp={6,1,122,1,0,0},nCount=1},
	[6] = {szName="Phóc Duyªn Lé (Trung)",tbProp={6,1,123,1,0,0},nCount=1},
	[7] = {szName="Phóc Duyªn Lé (§¹i)",tbProp={6,1,124,1,0,0},nCount=1},
	[8] = {szName="QuÕ Hoa Töu",tbProp={6,1,125,1,0,0},nCount=1},
	[9] = {szName="§¹i B¹ch C©u hoµn",tbProp={6,1,130,1,0,0},nCount=1},
	[10] = {szName="Ph¸o hoa",tbProp={6,0,11,1,0,0},nCount=5},
	[11] = {szName="Hoa hång",tbProp={6,0,20,1,0,0},nCount=5},
	[12] = {szName="Hoa TuyÕt",tbProp={6,0,1013,1,0,0},nCount=5},
	[13] = {szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount=1},
	[14] = {szName="BÝ quyÕt kü n¨ng cÊp 120",tbProp={6,1,1125,1,0,0},nCount=1},
	[15] = {szName="B¹ch C©u Hoµn ®Æc biÖt",tbProp={6,1,1157,1,0,0},nCount=1},
};

function LuckyTurntable:ProtocolProcess(szName, nOpertion, tbParam)
	if self.Enable ~= 1 then
		return
	end
	
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return
	end
	
	if nOpertion == self.tbProtocol.PLAY then
		CallPlayerFunction(nPlayerIndex, self.OnRequestPlay, self, tbParam)
	elseif nOpertion == self.tbProtocol.INQUIRY_AWARD then
		CallPlayerFunction(nPlayerIndex, self.OnInquiryAward, self, tbParam)
	elseif nOpertion == self.tbProtocol.GET_AWARD then
		CallPlayerFunction(nPlayerIndex, self.OnGetAward, self, tbParam)
	elseif nOpertion == self.tbProtocol.GET_TIMES_AWARD then
		CallPlayerFunction(nPlayerIndex, self.OnGetTimesAward, self, tbParam)
	end
end

-- Ham quay vong quay may man
function LuckyTurntable:OnRequestPlay(tbParam)
	local nState = self:GetState()
	if nState ~= self.tbState.STATE_NORMAL then
		if nState == self.tbState.STATE_WAIT then
			Msg2Player("§ang quay vßng quay, kh«ng thÓ thao t¸c!")
			self:SendResult(self.tbProtocol.PLAY, {nResult = -98})
			return
		end
		if nState == self.tbState.STATE_AWARD then
			Msg2Player("Vui lßng nhËn th­ëng tr­íc khi thùc hiÖn vßng quay míi!")
			self:SendResult(self.tbProtocol.PLAY, {nResult = -97})
			return
		end
	end
	
	if GetTask(self.TASK_RESULT_AWARD) > 0 then
		Msg2Player("Vui lßng nhËn th­ëng tr­íc khi tiÕp tôc quay")
		self:SendResult(self.tbProtocol.PLAY, {nResult = -1})
		return
	end
	
	local nCount = CalcEquiproomItemCount(self.ItemRequired.tbProp[1],self.ItemRequired.tbProp[2],self.ItemRequired.tbProp[3],self.ItemRequired.tbProp[4])
	if nCount < self.ItemRequired.nCount then
		Msg2Player("Kh«ng ®ñ "..self.ItemRequired.szName)
		self:SendResult(self.tbProtocol.PLAY, {nResult = -2})
		return
	end
	
	if CountFreeRoomByWH(4, 4, 1) < 1 then
		Msg2Player(format("§Ó ®¶m b¶o tµi s¶n cña ®¹i hiÖp\nXin h·y ®Ó trèng %d kho¶ng trèng (%d x %d) trong hµnh trang", 1, 4, 4))
		self:SendResult(self.tbProtocol.PLAY, {nResult = -3})
		return
	end
	
	if (ConsumeEquiproomItem(self.ItemRequired.nCount,self.ItemRequired.tbProp[1],self.ItemRequired.tbProp[2],self.ItemRequired.tbProp[3],self.ItemRequired.tbProp[4]) ~= 1) then
		Msg2Player("Kh«ng thÓ khÊu trõ "..self.ItemRequired.szName)
		self:SendResult(self.tbProtocol.PLAY, {nResult = -4})
		return
	end
	
	local nTotalCount = GetTask(self.TASK_TOTAL_COUNT);
	nTotalCount = nTotalCount + 1;
	SetTask(self.TASK_TOTAL_COUNT, nTotalCount);
	
	-- Tinh toan ti le ra phan thuong
	local nRate = random(1, self.MAX_RATE);
	local nRandomId = 0
	if nRate > 8000 then
		nRandomId = random(20,22)
	elseif nRate > 6000 then
		nRandomId = random(15,19)
	elseif nRate > 4000 then
		nRandomId = random(10,14)
	elseif nRate > 2000 then
		nRandomId = random(5,9)
	else
		nRandomId = random(1,4)
	end
	
	SetTask(self.TASK_RESULT_AWARD, nRandomId)
	self:SendResult(self.tbProtocol.PLAY, {nResult = nRandomId})
	
	self:SetState(self.tbState.STATE_AWARD)
	
	local tbAward = self.ITEM_LIST[nRandomId]
	if tbAward then
		self:WriteLog(date("%y-%m-%d_%H:%M:%S").." - TK: ["..GetAccount().."] - NV: ["..GetName().."] - Tæng sè lÇn quay: "..nTotalCount.." nhËn ®­îc ["..tbAward.szName.." x "..tbAward.nCount.."]. Tiªu hao "..self.ItemRequired.nCount.." ThÎ Quay Sè")
	end
end

function LuckyTurntable:OnInquiryAward(tbParam)
	-- local nState = self:GetState()
	-- if nState ~= self.tbState.STATE_AWARD then
		-- return
	-- end
	
	local nResult = GetTask(self.TASK_RESULT_AWARD)
	if nResult < 1 or nResult > 22 then
		return
	end
	
	self:SetState(self.tbState.STATE_AWARD)
	self:SendResult(self.tbProtocol.SYNC_AWARD, {nResult = nResult})
end

-- Ham nhan thuong vong quay may man
function LuckyTurntable:OnGetAward(tbParam)
	local nState = self:GetState()
	if nState ~= self.tbState.STATE_AWARD then
		Msg2Player("§· cã lçi x¶y ra! Vui lßng liªn hÖ Admin")
		self:SendResult(self.tbProtocol.GET_AWARD, {nResult = -99})
		return
	end
	
	local nResult = GetTask(self.TASK_RESULT_AWARD)
	if nResult < 1 or nResult > 22 then
		Msg2Player("Kh«ng cã phÇn th­ëng")
		self:SendResult(self.tbProtocol.GET_AWARD, {nResult = -1})
		return
	end
	
	if CountFreeRoomByWH(4, 4, 1) < 1 then
		Msg2Player(format("§Ó ®¶m b¶o tµi s¶n cña ®¹i hiÖp\nXin h·y ®Ó trèng %d kho¶ng trèng (%d x %d) trong hµnh trang", 1, 4, 4))
		self:SendResult(self.tbProtocol.GET_AWARD, {nResult = -2})
		return
	end
	
	local tbAward = self.ITEM_LIST[nResult]
	if not tbAward then
		Msg2Player("Lçi phÇn th­ëng! Vui lßng liªn hÖ Admin")
		self:SendResult(self.tbProtocol.GET_AWARD, {nResult = -3})
		return
	end
	
	tbAwardTemplet:GiveAwardByList(tbAward, "Vßng Quay May M¾n")
	SetTask(self.TASK_RESULT_AWARD, 0)
	self:SetState(self.tbState.STATE_NORMAL)
	self:SendResult(self.tbProtocol.GET_AWARD, {nResult = 1})
	self:WriteLog(date("%y-%m-%d_%H:%M:%S").." - TK: ["..GetAccount().."] - NV: ["..GetName().."] ®· nhËn th­ëng Vßng Quay May M¾n nhËn ®­îc ["..tbAward.szName.." x "..tbAward.nCount.."].")
end

-- Ham nhan thuong moc su dung vong quay
function LuckyTurntable:OnGetTimesAward(tbParam)
	local nState = self:GetState()
	if nState ~= self.tbState.STATE_NORMAL then
		Msg2Player("Kh«ng thÓ thao t¸c!")
		return
	end
	
	local nId = tbParam.nId
	if nId < 1 or nId > getn(self.TimesAwardCount) then
		return
	end
	
	if not self.TimesAwardCount[nId] then
		Msg2Player("Cã lçi x¶y ra! Vui lßng liªn hÖ Admin")
		return
	end
	
	if CountFreeRoomByWH(4, 4, 1) < 1 then
		Msg2Player(format("§Ó ®¶m b¶o tµi s¶n cña ®¹i hiÖp\nXin h·y ®Ó trèng %d kho¶ng trèng (%d x %d) trong hµnh trang", 1, 4, 4))
		return
	end
	
	local nTotalCount = GetTask(self.TASK_TOTAL_COUNT)
	local nGot = GetBitTask(self.TASK_TOTAL_AWARD, nId, 1)
	if nTotalCount < self.TimesAwardCount[nId] then
		Msg2Player("Ch­a ®ñ ®iÒu kiÖn nhËn mèc nµy")
		return
	end
	
	if nGot == 1 then
		Msg2Player("B¹n ®· nhËn phÇn th­ëng nµy råi")
		return
	end
	
	-- Tinh toan ti le random phan thuong
	local nRandAward = 0
	if nId == 2 then
		nRandAward = random(4,6)
	elseif nId == 3 then
		nRandAward = random(7,9)
	elseif nId == 4 then
		nRandAward = random(10,12)
	elseif nId == 5 then
		nRandAward = random(13,15)
	else
		nRandAward = random(1,3)
	end
	
	local tbAward = self.TimesAwardList[nRandAward]
	if not tbAward then
		Msg2Player("Cã lçi x¶y ra! Vui lßng liªn hÖ Admin")
		return
	end
	
	tbAwardTemplet:GiveAwardByList(tbAward, "Vßng Quay May M¾n")
	SetBitTask(self.TASK_TOTAL_AWARD, nId, 1, 1)
	SyncTaskValue(self.TASK_TOTAL_AWARD)
	self:WriteLog(date("%y-%m-%d_%H:%M:%S").." - TK: ["..GetAccount().."] - NV: ["..GetName().."] ®· nhËn th­ëng mèc ["..self.TimesAwardCount[nId].."] Vßng Quay May M¾n nhËn ®­îc ["..tbAward.szName.." x "..tbAward.nCount.."].")
end

function LuckyTurntable:OpenWindow()
	self:SendResult(self.tbProtocol.OPEN_WINDOW, {})
end

function LuckyTurntable:SendResult(nId, tbData)
	if tbData == nil then
		tbData = {}
	end
	
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nId)
	ObjBuffer:PushByType(handle, OBJTYPE_TABLE, tbData)
	ScriptProtocol:SendData(self.Protocol, handle)
	OB_Release(handle)
end

function LuckyTurntable:SetState(nState)
	SetTask(self.TASK_STATE, nState)
end

function LuckyTurntable:GetState()
	return GetTask(self.TASK_STATE)
end

function LuckyTurntable:WriteLog(szMsg)
	local handle = openfile("Logs/LuckyTurntable/LuckyTurntable_"..date("%d_%m_%Y")..".txt","a")
	if handle then
		write(handle,format("%s\n",szMsg));
		closefile(handle);
	end
end