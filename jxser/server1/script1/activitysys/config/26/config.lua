Include("\\script\\activitysys\\config\\26\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "Click v�o NPC B�n Ti�c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�n Ti�c"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n th��ng th�c m�n �n",2} },
		{"SetDialogTitle",	    {"Ch�c M�ng N�m M�i!"} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "nil",
	szName = "Ta mu�n th��ng th�c m�n �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"Ch� c� nh�ng Hi�p S� c� ��ng c�p 50 v� 50 tr� l�n ho�c l� nh�ng Hi�p S� �� tr�ng sinh m�i c� th� tham gia ho�t ��ng n�y.",">="} },
		--{"ThisActivity:CheckTask",	{TSK_TotalEatExp,nTotalEatUpExp,"Thi�u Hi�p ng��i th��ng th�c m�n �n nh�n ���c kinh nghi�m �� ��t ��n gi�i h�n r�i, kh�ng th� �n th�m ���c n�a","<"} },
		{"ThisActivity:CheckTaskA",	{TSK_EatExp, TSK_EatExpDate, nEatUpExp,"Xin l�i, Thi�u Hi�p h�m nay ng��i �n no q�a r�i, ng�y mai l�i ��n nh�.",nNumber} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveEatAward1",	{TSK_EatExp, TSK_EatExpDate, TSK_TotalEatExp, nNumber} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "Ta mu�n ��u R��u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��u R��u , ��u ch�nh l� tr� tu� v� v�n may"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"Ch� c� nh�ng Hi�p S� c� ��ng c�p 50 v� 50 tr� l�n ho�c l� nh�ng Hi�p S� �� tr�ng sinh m�i c� th� tham gia ho�t ��ng n�y.",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Gi�i thi�u quy t�c ��u R��u",4} },
		--{"AddDialogOpt",	{"Ta mu�n b�t ��u ��u r��u",5} },
		--{"AddDialogOpt",	{"Ta mu�n ki�m tra k�t qu� ��u r��u",12} },
		--{"AddDialogOpt",	{"Ta mu�n nh�n ph�n th��ng ��u R��u",23} },
		--{"AddDialogOpt",	{"�� ta suy ngh� l�i",0} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "Gi�i thi�u quy t�c ��u R��u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�u Hi�p, ng��i m�i ng�y c� th� tham gia 3 tr�n ��u R��u, m�i tr�n ��u R��u t�ng c�ng c� 12 l��t r��u, Thi�u Hi�p n�u ng��i mu�n th�ng 1 tr�n ��u r��u th�nh c�ng, th� c�n ph�i u�ng h�t 12 lu�t r��u c�a tr�n ��u R��u n�y, trong m�i l��t ��u R��u, Thi�u Hi�p c� th� l�a ch�n u�ng B�t R��u Nh�, B�t R��u Trung, hay l� B�t R��u L�n, u�ng lo�i r��u kh�ng gi�ng nhau s� c�ng th�m  cho ng��i �� Say X�n v� T�u L��ng kh�ng gi�ng nhau, Thi�u Hi�p c�n ph�i ��m b�o trong l�c �� Say X�n nh� h�n 100 c� g�ng t�ng cao T�u L��ng c�a m�nh. N�u ng��i kh�ng th�n tr�ngu�ng cho Say X�n ��n 100 ho�c 100 tr� l�n, th� ng��i �� u�ng say r�i, th� tr�n ��u r��u n�y xem nh� l� th�t b�i, n�u ng��i u�ng h�t 12 l��t r��u m� �� Say X�n c�a ng��i v�n nh� h�n 100, th� tr�n ��u R��u n�y ng��i �� th�nh c�ng, ta s� l�y t�t c� T�u L��ng nh�n ���c c�a nh�ng l�n ��u R��u th�nh c�ng trong ng�y c�ng l�i v� ti�n h�nh x�p h�ng, X�p h�ng � top 10 th� s� ���c nh�n ph�n th��ng phong ph�. Qu� tr�nh ��u R��u, B�t R��u Nh� c�ng th�m 3-6 �� Say X�n, 3 l��ng T�u L��ng, B�t R��u Trung c�ng th�m 2-12 �� Say X�n, 7 l��ng T�u L��ng, B�t R��u L�n c�ng th�m 3-18 �� Say X�n, 11 l��ng T�u L��ng."},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "nil",
	szName = "Ta mu�n b�t ��u ��u r��u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:BeginDrink",	{nil} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "nil",
	szName = "U�ng m�t b�t r��u nh�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DrinkOneRound",	{TSK_ZuiYi,TSK_JiuLiang,TSK_DrinkTimes,TSK_DrinkRound,TSK_WinDrink,TSK_AnWei,TSK_LastTimeDate,1020,"small",5} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "nil",
	szName = "U�ng 1 B�t R��u Trung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DrinkOneRound",	{TSK_ZuiYi,TSK_JiuLiang,TSK_DrinkTimes,TSK_DrinkRound,TSK_WinDrink,TSK_AnWei,TSK_LastTimeDate,1020,"middle",5} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "nil",
	szName = "U�ng m�t b�t r��u l�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DrinkOneRound",	{TSK_ZuiYi,TSK_JiuLiang,TSK_DrinkTimes,TSK_DrinkRound,TSK_WinDrink,TSK_AnWei,TSK_LastTimeDate,1020,"big",5} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "nil",
	szName = "Ch�u thua",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:Lose",	{TSK_DrinkTimes,TSK_DrinkRound,TSK_ZuiYi,TSK_AnWei,TSK_JiuLiang} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i c�i b�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddDialogNpc",	{"B�n Ti�c", 1658, tbDeskPos} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i Th�m Vi�n Ngo�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddDialogNpc",	{"Th�m Vi�n Ngo�i", 1659, tbYuanWaiPos} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "Ki�m tra k�t qu� ��u r��u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ki�m tra k�t qu� ��u r��u",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ki�m tra t�u l��ng nh�n ���c h�m nay  c�a ta.",13} },
		{"AddDialogOpt",	{"Ki�m tra x�p h�ng top 10 c�a T�u L��ng ng�y h�m tr��c",15} },
		{"AddDialogOpt",	{"Ki�m tra x�p h�ng t�u l��ng ng�y h�m tr��c c�a ta.",16} },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "nil",
	szName = "Ki�m tra t�u l��ng nh�n ���c h�m nay  c�a ta.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayCurJiuLiang",	{nil} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "nil",
	szName = "Ki�m tra x�p h�ng top 10 c�a T�u L��ng hi�n t�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayCurTopTen",	{nil} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "nil",
	szName = "Ki�m tra x�p h�ng top 10 c�a T�u L��ng ng�y h�m tr��c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayYTopTen",	{nil} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil",
	szName = "Ki�m tra x�p h�ng t�u l��ng ng�y h�m tr��c c�a ta.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayYPlayerPaiMing",	{nil} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "Click v�o Th�m Vi�n Ngo�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th�m Vi�n Ngo�i"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"",">="} },
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>C�c ch� v� v� l�m h�o hi�p, L�o Th�m t�i �� b�y l� r�i, n�m m�i c�ng g�n k�, Ta � ��y �� b�y s�n s�n h�o h�i v� chi�u ��i c�c ch� v�, xin c�c v� c� t� nhi�n, ��ng kh�ch s�o, �n u�ng no say tho�i m�i �i!"} },
		{"AddDialogOpt",	{"Gi�i thi�u ho�t ��ng ��i Y�n Qu�n Hi�p",18} },
		{"AddDialogOpt",	{"Nh�n h�ng bao",19} },
		{"AddDialogOpt",	{"Mua k�t tinh M�c",37} },
		
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "Gi�i thi�u ho�t ��ng ��i Y�n Qu�n Hi�p",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Th�i gian t� 09h ng�y 01/01 ��n 30/01, Thi�u Hi�p ng��i c� th� t�i ch� Ta � ��y �� b�y s�n s�n h�o h�i v� chi�u ��i, �n u�ng no say tho�i m�i �i, Th�i gian t� 02/01 ��n 11/01, �� c�u may cho con trai xa x� c�a ta, Thi�u Hi�p ng��i c� th� ��n ch� c�a ta ��y nh�n 1 ��i H�ng Bao! Th�m Vi�n Ngo�i ta ��y kh�ng ph�i l� ng��i keo ki�t ��u, ta �� b� v�o H�ng Bao ��n kinh nghi�m, Thi�u Hi�p ng��i ��ng qu�n ��n nh�n H�ng Bao nh�.",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "nil",
	szName = "Nh�n h�ng bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_LiBao,1,"Thi�u Hi�p ng��i �� nh�n H�ng Bao � ch� c�a ta r�i, m�i ng��i ch� ���c nh�n H�ng Bao 1 l�n � ch� c�a ta!","<"} },
		{"lib:CheckDay",	{nGetLiBaoStartDate, nGetLiBaoEndDate, "V�o kho�ng ng�y 02 th�ng 1, con trai c�a ta ph�i l�n ���ng t�m ki�m ph��ng tr�i bu�n b�n m�i, �� c�u may cho n�, v�o ng�y 02 ��n ng�y 11 th�ng 1, Thi�u Hi�p ng��i c� th� ��n ch� c�a ta ��y nh�n m�t ��i H�ng Bao! Th�m Vi�n Ngo�i ta ��y kh�ng ph�i l� ng��i keo ki�t ��u, ta �� b� v�o H�ng Bao ��n kinh nghi�m, Thi�u Hi�p ng��i ��ng qu�n ��n nh�n H�ng Bao nh�."} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�nh trang kh�ng �� ch� tr�ng, �t nh�t ph�i 1 c�i 1*1 kh�ng gian h�nh trang"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2694,1,0,0},nBindState = -2,nExpiredTime=HetHanEventTetTay,},1,"��i Y�n Qu�n Hi�p n�m 2011, H�ng Bao Th�m Vi�n Ngo�i"} },
		{"ThisActivity:AddTask",	{TSK_LiBao,1} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "��i l�y Gi�i T�u Ho�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gi�i T�u Ho�n",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2695,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"��i Y�n Qu�n Hi�p n�m 2011, nh�n ���c Gi�i T�u Ho�n"} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "S� d�ng Gi�i T�u Ho�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2695,-1,-1,-1},}},
	tbCondition = 
	{
		{"ThisActivity:CheckGetDrunk",	{1020,"Kh�ng c� say th� kh�ng c�n d�ng Gi�i T�u Ho�n ��u"} },
	},
	tbActition = 
	{
		{"ThisActivity:JieJiu",	{1020} },
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "ItemScript",
	szName = "S� d�ng H�ng Bao c�a Th�m Vi�n Ngo�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2694,-1,-1,-1},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_UseLiBao,0,"","=="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{nLiBaoExp,1,"��i Y�n Qu�n Hi�p n�m 2011, s� d�ng H�ng Bao Th�m Vi�n Ngo�i nh�n ���c kinh nghi�m"} },
		--{"ThisActivity:SetTask",	{TSK_UseLiBao,1} },
		{"ThisActivity:SuDungHongBao",	{nil} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "CreateDialog",
	szName = "Nh�n ph�n th��ng ��u R��u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nh�n ph�n th��ng ��u R��u",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n ph�n th��ng x�p h�ng ��u R��u",24} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng ��u r��u th�nh c�ng",29} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng an �i",30} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng x�p h�ng ��u R��u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:GetPaiMingAward",	{nil} },
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng ��u r��u x�p h�ng 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng ��u r��u x�p h�ng 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng ��u r��u x�p h�ng 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng ��u r��u x�p h�ng t� 4-10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng ��u r��u th�nh c�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_WinDrink,1,"Thi�u Hi�p ng��i kh�ng c� ph�n th��ng ��u r��u th�nh c�ng �� nh�n","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:GetDrinkAward",	{TSK_TotalDrinkExp, nTotalDrinkUpExp, nWinDrinkExp, "Thi�u Hi�p ng��i tham gia ��u r��u nh�n ���c kinh nghi�m �� ��t ��n gi�i h�n, kh�ng th� ti�p t�c nh�n nh�ng ph�n th��ng c� li�n quan ��n ��u r��u", "<", nNumber,"��i Y�n Qu�n Hi�p n�m 2011, nh�n ph�n th��ng ��u r��u th�nh c�ng."} },
		{"ThisActivity:SetTask",	{TSK_WinDrink,0} },
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng an �i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_AnWei,1,"Thi�u Hi�p, ng��i kh�ng c� ph�n th��ng an �i �� nh�n","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:GetDrinkAward",	{TSK_TotalDrinkExp, nTotalDrinkUpExp, nAnWeiExp, "Thi�u Hi�p ng��i tham gia ��u r��u nh�n ���c kinh nghi�m �� ��t ��n gi�i h�n, kh�ng th� ti�p t�c nh�n nh�ng ph�n th��ng c� li�n quan ��n ��u r��u", "<", nNumber,"��i Y�n Qu�n Hi�p n�m 2011, nh�n ph�n th��ng an �i"} },
		{"ThisActivity:SetTask",	{TSK_AnWei,0} },
	},
}
tbConfig[31] = --һ��ϸ��
{
	nId = 31,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i ��n L�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddMulNpc",	{tbNpcs,"��n L�ng",1592} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i B�p B� ��u B�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:AddNpcFromFile",	{"��u �ng ��a", 1660, "\\settings\\maps\\dayanqunxia\\datouwawa.txt",176} },
		{"ThisActivity:AddNpcFromFile",	{"��u �ng ��a", 1660, "\\settings\\maps\\dayanqunxia\\dauongdia.txt",78} },
	},
}
tbConfig[33] = --һ��ϸ��
{
	nId = 33,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i V� Nam S�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:AddNpcFromFile",	{"Nam S� ", 1661, "\\settings\\maps\\dayanqunxia\\wunanshi.txt",176} },
		{"ThisActivity:AddNpcFromFile",	{"Nam S� ", 1661, "\\settings\\maps\\dayanqunxia\\namsu.txt",78} },
	},
}
tbConfig[34] = --һ��ϸ��
{
	nId = 34,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i V� B�c S�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:AddNpcFromFile",	{"B�c S� ", 1662, "\\settings\\maps\\dayanqunxia\\wubeishi.txt",176} },
		{"ThisActivity:AddNpcFromFile",	{"B�c S� ", 1662, "\\settings\\maps\\dayanqunxia\\bacsu.txt",78} },
	},
}
--================Them event=================
tbConfig[35] = --һ��ϸ��
{
	nId = 35,
	szMessageType = "ServerStart",
	szName = "Khi m� sever ��ng t�i V�n Tuy�t Nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddDialogNpc",	{"V�n Tuy�t Nhi", 1327, tbYuanWaiPos1} },
	},
}
tbConfig[36] = --һ��ϸ��
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "Click v�o V�n Tuy�t Nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�n Tuy�t Nhi"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"",">="} },
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>Ch�c m�ng n�m m�i 2017. Mu�i � ��y �� b�y s�n s�n h�o h�i v� chi�u ��i c�c ch� v�, xin c�c v� c� t� nhi�n, ��ng kh�ch s�o, �n u�ng no say tho�i m�i �i!"} },
		{"AddDialogOpt",	{"H�p th�nh Ng� Th�i K�t Tinh",49} },
	},
}
tbConfig[37] = --һ��ϸ��
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua k�t tinh M�c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"K�t tinh M�c",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},9000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2599,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"��i Y�n Qu�n Hi�p n�m 2011, nh�n ���c K�t Tinh M�c"} },
	},
}
tbConfig[38] = --һ��ϸ��
{
	nId = 38,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��no qu�i nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{szName="K�t tinh Th�",tbProp={6,1,2600,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"2"} },
		{"NpcFunLib:DropSingleItem",	{{szName="K�t tinh Th�y",tbProp={6,1,2602,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"2"} },
	},
}

--Tham gia hoat dong ket tinh hoa

tbConfig[39] = --һ��ϸ��
{
	nId = 39,
	szMessageType = "FinishSongJin",
	szName = "�i�m t�ch l�y T�ng Kim cao c�p l�n h�n 1000 th�p h�n 3000 nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},25,EVENT_LOG_TITLE,"TongKim1000NhanDuoc"} },
	},
}
tbConfig[40] = --һ��ϸ��
{
	nId = 40,
	szMessageType = "FinishSongJin",
	szName = "�i�m t�ch l�y T�ng Kim cao c�p 3000 nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},50,EVENT_LOG_TITLE,"TongKim3000NhanDuoc"} },
	},
}
tbConfig[41] = --һ��ϸ��
{
	nId = 41,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i th� 17 nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},25,EVENT_LOG_TITLE,"VuotAi17NhanDuoc"} },
	},
}
tbConfig[42] = --һ��ϸ��
{
	nId = 42,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i th� 28 nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},50,EVENT_LOG_TITLE,"VuotAi28NhanDuoc"} },
	},
}
tbConfig[43] = --һ��ϸ��
{
	nId = 43,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��u L�nh Phong L�ng �� nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},15,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinhNhanDuoc"} },
	},

}
tbConfig[44] = --һ��ϸ��
{
	nId = 44,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��i ��u L�nh Phong L�ng �� nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},20,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinhNhanDuoc"} },
	},
}
tbConfig[45] = --һ��ϸ��
{
	nId = 45,
	szMessageType = "YDBZguoguan",
	szName = "Vi�m �� v��t qua �i th� 10 nh�n ���c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},50,EVENT_LOG_TITLE,"VuotAiViemDe10NhanDuoc"} },
	},
}
tbConfig[46] = --һ��ϸ��
{
	nId = 46,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss Ho�ng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},20,EVENT_LOG_TITLE,"TieuDietBossTheGioiNhanDuoc"} },
	},
}
tbConfig[47] = --һ��ϸ��
{
	nId = 47,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss S�t Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},5,EVENT_LOG_TITLE,"TieuDietBossSatThuNhanDuoc"} },
	},
}
tbConfig[48] = --һ��ϸ��
{
	nId = 48,
	szMessageType = "Chuanguan",
	szName = "V��t �i ti�u di�t Boss ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"30"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},4,EVENT_LOG_TITLE,"VuotAiTieuDietBosssNhanDuoc"} },
	},
}
tbConfig[49] = --һ��ϸ��
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Ng� Th�i K�t Tinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� Th�i K�t Tinh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"K�t Tinh Kim",{szName="K�t tinh Kim",tbProp={6,1,2598,1,0,0},},1} },
		{"AddOneMaterial",	{"K�t Tinh M�c",{szName="K�t tinh M�c",tbProp={6,1,2599,1,0,0},},1} },
		{"AddOneMaterial",	{"K�t Tinh Th�y",{szName="K�t tinh Th�y",tbProp={6,1,2600,1,0,0},},1} },
		{"AddOneMaterial",	{"K�t Tinh H�a",{szName="K�t tinh H�a",tbProp={6,1,2601,1,0,0},},1} },
		{"AddOneMaterial",	{"K�t Tinh Th�",{szName="K�t tinh Th�",tbProp={6,1,2602,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2605,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"��i Y�n Qu�n Hi�p n�m 2016, nh�n ���c Ng� Th�i K�t Tinh"} },
	},
}
tbConfig[50] = 
{
	nId = 50,
	szMessageType = "ItemScript",
	szName = "S� d�ng Ng� Th�i K�t Tinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2605,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"ThisActivity:CheckTask",	{TSK_SuDungNTKT,2000,"Th�t ��ng ti�c hi�n t�i s� l�n s� d�ng �� ��, kh�ng th� s� d�ng ���c n�a","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNTKT",	{nil} },
	},
}

tbConfig[51] = --һ��ϸ��
{
	nId = 51,
	szMessageType = "ClickNpc",
	szName = "Click v�o Ch� Ti�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua k�t tinh Kim",52} },
		
	},
}

ITEM_COIN		= {szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},}
tbConfig[52] = 
{
	nId = 52,
	szMessageType = "CreateCompose",
	szName = "Mua K�t Tinh Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua K�t Tinh Kim",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="K�t tinh Kim",tbProp={6,1,2598,1,0,0},nExpiredTime=HetHanEventTetTay,},1,EVENT_LOG_TITLE,"MuaKetTinhKim"} },
	},
}

tbConfig[53] = --һ��ϸ��
{
	nId = 53,
	szMessageType = "OnLogin",
	szName = "Ng��i ch�i tr�c tuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:PlayerOnLogin",	{nil} },
	},
}