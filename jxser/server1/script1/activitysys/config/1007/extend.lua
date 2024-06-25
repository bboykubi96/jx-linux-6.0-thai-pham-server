------------------------------------------------------------------------------------------------
--Author: NgaVN
--Des: Event Ph� N� Vi�t Nam
--Date: 2011-10-13
------------------------------------------------------------------------------------------------
Include("\\script\\activitysys\\config\\1007\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\1007\\variables.lua")

Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("SETTING")

tbActivityNpc = {	
	[1] = {
		szName = "Th� Gh�p Hoa", 
		nLevel = 95,
		nNpcId = 1889,
		nIsboss = 0,
		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		},
	[2] = {
		szName = "Ti�u Ph��ng", 
		nLevel = 95,
		nNpcId = 1327,
		nIsboss = 0,
		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		}
}

tbActivityNpcPos = {
	[1] = {
			[1] = {78,1531,3312,},
		},
	[2] = {
		[1] = {78,1561,3223,},
		},
	}
	

--Ph�n th��ng ��t m�c
local tbUseBTT_AdditionalAward = {
		[500] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 30000000},
			{szName = "Chi�u d�", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=2,},
			{szName = "�� ph� Ho�ng Kim - ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={6,1,385,1,0,0},nCount=1},
		},
		[600] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 30000000}, 
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "�� ph� Ho�ng Kim - ��nh Qu�c Ng�n T�m Y�u ��i",tbProp={6,1,387,1,0,0},nCount=1},
		},
		[700] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 30000000}, 
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "�� ph� Ho�ng Kim - An Bang C�c Hoa Th�ch Ch� ho�n",tbProp={6,1,389,1,0,0},nCount=1},
		},
		[800] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 50000000}, 
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "�� ph� Ho�ng Kim - An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={6,1,390,1,0,0},nCount=1},
		},
		[900] = 
		{
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 60000000}, 
			{szName = "��i th�nh b� k�p 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=9,},
			{szName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch� ",tbProp={6,1,391,1,0,0},nCount=1},
		},
		[1000] = 
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

			{szName = "T�n s� y�u b�i", tbProp={6,1,888,1,0,0},nCount=1,},
			--{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=1,},
			--{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=1,},
			--{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=1,},
			--{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=1,},
			{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=1,},
			{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=1,},
			{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=1,},
		}, 
}

--local tbLogUseIceCrystals = {
--	[500] = "NopVatPhamHoangThach500Lan",
--	[1000] = "NopVatPhamHoangThach1000Lan",
--	[1500] = "NopVatPhamHoangThach1500Lan",	
--	[1500] = "NopVatPhamHoangThach2000Lan",		
--}

--Ph�n th��ng Item
local tbUseBTT_ItemAward = {

			{szName = "Kim t�",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

			{szName = "Huy�n tinh c�p 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "Huy�n tinh c�p 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "Huy�n tinh c�p 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "Huy�n tinh c�p 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "Huy�n tinh c�p 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "T�i danh v�ng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

			{szName="M�nh T�ng B�o �� 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M�nh T�ng B�o �� 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},
}

function pActivity:InitAddNpc()
	--self:AddHeChengHua(%tbActivityNpc[1], %tbActivityNpcPos[1])
	--self:AddHeChengHua(%tbActivityNpc[2], %tbActivityNpcPos[2])
	--self:InitCompose()
end

function pActivity:AddHeChengHua(tbNpc, tbNpcPos)
	--for i=1,getn(tbNpcPos) do
	--	local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
	--	basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	--end
end

--Function gi�i h�n tang bo hoa hong
function pActivity:HandInTangBoHoaHongLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveBoHoaHongLimit) == 1 then
		Talk(1, "", "Ng��i t�ng ta nhi�u B� Hoa H�ng r�i, s� B� Hoa H�ng n�y xin h�y nh�n l�i.");
		Msg2Player("Ng��i t�ng ta nhi�u B� Hoa H�ng r�i, s� B� Hoa H�ng n�y xin h�y nh�n l�i.");
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveBoHoaHongLimit)
	if (nTaskVal + nCount) > %nHoangThachMaxCount then
		Msg2Player(format("S� l��ng B� Hoa H�ng v��t qu� gi�i h�n, ng��i ch� c� th� n�p <color=yellow>%d <color>B� Hoa H�ng n�a.", %nHoangThachMaxCount - nTaskVal))
		return nil
	end
	return 1
end

--Function n�p Bo hoa hong
function pActivity:HandInTangBoHoaHong(nCount)		
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=500000};
	
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveBoHoaHongLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveBoHoaHongLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_PNVN", "TangBoHoaHong"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangBoHoaHong", "500000 exp", 1)			
	end
	--Ghi Log	
end
	
