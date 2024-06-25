

-------¾Ö²¿±äÁ¿¶¨Òå ¿ªÊ¼---------
-------¾Ö²¿±äÁ¿¶¨Òå ½áÊø---------

tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "C©u hái hoa ®¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hoa ®¨ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Tham gia ®o¸n Hoa ®¨ng",2} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "nil",
	szName = "Tham gia ®o¸n Hoa ®¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"ChØ cã CÊp 50 (bao gåm cÊp 50) hoÆc nh©n vËt ®· chuyÓn sinh míi cã thÓ tham gia ®o¸n hoa ®¨ng",">="} },
	},
	tbActition = 
	{
		{"tbRiddle:Show",	{"huadeng.txt",7,"","Chóc mõng ®¹i hiÖp ®· tr¶ lêi ®óng c©u hái","tbJiaoShi2009:Award","","tbJiaoShi2009:WrongAnswer",0} },
	},
}
