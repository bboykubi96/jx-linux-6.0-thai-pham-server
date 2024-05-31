Include("\\script\\activitysys\\config\\1003\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\1003\\variables.lua")

local tbUseTTHT_AdditionalAward = {
	[20] = {szName = "�i�m kinh nghi�m", nExp=2000000},
	[40] = {szName = "�i�m kinh nghi�m", nExp=4000000},
	[60] = {szName = "�i�m kinh nghi�m", nExp=6000000},
	[80] = {szName = "�i�m kinh nghi�m", nExp=8000000},
	[100] = {szName = "�i�m kinh nghi�m", nExp=10000000},
	[200] = {szName = "�i�m kinh nghi�m", nExp=12000000},
	[300] = {szName = "�i�m kinh nghi�m", nExp=14000000},
	[400] = {szName = "�i�m kinh nghi�m", nExp=16000000},
	[500] = {
			{szName="Trang b� hi�p c�t",tbProp={0,186},nCount=1,nRate=25,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,187},nCount=1,nRate=25,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,188},nCount=1,nRate=25,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,189},nCount=1,nRate=25,nQuality = 1},

		},
	[600] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[700] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[800] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[900] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[1000] = {
			{szName="Trang b� hi�p c�t",tbProp={0,190},nCount=1,nRate=25,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,191},nCount=1,nRate=25,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,192},nCount=1,nRate=25,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,193},nCount=1,nRate=25,nQuality = 1},

		}, 
	[1100] = {szName = "�i�m kinh nghi�m", nExp=25000000},
	[1200] = {szName = "�i�m kinh nghi�m", nExp=25000000},
	[1300] = {
			{szName="Trang b� hi�p c�t",tbProp={0,159},nCount=1,nRate=20,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,160},nCount=1,nRate=20,nQuality = 1},	
			{szName="Trang b� hi�p c�t",tbProp={0,161},nCount=1,nRate=20,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,162},nCount=1,nRate=20,nQuality = 1},
			{szName="Trang b� hi�p c�t",tbProp={0,163},nCount=1,nRate=20,nQuality = 1},
		},
}

local tbUseTTHT_ItemAward = {
	{szName="Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1,nRate=1},
	{szName="Ti�n th�o l� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=1},
	{szName="TTK",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
	{szName="VLMT",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
	{szName="phan thuong",tbProp={6,1,random(122,125),1,0,0},nCount=1,nRate=2},
	{szName = "Chi�u d�", tbProp={0,10,5,5,0,0},nCount=1,nRate=0.1},
	{szName = "Tinh h�ng b�o th�ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
	{szName = "T� th�y tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "L�c th�y tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Lam th�y tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,771,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,772,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,773,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,774,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,775,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,776,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,777,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "Manh hoang kim",tbProp={4,778,1,1,0,0},nCount=1,nRate=0.1},
	{szName = "�i�m Kinh Nghi�m", nExp=500000,nRate=1},
	{szName = "�i�m Kinh Nghi�m", nExp=600000,nRate=2},
	{szName = "�i�m Kinh Nghi�m", nExp=700000,nRate=3},
	{szName = "�i�m Kinh Nghi�m", nExp=800000,nRate=10},
	{szName = "�i�m Kinh Nghi�m", nExp=1000000,nRate=25},
	{szName="K�ch C�ng Tr� L�c Ho�n",tbProp={6,1,2952,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="�m D��ng Ho�t Huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1,nRate=0.1,nExpiredTime=60*24*30},
	{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1,nRate=0.1},
	{szName = "B� k�p 90",tbProp={6,1,random(27,28),1,0,0},nCount=1,nRate=0.1},
	{szName = "B� k�p 90",tbProp={6,1,random(33,43),1,0,0},nCount=1,nRate=0.1},
	{szName = "B� k�p 90",tbProp={6,1,random(45,59),1,0,0},nCount=1,nRate=0.1},

}

function pActivity:InitNpc()
	local tbNpcPos = {
		[1] = 
		{
			{176,1441,3277},			
		},		
	}
	local tbNpc = {
		[1] = {
			szName = "M�c Ki�u Li�n", 
			nLevel = 95,
			nNpcId = 342,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			},		
	}
	for i=1,getn(tbNpc) do
		for j = 1, getn(tbNpcPos[i]) do
			local nMapId, nPosX, nPosY = unpack(tbNpcPos[i][j])
			basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
		end
	end
end

function pActivity:GiveRedRoseBud(nCount)
	local tbAward = {szName="C�u Ti�n Ng� Y�n",tbProp={6,1,30128,1,0,0},nCount=1,nExpiredTime=%nItemExpiredTime}
	for i = 1, nCount do
		--ph�n th��ng kinh nghi�m
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseBudLimit) ~= 1 then
			%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseBudLimit, 1)
			tbAwardTemplet:Give({szName = "�i�m kinh nghi�m", nExp=1000000}, 1, {"EventVuLanBaoHieu", "DoiNuHoaHongDoNhanKinhNghiem"})
		end		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "DoiNuHoaHongDoNhanVatPham"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "Doi1NuHoaHongDo", "1 C�u Ti�n Ng� Y�n", 1)
	end
end

function pActivity:CheckGiveRedRoseLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
		Talk(1, "", "Ng��i t�ng ta nhi�u hoa r�i, s� hoa n�y xin h�y nh�n l�i.")
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveRedRoseLimit)
	if (nTaskVal + nCount) > %nRedRoseMaxCount then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� t�ng <color=yellow>%d <color>Hoa H�ng �� n�a.", %nRedRoseMaxCount - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveRedRose(nCount)
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=200000}
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangHoaHongDo"})		
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangHoaHongDo", "200000 �i�m kinh nghi�m", 1)
	end
end

function pActivity:TTHT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseTTHTLimit) == 1 then
		Talk(1, "", "S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m")
		return nil
	end
	return 1
end

function pActivity:Use_TTHT()
	local tbExpAward = {szName = "�i�m kinh nghi�m", nExp=1500000}
	%tbVNG_BitTask_Lib:addTask(%tbUseTTHTLimit, 1)	
	tbAwardTemplet:Give(tbExpAward, 1, {"EventVuLanBaoHieu", "SuDungThuyTuuHoTienNhanKinhNghiem"})
	--Ph�n th��ng item
	local tbTranslog = {strFolder = %strTranLogFolder, nPromID = %nPromotionID, nResult = 1}
	tbAwardTemplet:Give(%tbUseTTHT_ItemAward, 1, {"EventVuLanBaoHieu", "SuDungThuyTuuHoTienNhanVatPham", tbTranslog})
	--ph�n th��ng khi s� d�ng v�t ph�m ��t m�c
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbUseTTHTLimit)
		if %tbUseTTHT_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbUseTTHT_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"EventVuLanBaoHieu", format("SuDung%dlanVatPhamThuyTuuHoTien", nTaskVal)})
		end
end

function pActivity:GiveCuuTienLimit(nCount)
	local nTaskVal = PlayerFunLib:GetTaskDailyCount(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY)
	if not nTaskVal then
		return nil
	end
	if (nTaskVal + nCount) > %nGive_Cuu_Tien_Daily_Max_Count then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� t�ng <color=yellow>%d <color>C�u Ti�n Ng� Y�n n�a.", %nGive_Cuu_Tien_Daily_Max_Count - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveCuuTien(nCount)		
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=1000000}
	PlayerFunLib:AddTaskDaily(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY, nCount)
	for i = 1, nCount do		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangCuuTienNguYen"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangCuuTienNguYen", "1000000 �i�m kinh nghi�m", 1)
	end
	return 1
end