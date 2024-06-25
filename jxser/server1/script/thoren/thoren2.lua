Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--��ȡ��������� - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\thoren\\danglong_config.lua")
Include("\\script\\thoren\\tinhsuong_config.lua")
Include("\\script\\thoren\\nguyetkhuyet_config.lua")
Include("\\script\\thoren\\rollback_config.lua")
Include("\\script\\thoren\\hoason_config.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\changefeature\\feature_man.lua")
IncludeLib("ITEM")
function OnExit()

end;

function main()
	dofile("script/thoren/thoren2.lua");
	dofile("script/thoren/rollback_config.lua");
	dofile("script/thoren/nguyetkhuyet_config.lua");
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
		
		--tbDailog:AddOptEntry("Ch� T�o C�c Trang B� Vip Xin X�", epnguavip)
		tbDailog:AddOptEntry("Thay ��i Ngo�i Trang", DoiNgoaiTrang)
		--tbDailog:AddOptEntry("Tr�ng Luy�n Nh�n C�ng Kh�n",trungluyennhan)
		tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh V� Kh�", MenuDoiNgoaiHinh0)
		tbDailog:AddOptEntry("Ch� T�o V� Kh� HKMP Ph�t S�ng(VIP)", PhatSangVip)
	tbDailog:Show()
end;
function trungluyennhan()
local tbSay = 
{
"Tr�ng Luy�n Nh�n C�p 7/#trungluyennhan71()",
"Tr�ng Luy�n Nh�n C�p 8/#trungluyennhan81()",
--"�p C� S�n Ph� Thi�n/#epcoson()",
--"�p V� Li�t Truy�n K�/#epvuliet()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n lo�i ng�a n�o  ",getn(tbSay),tbSay)
end
function trungluyennhan71()
Say("Vui L�ng Ch�n ��ng Nh�n M�nh �ang Mang �� Tr�ng Luy�n",6,
	"Kh�ng ��c/Doc_1",
	"Kh�ng L�i/Loi_1",
	"Kh�ng H�a/Hoa_1",
	"Ph�ng Th� V�t L�/Pho_1",
	"Kh�ng B�ng/Bang_1",
	"H�y/No")
end

function Doc_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan7(4743)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan7(4733)",
	"Th�i Gian Cho�ng/#trungluyennhan7(4738)",
	"H�y B�/No")
end

function Loi_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan7(4742)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan7(4732)",
	"Th�i Gian Cho�ng/#trungluyennhan7(4737)",
	"H�y B�/No")
end

function Hoa_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan7(4740)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan7(4730)",
	"Th�i Gian Cho�ng/#trungluyennhan7(4735)",
	"H�y B�/No")
end

function Pho_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan7(4744)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan7(4734)",
	"Th�i Gian Cho�ng/#trungluyennhan7(4739)",
	"H�y B�/No")
end

function Bang_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan7(4741)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan7(4731)",
	"Th�i Gian Cho�ng/#trungluyennhan7(4736)",
	"H�y B�/No")
end
function trungluyennhan7(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n Tr�ng Luy�n �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C�ng Kh�n 7 ", tbProp = {0,num}, nQuality = 1 },
             	{szName = "Xu ", tbProp = {4,417,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
-------------------------------------
function trungluyennhan81()
Say("Vui L�ng Ch�n ��ng Nh�n M�nh �ang Mang �� Tr�ng Luy�n",6,
	"Kh�ng ��c/Doc_2",
	"Kh�ng L�i/Loi_2",
	"Kh�ng H�a/Hoa_2",
	"Ph�ng Th� V�t L�/Pho_2",
	"Kh�ng B�ng/Bang_2",
	"H�y/No")
end

function Doc_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan8(4758)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan8(4748)",
	"Th�i Gian Cho�ng/#trungluyennhan8(4753)",
	"H�y B�/No")
end

function Loi_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan8(4757)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan8(4747)",
	"Th�i Gian Cho�ng/#trungluyennhan8(4752)",
	"H�y B�/No")
end

function Hoa_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan7(4755)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan7(4745)",
	"Th�i Gian Cho�ng/#trungluyennhan7(4750)",
	"H�y B�/No")
end

function Pho_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan8(4759)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan8(4749)",
	"Th�i Gian Cho�ng/#trungluyennhan8(4754)",
	"H�y B�/No")
end

function Bang_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/#trungluyennhan8(4756)",
	"Th�i Gian Tr�ng ��c/#trungluyennhan8(4746)",
	"Th�i Gian Cho�ng/#trungluyennhan8(4751)",
	"H�y B�/No")
end
function trungluyennhan8(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n Tr�ng Luy�n �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C�ng Kh�n 8 ", tbProp = {0,num}, nQuality = 1 },
             	{szName = "Xu ", tbProp = {4,417,1,1,0},nCount = 800},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}	
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end












































function epnguavip()
local tbSay = 
{

"�p M�t N� 3Skill H�ng V�nh Vi�n/#epmatna()",
"�p NG�a Ho�ng Kim 4 Skill/#epsieuquanghsd()",
"�p C� S�n Ph� Thi�n/#epcoson()",
"�p V� Li�t Truy�n K�/#epvuliet()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n lo�i ng�a n�o  ",getn(tbSay),tbSay)

end
function epcoson()
	local tbSay = 
{
"Ta Mu�n ��i Sang  Bao Tay (Phong Ma Quy�t)/#TienHanhDoiSkillTrungSinh42z(5978)",
"Ta Mu�n ��i Sang  Bao Tay (��u Uy�n)/#TienHanhDoiSkillTrungSinh42z(5979)",
"Ta Mu�n ��i Sang  Bao Tay (T�n Phong V�n Quy�n)/#TienHanhDoiSkillTrungSinh42z(5980)",
"Ta Mu�n ��i Sang  Bao Tay (�o�n Nguy�t)/#TienHanhDoiSkillTrungSinh42z(5981)",
"Ta Mu�n ��i Sang  Bao Tay (T�m Tinh Th�c)/#TienHanhDoiSkillTrungSinh42z(5982)",
"Ta Mu�n ��i Sang D�y Chuy�n (Tri�t V� Phong Th�)/#TienHanhDoiSkillTrungSinh42z(5984)",
"Ta Mu�n ��i Sang  D�y Chuy�n (H� K�ch)/#TienHanhDoiSkillTrungSinh42z(5985)",
"Ta Mu�n ��i Sang  D�y Chuy�n(Ng�c Th�ch Phi�m)/#TienHanhDoiSkillTrungSinh42z(5986)",
"Ta Mu�n ��i Sang  D�y Chuy�n (L�ng Phong)/#TienHanhDoiSkillTrungSinh42z(5987)",
"Ta Mu�n ��i Sang D�y Chuy�n (Nh�t Nh� S�n)/#TienHanhDoiSkillTrungSinh42z(5988)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh42z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "C� S�n ", tbProp = {0,{5262,5266}}, nQuality = 1 },
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M�nh Nguy�n Li�u Hi�m", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguy�n B�o", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
------------------------------
function epvuliet()
	local tbSay = 
{
"Ta Mu�n ��i Sang  n�n/#TienHanhDoiSkillTrungSinh432z(5109)",
"Ta Mu�n ��i Sang  �o/#TienHanhDoiSkillTrungSinh432z(5110)",
"Ta Mu�n ��i Sang  Gi�y/#TienHanhDoiSkillTrungSinh432z(5111)",
"Ta Mu�n ��i Sang B�i/#TienHanhDoiSkillTrungSinh432z(5112)",
"Ta Mu�n ��i Sang �ai/#TienHanhDoiSkillTrungSinh432z(5113)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh432z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "V� Li�t ", tbProp = {0,{5114,5118}}, nQuality = 1 },
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M�nh Nguy�n Li�u Hi�m", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguy�n B�o", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------------------------ep ngua sieu quang vinh vien---------------------------------
function epsieuquangvinhvien()
	GiveItemUI("Th�n M� Si�u Quang V�nh Vi�n !","-----(b� v�o trong)--------\n+1 Ng�a Ho�ng Kim\n\n-----(�� � h�nh trang)-----\n+80 M�nh ng�a Si�u Quang \n+1 Th�n M� �an\n<enter>L�u �: Trang b� ho�ng kim �p ra s� c� h�n s� d�ng v�nh vi�n.!","epsieuquangvinhvien_run")
end
function epsieuquangvinhvien_run(nCount)
		if (nCount == 0) then 
			Say("ng��i ��t c�i g� v�o th� n�y ta ch� c�n 1 Si�u Quang V�nh Vi�n v�o th�i c�n l�i t�t c� th� kh�c �� b�n ngo�i",0);
		return
	end
			if (nCount ~= 1) then 
			Say("ng��i ��t c�i g� v�o th� n�y ta ch� c�n 1 Si�u Quang V�nh Vi�n v�o th�i c�n l�i t�t c� th� kh�c �� b�n ngo�i",0);
		return
	end
	
		local itemIndex = GetGiveItemUnit(1)
	local nCurItemQuality	= GetItemQuality(itemIndex);
	local bindState = GetItemBindState(itemIndex)
	local nG, nD,nP = GetItemProp(itemIndex)
	local timeitem = ITEM_GetExpiredTime(itemIndex)
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
    local nTen=GetItemName(itemIndex)	
		if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
        if  timeitem >0	then
			Talk(1,"", "Trang b� �ang c� h�n s� d�ng, kh�ng th� n�ng c�p")
			return
		end	
		if (nCurItemQuality ~= 1) then
			Talk(1, "", "V�t ph�m ��t v�o kh�ng ph�i l� trang b� HK");
			return
		end
	 if goldEquipIndex~=6758 then
		Talk(1,"", "<color=white>Ch� c� trang b� l� Ng�a Ho�ng Kim  V�nh Vi�n m�i ���c � m�c �p n�y")
		return
	end
	
	local thanmadan = CalcEquiproomItemCount(6,1,5000,-1) ;
	if(thanmadan < 1) then 
	Talk(1,"","C�n c� 1 Th�n M� �an �� � h�nh trang.") 
	return 
	end
		local bachnghetinhngoc = CalcEquiproomItemCount(6,1,30355,-1) ;
	if(bachnghetinhngoc < 10) then 
	Talk(1,"","C�n c� 10 B�ch Ngh� Tinh Ng�c �� � h�nh trang.") 
	return 
	end
	
		local manhsieuquang = CalcEquiproomItemCount(4,1504,1,-1) ;
	if(manhsieuquang < 80 ) then 
	Talk(1,"","C�n c� 80 M�nh Si�u Quang �� � h�nh trang.") 
	return 
	end
	k = RemoveItemByIndex(itemIndex)
	if  k == 1 and ConsumeEquiproomItem(1,6,1,5000,-1) >0 and ConsumeEquiproomItem(80,4,1504,1,-1) and ConsumeEquiproomItem(10,6,1,30355,-1)  then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6757},nQuality=1,nCount=1},}, "test", 1);
			WriteLogPro("dulieu/epnguasieuquang.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nang sao thanh cong sieu quang vinh vien \n");	
	end	
