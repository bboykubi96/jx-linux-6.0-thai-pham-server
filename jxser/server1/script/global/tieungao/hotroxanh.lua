
tbDoXanh =
{
	[1]=
	{
		szName = "D�y chuy�n",
		tbEquip =
		{
			{"D�y chuy�n n�",0,4,0},
			{"D�y chuy�n nam ",0,4,1},
		}
	},
	[2]=
	{
		szName = "�o gi�p",
		tbEquip =
		{
			{"A� tang� c�p 6",0,2,0},
			{"A� th� c�p 6",0,2,1},
			{"M�t trang nam c�p 6",0,2,n2},
			{"Gi�ng Sa B�o c�p 6",0,2,3},
			{"Gi�p nam c�p 6",0,2,4},
			{"V�n L�u Quy T�ng Y c�p 6",0,2,5},
			{"Tuy�n Long b�o c�p 6",0,2,6},
			{"Long Ti�u ��o Y c�p 6",0,2,8},
			{"C�u V� B�ch H� trang c�p 6",0,2,9},
			{"Tr�m H��ng sam c�p 6",0,2,10},
			{"Gi�p n� c�p 6",0,2,11},
			{"V�n Ch�ng T� T�m Y c�p 6",0,2,12},
			{"L�u Ti�n Qu�n c�p 6",0,2,13},
		}
	},
	[3]=
	{
		szName = "�ai l�ng",
		tbEquip =
		{
			{"Thi�n T�m Y�u ��i c�p 6",0,6,0},
			{"B�ch Kim Y�u ��i c�p 6",0,6,1},
		}
	},
	[4]=
	{
		szName = "Gi�y",
		tbEquip =
		{
			{"C�u Ti�t X��ng V� Ngoa c�p 6",0,5,0},
			{"Thi�n T�m Ngoa c�p 6",0,5,1},
			{"Kim L� h�i c�p 6",0,5,2},
			{"Phi Ph�ng Ngoa c�p 6",0,5,3},
		}
	},
	[5]=
	{
		szName = "Bao tay",
		tbEquip =
		{
			{"Long Ph�ng Huy�t Ng�c Tr�c c�p 6",0,8,0},
			{"Thi�n T�m H� Uy�n c�p 6",0,8,1},
		}
	},
	[6]=
	{
		szName = "N�n",
		tbEquip =
		{
			{"T� L� m�o c�p 6",0,7,0},
			{"Ng� l�o qu�n c�p 6",0,7,1},
			{"Tu La Ph�t k�t c�p 6",0,7,2},
			{"Th�ng Thi�n Ph�t Qu�n c�p 6",0,7,3},
			{"Y�m Nh�t kh�i c�p 6",0,7,4},
			{"Tr�ch Tinh ho�n c�p 6",0,7,5},
			{"� T�m M�o",0,7,6},
			{"Quan �m Ph�t Qu�n c�p 6",0,7,7},
			{"�m D��ng V� C�c qu�n c�p 6",0,7,8},
			{"Huy�n T� Di�n Tr�o c�p 6",0,7,9},
			{"Long Huy�t ��u ho�n c�p 6",0,7,10},
			{"Long L�n Kh�i c�p 6",0,7,11},
			{"Thanh Tinh Thoa c�p 6",0,7,12},
			{"Kim Ph�ng Tri�n S� c�p 6 ",0,7,13},
		}
	},
	[7]=
	{
		szName = "V� kh� c�n chi�n",
		tbEquip =
		{
			{"Ki�m",0,0,0},
			{"�ao",0,0,1},
			{"B�ng",0,0,2},
			{"K�ch",0,0,3},
			{"ch�y",0,0,4},
			{"Song �ao",0,0,5},
		}
	},
	[8]=
	{
		szName = "Ng�c b�i",
		tbEquip =
		{
			{"H��ng Nang n�",0,9,0},
			{"Ng�c b�i nam",0,9,1},
		}
	},
	[9]=
	{
		szName = "V� kh� t�m xa",
		tbEquip =
		{
			{"Ti�u",0,1,0},
			{"Phi �ao",0,1,1},
			{"N�",0,1,2},
		}
	},
	[10]=
	{
		szName = "Nh�n",
		tbEquip =
		{
			{"Gi�i Ch� ",0,3,0},
		}
	},
}
function hotroxanh()
	if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n trang b� ")
		return
	end
	local tbOpt = {}
	for i=1, getn(tbDoXanh) do
		tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
	end
	
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
end
function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbOpt = {}
	for i=1, getn(tbEquip) do
		tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
	end
	
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	local szTitle = format("<npc>Xin m�i l�a ch�n trang b�:")
	CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
	tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
	tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
	tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
	tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})
	
	
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	local szTitle = format("<npc>Ch�n h�:")
	CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
	--g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
	laydoxanh4(nIndex, nType, nSeries,1)
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
	if nCount > 1 then
		Say("MAX COUNT")
		return
	end
	local taskdoxanh = GetTask(1401)
	if taskdoxanh < 1  then
		Say("B�n chu� nh�n code th�n th�! Xin h�y nh�n code t�n th� tr��c!")
		return
		
	end
	if taskdoxanh >= 10 then
		Say("B�n �� l�y ��ng 10 m�n r�i n�n kh�ng th� l�y th�m")
		return
	end
	local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
	
		local ItemIndex = AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 6, nSeries, 100, 10) 
		SetItemBindState(ItemIndex,-2)
		SetTask(1401, GetTask(1401) + 1) 
end
