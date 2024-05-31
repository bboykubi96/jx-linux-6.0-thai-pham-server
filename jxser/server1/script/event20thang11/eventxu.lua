
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/event20thang11/eventxu.lua")
	--do Say("��o c� �� h�t h�n s� d�ng...") return 0 end
	TSK_UseExpLimit1 = 3911
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	nExpLimit = nExpLimit + 1
	if (nExpLimit > 1000) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	if (GetLevel() < 50) then
		Say("Th�t ��ng ti�c, ch� c� ng��i ch�i <color=yellow>c�p tr�n 50<color> m�i c� th� s� d�ng.",0)
		return 1;
	end
	local tbthuongitem = {
		
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

local tbdatmoc = {
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
			{szName = "C�c hoa th�ch", tbProp={4,963,1,1,0,0},nCount=1,},
			{szName = "B�ng th�ch k�t tinh", tbProp={4,967,1,1,0,0},nCount=1,},
			{szName = "B�ng thi�m t�", tbProp={4,965,1,1,0,0},nCount=1,},
			{szName = "K� huy�t th�ch", tbProp={4,966,1,1,0,0},nCount=1,},
			{szName = "M� n�o", tbProp={4,964,1,1,0,0},nCount=1,},
			{szName = "M�nh thi�n th�ch", tbProp={4,968,1,1,0,0},nCount=1,},
			{szName = "�i�n ho�ng th�ch", tbProp={4,969,1,1,0,0},nCount=1,},
		}, 		
}
	
	--Ph�n th��ng kinh nghi�m
	local tbExpAward = {szName = "�i�m kinh nghi�m", nExp=1000000}

	tbAwardTemplet:Give(tbExpAward, 1, {"Event_20T11", "SuDungItemXuDuocEXP"});

	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});

	--Ph�n th��ng dat moc
	if tbdatmoc[nExpLimit] then
		local tbTempAward = tbdatmoc[nExpLimit]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_20T11", format("SuDung%dLanItemXu", nExpLimit)})
		local msgtbao = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng v�t ph�m Event ��n m�c <color=yellow>"..nExpLimit.."<color>, nh�n ���c ph�n th��ng nh� �"
		Msg2SubWorld(msgtbao)
		if GetLevel() < 130 then
			local tbExpAward130 = {szName = "�i�m kinh nghi�m 1ty5 cong don", nExp_tl=1500000000}
			tbAwardTemplet:Give(tbExpAward130, 1, {"Event_20T11", "SuDungevDatMocNhanKinhNghiem1ty5"});
		end
	end
	SetTask(TSK_UseExpLimit1, nExpLimit)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..nExpLimit .."<color>")
	return 0
end