end
---------------------------ep ngua sieu quang 30---------------------------------
function epmatna()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M�nh Nguy�n Li�u Hi�m", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguy�n B�o", tbProp = {4,1496,1,1,0},nCount = 300},
                {szName = "M�t N� 2 Skill", tbProp = {0,11,806,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,11,839,1,0,0},nCount = 1 },
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
-------------------
function epsieuquanghsd()
	local tbSay = 
{
"Ta Mu�n ��i Sang  Han Huyet Than Cau/#TienHanhDoiSkillTrungSinh4321z(4989)",
"Ta Mu�n ��i Sang  Sieu Quang /#TienHanhDoiSkillTrungSinh4321z(4990)",
"Ta Mu�n ��i Sang  xich long cau/#TienHanhDoiSkillTrungSinh4321z(4991)",
"Ta Mu�n ��i Sang duc huy /#TienHanhDoiSkillTrungSinh4321z(4992)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n tr�ng luy�n g� G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4321z(num)
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Ngua 3 Skill", tbProp = {0,{4956,4968}}, nQuality = 1 },
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M�nh Nguy�n Li�u Hi�m", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguy�n B�o", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

--------------------------ep ngua hoang kim---------------------------------
function epnguahoangkimhsd()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Kim Nguy�n B�o", tbProp = {4,1496,1,1,0},nCount = 50},
                {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 1},
                {szName = "M�nh Ng�a Ho�ng Kim 1/7", tbProp = {4,1497,1,1,0},nCount = 10},
                {szName = "M�nh Ng�a Ho�ng Kim 2/7", tbProp = {4,1498,1,1,0},nCount = 10},
                {szName = "M�nh Ng�a Ho�ng Kim 3/7", tbProp = {4,1499,1,1,0},nCount = 10},
                {szName = "M�nh Ng�a Ho�ng Kim 4/7", tbProp = {4,1500,1,1,0},nCount = 10},
                {szName = "M�nh Ng�a Ho�ng Kim 5/7", tbProp = {4,1501,1,1,0},nCount = 10},
                {szName = "M�nh Ng�a Ho�ng Kim 6/7", tbProp = {4,1502,1,1,0},nCount = 10},
                {szName = "M�nh Ng�a Ho�ng Kim 7/7", tbProp = {4,1503,1,1,0},nCount = 10},

			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0, 6756}, nQuality = 1,nExpiredTime=30*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end
--------------hoang kim vinh vien

function epnguahoangkimvinhvien()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "M�nh Ng�a Ho�ng Kim 1/7", tbProp = {4,1497,1,1,0},nCount = 50},
                {szName = "M�nh Ng�a Ho�ng Kim 2/7", tbProp = {4,1498,1,1,0},nCount = 50},
                {szName = "M�nh Ng�a Ho�ng Kim 3/7", tbProp = {4,1499,1,1,0},nCount = 50},
                {szName = "M�nh Ng�a Ho�ng Kim 4/7", tbProp = {4,1500,1,1,0},nCount = 50},
                {szName = "M�nh Ng�a Ho�ng Kim 5/7", tbProp = {4,1501,1,1,0},nCount = 50},
                {szName = "M�nh Ng�a Ho�ng Kim 6/7", tbProp = {4,1502,1,1,0},nCount = 50},
                {szName = "M�nh Ng�a Ho�ng Kim 7/7", tbProp = {4,1503,1,1,0},nCount = 50},
				  {szName = "Gia M� �an", tbProp = {6,1,5001,1,1},nCount = 1},
				  {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0},nCount = 5},
			},
			tbProduct = {szName="Cho t�t c� nguy�n li�u v�o trong ok?", tbProp={0, 6758}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function TestGame()
	szDescription = format("100 Kim Nguy�n B�o\n=> ��p V�i C�i L�n!!.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_TestGame", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end
 function Run_TestGame()
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	local nG, nD, nP, nL, nS = GetItemProp(itemIndex)
	Msg2Player("R�t ti�c! "..nG.."."..nD.."."..nP.."."..nL.."."..nS..".")
	--	Msg2Player("R�t ti�c! "..goldEquipIndex..".")
end
function Make_Weapons()
	szDescription = format("100 Kim Nguy�n B�o\n=> ��p V�i C�i L�n!!.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
		local tbMagicItem =
		{
			[4] =
			{
				[238] = 1,
				[239] = 1,
				[240] = 1,
                                                                                                                                                                                                                                                                                                                                          [1496] = 1,
			},

		}
		
		local nIndex = 0
		if nG == 4 then
			nIndex = nD
		end

		if nG == 4 then
			if nIndex == 238 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone1, nItemIndex)
				end
			elseif nIndex == 239 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone2, nItemIndex)
				end
			elseif nIndex == 240 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone3, nItemIndex)
				end
			end
		end

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then
			if nFaction == 8 then  ----------------------------------------------------------Kiem Vo Dang
				if nRandomAccess > 1 then
					nIndexRes = 59
				 else
					nSucces = 0
				end
			 elseif nFaction == 4 then ----------------------------------------------------------Kiem Nga Mi
				if nRandomAccess > 1 then
					nIndexRes = 57
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then ----------------------------------------------------------Kiem Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 58
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 0 and nRandomRes < 33 then
					if nRandomAccess > 1 then
						nIndexRes = 57
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 33 and nRandomRes < 66 then
					if nRandomAccess > 1 then
						nIndexRes = 58
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 66 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 59
					 else
						nSucces = 0
					end
				end
			 end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then
			if nFaction == 0 or nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 52
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 3 then ----------------------------------------------------------Dao Ngu Doc
				if nRandomAccess > 1 then
					nIndexRes = 53
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 5 then   ----------------------------------------------------------Dao Thuy Yen
				if nRandomAccess > 1 then
					nIndexRes = 54
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then   ----------------------------------------------------------Dao Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 56
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 25 then
					if nRandomAccess > 1 then
						nIndexRes = 52
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 25 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 53
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes < 75 then
					if nRandomAccess > 1 then
						nIndexRes = 54
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 75 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 56
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then
			if nFaction == 0 then -------------------------------------------------Bong Thieu Lam
				if nRandomAccess > 1 then
					nIndexRes = 40
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 6 then -------------------------------------------------Bong Cai Bang
				if nRandomAccess > 1 then
					nIndexRes = 41
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 40
						nSucces = 1
					 else
						nSucces = 0
						end
				 elseif nRandomRes >= 50 and nRandomRes < 100 then
					if nRandomAccess > 1 then
						nIndexRes = 41
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then
			if nFaction == 7 then
				if nRandomAccess > 1 then
					nIndexRes = 51
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 50
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 51
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 50
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		 elseif nG == 0 and nD == 0 and nP == 4 then
			if nRandomAccess > 1 then
			nIndexRes = 60
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then
			if nRandomAccess > 1 then
				nIndexRes = 61
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		end
	end
	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end


	local nSilverCount = CalcEquiproomItemCount(4,1496,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "C�n c� 100 <color=red>Kim Nguy�n B�o<color> m�i c� th� n�ng c�p.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
		--return
	--end

	
	
                                                                                  ConsumeEquiproomItem(100,4,1496,1,1)

	if nSucces == 0 then
		Msg2Player("R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> �� n�ng c�p th�nh c�ng v� kh�<color=green> Ph�t S�ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] N�ng c�p th�nh c�ng v� kh� ph�t s�ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N�ng c�p th�nh c�ng v� kh� ph�t s�ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
	--closefile(moepphatsang)
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

function no()
end

function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end


function DoiNguyenLieu56()
	szDescription = format("+�n 5:5 Nguy�n Li�u \n+�n 6:10 Nguy�n Li�u\n+Kim Nguy�n B�oy�n Y 5: 5 Nguy�n Li�u\n+Kim Nguy�n B�oy�n Y 6: 10 Nguy�n Li�u\n.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "DoiNguyenLieu56_ok", "no", 1)
		
end
function DoiNguyenLieu56_ok()
local nItemIndex = GetGiveItemUnit(1)
local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)

if nGoldEquipIdxFF==3954 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5},}, "test", 1);
end

if nGoldEquipIdxFF==3955 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=10},}, "test", 1);
end

if nGoldEquipIdxFF==3992 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);
end

if nGoldEquipIdxFF==3993 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a",tbProp={6,1,4913,1,1},nCount=10},}, "test", 1);
end

end

function NhanFreeAn45()

tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6138},nQuality=1,nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6149},nQuality=1,nCount=1},}, "test", 1);
end
function DoiTinhNgocDaiTinhNgoc()


	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Tinh Ng�c", tbProp = {6,1,4806,1,1},nCount = 1000},
			},
			tbProduct = {szName="��i 1000 Tinh Ng�c--> 100 ��i Tinh Ng�c", tbProp={6,1,4919,1,1},nCount=100},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		          [2] = 
		{
			tbMaterial = 
			{
                {szName = "Tinh Ng�c", tbProp = {6,1,4806,1,1},nCount = 10000},
			},
			tbProduct = {szName="��i 10.000 Tinh Ng�c--> 1000 ��i Tinh Ng�c", tbProp={6,1,4919,1,1},nCount=1000},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end 


function nangcapnguhanhan()
	local a=random(0,20)
	if a>=0 and a<=5 then--30%
	idnguhanhan=6139
	idnguhanhan2=6144
	else if a>=6 and a<=11  then--30%
		idnguhanhan=6140
		idnguhanhan2=6145

	else if a>=12 and a<=16 then--25%
		idnguhanhan=6141
		idnguhanhan2=6146

	else if a>=17 and a<=19 then--15%
					idnguhanhan=6142
					idnguhanhan2=6147
	else if a==20 then --5%
					idnguhanhan=6143	
					idnguhanhan2=6148					
					end
				end
			end
			end
	end

	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Ng� H�nh �n 4", tbProp = {0,6138}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4919,1,1},nCount = 1000},
                {szName = "Ng�c Linh H�n", tbProp = {6,1,4912,1,1},nCount = 100},
		--		{szName="Ng�n L��ng",nJxb=200000000,nCount=1},
			},
			tbProduct = {szName="Ng� H�nh �n 4--> Ng� H�nh �n 5", tbProp={0, idnguhanhan}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		          [2] = 
		{
			tbMaterial = 
			{
				{szName = "Ng� H�nh �n 5", tbProp ={0, {6139,6143}}, nQuality = 1 },
				 {szName = "Ng� Linh Ki�m ��nh Ph�", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Tr�ng Luy�n Ng�c", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ng�c Linh H�n", tbProp = {6,1,4912,1,1},nCount = 5},
			},
			tbProduct = {szName="Tr�ng Luy�n Ng� H�nh �n 5", tbProp={0, idnguhanhan}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		          [3] = 
		{
			tbMaterial = 
			{
				{szName = "Ng� H�nh �n 5", tbProp ={0, {6139,6143}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 4},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4919,1,1},nCount = 2000},
                {szName = "Ng�c Linh H�n", tbProp = {6,1,4912,1,1},nCount = 200},
			},
			tbProduct = {szName="Ng� H�nh �n 5--> Ng� H�nh �n 6", tbProp={0, idnguhanhan2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		          [4] = 
		{
			tbMaterial = 
			{
				{szName = "Ng� H�nh �n 6", tbProp ={0, {6144,6148}}, nQuality = 1 },
				 {szName = "Ng� Linh Ki�m ��nh Ph�", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Tr�ng Luy�n Ng�c", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ng�c Linh H�n", tbProp = {6,1,4912,1,1},nCount = 5},
			},
			tbProduct = {szName="Tr�ng Luy�n Ng� H�nh �n 6", tbProp={0, idnguhanhan2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end 

function nangcapxuyeny()--- ti le 30-30-15-10-5%

	local a=random(0,20)
	if a>=0 and a<=5 then--30%
	idxuyengiap=6150
	idxuyengiap2=6155
	else if a>=6 and a<=11  then--30%
		idxuyengiap=6151
		idxuyengiap2=6156

	else if a>=12 and a<=16 then--25%
		idxuyengiap=6152
		idxuyengiap2=6157

	else if a>=17 and a<=19 then--15%
					idxuyengiap=6153
					idxuyengiap2=6158
	else if a==20 then --5%
					idxuyengiap=6154	
					idxuyengiap2=6159					
					end
				end
			end
			end
	end


	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguy�n B�oy�n Y Ph� Gi�p 4", tbProp = {0,6149}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 2},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4919,1,1},nCount = 1000},
                {szName = "Ng�c C��ng H�a Nguy�n Li�u", tbProp = {6,1,4913,1,1},nCount = 100},
		--		{szName="Ng�n L��ng",nJxb=200000000,nCount=1},
			},
			tbProduct = {szName="Kim Nguy�n B�oy�n Y Ph� Gi�p 4--> Kim Nguy�n B�oy�n Y Ph� Gi�p 5", tbProp={0, idxuyengiap}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguy�n B�oy�n Y Ph� Gi�p 5", tbProp = {0,{6150,6154}}, nQuality = 1 },
				 {szName = "Ng� Linh Ki�m ��nh Ph�", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Tr�ng Luy�n Ng�c", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ng�c C��ng H�a Nguy�n Li�u", tbProp = {6,1,4913,1,1},nCount = 5},
			},
			tbProduct = {szName="Tr�ng Luy�n Kim Nguy�n B�oy�n Y Ph� Gi�p 5", tbProp={0, idxuyengiap}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		               [3] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguy�n B�oy�n Y Ph� Gi�p 5", tbProp = {0,{6150,6154}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 4},
                {szName = "��i Tinh Ng�c", tbProp = {6,1,4919,1,1},nCount = 2000},
                {szName = "Ng�c C��ng H�a Nguy�n Li�u", tbProp = {6,1,4913,1,1},nCount = 200},
			},
			tbProduct = {szName="Kim Nguy�n B�oy�n Y Ph� Gi�p 5--> Kim Nguy�n B�oy�n Y Ph� Gi�p 6", tbProp={0, idxuyengiap2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
				               [4] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguy�n B�oy�n Y Ph� Gi�p 6", tbProp = {0,{6155,6159}}, nQuality = 1 },
				 {szName = "Ng� Linh Ki�m ��nh Ph�", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Tr�ng Luy�n Ng�c", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ng�c C��ng H�a Nguy�n Li�u", tbProp = {6,1,4913,1,1},nCount = 5},
			},
			tbProduct = {szName="Tr�ng Luy�n Kim Nguy�n B�oy�n Y Ph� Gi�p 6", tbProp={0, idxuyengiap2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
	
end 




function doithuoctinh_phiphong()

local tbSay = 
{

"��i Thu�c T�nh Cho Phi Phong 6 /doithuoctinh6",
"��i Thu�c T�nh Cho Phi Phong 7/doithuoctinh7",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 

function doithuoctinh7()

local tbSay = 
{

"Ta Mu�n ��i Sang PTVL/#doithuoctinhff7(1)",
"Ta Mu�n ��i Sang Kh�ng B�ng/#doithuoctinhff7(2)",
"Ta Mu�n ��i Sang Kh�ng L�i/#doithuoctinhff7(3)",
"Ta Mu�n ��i Sang Kh�ng H�a/#doithuoctinhff7(4)",
"Ta Mu�n ��i Sang Kh�ng ��c/#doithuoctinhff7(5)",
"Ta Mu�n ��i Sang Kh�ng XSTK/#doithuoctinhff7(6)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end

function doithuoctinhff7(luachon)
suluachon=luachon
	szDescription = format("Phi phong Ng� Phong 7 t��ng �ng \n.1 B�ch Ngh� Tinh Th�ch\n.1 B�ch Ngh� Tinh Ng�c\n Ch� B� FF7 v�o � nh� ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "run_doithuoctinhff7", "no", 1)

		
end


function run_doithuoctinhff7(nCount)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/doithuoctinh7", "Ta xin th�i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhthach= CalcEquiproomItemCount(6,1,4904,-1) 
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
				if nQuality ~=1 or (nGoldEquipIdxFF < 6084 or nGoldEquipIdxFF >6113) then
		 
					Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
					return
				end
						if bachnghetinhthach<1 or bachnghetinhngoc <1 then
					Say("Kh�ng �� 1 B�ch Ngh� Tinh Ng�c Ho�c 1 B�ch Ngh� Thi�n Th�ch", 1, "�� Ta Xem L�i")
					return
				end	
					

				if nGoldEquipIdxFF>=6084 and nGoldEquipIdxFF<=6088 then
					thutu_nguyenlieu=1
					else if nGoldEquipIdxFF>=6089 and nGoldEquipIdxFF<=6093 then
					thutu_nguyenlieu=2
					else if nGoldEquipIdxFF>=6094 and nGoldEquipIdxFF<=6098 then
					thutu_nguyenlieu=3
					else if nGoldEquipIdxFF>=6099 and nGoldEquipIdxFF<=6103 then
					thutu_nguyenlieu=4
					else if nGoldEquipIdxFF>=6104 and nGoldEquipIdxFF<=6108 then
					thutu_nguyenlieu=5
					else if nGoldEquipIdxFF>=6109 and nGoldEquipIdxFF<=6113 then
					thutu_nguyenlieu=6
					end
					end
					end
					end
					end
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1, 6,1, 4904,-1)
				ConsumeEquiproomItem(1, 6,1, 30355,-1)
				idcanadd=nGoldEquipIdxFF+(suluachon-thutu_nguyenlieu)*5
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
					WriteLogPro("dulieu/doithuoctinhff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep FF tu "..thutu_nguyenlieu.." den "..suluachon.."--"..nGoldEquipIdxFF.."\n");	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong 7 t��ng �ng")
end
function nangcapphiphong()

local tbSay = 
{

"N�ng C�p Phi phong Ng� Phong-->Phi Phong Ph� Quang/#checknguyenlieunangcap()",
"N�ng C�p Phi Phong Ph� Quang-->Phi Phong Ph� Quang Tinh X�o (KTC)/#nangcapphequangtinhxao()",
"T�ng Sao Cho Phi Phong Ph� Quang/#tangsaophequang()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ",getn(tbSay),tbSay)
	
end 
function tangsaophequang()

	szDescription = format("Phi phong Ng� Phong Tinh X�o t��ng �ng \n.5-6 T�n 2000 Tinh Ng�c\n.6-7 T�n 4000 Tinh Ng�c\n.7-8 T�n 6000 Tinh Ng�c\n.8-9 T�n 8000 Tinh Ng�c\n.9-10 T�n 10000 Tinh Ng�c\n   ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_tangsaophequang", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
end


function Run_tangsaophequang(nCount)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "Ta xin th�i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local tinhngoc= CalcEquiproomItemCount(6,1,4806,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	--	Msg2Player(" Ch�c m�ng "..nQuality.." *************** "..nGoldEquipIdxFF.."" )
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6078 or nGoldEquipIdxFF >6113) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
		end
		if nQuality ~=1 or (nGoldEquipIdxFF >= 6078 and nGoldEquipIdxFF <=6083) then
		 local soluongtinhngoc=2000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� 2000 Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				if nGoldEquipIdxFF==6078 then
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6084},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6079 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6089},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6080 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6094},nQuality=1,nCount=1},}, "test", 1);	
					elseif nGoldEquipIdxFF==6081 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6099},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6082 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6104},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6083 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6109},nQuality=1,nCount=1},}, "test", 1);									
					end
					Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang 6* t��ng �ng")					
		end

		if nQuality ~=1 or (nGoldEquipIdxFF >= 6084 and nGoldEquipIdxFF <=6113) then
			if nGoldEquipIdxFF==6084 or nGoldEquipIdxFF==6089 or nGoldEquipIdxFF==6094 or nGoldEquipIdxFF==6099 or nGoldEquipIdxFF==6104 or nGoldEquipIdxFF==6109 then 
			local soluongtinhngoc=4000
				if tinhngoc< soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang 7* t��ng �ng")
			end	
			
			if nGoldEquipIdxFF==6085 or nGoldEquipIdxFF==6090or nGoldEquipIdxFF==6095 or nGoldEquipIdxFF==6100 or nGoldEquipIdxFF==6105 or nGoldEquipIdxFF==6110 then 
			local soluongtinhngoc=6000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang 8* t��ng �ng")
			end	
			if nGoldEquipIdxFF==6086 or nGoldEquipIdxFF==6091or nGoldEquipIdxFF==6096 or nGoldEquipIdxFF==6101 or nGoldEquipIdxFF==6106 or nGoldEquipIdxFF==6111 then 
			local soluongtinhngoc=8000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang 9* t��ng �ng")
			end

			if nGoldEquipIdxFF==6087 or nGoldEquipIdxFF==6092 or nGoldEquipIdxFF==6097 or nGoldEquipIdxFF==6102 or nGoldEquipIdxFF==6107 or nGoldEquipIdxFF==6112 then 
			local soluongtinhngoc=10000
				if tinhngoc<soluongtinhngoc then
					Say("Kh�ng �� "..soluongtinhngoc.." Tinh Ng�c.", 1, "�� Ta Xem L�i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang 10* t��ng �ng")
			end	
