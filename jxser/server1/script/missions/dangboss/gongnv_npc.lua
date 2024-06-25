Include("\\script\\missions\\dangboss\\npcdailog.lua")
 IncludeLib("ITEM") 

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\missions\\huashanqunzhan\\dailog.lua");

--[DinhHQ]
	--[20101216]:event ngu thai ket tinh
	Include("\\script\\vng_event\\ngusackettinh\\npc\\nskt_gongnv.lua")
	--[20110225]: 8/3/2011
	Include("\\script\\vng_event\\20110225_8_thang_3\\npc\\gongnv.lua")
	Include("\\script\\vng_feature\\top10\\vngtop10.lua")
function main2()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	--[DinhHQ]
	--[20101216]:event ngu thai ket tinh
	if ( tbNSKT_gongnv) then
		tbNSKT_gongnv:addDialog(tbDailog)
	end
	--[20110225]: 8/3/2011
	tbVNGWD2011_GongNV:addDialog(tbDailog)

	if tbTop10:IsActive() == 1 then
		tbDailog:AddOptEntry("Danh s�ch th�p ��i cao th�", tbTop10.MainDialog, {tbTop10})
	end	
	--end [DinhHQ]
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	tbDailog:AddOptEntry("Lo�n chi�n ban th��ng",baodanhdautruong, {tbDangBossDailog})
	--tbDailog:AddOptEntry("Tham Gia ��u B�", tbDangBossDailog.Main, {tbDangBossDailog})
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog:Show()

end

function main()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,-1) ;
	if(nSilverCount > 0) then -- gia xu
	Talk(1,"","Quan ph� �ang th�t ch�t tham �.Ph�m nh�ng ng��i ��n g�p ta nh�t thi�t kh�ng n�n mang ti�n ��ng trong ng��i.Xin h�y c�t h�t v�o r��ng �� c� th� tham gia ho�c l�nh th��ng lo�n chi�n.") -- go
	return
	end
		local dangcap = GetLevel()
	if( dangcap < 90 ) then -- gia xu
	Talk(1,"","��ng c�p 90 m�i ���c tham gia.") -- go
	return
	end
	 local nStateLag = Forbid:CheckStateForbid();
 if (nStateLag ~= 1) then Say("Ng��i d�m c� gan �em thu�c l�c v�o ��y sao? Mau c�t kh�i ��y nhanh l�n!",0);
 return end;
	local tbSay = 
	{
		"<dec><npc>Ch�o ��i hi�p ta ��y cai qu�n tr�n b�o danh n�y ��i hi�p c�n g�.",
		-- "L�i ��i Hoa S�n tuy�t ��nh/HSBattle_Dailog_Main",
	}
	tinsert(tbSay, "Tham gia ��i chi�n/#huashanqunzhan_SignUpMain(1)")
	tinsert(tbSay, "K�t th�c ��i tho�i/OnCancel")
	CreateTaskSay(tbSay)
end;


function OnCancel()
	
