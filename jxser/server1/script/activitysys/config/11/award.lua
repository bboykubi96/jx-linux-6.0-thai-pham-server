
tbMaterialBagAward = --ʹ�ò��ϴ��Ľ���
{
	[1]={szName="�o L�nh B� R�ch", tbProp={6,1,3137,1,0,0}, nExpiredTime=20170819, nRate=30},
	[2]={szName="M�nh V�i", tbProp={6,1,3139,1,0,0}, nExpiredTime=20170819, nRate=30},
	[3]={szName="Khuy �o", tbProp={6,1,3140,1,0,0}, nExpiredTime=20170819, nRate=40},
}

tbKillMonstorAward = --��ֵ���
{
	[1]={szName="T�i Nguy�n Li�u", tbProp={6,1,3144,1,0,0}, nExpiredTime=20170819, nRate=3},
}

tbNewUniformAward = --ʹ���µľ��½���
{
	[1] = {szName = "�i�m Kinh Nghi�m", nExp_tl=500000},
	[2] = 
	{
			--{szName = "Kim t�",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			--{szName = "Th�n b� kho�ng th�ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

			--{szName = "Huy�n tinh c�p 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			--{szName = "Huy�n tinh c�p 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			--{szName = "Huy�n tinh c�p 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			--{szName = "Huy�n tinh c�p 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			--{szName = "Huy�n tinh c�p 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			--{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			--{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			--{szName = "N�n B�t tr�n ph�c nguy�t", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			--{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			--{szName = "T� m�u l�nh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			--{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
		--	{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			--{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
		--	{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
		--	{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
		--	{szName= "T�i danh v�ng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

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
	},
}

tbPatchedUniformAward =  -- Phan thuong ao linh da sua 500 k diem
{
	[1] = {szName = "�i�m Kinh Nghi�m", nExp_tl=500000},	 
}

tbNewUniformExtraAward = 
{
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
			{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 100000000},
			{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=10,},
			{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "H�a c�ng ��i ph�p", tbProp={6,1,4276,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},
			{szName = "Th�t tinh th�o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B�ch ni�n th�t tinh th�o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thi�n ni�n th�t tinh th�o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B�c ��u truy�n c�ng thu�t", tbProp={6,1,1672,1,0,0},nCount=1, },
			{szName = "�� ph� Ho�ng Kim - An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={6,1,388,1,0,0},nCount=1},
		}, 
}

tbPatchedUniformLog = 
{
	[500] = 1,
	[1000] = 1,
	[1500] = 1,
}

tbNewUniformAwardExp = -- phan thuong diem kinh nghiem su dung ao linh moi
{	
	{nExp_tl=800000,},
}