end
		end
	
	

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nangcapphequangtinhxao()
	szDescription = format("Phi phong Ph� Quang t��ng �ng \nB�ch Ngh� Tinh Ng�c + B�ch Ngh� Thi�n Th�ch.\n ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_nangcapphequangtinhxao", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphequangtinhxao(nCount)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "Ta xin th�i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,4904,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	--	Msg2Player(" Ch�c m�ng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		if bachnghethienthach <1 or bachnghetinhngoc<1 then
		Say("Nguy�n Li�u Kh�ng �� R�i B�n �i")
		return 
		end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6072 or nGoldEquipIdxFF >6077) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 1, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
		 
		end
		
		if nQuality ==1 and (nGoldEquipIdxFF >= 6072 and nGoldEquipIdxFF <= 6077) then

			RemoveItemByIndex(nItemIndex)
			ConsumeEquiproomItem(1, 6,1, 30355,-1)
			ConsumeEquiproomItem(1, 6,1, 4904,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+6},nQuality=1,nCount=1},}, "test", 1);
			Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang Tinh Xao t��ng �ng")
		 else Say("Nguy�n Li�u Kh�ng �� R�i B�n �i")
		end
		
		end
	
	
	
	--------------------------------------------------------
function nangcapphiphong6len7()
	szDescription = format("Phi phong Ng� Phong t��ng �ng \nKh�ng b� B�ch Luy�n Th�nh C��ng v�o trong n.\n ")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_nangcapphiphong6len7", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphiphong6len7(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "Ta xin th�i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachluyen= CalcEquiproomItemCount(6,1,4906,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local tilethanhcong =0
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	--	Msg2Player(" Ch�c m�ng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF < 6037 and nGoldEquipIdxFF >6042) then
		 
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
		 
		end

			if nQuality ==1 and (nGoldEquipIdxFF >= 6037 and nGoldEquipIdxFF <= 6042) then
								if bachluyen>=80 then
									tilethanhcong=10
								else if bachluyen <=79 and bachluyen >76 then
								tilethanhcong=5
								else if bachluyen <=76 and bachluyen>70 then
								tilethanhcong = 2 
								else if bachluyen <=70 and bachluyen >65 then
								tilethanhcong = random(1,2)
								else if bachluyen<=65 and bachluyen>60 then
								tilethanhcong =1
								else if bachluyen<=60 and bachluyen>50 then
								tilethanhcong=random(0,1)
								else if bachluyen<=50 then
										tilethanhcong=0
								 end
								 end
								 end
								 end
								 
								 end
								 end
								 end
		--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")
		if tilethanhcong==10 then
															RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(80, 6,1, 4906,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+35},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang t��ng �ng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi 80 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 4906,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+35},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Ch�c m�ng b�n �� luy�n th�nh c�ng nh�n ���c Phi Phong Ph� Quang t��ng �ng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(80, 6,1, 4906,-1)
															Msg2Player(" Chia bu�n c�ng gia quy�n - Ch�c b�n may m�n l�n sau nh�")
															WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep Xit FF voi "..bachluyen.."\n");	
															--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")		
											 end
		 else Say("Nguy�n Li�u Kh�ng �� R�i B�n �i")
		end
		
		end
	
function checknguyenlieunangcap()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
local bachluyen= CalcEquiproomItemCount(6,1,4906,-1) --B�ch Luy�n Th�nh C��ng
--local tilethanhcong= 100-(80-bachluyen)
	local tilethanhcong =floor(bachluyen*10/80) 

local tbSay = 
{
"Ta ch�c ch�n ti�p t�c, ta s� b� FF6 v�o � luy�n/#nangcapphiphong6len7()",
"Th�i ta kh�ng mu�n n�a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>80 then


Say( "<color=green>Nh� ng��i �ang c� <color=yellow> >80 vi�n<color> <color=white><B�ch Luy�n Th�nh C��ng><color> rong h�nh trang v� v�y t� l� th�nh c�ng l� 100%, Ti�p t�c ch� ?",getn(tbSay),tbSay)
else 
Say( "<color=green><color=green>Nh� ng��i �ang c� <color=yellow> "..bachluyen.." vi�n <color> <color=white><B�ch Luy�n Th�nh C��ng><color>\n trong h�nh trang v� v�y t� l� th�nh c�ng l�  th�p \n Ti�p t�c ch� ?",getn(tbSay),tbSay)
end
end


tbEquip2Item = tbActivityCompose:new()

function tbEquip2Item:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	
	local tbRecItem = self:MakeItem(nItemIndex)
	local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
	local nLeftUsageTime = ITEM_GetLeftUsageTime(nItemIndex)
	if nExpiredTime ~= 0 or nLeftUsageTime ~= 4294967295 then
		return 
	end
	
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif  k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if type(v1) ~= "table" then
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
						return 
					end
				else
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and ( v1[1] > tbProp[k1] or tbProp[k1] > v1[2] )  then
						return 
					end
				end
			end
		end
	end		
	for key, value in tbItem do 
		if strfind(key, "Limit") and  type(value) == "function" then
			if value(tbItem, nItemIndex) ~= 1 then
				return
			end
		end
	end			
	return 1
end

function WantBuyBaoshi()
	local nPrice = 400
	local szTitle = format("Ng��i ngh� ��i lo�i b�o th�ch n�o ��y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b�  Kim �", tbProp = {0, {2055,2284}}, nQuality = 1 },
                  {szName = "Ti�n ��ng", tbProp = {4,1496,1,1},nCount = 5},
			},
			tbProduct = {szName="Kim � L�nh", tbProp={6, 1, 2349, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
              [2] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� B�ch H�", tbProp = {0, {2285,2514}}, nQuality = 1 },
                            {szName = "Ti�n ��ng", tbProp = {4,1496,1,1},nCount = 10},
			},
			tbProduct = {szName="B�ch H� L�nh", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao phi phong  ------------------------------ Qu�---------------

function chetaophiphong()
--	do Say("Ch�c n�ng t�m th�i ch�a m�, xin quay l�i sau...") return end
	local tab_Content = {
           "Khai Th�ng Phi Phong/khaithongphiphong",
           "Kh�m D�ng Cho Phi Phong �� Khai Th�ng /khamdongff6",
		"Th�i kh�ng c�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;
---------------------------------------
function doithuoctinh6()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
                {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			--	{szName="Ng�n L��ng",nJxb=100000000,nCount=1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				  {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng B�ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng L�i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng H�a)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng ��c)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
							[6] = 
		{
			tbMaterial = 
			{
			{szName = "Phi phong Ng� Phong(�� Kh�m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khamdongff6()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				{szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng B�ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng L�i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng H�a)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(Kh�ng ��c)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[6] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong(�� Khai Th�ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ng� Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khaithongphiphong()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ng� Phong", tbProp = {0,6036}, nQuality = 1 },
                 {szName = "Tinh Ng�c", tbProp = {6,1,4806},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ng� Phong(�� Khai Th�ng)", tbProp={0, 6044}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao an------------------------------

function epan()
	do Say("Ch�c n�ng t�m th�i ch�a m�, xin quay l�i sau...") return end
	local tab_Content = {
           "N�ng c�p �n 4 -> 5/nangcapan5",
           "N�ng c�p �n 5 -> 6/nangcapan6",
	   "N�ng c�p �n 6 -> 7/nangcapan7",
	   "N�ng c�p �n 7 -> 8/nangcapan8",
	 --  "N�ng c�p �n 8 -> 9/nangcapan9",
	--   "N�ng c�p �n 9 -> 10/nangcapan10",
	  


	
		"Th�i kh�ng c�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;


---------nang cap an 5-----------------------

function nangcapan5()
	local title = "N�ng c�p �n 5"
	g_GiveItemUI(title, "�� n�ng c�p �n 4 -> �n 5 v�nh vi�n c�n ��t v�o 1 �n 4 v�nh vi�n. H�nh trang ph�i c�  200 tinh ng�c. n�u l��ng tinh ng�c �t h�n 200 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 4 ", {giveokan5}, nil, nil)


end


function giveokan5(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 4 ",3208},
			{"Ng� h�nh �n (nh��c h�a) c�p 4",3218},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 4 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 4")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 10 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 10 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 200) then
				rate = 200
			end
			ConsumeEquiproomItem(10, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.5
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------------------nang cap an 6--------------------------


function nangcapan6()
	local title = "N�ng c�p �n 6"
	g_GiveItemUI(title, "�� n�ng c�p �n 5 -> �n 6 v�nh vi�n c�n ��t v�o 1 �n 5 v�nh vi�n. H�nh trang ph�i c� 20 Ho�ng Kim Th�ch v� 250 tinh ng�c. n�u l��ng tinh ng�c �t h�n 250 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 5 ", {giveokan6}, nil, nil)


end


function giveokan6(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 5 ",3209},
			{"Ng� h�nh �n (nh��c h�a) c�p 5",3219},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 5 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 5")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 20 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 20 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 250) then
				rate = 250
			end
			ConsumeEquiproomItem(20, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.4
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


----------------------nang cap an 7--------------------------------------

function nangcapan7()
	local title = "N�ng c�p �n 7"
	g_GiveItemUI(title, "�� n�ng c�p �n 6 -> �n 7 v�nh vi�n c�n ��t v�o 1 �n 6 v�nh vi�n. H�nh trang ph�i c� 50 Ho�ng Kim Th�ch v� 500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 6 ", {giveokan7}, nil, nil)


end


function giveokan7(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 6 ",3210},
			{"Ng� h�nh �n (nh��c h�a) c�p 6",3220},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 6 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 50 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 500) then
				rate = 500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.2
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end





------------------------------nang cap an 8--------------------------------------------

function nangcapan8()
	local title = "N�ng c�p �n 8"
	g_GiveItemUI(title, "�� n�ng c�p �n 7 -> �n 8 v�nh vi�n c�n ��t v�o 1 �n 7 v�nh vi�n. H�nh trang ph�i c� 250 Ho�ng Kim Th�ch v� 2500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 2500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n �n 7 ", {giveokan8}, nil, nil)


end


function giveokan8(putCount)
	local tban = {
		[1]={	
			{"Ng� h�nh �n (c��ng h�a) c�p 7 ",3211},
			{"Ng� h�nh �n (nh��c h�a) c�p 7",3221},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o �n 6 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "�n c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng �n 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 250 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 250 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 2500) then
				rate = 2500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.04
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


--------------------------------------------------------------------------------------


-------------------che tao phi phong ----------------------

function epphiphong()
	local tab_Content = {
           "N�ng c�p phi ph�ng 4 -> 5/nangcappp5",
           "N�ng c�p phi ph�ng 5 -> 6/nangcappp6",
	   "N�ng c�p phi ph�ng 6 -> 7/nangcappp7",
	   "N�ng c�p phi ph�ng 7 -> 8/nangcappp8",
	  -- "N�ng c�p phi ph�ng 8 -> 9/nangcappp9",
	 --  "N�ng c�p phi ph�ng 9 -> 10/nangcappp10",
	--   "N�ng c�p phi ph�ng 10 -> si�u c�p/nangcapppsc",


	
		"Th�i kh�ng c�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;

----------nang cap ff5------------------------------------------------


function nangcappp5()
	local title = "N�ng c�p Phi phong 5"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 4 -> phi phong 5 v�nh vi�n c�n ��t v�o 1 phi phong 4 v�nh vi�n. H�nh trang ph�i c� 250 tinh ng�c. n�u l��ng tinh ng�c �t h�n 250 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 4 ", {giveokff5}, nil, nil)


end



function giveokff5(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi Phong Ng�o Tuy�t (d�ch chuy�n t�c th�i)",3468},
			{"Phi Phong Ng�o Tuy�t (h�a gi�i s�t th��ng)",3469},
			

		},

		[2]={
			{"Phi phong K�nh L�i (d�ch chuy�n t�c th�i)",3470},
			{"Phi phong K�nh L�i (h�a gi�i s�t th��ng)",3471},
			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 4 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[2][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 4")
			return
		
		end
		
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 250) then
				rate = 250
			end
			

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.4
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 2)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 2)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------phi phong 6 --------------

function nangcappp6()
	local title = "N�ng c�p Phi phong 6"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 5 -> phi phong 6 v�nh vi�n c�n ��t v�o 1 phi phong 5 v�nh vi�n. H�nh trang ph�i  500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 5 ", {giveokff6}, nil, nil)


end


function giveokff6(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K�nh L�i (d�ch chuy�n t�c th�i)",3470},
			{"Phi phong K�nh L�i (h�a gi�i s�t th��ng)",3471},
			{"Phi phong K�nh L�i (Tr�ng k�ch)",3472},

			

		},

		[2]={
			{"Phi phong Ng� phong (d�ch chuy�n t�c th�i)",3473},
			{"Phi phong Ng� phong (h�a gi�i s�t th��ng)",3474},
			{"Phi phong Ng� phong (Tr�ng k�ch)",3475},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 5 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 5")
			return
		
		end
		
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 500) then
				rate = 500
			end
			
			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.2
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end

------------------------nang cap ff 7 --------------------------------

function nangcappp7()
	local title = "N�ng c�p Phi phong 7"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 6 -> phi phong 7 v�nh vi�n c�n ��t v�o 1 phi phong 6 v�nh vi�n. H�nh trang ph�i c� 50 Ho�ng Kim Th�ch v� 1000 tinh ng�c. n�u l��ng tinh ng�c �t h�n 1000 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 6 ", {giveokff7}, nil, nil)


end


function giveokff7(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Ng� phong (d�ch chuy�n t�c th�i)",3473},
			{"Phi phong Ng� phong (h�a gi�i s�t th��ng)",3474},
			{"Phi phong Ng� phong (Tr�ng k�ch)",3475},
			

		},

		[2]={
			{"Phi phong Ph� Quang (d�ch chuy�n t�c th�i)",3476},
			{"Phi phong Ph� Quang (h�a gi�i s�t th��ng)",3477},
			{"Phi phong Ph� Quang (Tr�ng k�ch)",3478},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 6 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 50 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 1000) then
				rate = 1000
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.1
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




--------------nang cap ff8------------------------------------------


function nangcappp8()
	local title = "N�ng c�p Phi phong 8"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 7 -> phi phong 8 v�nh vi�n c�n ��t v�o 1 phi phong 7 v�nh vi�n. H�nh trang ph�i c� 50 Ho�ng Kim Th�ch v� 2500 tinh ng�c. n�u l��ng tinh ng�c �t h�n 2500 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 7 ", {giveokff8}, nil, nil)


end


function giveokff8(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Ph� Quang (d�ch chuy�n t�c th�i)",3476},
			{"Phi phong Ph� Quang (h�a gi�i s�t th��ng)",3477},
			{"Phi phong Ph� Quang (Tr�ng k�ch)",3478},			

		},

		[2]={
			{"Phi phong Kh�p Th�n (d�ch chuy�n t�c th�i)",3479},
			{"Phi phong Kh�p Th�n (h�a gi�i s�t th��ng)",3480},
			{"Phi phong Kh�p Th�n (Tr�ng k�ch)",3481},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 7 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 50 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 2500) then
				rate = 2500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.04
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


---------------------------nang cap ff9-----------------------------------------
function nangcappp9()
	local title = "N�ng c�p Phi phong 9"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 8 -> phi phong 9 v�nh vi�n c�n ��t v�o 1 phi phong 8 v�nh vi�n. H�nh trang ph�i c� 500 Ho�ng Kim Th�ch v� 5000 tinh ng�c. n�u l��ng tinh ng�c �t h�n 5000 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 8 ", {giveokff9}, nil, nil)


end


function giveokff9(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Kh�p Th�n (d�ch chuy�n t�c th�i)",3479},
			{"Phi phong Kh�p Th�n (h�a gi�i s�t th��ng)",3480},
			{"Phi phong Kh�p Th�n (Tr�ng k�ch)",3481},			

		},

		[2]={
			{"Phi phong K�nh Thi�n (d�ch chuy�n t�c th�i)",3482},
			{"Phi phong K�nh Thi�n (h�a gi�i s�t th��ng)",3483},
			{"Phi phong K�nh Thi�n (Tr�ng k�ch)",3484},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 8 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 8")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 500 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 500 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 5000) then
				rate = 5000
			end
			ConsumeEquiproomItem(500, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.02
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




------------------------------nag cap ff10------------------------------------------------



function nangcappp10()
	local title = "N�ng c�p Phi phong 10"
	g_GiveItemUI(title, "�� n�ng c�p phi phong 9 -> phi phong 10 v�nh vi�n c�n ��t v�o 1 phi phong 9 v�nh vi�n. H�nh trang ph�i c� 1000 Ho�ng Kim Th�ch v� 10000 tinh ng�c. n�u l��ng tinh ng�c �t h�n 10000 c� th� th�t b�i. N�u n�ng c�p th�t b�i s� m�t h�t to�n b� nguy�n li�u v� gi� nguy�n phi phong 8 ", {giveokff10}, nil, nil)


end


function giveokff10(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K�nh Thi�n (d�ch chuy�n t�c th�i)",3482},
			{"Phi phong K�nh Thi�n (h�a gi�i s�t th��ng)",3483},
			{"Phi phong K�nh Thi�n (Tr�ng k�ch)",3484},			

		},

		[2]={
			{"Phi phong V� C�c (d�ch chuy�n t�c th�i)",3485},
			{"Phi phong V� C�c (h�a gi�i s�t th��ng)",3486},
			{"Phi phong V� C�c (Tr�ng k�ch)",3487},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o phi phong 9 v�nh vi�n")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong c� th�i h�n kh�ng th� n�ng c�p")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui l�ng ��t v�o ��ng phi phong 9")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 1000 ) then
			Talk(1,"", "Trong h�nh trang c� �t nh�t 1000 Ho�ng Kim Th�nh Th�ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 10000) then
				rate = 10000
			end
			ConsumeEquiproomItem(1000, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.01
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N�ng c�p th�t b�i. B�n �� m�t h�t nguy�n li�u. L�n n�y b�n s� dung: <color=metal>"..rate.." tinh ng�c")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end



----------------------------------nang cap ff sieu cap-----------------------------------------------------

function nangcapppsc()

do Say("T�nh n�ng hi�n t�i ch�a m�, xin quay l�i sau...") return end


end


-----------------------------------------------------


function cachchetao()
	local tab_Content = {
        --   "Ta mu�n xem c�ch ch� t�o trang b� X�ch L�n/chetaoxichlan",
       --    "Xem c�ch ch� t�o trang b� Minh Ph��ng /chetaominhphuong",
	--"Xem c�ch ch� t�o trang b� ��ng Long/chetaodanglong",
	
		"Th�i kh�ng b�n n�a./Quit"
	}
	Say("Ti�m c�a ta gi� b� quy�t ch� t�o t�t c� c�c trang b� c�a th� gi�i VLTK. ��i hi�p mu�n t�m hi�u c�ch ch� t�o trang b� n�o?  ", getn(tab_Content), tab_Content);
end;

function chetaoxichlan()
Talk(1,"", "<color=yellow> Ch� t�o trang b� X�ch L�n c�n 1 m�n �� B�ch H� + 2 Th�n B� Kho�ng Th�ch + 20 �� ph� X�ch L�n c�ng lo�i. Ch� � ch� b� �� b�ch h� v�o � y�u c�u, Th�n b� Kho�ng th�ch v� �� ph� b� s�n trong h�nh trang kh�ng b�o v�o � y�u c�u")

end

function chetaominhphuong()
Talk(1,"", "<color=yellow> Ch� t�o trang b� Minh Ph��ng c�n 1 m�n �� X�ch L�n + 4 Th�n B� Kho�ng Th�ch + 50 �� ph� Minh Ph��ng c�ng lo�i. Ch� �: Ch� b� trang b� X�ch L�n v�o h�p tho�i, Th�n b� Kho�ng th�ch v� �� ph� b� s�n trong h�nh trang kh�ng b�o v�o � y�u c�u")

end

------------------------------------------------------------------------------------------

function chetaodanglong()
Talk(1,"", "<color=yellow> Ch� t�o trang b� ��ng Long c�n 1 m�n �� Minh Ph��ng + 6 Th�n B� Kho�ng Th�ch + 100 �� ph� ��ng Long c�ng lo�i. Ch� �: Ch� b� trang b� Minh Ph��ng v�o h�p tho�i, Th�n b� Kho�ng th�ch v� �� ph� b� s�n trong h�nh trang kh�ng b�o v�o � y�u c�u")

end 
--------------------------------------------------------------------------

function bachqua1()
local nIndex = AddStackItem(1,4,1496,1,1,0,0,0)
SyncItem(nIndex)
SetItemBindState(nIndex,-2)
end
-----------------------------------------------------------------------------------
--------------------------------------------------------------
------------------------------------------------------------------
----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
function doilenhbai()
	local nPrice = 400
	local szTitle = format("Ng��i ngh� ��i lo�i b�o th�ch n�o ��y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
			
              [1] = 
		{
			tbMaterial = 
			{
				{szName="L�nh b�i kim �", tbProp={6,1,2349,1,0,0}},
                            --{szName = "Ti�n ��ng(kh�ng kh�a)", tbProp = {4,1496,1,1},nCount = 500},
                            {szName="Th�n b� kho�ng th�ch", tbProp={6,1,398, 1, 0, 0}},
                            {szName="Huy�n tinh kho�ng th�ch(c�p 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="L�nh b�i B�ch H�", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},

		 [2] = 
		{
			tbMaterial = 
			{
				{szName="L�nh b�i B�ch H�", tbProp={6,1,2357,1,0,0}},
                            --{szName = "Ti�n ��ng(kh�ng kh�a)", tbProp = {4,1496,1,1},nCount = 500},
                            {szName="Th�n b� kho�ng th�ch", tbProp={6,1,398, 1, 0, 0},nCount=3},
                            {szName="Huy�n tinh kho�ng th�ch(c�p 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="L�nh b�i X�ch L�n", tbProp={6, 1, 2370, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

		[3] = 
		{
			tbMaterial = 
			{
				{szName="L�nh b�i X�ch L�n", tbProp={6,1,2370,1,0,0}},
                            {szName="Th�n b� kho�ng th�ch", tbProp={6,1,398, 1, 0, 0},nCount=4},
                            {szName="Huy�n tinh (c�p 10)", tbProp={6,1,147,10,0,0},nCount=4},
				
			},
			tbProduct = {szName="L�nh b�i Minh Ph��ng", tbProp={6,1,2371,1,0,0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

          }
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��i l�y %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
		-- Msg2SubWorld("<color=metal>B�n "..GetName().." �� n�ng c�p th�nh c�ng t� BHL l�n X�ch L�n l�nh t�i th� r�n b� ��a Ba L�ng huy�n !")
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end

function eptinhsuong()
	local title = "N�ng c�p �� Tinh S��ng"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 �o ho�c v� kh� ��ng long.\n  -1000 T� Tinh kho�ng.\n  -1 Tinh S��ng L�nh.\n  -10 kv cho �o, 20kv cho v� kh�.\n\n+ Nguy�n li�u t�ng may m�n:\n  -�� ph� Tinh S��ng(t�i �a 10 c�i).\n  - Tinh S��ng th�ch th��ng(t�i �a 50 c�i)", {nangcaptinhsuong}, nil, nil)
end

function epnguyetkhuyen()
	local title = "N�ng c�p �� Nguy�t Khuy�n"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n-1 Trang b� Tinh S��ng \n-2000 T� Tinh Kho�ng Th�ch.\n-1 NK L�nh.\n\n+ Nguy�n li�u t�ng may m�n:\n  -�� ph� Nguy�t Khuy�t(t�i �a 10 c�i).\n  - Nguy�t Khuy�n Tinh Th�ch(t�i �a 30 c�i)", {nangcapnguyetkhuyen}, nil, nil)
end
function quynguyentinhsuong()
	local title = "N�ng c�p �� Tinh S��ng"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� tinh s��ng.\n  -1 ki�m ��nh ph�.\n  -1 quy nguy�n ph�.", {doiruongtinhsuong}, nil, nil)
end
function quynguyentinhsuongmax()
	local title = "N�ng c�p �� Tinh S��ng Max"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� tinh s��ng.\n  -VK + �o : 50KNB.\n  -C�c M�n Kh�c 10KNB.", {doiruongtinhsuongmax}, nil, nil)
end

function quynguyennguyetkhuyen()
	local title = "N�ng c�p �� Nguy�t Khuy�t"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� Nguy�t Khuy�t.\n  -1 ki�m ��nh ph�.\n  -1 quy nguy�n ph�.\n  -1 Tr�ng Luy�n Ng�c.", {doiruongnguyetkhuyet}, nil, nil)
end

function quynguyennguyetkhuyenmax()
	local title = "N�ng c�p �� Nguy�t Khuy�t Max"
	g_GiveItemUI(title, "+ Nguy�n li�u b�t bu�c:\n  -1 Trang b� Nguy�t Khuy�t Max.\n  V� Kh� -200 KNB.\n �o - 150 KNB.\n C�n L�i - 50KNB", {doiruongnguyetkhuyetmax}, nil, nil)
end




---------nang cap tinh suong

function nangcaptinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi ��ng Long. To�n b� nguy�n li�u �� � h�nh trang. Ch� � �� ph� t�i �a 10 m�nh m�i m�nh 5% th�nh c�ng, Tinh s��ng th�ch 50 c�c m�i c�c 1% th�nh c�ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local danglongTable = configTS[1]		
	local minId = danglongTable[1][2]
	local maxId = danglongTable[getn(danglongTable)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	if typeItem > 1 then
		Talk(1,"", "Xin vui l�ng b� v�o trang b� ��ng long �o ho�c v� kh�")
		return

		
	end
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi ��ng Long. To�n b� nguy�n li�u �� � h�nh trang. Ch� � �� ph� t�i �a 10 m�nh m�i m�nh 5% th�nh c�ng, Tinh s��ng th�ch t�i �a 50 c�c m�i c�c 1% th�nh c�ng")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 1000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1000 T� Tinh Kho�ng th�ch Kho�ng Th�ch")
		return
	end
	if (CalcEquiproomItemCount(6,1,4882,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 L�nh b�i Tinh S��ng")
		return
	end
      
      local nCash = GetCash()
	  
      if typeItem == 0 then
			if nCash < 100000000 then
				Talk(1,"", "Trong r��ng ph�i c� �t nh�t 10.000 v�n �� n�ng c�p l�n �o gi�p Tinh S��ng")
				return
			end
			
	  end
	  
	  if typeItem == 1 then
			if nCash < 200000000 then
				Talk(1,"", "Trong r��ng ph�i c� �t nh�t 20.000 v�n �� n�ng c�p l�n v� kh� Tinh S��ng")
				return
			end
			
	  end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local dopho = 0
		
		if typeItem == 0 then 
			Pay(100000000) 
			dopho = 4883
		else 
			Pay(200000000)
			dopho = 4884
		end
		
		
	
		local rate1 = CalcEquiproomItemCount(6, 1, dopho , -1);
		local rate2 = CalcEquiproomItemCount(6,1,4881,-1)
		local nrate1 = rate1*3
		local nrate2 = rate2*1.4
		if (nrate2 > 70 ) then
			nrate2 = 70
		end
		if (nrate1 > 30) then
			nrate1 = 30
		end
		rate = nrate1 + nrate2
		if nrate1 > 30 then
			ConsumeEquiproomItem(10, 6, 1, dopho, -1)
		else
			ConsumeEquiproomItem(rate1, 6, 1, dopho, -1)
		end
		if nrate2 == 70 then
			ConsumeEquiproomItem(50, 6, 1, 4881, -1)

		else
		
			ConsumeEquiproomItem(rate2, 6, 1, 4881, -1)
		end
		ConsumeEquiproomItem(1000, 6, 1, 4885, -1)
		ConsumeEquiproomItem(1, 6, 1, 4882, -1)

		
		local rnd = random(0, 5) + rate
		if (rnd >= 100) then
			local addedId = 0
			if (itemType  == 0) then
				addedId = 4509
				tbAward = {
									{szName="B�o R�ng Tinh S�ng Kh�i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
									
		
		}
			else
				addedId = 4510
				tbAward = {
		
										{szName="B�o R�ng Tinh S�ng V� Kh�",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
		
								}
			end
			
			
			tbAwardTemplet:GiveAwardByList(tbAward,"�p tinh s��ng")
			
			logExchangeItem(addedId, rate1 , rate2)	
		else
			logExchangeItem(goldEquipIndex, rate1 , rate2)				
		end
	end
	
end
------------------------------nang cap nguyet khuyen------------------------------
function nangcapnguyetkhuyen(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Nguy�t Khuy�t. To�n b� nguy�n li�u �� � h�nh trang. Ch� � �� ph� t�i �a 10 m�nh m�i m�nh 5% th�nh c�ng, Nguy�t khuy�t tinh th�ch 30 c�c m�i c�c 1% th�nh c�ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	     local nCash = GetCash()
				if nCash < 200000000 then
				Talk(1,"", "Trong r��ng ph�i c� �t nh�t 20.000 v�n �� n�ng c�p l�n Nguy�t Khuy�t")
				return
			end
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local nguyetkhuyettb = configNK[1]		
	local minId = nguyetkhuyettb[1][2]
	local maxId = nguyetkhuyettb[getn(nguyetkhuyettb)][2]
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < 3405) or (goldEquipIndex > 3654) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Tinh S��ng. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
	
	if typeItem==0 or typeItem==1 then
	
			Talk(1,"", "Hi�n t�i �o v� V� kh� ta v�n ch�a nghi�n c�u ���c c�ch ch� t�o nh� huynh ��i")
		return
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 2000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 2000 T� Tinh Kho�ng Th�ch ")
		return
	end
	if (CalcEquiproomItemCount(6,1,4834,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Nguy�t Khuy�t L�nh")
		return
	end
	if typeItem >=5 then
			iddopho=4424+typeItem
			dophonguyetkhuyet= CalcEquiproomItemCount(6, 1,iddopho, -1)
				else 
				iddopho=4434+typeItem
				dophonguyetkhuyet= CalcEquiproomItemCount(6, 1, iddopho, -1)	
				end
				
		nguyetkhuyentinhthach=CalcEquiproomItemCount(6, 1, 4817,-1) --Nguy�t Khuy�t Tinh Th�ch
		tilethanhcong = dophonguyetkhuyet*5 + nguyetkhuyentinhthach*1.5
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 �� Ph� Nguy�t Khuy�t c�ng lo�i")
		return
	end

		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 5 ) or (CalcEquiproomItemCount(6,1,4817,-1) < 20 ) then  -- do duoi 5 va nk tinh thach duoi 20 thi ti le la 0%
		tilethanhcong=0  
		end
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 9) or (CalcEquiproomItemCount(6,1,4817,-1) == 29)  then --- thieu 1 nguyen lieu la 50%
		tilethanhcong=50
		end
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 8) or (CalcEquiproomItemCount(6,1,iddopho,-1) == 7) or (CalcEquiproomItemCount(6,1,4817,-1) == 28)  or (CalcEquiproomItemCount(6,1,4817,-1) == 27) or (CalcEquiproomItemCount(6,1,4817,-1) == 26) or (CalcEquiproomItemCount(6,1,4817,-1) == 25) then
		tilethanhcong=20
		end
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 6) or  (CalcEquiproomItemCount(6,1,iddopho,-1) == 5) or (CalcEquiproomItemCount(6,1,4817,-1) == 24)  or (CalcEquiproomItemCount(6,1,4817,-1) == 23)  or (CalcEquiproomItemCount(6,1,4817,-1) == 22)  or (CalcEquiproomItemCount(6,1,4817,-1) == 21)  or (CalcEquiproomItemCount(6,1,4817,-1) == 20) then
		tilethanhcong=10
		
		end
		local mayman=random(1,100)
		if mayman<=tilethanhcong or (dophonguyetkhuyet==10 and nguyetkhuyentinhthach==30 ) then
		
		
					 if (RemoveItemByIndex(itemIndex) == 1) then
						local itemType = mod(goldEquipIndex,10)
						local requireIngradent = 0
						local tbparam = 0
				
									for i = 1, getn(configNK[2]) do
												
												if (configNK[2][i][3] == itemType) then
													requireIngradent = configNK[2][i][2]
													tbparam = configNK[2][i][4]
												end
									end
				
										ConsumeEquiproomItem(2000, 6, 1, 4885, -1)
										ConsumeEquiproomItem(1, 6, 1, 4834, -1)
									--	ConsumeEquiproomItem(1, 6, 1, 4830, -1)
									ConsumeEquiproomItem(30, 6, 1, 4817, -1)		
									ConsumeEquiproomItem(10, 6, 1, iddopho, -1)
										tbAward = {
											{szName="B�o R�ng Nguy�t Khuy�t",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
										}
														
											
											tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Nguy�t Khuy�t")
											--	Msg2Player(" Th�nh C�ng,Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------")
												Msg2Player(" Th�nh C�ng - Ch�c M�ng B�n")
											Pay(200000000)
											WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong nguyet khuyen  Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------\n");		
										--	logExchangeItem1(requireIngradent, 3307, 3308)	
							else
					--	logExchangeItem1(goldEquipIndex, 0 , 0)				
					end
		else 
		ConsumeEquiproomItem(2000, 6, 1, 4885, -1)
		ConsumeEquiproomItem(1, 6, 1, 4834, -1)		
		ConsumeEquiproomItem(30, 6, 1, 4817, -1)		
		ConsumeEquiproomItem(10, 6, 1, iddopho, -1)
		Pay(200000000)
	--	Msg2Player(" Th�t b�i,Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------")
		Msg2Player(" Th�t b�i - Chia Bu�n C�ng B�n")
		WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep that bai nguyet khuyen,,  Tinh Th�ch:"..nguyetkhuyentinhthach.."----. �� Ph�:"..dophonguyetkhuyet.."-.-ID �� Ph�: "..iddopho.."--.-T� L� Th�nh C�ng--"..tilethanhcong.."%------Con S� may m�n-"..mayman.."------\n");		

		end
end

---------doi vu khi hoac ao tinh suong lay ruong -------

function doiruongtinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� tinh s��ng. Quy nguy�n ph� v� ki�m ��nh ph� b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Tinh s��ng. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh ki�m ��nh ph�")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh quy nguy�n ph�")
		return
	end
      
     

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg[2]) do
				
				if (roll_cfg[2][i][3] == itemType) then
					requireIngradent = roll_cfg[2][i][2]
					tbparam = roll_cfg[2][i][4]
				end
	end
	
		ConsumeEquiproomItem(1, 6, 1, 3007, -1)
		ConsumeEquiproomItem(1, 6, 1, 3008, -1)
		tbAward = {
			{szName="B�o R�ng Tinh S�ng",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
									
		
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng tinh s��ng")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi tinh suong max -------

function doiruongtinhsuongmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Tinh S��ng Max. KNB b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_ts_max[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Tinh S��ng. KNB �� � h�nh trang")
			return
		
	end
if typeItem ==6 or typeItem ==7  then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 50) then
		Talk(1,"", "V� Kh� +�o Th� Trong r��ng ph�i c� �t nh�t 50 KNB nh� b�n ")
		return
	end
end    
 
   

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 10) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 10 KNB nh� b�n ")
		return
	end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_ts_max[2]) do
				
				if (roll_cfg_ts_max[2][i][3] == itemType) then
					requireIngradent = roll_cfg_ts_max[2][i][2]
					tbparam = roll_cfg_ts_max[2][i][4]
				end
	end
	if typeItem ==6 or typeItem ==7 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(50,4,1496,1,-1)
		else 
			ConsumeEquiproomItem(10,4,1496,1,-1)
			end

		tbAward = {
			{szName="B�o R��ng Tinh S��ng Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Tinh S��ng Max")
			WriteLogPro("dulieu/doiruongmax.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi "..goldEquipIndex.." Thanh Ruong \n");	
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end

---------doi nguyet khuyet lay ruong -------

function doiruongnguyetkhuyet(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Nguy�t khuy�t. Quy nguy�n ph�+ki�m ��nh ph�+Ng�c Tr�ng Luy�n b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_nk[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Nguy�t Khuy�t. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh ki�m ��nh ph�")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh quy nguy�n ph�")
		return
	end
      
	  	if (CalcEquiproomItemCount(6,1,4830,-1) < 1 ) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1 Ng� linh quy nguy�n ph�")
		return
	end
     

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_nk[2]) do
				
				if (roll_cfg_nk[2][i][3] == itemType) then
					requireIngradent = roll_cfg_nk[2][i][2]
					tbparam = roll_cfg_nk[2][i][4]
				end
	end
	
		ConsumeEquiproomItem(1, 6, 1, 3007, -1)
		ConsumeEquiproomItem(1, 6, 1, 3008, -1)
		ConsumeEquiproomItem(1, 6, 1, 4830, -1)
		tbAward = {
			{szName="B�o R�ng Nguy�t Khuy�t",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Nguy�t Khuy�t")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi nguyet khuyet lay ruong max -------

function doiruongnguyetkhuyetmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o trang b� Nguy�t khuy�t Max. KNB b� � h�nh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang b� c� th�i h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_nk_max[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui l�ng ch� ��t v�o trang bi Nguy�t Khuy�t. To�n b� nguy�n li�u �� � h�nh trang")
			return
		
	end
if typeItem ==6 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 200) then
		Talk(1,"", "V� Kh� Th� Trong r��ng ph�i c� �t nh�t 200 KNB nh� b�n ")
		return
	end
end    
 
if typeItem ==5 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 150) then
		Talk(1,"", "�o Gi�p Th� Trong r��ng ph�i c� �t nh�t 150 KNB nh� b�n ")
		return
	end
end     

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 50) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 50 KNB nh� b�n ")
		return
	end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_nk_max[2]) do
				
				if (roll_cfg_nk_max[2][i][3] == itemType) then
					requireIngradent = roll_cfg_nk_max[2][i][2]
					tbparam = roll_cfg_nk_max[2][i][4]
				end
	end
	if typeItem ==6 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(200,4,1496,1,-1)
		else
			if typeItem ==5 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(150,4,1496,1,-1)
		else 
			ConsumeEquiproomItem(50,4,1496,1,-1)
			end
			end
		tbAward = {
			{szName="B�o R��ng Nguy�t Khuy�t Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r��ng Nguy�t Khuy�t Max")
								WriteLogPro("dulieu/doiruongmax.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi "..goldEquipIndex.." Thanh Ruong \n");	
	
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
-------------------------------------

function logExchangeItem(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end


function logExchangeItem1(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido1_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end


function MenuDoiNgoaiHinh0()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"��i sang �ao/dao",
		"��i sang ki�m/kiem",
		"��i sang ch�y/chuy",
		"��i sang b�ng/bong",
		"��i sang th��ng/thuong",
		"��i sang song �ao/song",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function dao()
SetTask(5859,1)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh �ao.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function kiem()
SetTask(5858,1)
SetTask(5859,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh ki�m.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function chuy()
SetTask(5857,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh ch�y.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function bong()
SetTask(5856,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh b�ng.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function song()
SetTask(5855,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5854,0)
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh song �ao.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end

function thuong()
SetTask(5854,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
Say("Ch�c m�ng b�n �� ch�n �p sang h�nh song �ao.",2,"b�t ��u �p/MenuDoiNgoaiHinh","Kh�ng c�n ��u! C�m �n!/cancel")
end


function MenuDoiNgoaiHinh()
	szDescription = format("+ 5000 Ti�n ��ng \n=> Trang b� ��p nh�t.")

	GiveItemUI("B� V� Kh� V�o", szDescription, "BatDauDoiVK", "no", 1)

end

function BatDauDoiVK(nCount,nItemIndex, nIndexRes)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/MenuDoiNgoaiHinh", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c -"..nG..", "..nD..", "..nP..", "..nL..", "..nS.." !")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c  22-"..nG..", "..nD..", "..nP..", "..nL..", "..nS.." !")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 5000) then
		Talk(1, "no", "C�n c� 5000 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p.")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
	--	return
--	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
if GetTask(5859) < 1 and GetTask(5858) < 1 and GetTask(5857) < 1 and GetTask(5856) < 1 and GetTask(5855) < 1 and GetTask(5854) < 1 then
Say("��i hi�p ch�a ch�n v� kh� n�o c�.",2,"Cho ta ch�n l�i/MenuDoiNgoaiHinh0","Kh�ng c�n ��u! C�m �n!/cancel")
		return
	end   	
if GetTask(5859) == 1 then --dao
		SetItemNewFeature(nItemIndex, random(53,56)) --53 54 55 56
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh �ao")
end
if GetTask(5858) == 1 then --kiem
		SetItemNewFeature(nItemIndex, random(57,59))  --  57 58 59
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Ki�m")
end
if GetTask(5857) == 1 then --chuy
		SetItemNewFeature(nItemIndex, 60)  -- 
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Ch�y")
end
if GetTask(5856) == 1 then --bong
		SetItemNewFeature(nItemIndex, 41)  -- 40 41
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh B�ng")
end
if GetTask(5855) == 1 then --song
		SetItemNewFeature(nItemIndex, 61) --
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Song �ao")
end
if GetTask(5854) == 1 then --thuong
		SetItemNewFeature(nItemIndex, random(50,51)) -- 50 51
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n ��i th�nh c�ng ngo�i h�nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i th�nh c�ng ngo�i h�nh v� kh� c�a m�nh th�nh Th��ng")
end
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
SaveNow()
end
end

function PhatSangVip()
	tbOpt =
	{
		"<dec><npc>��y l� danh s�ch �p v� kh� ph�t s�ng r�t vip ch�ng hay ��i hi�p mu�n �p lo�i n�o xin h�y l�a ch�n h�nh .",
		"Ch�n Ngo�i H�nh V� Kh�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function ChonNgoaiHinhPS()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"Ngo�i h�nh �ao/daops",
		"Ngo�i h�nh ki�m/kiemps",
		"Ngo�i h�nh ch�y/chuyps",
		"Ngo�i h�nh b�ng/bongps",
		"Ngo�i h�nh th��ng/thuongps",
		"Ngo�i h�nh �m kh�/amkhips",
		"Ngo�i h�nh song �ao/songdaops",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
	--SetTask(3010,0)
--	SetTask(3011,0)
--	SetTask(3012,0)
	--SetTask(3013,0)
	--SetTask(3014,0)
	--SetTask(3015,0)
--	SetTask(3016,0)
task3010=0
task3011=0
task3012=0
task3013=0
task3014=0
task3015=0
task3016=0
end

function daops()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"�ao 1/daops1",
		"�ao 2/daops2",
		"�ao 3/daops3",
		"�ao 4/daops4",
		"�ao 5/daops5",
		"�ao 6/daops6",
		"�ao 7/daops7",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function daops1() --112
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_078_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3010,112)
	task3010=12
end

function daops2() --55
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_042_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--	SetTask(3010,55)
			task3010=55
end

function daops3()  --128
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_092_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3010,128)
		task3010=128
end

function daops4() --131
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_095_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3010,131)
		task3010=131
end

function daops5() -- 146
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_106_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3010,146)
		task3010=146
end

function daops6() --115
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_081_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3010,115)
	task3010=115
end

function daops7() --56
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_040_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3010,56)
	task3010=56
end
--------------------------KIEM

function kiemps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"ki�m 1/kiemps1",
		"ki�m 2/kiemps2",
		"ki�m 3/kiemps3",
		"ki�m 4/kiemps4",
		"ki�m 5/kiemps5",
		"ki�m 6/kiemps6",
		"ki�m 7/kiemps7",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function kiemps1() --134
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_097_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,134)
	task3011=134
end

function kiemps2() --130
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_094_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,130)
	task3011=130
end

function kiemps3() --132
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_096_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,132)
	task3011=132
end

function kiemps4() --129
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_093_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,129)
	task3011=129
end


function kiemps5() --57
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3011,57)
	task3011=57
end

function kiemps6() --58
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_RD01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3011,58)
	task3011=58
end

function kiemps7() --59
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_043_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3011,59)
	task3011=59
end

--------------------------CHUY

function chuyps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"ch�y 1/chuyps1",
		"ch�y 2/chuyps2",
		"ch�y 3/chuyps3",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function chuyps1() --60
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_046_ST06.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3012,60)
	task3012=60
end

function chuyps2() --113
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_079_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3012,113)
	task3012=113
end


function chuyps3() --79
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_100_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3012,79)
	task3012=79
end


--------------------------BONG

function bongps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"b�ng 1/bongps1",
		"b�ng 2/bongps2",
		"b�ng 3/bongps3",

		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function bongps1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_037_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3013,61)
	task3013=61
end

function bongps2() --41
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_038_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3013,41)
	task3013=41
end

function bongps3() --136
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_098_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3013,136)
		task3013=136
end

--------------------------THUONG

function thuongps()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"th��ng 1/thuongps1",
		"th��ng 2/thuongps2",
		"th��ng 3/thuongps3",
		"th��ng 4/thuongps4",
		"th��ng 5/thuongps5",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function thuongps1() --50
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,50)
		task3014=50
end

function thuongps2() --51
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,51)
	task3014=51
end

function thuongps3() --127
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_091_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,127)
	task3014=127
end

function thuongps4() --101
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_059_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,101)
	task3014=101
end

function thuongps5() --114
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_080_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,114)
	task3014=114
end

--------------------------SONG DAO

function songdaops()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"song �ao 1/songdaops1",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function songdaops1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_047_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3015,61)
	task3015=61
end

--------------------------Am KhI

function amkhips()
	tbOpt =
	{
		"<dec><npc>Xin h�y ch�n v� khi c�n thay ��i ngo�i h�nh.",
		"�m kh� 1/amkhips1",
		"�m kh� 2/amkhips2",
		"�m kh� 3/amkhips3",
		"�m kh� 4/amkhips4",
		"�m kh� 5/amkhips5",
		"tr� v�/ChonNgoaiHinhPS",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function amkhips1() --70
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_048_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3016,70)
	task3016=70
end

function amkhips2() --110
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_076_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
---	SetTask(3016,110)
		task3016=110
end

function amkhips3() --120
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_086_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3016,120)
	task3016=120
end

function amkhips4() --123
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_088_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3016,123)
	task3016=123
end

function amkhips5() --125
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_089_ST01.spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{
		{"Ti�n h�nh �p.", TienHanhEpPS},
		{"tr� v�", ChonNgoaiHinhPS},
		{"�� ta suy ngh� l�i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3016,125)
	task3016=125
end

function TienHanhEpPS()
	--szDescription = format("+ C�n 1000 V�n l��ng + 50 V�ng + 100 b�c + 50xu\n+ 1 M�n HKMP maxop.")
	szDescription = format("+ C�n 100 KNB\n.")

	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "BatDauEpPhatSang", "no", 1)

end

function BatDauEpPhatSang(nCount)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/TienHanhEpPS", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
	--if nQuality ~= 1 then
	--Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
	--return
   --end
	   local goldEquipIndex = GetGlodEqIndex(nItemIndex)
  -- if (goldEquipIndex ~= 6 and goldEquipIndex ~= 11 and goldEquipIndex ~=16 and goldEquipIndex ~=21 and goldEquipIndex ~=26 and goldEquipIndex ~=31 and goldEquipIndex ~=46 and goldEquipIndex ~=61 and goldEquipIndex ~=61 and goldEquipIndex ~=71 and goldEquipIndex ~=76 and goldEquipIndex ~=81 and goldEquipIndex ~=96 and goldEquipIndex ~=101 and goldEquipIndex ~=329 and goldEquipIndex ~=116 and goldEquipIndex ~=126 and goldEquipIndex ~=258 and goldEquipIndex ~=250 and goldEquipIndex ~=265 and goldEquipIndex ~=270 and goldEquipIndex ~=295 and goldEquipIndex ~=300 and goldEquipIndex ~=290 and goldEquipIndex ~=280  and goldEquipIndex ~=240  and goldEquipIndex ~=235  and goldEquipIndex ~=245  and goldEquipIndex ~=230  and goldEquipIndex ~=225  and goldEquipIndex ~=335  and goldEquipIndex ~=340  and goldEquipIndex ~=121 and goldEquipIndex ~=764  and goldEquipIndex ~=345  and goldEquipIndex ~=320  and goldEquipIndex ~=540  and goldEquipIndex ~=315 )then
	--	Talk(1,"", "<color=white>Ch� c� trang b� v� kh� HKMP MaxOp m�i c� th� �p l�n ph�t s�ng xin h�y n�ng c�p trang b� c�a m�nh l�n maxop r�i h� �p")
		--return
	--end
		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then --kiem
				if nRandomAccess >=1 then
					nIndexRes =task3011
				 else
					nSucces = 0
				end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then  --dao
				if nRandomAccess >=1 then
					nIndexRes = task3010
					nSucces = 1
				 else
					nSucces = 0
				end
			
			
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then --bong
				if nRandomAccess >=1 then
					nIndexRes =  task3013
					nSucces = 1
				 else
					nSucces = 0
				end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then  --kich
					if nRandomAccess >=1 then
						nIndexRes = task3014
						nSucces = 1
					 else
						nSucces = 0
					end
		 elseif nG == 0 and nD == 0 and nP == 4 then  --chuy
			if nRandomAccess >=1 then
			nIndexRes = task3012
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then  --songdao
			if nRandomAccess >=1 then
				nIndexRes = task3015
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then  --tieu
			if nRandomAccess >=1 then
				nIndexRes = task3016
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then --tieu
			if nRandomAccess >=1 then
				nIndexRes = task3016
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then --tieu
			if nRandomAccess >=1 then
				nIndexRes = task3016
				nSucces = 1
			 else
				nSucces = 0
			end
end
end	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
	
	--local nCountStone1 = getn(tbDatabase.tbStone1)
	--if nCountStone1 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>Lam Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end
	
	--local nCountStone2 = getn(tbDatabase.tbStone2)
	--if nCountStone2 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>T� Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end
	
	--local nCountStone3 = getn(tbDatabase.tbStone3)
	--if nCountStone3 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>L�c Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 5000) then
		Talk(1, "no", "C�n c� 5000 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p.")
		return
end
	--if (GetCash() < 10000000) then
    --   Talk(1,"","<color=white>C� v� r�n mi�n ph� n�a sao haha ��i hi�p c�n c� 1000 v�n l��ng r�i h�y n�i chuy�n v�i ta..") -- go
	--return
--end
--local nSilverCount = CalcEquiproomItemCount(4,1674,1,1) ;
	--if(nSilverCount < 50) then
	--Talk(1, "no", "C�n c� 50 <color=red>V�ng Th�i<color> m�i c� th� n�ng c�p.")
	--return
	--end
	--local nSilverCount = CalcEquiproomItemCount(4,1673,1,1) ;
	--if(nSilverCount < 100) then
	--Talk(1, "no", "C�n c� 100 <color=red>B�c Th�i<color> m�i c� th� n�ng c�p.")
	--return
--end
if nSucces == 0 or nIndexRes <10 then
Say("V� kh� b� v�o kh�ng ph� h�p  v�i h�nh �nh ���c ch�n ho�c ��i hi�p ch�a ch�n v� kh� n�o �� ��i ngo�i h�nh c� xin h�y ch�n l�i.",2,"Cho ta ch�n l�i/ChonNgoaiHinhPS","Kh�ng c�n ��u! C�m �n!/cancel")

--Msg2Player("R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �.")
	elseif nSucces == 1 then
		RemoveItemByIndex(tbDatabase.tbItem[1])
   ConsumeEquiproomItem(5000,4,417,1,1)
  -- ConsumeEquiproomItem(50,4,1674,1,1)
  -- ConsumeEquiproomItem(100,4,1673,1,1)
   --Pay(10000000)
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t s�ng nh� v�ng r�ng.")
Msg2SubWorld("<pic=7>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> �� n�ng c�p th�nh c�ng v� kh�<color=green> Ph�t S�ng VIP!")
                                                                                                                                                                     --SaveNow();
                                                                                   local epphatsang = "dulieu/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] N�ng c�p th�nh c�ng v� kh� ph�t s�ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	 write(moepphatsang, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Ep Thanh Cong Vu Khi Phat Sang\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(moepphatsang)
	else
	print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
