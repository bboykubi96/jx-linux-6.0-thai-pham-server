Include("\\script\\activitysys\\config\\33\\head.lua")
Include("\\script\\activitysys\\config\\33\\variables.lua")
Include("\\script\\lib\\objbuffer_head.lua")

pActivity.tbNpc = {}
pActivity.nPak = curpack()
SeptemperRewardsCityMapID = nil

function SetSeptemperRewardsCityMapID(handle)
	
	local CityMapID = ObjBuffer:PopObject(handle);
	SeptemperRewardsCityMapID = CityMapID;
end
	

--��ӻNPC
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {78,1584,3235,},
		--[2] = {37,1707,3120,},
	}
	local tbNpc = {
		--[1] = {
			--szName = "T��ng ��i", 
			--nLevel = 95,
			--nNpcId = 1785,
			--nIsboss = 0,
			--szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			--},
		--[2] = {
			--szName = "H�ng Nga", 
			--nLevel = 95,
			--nNpcId = 1867,
			--nIsboss = 0,
			--szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			--}
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
	end
end	

tbMonstorAwardManhCo = {
		{szName="M�nh c� 1",tbProp={6,1,4278,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
		{szName="M�nh c� 2",tbProp={6,1,4279,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
		{szName="M�nh c� 3",tbProp={6,1,4280,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
		{szName="M�nh c� 4",tbProp={6,1,4281,1,0,0},nExpiredTime=QK2015ngayhethan,nRate = 1.0,},
	}	

function pActivity:KillMonsterAwardManhCo(nNpcIndex)
	local tbAward = %tbMonstorAwardManhCo
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbAward, %EVENT_LOG_TITLE, 1)
end 

function pActivity:UseLaCoDoSaoVang()
	local tbAward = %tbAward_CoDoSaoVang["CoDoSaoVang"]
	local nUsedCount = self:GetTask(%TSK_LaCoDoSaoVang)
	Msg2Player("�� s� d�ng: <color=green>"..nUsedCount.."<color> l�n")
	tbAwardTemplet:Give(tbAward, 1 , {%EVENT_LOG_TITLE, "SuDungLaCoDoSaoVang"})
	
	local tbItemLog = 
	{
		[500] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 30000000},
			{szName = "Chi�u d�", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=2,},
			{szName = "�� ph� Ho�ng Kim - ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={6,1,385,1,0,0},nCount=1},
		},
		[700] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 30000000}, 
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "�� ph� Ho�ng Kim - ��nh Qu�c Ng�n T�m Y�u ��i",tbProp={6,1,387,1,0,0},nCount=1},
		},
		[900] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 30000000}, 
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "�� ph� Ho�ng Kim - An Bang C�c Hoa Th�ch Ch� ho�n",tbProp={6,1,389,1,0,0},nCount=1},
		},
		[1000] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 50000000}, 
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "�� ph� Ho�ng Kim - An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={6,1,390,1,0,0},nCount=1},
		},
		[1100] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 60000000}, 
			{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=9,},
			{szName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch� ",tbProp={6,1,391,1,0,0},nCount=1},
		},
		[1200] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 150000000},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=15,},
			{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "H�a c�ng ��i ph�p", tbProp={6,1,4276,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},
			{szName = "Th�t tinh th�o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B�ch ni�n th�t tinh th�o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thi�n ni�n th�t tinh th�o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B�c ��u truy�n c�ng thu�t", tbProp={6,1,1672,1,0,0},nCount=1, },
			{szName = "�� ph� Ho�ng Kim - An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={6,1,388,1,0,0},nCount=1},

			--{szName = "T�n s� y�u b�i", tbProp={6,1,888,1,0,0},nCount=1,},
			{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=1,},
			{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=1,},
			{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=1,},
			{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=1,},
			--{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=1,},
			--{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=1,},
			--{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=1,},
		}, 
	}
	if tbItemLog[nUsedCount] then
		local szAction = format("SuDungLaCoDoSaoVang%dLan", nUsedCount)
		tbAwardTemplet:Give(tbItemLog[nUsedCount], 1, {%EVENT_LOG_TITLE, szAction})
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng v�t ph�m Event ��n m�c <color=yellow>"..nUsedCount.."<color>, nh�n ���c ph�n th��ng nh� �")
		if GetLevel() < 120 then
			AddOwnExp(1000000000)
		end
	end
end

function pActivity:HandinString(nComposeCount)
	nComposeCount = nComposeCount or 1
	
	if(self:CheckTask(11, 0,"","==") == 1) then
		AddStatData("jxjiuyue_shangjiaodiyigeshengzi", 1)
	end
	
	if(self:CheckTask(11, 500,"","<") == 1) and 
		(self:CheckTask(11, 500 - nComposeCount,"",">=") == 1) then
		PlayerFunLib:AddExp(50000000,1,"Event_QuocKhanhVN","NopVatPhamDayThung500Lan")
		tbVngTransLog:Write(%strQK_TranslogFolder, %nQK_PromotionID, "NopDayThung500Lan", "50000000 exp", 1)
	end
	
	if(self:CheckTask(11, 1000,"","<") == 1)  and 
		(self:CheckTask(11, 1000 - nComposeCount,"",">=") == 1)then
		PlayerFunLib:AddExp(100000000,1,"Event_QuocKhanhVN","NopVatPhamDayThung1000Lan")
		tbVngTransLog:Write(%strQK_TranslogFolder, %nQK_PromotionID, "NopDayThung1000Lan", "100000000 exp", 1)
		AddStatData("jxjiuyue_shangjiaoshengzidadaoshangxian", 1)
	end 	
	
	for i = 1, nComposeCount do
		PlayerFunLib:AddExp(1200000,1,"Event_QuocKhanhVN","NopDayThung")
		tbVngTransLog:Write(%strQK_TranslogFolder, %nQK_PromotionID, "NopDayThung", "1200000 exp", 1)		
	end

	local nCount = self:GetTask(%TKSG_HandinStringCount)
	local nCountHT = nCount + nComposeCount
	self:AddTask(%TKSG_HandinStringCount,nComposeCount)
	
	Msg2Player("�� n�p: <color=yellow>"..nCountHT.."<color> l�n")
end

function pActivity:ConvertFireworks(nComposeCount)
	nComposeCount = nComposeCount or 1
	AddStatData("jxjiuyue_guoqinghuapao", nComposeCount)
end

function pActivity:ConvertMooncake(nComposeCount)
	nComposeCount = nComposeCount or 1
	AddStatData("jxjiuyue_hanyueyuebing", nComposeCount)
end

function pActivity:UseFirworks()
	local tbAward = %tbAward_CoDoSaoVang["PhaoHoaQK"]
	local nUsedCount = self:GetTask(%TKSG_UseFireworksCount)
	Msg2Player("�� s� d�ng: <color=yellow>"..nUsedCount.."<color> l�n")
	tbAwardTemplet:Give(tbAward, 1 , {%EVENT_LOG_TITLE, "SuDungPhaoHoaQK"})
end

function pActivity:UseMooncake()
	
end

function pActivity:PlayerOnLoginRSEV()
	local nCount = self:GetTask(%TKSG_UseFireworksCount)
	if nCount > 0 then
		self:SetTask(%TKSG_UseFireworksCount,0)
		Msg2Player("TKSG_UseFireworksCount:"..TKSG_UseFireworksCount)
	end
	nCount = self:GetTask(%TSK_LaCoDoSaoVang)
	if nCount > 0 then
		self:SetTask(%TSK_LaCoDoSaoVang,0)
		Msg2Player("TSK_LaCoDoSaoVang:"..TSK_LaCoDoSaoVang)
	end
end