end





 Forbid = {};
 FORBID_ITEM_SKILL = { { "C�ng T�c ho�n", {6, 1, 218, -1, 0, 0}, 511 }, { "B�o T�c ho�n", {6, 1, 219, -1, 0, 0}, 512 }, { "Ph� Ph�ng ho�n", {6, 1, 220, -1, 0, 0}, 513 }, { "��c Ph�ng ho�n", {6, 1, 221, -1, 0, 0}, 514 }, { "B�ng Ph�ng ho�n", {6, 1, 222, -1, 0, 0}, 515 }, { "H�a Ph�ng ho�n", {6, 1, 223, -1, 0, 0}, 516 }, { "L�i Ph�ng ho�n", {6, 1, 224, -1, 0, 0}, 517 }, { "Gi�m Th��ng ho�n", {6, 1, 225, -1, 0, 0}, 518 }, { "Gi�m H�n ho�n", {6, 1, 226, -1, 0, 0}, 519 }, { "Gi�m ��c ho�n", {6, 1, 227, -1, 0, 0}, 520 }, { "Gi�m B�ng ho�n", {6, 1, 228, -1, 0, 0}, 521 }, { "Ph� C�ng ho�n", {6, 1, 229, -1, 0, 0}, 522 }, { "��c C�ng ho�n", {6, 1, 230, -1, 0, 0}, 523 }, { "B�ng C�ng ho�n", {6, 1, 231, -1, 0, 0}, 524 }, { "H�a C�ng ho�n", {6, 1, 232, -1, 0, 0}, 525 }, { "L�i C�ng ho�n", {6, 1, 233, -1, 0, 0}, 526 }, { "Tr��ng M�nh ho�n", {6, 1, 234, -1, 0, 0}, 527 }, { "Tr��ng N�i ho�n", {6, 1, 235, -1, 0, 0}, 528 }, { "Y�n H�ng �an", {6, 1, 115, -1, 0, 0}, 450 }, { "X� Lam �an", {6, 1, 116, -1, 0, 0}, 451 }, { "N�i Ph� ho�n", {6, 1, 117, -1, 0, 0}, 453 }, { "N�i ��c ho�n", {6, 1, 118, -1, 0, 0}, 454 }, { "N�i B�ng ho�n", {6, 1, 119, -1, 0, 0}, 455 }, { "N�i H�a ho�n", {6, 1, 120, -1, 0, 0}, 456 }, { "N�i L�i ho�n", {6, 1, 121, -1, 0, 0}, 457 }, { "Tr��ng M�nh ho�n", {6, 0, 1, -1, 0, 0}, 256 }, { "Gia B�o ho�n", {6, 0, 2, -1, 0, 0}, 257 }, { "��i L�c ho�n", {6, 0, 3, -1, 0, 0}, 258 }, { "Cao Thi�m ho�n", {6, 0, 4, -1, 0, 0}, 259 }, { "Cao Trung ho�n", {6, 0, 5, -1, 0, 0}, 260 }, { "Phi T�c ho�n", {6, 0, 6, -1, 0, 0}, 261 }, { "B�ng Ph�ng ho�n", {6, 0, 7, -1, 0, 0}, 262 }, { "L�i Ph�ng ho�n", {6, 0, 8, -1, 0, 0}, 263 }, { "H�a Ph�ng ho�n", {6, 0, 9, -1, 0, 0}, 264 }, { "��c Ph�ng ho�n", {6, 0, 10, -1, 0, 0}, 265 }, { "B�nh ch�ng H�t d� ", {6, 0, 60, -1, 0, 0}, 401 }, { "B�nh ch�ng Th�t heo", {6, 0, 61, -1, 0, 0}, 402 }, { "B�nh ch�ng Th�t b� ", {6, 0, 62, -1, 0, 0}, 403 }, { "B�ch Qu� L� ", {6, 1, 73, -1, 0, 0}, 442 }, { "C�t t��ng h�ng bao", {6, 1, 19, -1, 0, 0}, 442 }, { "Ho�ng Kim B�o r��ng", {6, 1, 69, -1, 0, 0}, 442}, { "T�n S� M�c y�u b�i", {6, 1, 885, -1, 0 ,0}, 542}, { "T�n S� ��ng y�u b�i", {6, 1, 886, -1, 0 ,0}, 543}, { "T�n S� Ng�n y�u b�i", {6, 1, 887, -1, 0 ,0}, 544}, { "T�n S� Kim y�u b�i", {6, 1, 888, -1, 0 ,0}, 545}, { "Ng� T� T�n S� y�u b�i", {6, 1, 889, -1, 0 ,0}, 546}, { "Bao D��c ho�n ", {6, 1, 910, -1, 0 ,0}, 635}, { "H�p l� v�t H�ng bao th�n b�", {6, 1, 1074, -1, 0 ,0}, 635}, { "H�p l� v�t [qu� Huy Ho�ng]", {6, 1, 1075, -1, 0 ,0}, 635}, { "H�nh n�m", {6, 1, 1389, -1, 0, 0}, 635 }, { "C�m nang thay ��i tr�i ��t", {6, 1, 1781, -1, 0, 0},635}, { "M�c Ch� B�o H�p", {6, 1, 2318, -1, 0, 0},635}, { "��ng Ch� B�o H�p", {6, 1, 2319, -1, 0, 0},635}, { "Ng�n Ch� B�o H�p", {6, 1, 2320, -1, 0, 0},635}, { "Ho�ng Kim B�o r��ng", {6, 1, 2321, -1, 0, 0},635}, { "B�o r��ng B�ch Kim", {6, 1, 2322, -1, 0, 0},635}, { "S�t Th� B� B�o", {6, 1, 2347, -1, 0, 0},635}, { "B�o r��ng th�n b� c�a D� T�u", {6, 1, 2374, -1, 0, 0},635}, { "Ch� T�n B� B�o", {6, 1, 2375, -1, 0, 0},635}, { "T�i B�o Th�y T�c", {6, 1, 2376, -1, 0, 0},635}, { "H�i thi�n t�i t�o l� bao", {6, 1, 2527, -1, 0, 0},635}, { "Phi t�c ho�n l� bao", {6, 1, 2520, -1, 0, 0},635}, { "��i l�c ho�n l� bao", {6, 1, 2517, -1, 0, 0},635}, { "C�ng Th�nh Chi�n L� Bao", {6, 1, 2377, -1, 0, 0},635}, { "��c ph�ng ho�n l� bao", {6, 1, 2524, -1, 0, 0},635}, { "Tr��ng m�nh ho�n l� bao", {6, 1, 2515, -1, 0, 0},635}, { "Gia t�c ho�n l� bao", {6, 1, 2516, -1, 0, 0},635}, { "Cao thi�m ho�n l� bao", {6, 1, 2518, -1, 0, 0},635}, { "Cao trung ho�n l� bao", {6, 1, 2519, -1, 0, 0},635}, { "Phi t�c ho�n l� bao", {6, 1, 2520, -1, 0, 0},635}, { "B�ng ph�ng ho�n l� bao", {6, 1, 2521, -1, 0, 0},635}, { "L�i ph�ng ho�n l� bao", {6, 1, 2522, -1, 0, 0},635}, { "H�a ph�ng ho�n l� bao", {6, 1, 2523, -1, 0, 0},635}, { "��c ph�ng ho�n l� bao", {6, 1, 2524, -1, 0, 0},635}, { "L�nh b�i vi s�n ��o l� bao", {6, 1, 2525, -1, 0, 0},635}, { "Ho�n H�n ��n L� Bao", {6, 1, 2830, -1, 0, 0},635}, { "Ti�u Di�u T�n", {6, 1, 2831, -1, 0, 0},635}, { "Ho�n H�n ��n", {6, 1, 2837, -1, 0, 0},635}, };
 FORBID_STATES = { {"B�t ��ng Minh V��ng ", 15}, {"Nh� Lai Thi�n Di�p ", 273}, {"T�nh T�m Quy�t", 33}, {"Kim Chung Tr�o", 42}, {"C�u Thi�n Cu�ng L�i ", 67}, {"X�ch Di�m Th�c Thi�n", 70}, {"B�ng Lam Huy�n Tinh", 64}, {"Xuy�n Y Ph� Gi�p ", 356}, {"V�n ��c Th�c T�m", 73}, {"Xuy�n T�m ��c Th�ch", 72}, {"�o�n C�n H� C�t ", 390}, {"B�ng T�m Tr�i �nh", 269}, {"H� Th� H�n B�ng ", 100}, {"Tuy�t �nh", 109}, {"Ho�t B�t L�u Th� ", 277}, {"T�y �i�p Cu�ng V� ", 130}, {"H�a Li�n Ph�n Hoa", 136}, {"�o �nh Phi H� ", 137}, {"Thi�n Ma Gi�i Th� ", 150}, {"T�a V�ng V� Ng� ", 157}, {"Thanh Phong ph� ", 171}, {"Ki B�n ph� ", 174}, {"Nh�t Kh� Tam Thanh", 178}, {"B�c Minh ��o H�i", 393}, {"Thi�n Thanh ��a Tr�c", 173}, {"Khi H�n Ng�o Tuy�t", 175}, {"T�y Ti�n T� C�t", 394}, {"l�nh b�i k� n�ng 1", 631}, {"l�nh b�i k� n�ng 2", 632}, {"l�nh b�i k� n�ng 3", 633}, {"l�nh b�i k� n�ng 4", 634}, {"l�nh b�i k� n�ng 5", 635}, {"K� n�ng Ti�n Phong", 958}, {"K� n�ng Nguy�n So�i",959}, {"K� n�ng Th�a T��ng", 960}, {"K� n�ng Ho�ng ��", 961}, {"K� n�ng Thi�n T�", 962}, {"K�ch C�ng Tr� L�c Ho�n", 1120}, {"K�ch C�ng Tr� L�c Ho�n",261}, {"K�ch C�ng Tr� L�c Ho�n", 258}, {"K�ch C�ng Tr� L�c Ho�n", 260}, {"�m D��ng Ho�t Huy�t ��n", 1121}, {"�m D��ng Ho�t Huy�t ��n", 256}, {"�m D��ng Ho�t Huy�t ��n", 259}, {"�m D��ng Ho�t Huy�t ��n", 257}, };
 function Forbid:CheckStateForbid() local tbForbit = FORBID_ITEM_SKILL;
 local tbKeyItem = {};
 local tbKeyItemG = {};
 local tbKeyItemD = {};
 local tbKeyItemP = {};
 for i = 1, 3 do tbKeyItem[i] = ITEM_GetImmediaItemIndex(i);
 if (tbKeyItem[i] ~= 0) then tbKeyItemG[i],tbKeyItemD[i],tbKeyItemP[i] = GetItemProp(tbKeyItem[i]);
 else tbKeyItemG[i] = 0;
 tbKeyItemD[i] = 0;
 tbKeyItemP[i] = 0;
 end;
 end;
 for i = 1, getn(tbForbit) do local tbProp = tbForbit[i][2];
 local nCount = CalcEquiproomItemCount(tbProp[1],tbProp[2],tbProp[3],tbProp[4]);
 if (nCount > 0) then return 0;
 end;
 local nCount = CalcItemCount(1,tbProp[1],tbProp[2],tbProp[3],tbProp[4]);
 if (nCount > 0) then return 0;
 end;
 for k = 1, 3 do if (tbKeyItemG[k] == tbProp[1]) and (tbKeyItemD[k] == tbProp[2]) and (tbKeyItemP[k] == tbProp[3]) then return 0;
 end;
 end;
 end;
 Forbid:RemoveSkillState();
 return 1;
 end;
 function Forbid:RemoveSkillState() local tbForbit = FORBID_ITEM_SKILL;
 for i = 1, getn(tbForbit) do local _,_,nSkillStateTime,_ = GetSkillState(tbForbit[i][3]);
 if (nSkillStateTime) then if (nSkillStateTime > 0) then RemoveSkillState(tbForbit[i][3]);
 end;
 end;
 end;
 end;
