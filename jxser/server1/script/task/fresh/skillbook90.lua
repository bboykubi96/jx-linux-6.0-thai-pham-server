IncludeLib("FILESYS");
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
--Include("\\script\\gm_tool\\libgm.lua")


function main()
	dofile("script/task/fresh/skillbook90.lua")
	local strFaction = GetFaction()
	if (tbSkillbook90[strFaction] == nil) then
		Say("C�c h� v�n ch�a gia nh�p m�n ph�i!");
		return 1
	end
	nhanskill9x()
	return 1
end


tbSkillbook90 = 
{
	tianwang = 
	{
		{szName = "Thi�n V��ng Ch�y Ph�p. Quy�n 1", nID = 37},
		{szName = "Thi�n V��ng Th��ng ph�p. Quy�n 2", nID = 38},
		{szName = "Thi�n V��ng �ao ph�p.Quy�n 3", nID = 39},
	},
	shaolin = 
	{
		{szName = "Thi�u L�m Quy�n Ph�p. Quy�n 1", nID = 56},
		{szName = "Thi�u L�m C�n ph�p. Quy�n 2", nID = 57},
		{szName = "Thi�u L�m �ao ph�p. Quy�n 3", nID = 58},
	},
	tangmen = 
	{
		{szName = "H�m T�nh thu�t.Lo�n Ho�n K�ch", nID = 28},
		{szName = "T� Ti�n thu�t. B�o V� L� Hoa", nID = 27},
		{szName = "Phi �ao thu�t. Nhi�p H�n Nguy�t �nh", nID = 45},
		{szName = "Phi Ti�u thu�t. C�u Cung Phi Tinh", nID = 46},
	},
	wudu = 
	{
		{szName = "Ng� ��c Ch��ng Ph�p. Quy�n 1 ", nID = 47},
		{szName = "Ng� ��c �ao ph�p. Quy�n 2", nID = 48},
		{szName = "Ng� ��c Nhi�p T�m thu�t. Quy�n 3", nID = 49},
	},
	emei = 
	{
		{szName = "Di�t Ki�m M�t T�ch", nID = 42},
		{szName = "Nga Mi  Ph�t Quang Ch��ng M�t T�ch", nID =43},
		{szName = "Ph� �� M�t T�ch", nID = 59},
	},
	cuiyan = 
	{
		{szName = "Th�y Y�n �ao ph�p", nID = 40},
		{szName = "Th�y Y�n Song �ao", nID = 41},
	},
	gaibang = 
	{
		{szName = "C�i Bang Ch��ng Ph�p", nID = 54},
		{szName = "C�i Bang C�n ph�p", nID = 55},
	},
	tianren = 
	{
		--{szName = "V�n Long K�ch. M�u ph�p", nID = 35},
		{szName = "L�u Tinh. �ao ph�p", nID = 36},
		{szName = "Nhi�p H�n. Ch� thu�t ", nID = 53},
	},
	wudang = 
	{
		{szName = "Th�i C�c Quy�n Ph�. Quy�n 3", nID = 33},
		--{szName = "Th�i C�c Ki�m Ph�. Quy�n 2", nID = 34},
	},
	kunlun = 
	{
		{szName = "Ng� Phong thu�t", nID = 50},
		{szName = "Ng� L�i thu�t", nID = 51},
		{szName = "Ng� T�m thu�t", nID = 52},
	}
};


function nhanskill9x()
dofile("script/task/fresh/addbook.lua")
	local strFaction = GetFaction()
	if (tbSkillbook90[strFaction] == nil) then
		Talk(1, "", "C�c h� v�n ch�a gia nh�p m�n ph�i!");
		return 1;
	end
	if CalcFreeItemCellCount() < 3 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 4 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local tbOpp = {}
	local str = "<#> Ta cho ph�p ��i hi�p ch�n 1 trong nh�ng k� n�ng 9x sau ";
	for i=1, getn(tbSkillbook90[strFaction]) do
		local strItemName = tbSkillbook90[strFaction][i].szName
		local nID =  tbSkillbook90[strFaction][i].nID
		tinsert(tbOpp,"Ta mu�n nh�n".. strItemName.." /#GetSkillbook901(" .. nID .. ")");
	end
	tinsert(tbOpp, "<#>Tho�t/OnCancel")
	if ( getn( tbOpp ) == 0 ) then
		Say(str, 0);
		return 1;
	end;
	Say( str, getn( tbOpp ), tbOpp )
end
function GetSkillbook901(nID)
	local nLevel=GetLevel()
	if CalcFreeItemCellCount() < 3 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 4 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	if nLevel<10 then
	Say("Ng��i mu�n b� t�u h�a nh�p m� ah? h�y �i tu luy�n t�i ��ng c�p 10 ��.", 0);
	else
	local nIndex=AddItem(6,1,nID,1,0,0)
	local strItemName = GetItemName(nIndex)
	SetItemBindState(nIndex, -2);
	--AddItem(6,1,2424,1,0,0)
	--SetTask(3002,1)
	ConsumeEquiproomItem(1,6,1,2426,-1)
	Msg2Player("B�n nh�n ���c 1 cu�n "..strItemName)
	return 0;
	end
end