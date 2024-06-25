Include("\\script\\activitysys\\config\\17\\config.lua")
Include("\\script\\activitysys\\config\\17\\head.lua")

function pActivity:Jiluxiaohao_yesou()
	AddStatData("baoxiangxiaohao_kaiyesouxiangzi", 1)	--��������һ��
end

function pActivity:Jiluxiaohao_chengzhan()
	AddStatData("baoxiangxiaohao_kaichengzhanlibao", 1)	--��������һ��
end

function pActivity:Jiluxiaohao_zhizun()
	AddStatData("baoxiangxiaohao_kaizhizunmibao", 1)	--��������һ��
end

function pActivity:Jiluxiaohao_shuizexiangzi()
	AddStatData("baoxiangxiaohao_kaishuizeixiangzi", 1)	--��������һ��
end

--�i�u ch�nh ph�n th��ng r�i ra t� boss thu� t�c ��i ��u l�nh - Modified By DinhHQ - 20120523
function pActivity:VnFFBigBossDrop(nNpcIndex)
	tbVnFFBigBossDrop = {
		--{szName="Thi�n Long L�nh",tbProp={6,1,2256,1,0,0},nCount=5,nRate=20},
		--{szName="B�ch C�t L�nh",tbProp={6,1,2255,1,0,0},nCount=5,nRate=20},
		--{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2256,1,0,0},nCount=10,nRate=20},
		--{szName="Ti�n ��ng",tbProp={6,1,2256,1,0,0},nCount=10,nRate=20},
		--{szName = "M�nh Thi�n S�n Tuy�t Li�n",tbProp={6,1,4344,1,0,0},nCount=20,nRate=20,},
		--{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=35},
		{szName = "N�n B�t tr�n ph�c nguy�t", tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1, nRate=35},
		{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0}, nCount=1,  nRate=1},
		{szName = "T�i danh v�ng",tbProp={6,1,4338,1,0,0}, nCount=1,  nRate=8},
		{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1, nRate=0.01},
		{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,  nRate=0.01},
		{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,  nRate=0.01},
		{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,  nRate=0.01},
		{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0}, nCount=1,  nRate=1},
		{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0}, nCount=1,  nRate=0.2},
		{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0}, nCount=1,  nRate=0.2},
		{szName = "��i th�nh b� k�p",tbProp={6,1,2424,1,0,0}, nCount=1,  nRate=0.05},

		--{szName = "M�nh Nhu T�nh  Tu� T�m Ng�c B�i (1/4)",tbProp={4,923,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Nhu T�nh  Tu� T�m Ng�c B�i (2/4)",tbProp={4,924,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Nhu T�nh  Tu� T�m Ng�c B�i (3/4)",tbProp={4,925,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Nhu T�nh  Tu� T�m Ng�c B�i (4/4)",tbProp={4,926,1,1,0,0}, nCount=1,  nRate=0.2},

		--{szName = "M�nh Hi�p C�t T�nh � K�t (1/6) ",tbProp={4,771,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Hi�p C�t T�nh � K�t (2/6) ",tbProp={4,772,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Hi�p C�t T�nh � K�t (3/6) ",tbProp={4,773,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Hi�p C�t T�nh � K�t (4/6) ",tbProp={4,774,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Hi�p C�t T�nh � K�t (5/6) ",tbProp={4,775,1,1,0,0}, nCount=1,  nRate=0.2},
		--{szName = "M�nh Hi�p C�t T�nh � K�t (6/6) ",tbProp={4,776,1,1,0,0}, nCount=1,  nRate=0.2},
		
	}	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbVnFFBigBossDrop, "Ph�n th��ng ti�u di�t Th�y T�c ��i ��u L�nh", 1)
end

function pActivity:VnFFBigBossDropTieu(nNpcIndex)
	tbVnFFBigBossDrop = {
		--{szName = "Ti�n th�o l�",tbProp={6,1,71,1,0,0},nCount=1, nRate=30},
		{szName = "N�n B�t tr�n ph�c nguy�t", tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1, nRate=20},
		{szName = "Th� ��c x� tri�u ��nh", tbProp={6,1,1375,1,0,0}, nCount=1,  nRate=3},
		{szName = "T�i danh v�ng",tbProp={6,1,4338,1,0,0}, nCount=1,  nRate=5},
		{szName = "Tinh h�ng b�o th�ch",					tbProp={4,353,1,1,0,0},nCount=1, nRate=0.001},
		{szName = "T� th�y tinh",								tbProp={4,239,1,1,0,0},nCount=1,  nRate=0.001},
		{szName = "L�c th�y tinh",								tbProp={4,240,1,1,0,0},nCount=1,  nRate=0.001},
		{szName = "Lam th�y tinh",							tbProp={4,238,1,1,0,0},nCount=1,  nRate=0.001},
		{szName = "Qu� hoa t�u",tbProp={6,1,125,1,0,0}, nCount=1,  nRate=0.001},
		--{szName = "V� l�m m�t t�ch",tbProp={6,1,26,1,0,0}, nCount=1,  nRate=0.001},
		--{szName = "T�y t�y kinh",tbProp={6,1,22,1,0,0}, nCount=1,  nRate=0.001},
	}	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbVnFFBigBossDrop, "Ph�n th��ng ti�u di�t Th�y T�c ��u L�nh", 1)
end

function pActivity:VnUsePirateBox(nItemIdx)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\activitysys\\config\\17\\vnshuizeibaoxiang.lua", "VnPirateBox_main", nItemIdx)
	return nil
end