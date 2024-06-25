
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
function main()
dofile("script/global/g7vn/item/hopquadocla3.lua")
if CalcFreeItemCellCount() < 10 then
Say("H�nh trang kh�ng �� 10 � tr�ng.")
return 1
end
if CalcEquiproomItemCount(6,1,30037,-1)<1 then
	Say("C�n 1 Ch�a Kh�a V�n N�ng �� m� r��ng.")
	return 1
end
local rannnn=random(1,100)
if rannnn<=30 then
	local tbAward= {
	
					{szName="Th�y Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=7},	
					{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=1,nRate=7},	
					{szName="Ng�n L��ng",nJxb=20000,nCount=1,nRate=61},
					{szName="Ti�n ��ng",tbProp={4,417,1,1},nCount=10,nRate=7},	
					{szName="D� T�u Chi L�nh",tbProp={6,1,4407,1,0,0},nCount=2,nRate=6},	
					{szName="Ph�c Duy�n",tbProp={6,1,124,1,0,0},nCount=1,nRate=6},	
					{szName="M�nh V� L�m M�t T�ch",tbProp={4,1643,1,1},nCount=1,nRate=3},	
					{szName="M�nh T�y T�y Kinh",tbProp={4,1644,1,1},nCount=1,nRate=3},	
				
					
					
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng")
else
local ranchung=random(1,9)
if ranchung==1 then
	local ranvk=random(1,3)
		if ranvk<=2 then
			AddItem(0, 0,random(0,5), 10,random(0,4), 100, 10) 
		else
			AddItem( 0, 1,random(0,2), 10,random(0,4), 100, 10) 
		end
elseif ranchung==2 then
			AddItem( 0, 2,random(0,13), 10,random(0,4), 100, 10) 
elseif ranchung==3 then
			AddItem( 0, 7,random(0,13), 10,random(0,4), 100, 10) 
elseif ranchung==4 then
			AddItem( 0, 8,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==5 then
			AddItem( 0, 6,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==6 then
			AddItem( 0, 5,random(0,3), 10,random(0,4), 100, 10) 
elseif ranchung==7 then
			AddItem( 0, 4,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==8 then
			AddItem( 0, 9,random(0,1), 10,random(0,4), 100, 10) 
elseif ranchung==9 then
			AddItem( 0, 3,0, 10,random(0,4), 100, 10) 
end
end
ConsumeEquiproomItem(1,6,1,30037,-1)
--trangbixanh()
--return 1
end

tbDoXanh =
{
[1]=
{
szName = "D�y chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai l�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� kh� c�n chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c b�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� kh� t�m xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}
function trangbixanh()
	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end
tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "ch�n �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end
tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "ch�n �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh4, {nIndex, nType, 0}})
tinsert(tbOpt, {"M�c", laydoxanh4, {nIndex, nType, 1}})
tinsert(tbOpt, {"Th�y", laydoxanh4, {nIndex, nType, 2}})
tinsert(tbOpt, {"H�a", laydoxanh4, {nIndex, nType, 3}})
tinsert(tbOpt, {"Th� ", laydoxanh4, {nIndex, nType, 4}})
tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = format("<npc>Ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
return 1
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
if CalcEquiproomItemCount(6,1,4478,-1)<1 then
	return 1
end
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
 AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) 
ConsumeEquiproomItem(1,6,1,4478,-1)
ConsumeEquiproomItem(1,6,1,30037,-1)
return 1
end
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o  r��ng �� ph�", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)

end
