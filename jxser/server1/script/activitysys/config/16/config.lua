

-------�ֲ��������� ��ʼ---------
-------�ֲ��������� ����---------

tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "C�u h�i hoa ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hoa ��ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Tham gia �o�n Hoa ��ng",2} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "nil",
	szName = "Tham gia �o�n Hoa ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"Ch� c� C�p 50 (bao g�m c�p 50) ho�c nh�n v�t �� chuy�n sinh m�i c� th� tham gia �o�n hoa ��ng",">="} },
	},
	tbActition = 
	{
		{"tbRiddle:Show",	{"huadeng.txt",7,"","Ch�c m�ng ��i hi�p �� tr� l�i ��ng c�u h�i","tbJiaoShi2009:Award","","tbJiaoShi2009:WrongAnswer",0} },
	},
}