--Function gi�i h�n n�p Ho�ng Th�ch
function pActivity:HandInHoangThachLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveHoangThachLimit) == 1 then
		Talk(1, "", "Ng��i t�ng ta nhi�u Ho�ng Th�ch r�i, s� Ho�ng Th�ch n�y xin h�y nh�n l�i.");
		Msg2Player("Ng��i t�ng ta nhi�u Ho�ng Th�ch r�i, s� Ho�ng Th�ch n�y xin h�y nh�n l�i.");
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveHoangThachLimit)
	if (nTaskVal + nCount) > %nHoangThachMaxCount then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� n�p <color=yellow>%d <color>Ho�ng Th�ch n�a.", %nHoangThachMaxCount - nTaskVal))
		return nil
	end
	return 1
end

--Function n�p Ho�ng Th�ch
function pActivity:HandInHoangThach(nCount)		
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=200000};
	
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveHoangThachLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveHoangThachLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_PNVN", "NopVatPhamHoangThach"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "NopVatPhamHoangThach", "1500000 exp", 1)			
	end
	--Ghi Log	
end


--Function gi�i h�n
function pActivity:UseBTT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseBTTLimit) == 1 then
		Talk(1, "", "S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m")
		Msg2Player("S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m");
		return nil
	end
	return 1
end

function pActivity:Use_BTT()
	local tbExpAward = {szName = "�i�m kinh nghi�m", nExp=700000}
	%tbVNG_BitTask_Lib:addTask(%tbUseBTTLimit, 1)	
	--Ph�n th��ng kinh nghi�m
	tbAwardTemplet:Give(tbExpAward, 1, {"Event_PNVN", "SuDungBangTinhThachNhanKinhNghiem"});

	--Ph�n th��ng item
	local tbTranslog = {strFolder = %strTranLogFolder, nPromID = %nPromotionID, nResult = 1}	
	tbAwardTemplet:Give(%tbUseBTT_ItemAward, 1, {"Event_PNVN", "SuDungBangTinhThachNhanVatPham", tbTranslog});
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbUseBTTLimit);

	--Ph�n th��ng Kinh nghi�m v��t m�c
	if %tbUseBTT_AdditionalAward[nTaskVal] then
		local tbTempAward = %tbUseBTT_AdditionalAward[nTaskVal]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_PNVN", format("SuDung%dLanBangTinhThach", nTaskVal)})
		--%tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, format("SuDung%dLanBangTinhThach", nTaskVal), tbTempAward.nExp.." Exp", 1)
		Msg2Player(format("<color=green>Ch�c m�ng b�n s� d�ng v�t ph�m %s %d l�n, nh�n ���c ph�n th��ng qu�<color>", "B�ng Tinh Th�ch", nTaskVal))
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng v�t ph�m Event ��n m�c <color=yellow>"..nTaskVal.."<color>, nh�n ���c ph�n th��ng nh� �")
		if GetLevel() < 130 then
			local tbExpAward130 = {szName = "�i�m kinh nghi�m 1ty2 cong don", nExp_tl=1200000000}
			tbAwardTemplet:Give(tbExpAward130, 1, {"Event_PNVN", "SuDungBangTinhThachDatMocNhanKinhNghiem1ty2"});
		end
	end

	Msg2Player("�� s� d�ng l�n th�: <color=green>"..nTaskVal.."<color>")
end

function pActivity:NhanDatMoc1000()

	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseBTTLimit) == 0 then
		Talk(1, "", "��i hi�p ch�a ��t m�c 1000")
		Msg2Player("��i hi�p ch�a ��t m�c 1000");
		return nil
	end

	local idtaskHoTroCuuGiang = 1400
	if GetTask(idtaskHoTroCuuGiang) >= 2 then
		Talk(1, "", "��i hi�p �� nh�n m�c 1000 r�i")
		Msg2Player("��i hi�p �� nh�n m�c 1000 r�i");
		return nil
	end

	local Thuong1000 = 
	{
		{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp_tl = 7000000000},
		{szName = "�� ph� Ho�ng Kim - An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={6,1,388,1,0,0},nCount=2},
		{szName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch� ",tbProp={6,1,391,1,0,0},nCount=2},
		{szName = "�� ph� Ho�ng Kim - An Bang C�c Hoa Th�ch Ch� ho�n",tbProp={6,1,389,1,0,0},nCount=2},
		{szName = "�� ph� Ho�ng Kim - An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={6,1,390,1,0,0},nCount=2},
	}
	tbAwardTemplet:Give(Thuong1000, 1 , {"ThuongEV20T10moc1000", "ThuongEV20T10moc1000"})
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�n ���c ph�n th��ng nh� � khi ��t <color=yellow>m�c 1000<color> Event t�i NPC Th� Gh�p Hoa")
	SetTask(idtaskHoTroCuuGiang,2)
end
