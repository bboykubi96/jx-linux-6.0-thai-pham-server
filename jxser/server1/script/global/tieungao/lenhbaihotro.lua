Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
--Include("\\script\\global\\_camnangdonghanh.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\g7vn\\oantuty\\oantuty.lua")
Include("\\script\\global\\g7vn\\item\\huyetchien.lua")
Include("\\script\\vng_feature\\resetbox.lua")


function main()
--local diemtk=GetTask(747)
dofile("script/global/tieungao/lenhbaihotro.lua")
--dofile("script/global/g7vn/item/huyetchien.lua")


local szTitle =  "B�n �ang C� <color=red>"..GetTask(747).."<color> �i�m T�ch L�y T�ng Kim"

local tbOpt = 
{
--{"Move Vinh Lac Tran.", goto_ba_lang},


{"Mua m�u xu kh�a.", ShopXuKhoaLeQuan},

{"Mua M�u B�ng Ti�n V�n",MuaTuiMauTienVan},
{"Ch�c N�ng M� Kh�a �� �� ��nh.", MoKhoaDinh },
{"K�ch ho�t l�i v�ng s�ng b� LAG.", kichhoat},
{"Nh�n T�i L�nh ��o V� Danh V�ng",lanhdao},
{"Nh�n Khi�u chi�n l�nh.", NhanKhieuChienLenh },
{"Ti�u H�y V�t Ph�m",huyVPkhoa},
--{"Shop Ti�n V�n",ShopTienVan},
--{"Nh�n H� Tr� T�n Th�",NhanHoTroTanThu},
--{"Ch�i O�n T� T�",ThamGiaOanTuTi},
--{"Mua 10 C�n Kh�n T�o H�a �an(500 �i�m T�ng Kim)",MuaCanKhonTaoHoaDan},
--{"Mua 1 T�i t�ch l�y T�ng Kim(11000 �i�m T�ng Kim)",MuaTuiTichLuyTongKim},

--{"Admin test",sonht},

--{"T�y T�ng Ti�m N�ng", TayCongDiem},
--{"10 ng�n v�n.", laytienvan},
--{"H�c L�i Khinh C�ng.", AddMagic(210,1) },
--{"Nh�n Phi T�c L�nh B�i.", NhanChienCo },


{"Tho�t"},
}

if GetSkillState(1502) > 0 or GetSkillState(1503) > 0 or GetSkillState(1504) > 0 or GetSkillState(1505) > 0 then 
tinsert(tbOpt, 1, {"K�ch ho�t v�ng s�ng li�n ��u", kickhoatvongsangliendau}) 
end

if GetAccount()  == "" or GetAccount() =="" or GetAccount() =="" then
		--tinsert(tbOpt, 1, {"Ch�c N�ng M� Kh�a �� �� ��nh", MoKhoaDinh}) 
			
		tinsert(tbOpt, 1, {"ADM Move=>CTC...", vitri_congthanh}) 
		tinsert(tbOpt, 2, {"Thay ��i Tr�ng Th�i", trangthai}) 

end


CreateNewSayEx(szTitle, tbOpt)

return 1	
end


function mokhoa1()
	--ResetBox:ConfirmResetBox()
	SetTask(3000,2)
end

---------------------------------------------------------------

-------------------------------------------mo do dinh trong ruong ----------------------
function MoKhoaDinh() 
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
end
GiveItemUI("M� Kh�a ��nh11", "<color=white>��i hi�p c�n m� g� xin ��t v�o � d��i ��y! ch� c� th� m� 1 v�t ph�m duy nh�t n�u b� h�n th� m� ng�u nhi�n.", "batdaucheckngay", "onCancel", 1);
end


function batdaucheckngay(nItemIdx)
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, -1) ;
	local chikhoalaplanh = CalcEquiproomItemCount(6, 1, 1371, -1) ;
	if	(nSilverCount < 10)  or chikhoalaplanh<1 then -- gia xu
	Msg2Player("<color=white>B�n C�n C� 10xu +1 Ch�a kh�a l�p l�nh trong H�nh Trang +") -- go
	return
	end
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang b� do BQT kh�a v�nh vi�n kh�ng th� m� kh�a ���c r�t ti�c.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=white>M� kh�a v�t ph�m "..strItemlock, " th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p m� kh�a th�nh c�ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		ConsumeEquiproomItem(10,4,417,1,1);
		ConsumeEquiproomItem(1,6,1,1371,1);
		SaveNow();
end
--------------------------------------------------------xu khoa-------------------------
function ShopXuKhoaLeQuan()
local tbSay1 = {
"Mua 1 B�nh m�u 900 (1 Xu)/#muadoxukhoa(4832,1,1)",
"Mua 5 B�nh m�u 900 (5 Xu)/#muadoxukhoa(4832,5,5)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mua G� N�o",getn(tbSay1),tbSay1)
end

function muadoxukhoa(id,xu,num)
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end

if CalcEquiproomItemCount(6,1,4893,-1)>=xu then 
local tbAward100k = {

		{szName="R��ng M�u ��i",tbProp={6,1,id,1,0,0},nCount=num,nExpiredTime=30*24*60, nBindState = -2},
		
}		
tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng ��t M�c 100 Ng�n")
ConsumeEquiproomItem(xu,6,1,4893,-1);

else Talk(1,"no","<color=red>B�n kh�ng �� 1 Xu Kh�a.")	
end

end

function ShopTienVan()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbSay = {
"Mua M�u B�ng Ti�n V�n/#MuaTuiMauTienVan()",
--"Mua H�nh Hi�p K� 2000 V�n/#MuaDoTienVan(4875,2000)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)
end

function MuaDoTienVan(id,sotien)
local vatpham={
{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,id,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
}
sotienthat=sotien*10000
if GetCash()>=sotienthat and CalcFreeItemCellCount()>=5 then
	tbAwardTemplet:GiveAwardByList(vatpham,"Ph�n Th��ng GiftCode")
	Pay(sotienthat)
	else Say("Kh�ng �� "..sotien.." V�n Ho�c 5 � Tr�ng")
end



end
function MuaTuiMauTienVan()

local szTitle =  "Mua B�ng Ti�n V�n, Qu� ��!"
local tbOpt = 
{
{"Mua 1 B�nh 60 (40 v�n)", muabinh60},
{"Mua 1 B�nh 900 (200 v�n)",muabinh900},
{"Mua 5 B�nh 900 (1000 v�n)",muabinh300},
{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)

end

function muabinh60()
local tuimau60={
{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,2527,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
}
if GetCash()>=400000 and CalcFreeItemCellCount()>=5 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"Ph�n Th��ng GiftCode")
	Pay(400000)
	
	else Say("Kh�ng �� 40 V�n Ho�c 5 � Tr�ng")
end

end

function muabinh900()
local tuimau60={
{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,4832,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
}
if GetCash()>=2000000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"Ph�n Th��ng GiftCode")
	Pay(2000000)
	
	else Say("Kh�ng �� 200 V�n Ho�c 7 � Tr�ng")
end
end

function muabinh300()
local tuimau60={
{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,4832,1,0,0},nCount = 5,nExpiredTime=7*24*60,nBindState = -2},	
}
if GetCash()>=10000000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"Ph�n Th��ng GiftCode")
	Pay(10000000)
	
	else Say("Kh�ng �� 1000 V�n Ho�c 7 � Tr�ng")
end

end
function ThamGiaOanTuTi()
tbAloneScriptGame:DialogMain();
end
function NhanDoHoTro()
local szTitle =  "V� L�m T�i Thi�n webside www.volamtestvinhvien.com chia s� ngay t� h�m nay �� nh�n core vip.!"
local tbOpt = 
{
{"Nh�n C�c Lo�i Ng�a", nhancacloaingua},
{"Nh�n Trang B� �� Xanh ",trangbixanh},
{"Nh�n Trang B� HKMP", hkmpvip1},
{"Nh�n AB, �Q, NT, HC", HoangKimTanThu},
{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
end
function MuaTuiTichLuyTongKim()
local tbAwardcc={
--{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="C�n Kh�n T�o H�a �an", tbProp={6,1,4361,1,0,0},nCount = 1},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
if GetTask(747)>=11000 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	SetTask(747,GetTask(747)-11000)
	else
	Say("B�n Kh�ng �� 11000 �i�m T�ch L�y")
end
end

function MuaCanKhonTaoHoaDan()
local tbAwardcc={
--{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="C�n Kh�n T�o H�a �an", tbProp={6,1,215,1,0,0},nCount = 10},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
if GetTask(747)>=500 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	SetTask(747,GetTask(747)-500)
	else
	Say("B�n Kh�ng �� 500 �i�m T�ch L�y")
end

end
function NhanChienCo()
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
local tbAwardcc={
--{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 50,nBindState = -2},
{szName="HPhong V�n Phi T�c ho�n", tbProp={6,1,190,1,0,0},nCount = 50,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
---------------------------------------------------------------------------
function NhanKhieuChienLenh()
	if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
	local tbAwardcc={
		{
			szName="HPhong V�n Phi T�c ho�n", tbProp={6,1,1499,1,0,0},nCount = 10},
		}
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end

function TayCongDiem()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"T�y Ti�m N�ng Di ��ng./tayTNnhe","C�ng Ti�m N�ng Nhanh/TangDiemTiemNangNhanh","�� ta suy ngh� l�i. /0")
end

function laytienvan()
	if (GetCash() >= 500000000) then 	--  50 ng�n v�n
		Talk(1, "", "Ng�n l��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		Earn(500000000)
		Msg2Player("Nh�n ���c 500000000 v�n l��ng.");
	end
end

function huyVPkhoa()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"Phi shop m�t m�n ��! /banshop","H�y b� m�t m�n ��! /Huydeltem","�� ta suy ngh� l�i. /0")
end


function tayTNnhe()
	local base_str = {35,20,25,30,20}			-- �����������������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
Talk(1, "", "<color=green>T�y ti�m n�ng th�nh c�ng!"); 
end

function TangDiemTiemNangNhanh()
	Say("Ng��i ph�i hi�u r� c�ch t�ng �i�m", 4,
			"S�c m�nh/add_prop_str",
			"Th�n ph�p/add_prop_dex",
			"Sinh kh�/add_prop_vit",
			"N�i c�ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh kh�:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end

function Huydeltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
GiveItemUI("H�y V�t Ph�m Kh�a", " ��i hi�p c�n h�y g� xin ��t v�o � d��i ��y! C� th� h�y nhi�u v�t ph�m c�ng l�c", "DisposeConfirm", "onCancel", 1);

end

function DisposeConfirm(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
local nG, nD, nP, nL, nS ,kk = GetItemProp(nItemIndex)
RemoveItemByIndex(nItemIndex)
WriteLogPro("dulieu/huyvatpham.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da huy vatpham --"..strItem.."+ nGoldEquipIdxFF:"..nGoldEquipIdxFF.."+ "..nG.." - "..nD.."-"..nP.."-"..nL.."-"..nS.."-"..kk.."\n");	
end
Msg2Player("Thao t�c b�n v�t ph�m th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p �� h�y v�t ph�m kh�a th�nh c�ng!"); 
end



------------------------------------ NHAN TRANG BI XANH --------------------------

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

	if CalcFreeItemCellCount() < 6 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 6 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "L�c �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "L�c �� n�o anh em �i !";
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
g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,10 do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

function banshop()
Sale(149)
end;



function HoangKimTanThu()
	Say("Xin m�i ch�n trang b� c�n test",5,"Trang B� An Bang/hoanmytanthu","Trang B� Nhu T�nh/nhutinhtanthu","Trang B� ��nh Qu�c/dinhquoctanthu","Trang B� Hi�p C�t/hiepcottanthu","K�t th�c ��i tho�i/no")
end

function hoanmytanthu()                
AddGoldItem(0,394)
AddGoldItem(0,395)
AddGoldItem(0,396)
AddGoldItem(0,397)
Msg2Player("Nh�n ���c Trang B� An Bang Ho�n M�!")
end

function nhutinhtanthu()
AddGoldItem(0,191)
AddGoldItem(0,192)
AddGoldItem(0,193)
--AddGoldItem(0,419)
Msg2Player("Nh�n ���c Trang B� Nhu T�nh")
end

function dinhquoctanthu()
AddGoldItem(0,389)
AddGoldItem(0,390)
AddGoldItem(0,391)
AddGoldItem(0,392)
AddGoldItem(0,393)
Msg2Player("Nh�n ���c Trang B� ��nh Qu�c!")
end

function hiepcottanthu()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
--AddGoldItem(0,415)
Msg2Player("Nh�n ���c Trang B� Hi�p C�t!")
end

function OnCancel()
end

function savenhanvatnhanh()
SaveNow();
Say("Thao t�c save nh�n v�t th�nh c�ng.",0)
end

function savechongroll()
	local tbDialog = 
{ 
"<color=green>Save nh�n v�t t�c l� l�u �� ��c nh�n v�t b�n hi�n t�i gi�ng nh� save game v�y tr�nh tr��ng h�p n�u c� r�i ro server b� ph� th� �� b�n s� ko m�t m�t g�.Th�ng th��ng server t� save t� ��ng n�n tr��ng h�p n�y ch� d�nh cho l�c kh�n c�p th�i nhe.",
"Ch�c ch�n r�i save ngay v� lu�n/savenhanvatnhanh",
"K�t th�c ��i tho�i/",
} 
CreateTaskSay(tbDialog)
end

function savenhanvatnhanh()
SaveNow();
Say("<color=green>Save nh�n v�t th�nh c�ng.",0)
end

function FixLoiThanHanhPhuOK()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("�ang l�m nhi�m v� quan tr�ng kh�ng th� s� d�ng ch�c n�ng n�y.",0)
		else
FixLoiThanHanhPhuOOK()
	end
end



function FixLoiThanHanhPhuOOK()
local PlayerIndex = GetTaskTemp(246);
CallPlayerFunction(PlayerIndex, DisabledUseTownP, 0);
return 
CallPlayerFunction(PlayerIndex, Say, "Gi�i k�t th�nh c�ng b�n c� th� d�ng Th�n th�nh Ph�.", 0);
end

function nhancacloaingua()
	local tbOpt =
	{
                                                                                    {"Nh�n Ng�a Tuy�t �nh", tuyetanh},
                                                                                    {"Nh�n Ng�a Chi�u D�", chieudatanthu},
	  {"Nh�n Ng�a X�ch Th�", xichthotanthu},
                                                                                    {"Nh�n Ng�a � V�n ��p Tuy�t", ovan},
	  {"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca ��i t� c�n g� � ?", tbOpt)
end


function tuyetanh()
AddItem(0,10,5,3,0,0,0)
end

function ovan()
AddItem(0,10,5,6,0,0,0)
end

function chieudatanthu()
AddItem(0,10,5,10,0,0,0)
end

function xichthotanthu()
AddItem(0,10,5,7,0,0,0)
end


--------------------------------------------------------


function hkmpvip1() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/hkmpvip2","K�t th�c ��i tho�i/no") 
end

function hkmpvip2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/hkmpvip1","K�t th�c ��i tho�i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
               -- {"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc()
AddGoldItem(0,39)  
end;

function hkvipnmk() 
AddGoldItem(0,31)  
end;

function hkvipnmbuff() 
AddGoldItem(0,42)  
end;

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
AddGoldItem(0,46)  
end; 

function hkviptyc() 

AddGoldItem(0,51)  

end; 

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                            {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n B�ng H�n", hkvippd}, 
                               -- {"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv() 

AddGoldItem(0,76)  

end; 

function hkvippt() 

AddGoldItem(0,81)  

end; 

function hkvippd() 

AddGoldItem(0,71)  

end; 

function hkvipbay() 

AddGoldItem(0,87)  

end;

function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                            {"Ng� ��c �ao", hkvipndd}, 
               -- {"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc() 

AddGoldItem(0,56)  

end;

function hkvipndd() 

AddGoldItem(0,61)  

end; 

function hkvipndb() 

AddGoldItem(0,67)  

end; 

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                            {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt() 

AddGoldItem(0,21)  

end; 

function hkviptvc() 

AddGoldItem(0,16)  

end;

function hkviptvd() 

AddGoldItem(0,26)  

end; 

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptld() 

AddGoldItem(0,11)  

end; 

function hkviptlb() 

AddGoldItem(0,6)  
end; 

function hkviptlq() 

AddGoldItem(0,2)  

end;

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 

AddGoldItem(0,116)  

end; 

function hkvipvdk() 

AddGoldItem(0,121)  

end;

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                {"C�n L�n B�a", hkvipclb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld() 

AddGoldItem(0,126)  

end;

function hkvipclc() 
for i =1,5 do
AddGoldItem(0,131)  
end
end; 

function hkvipclb() 

AddGoldItem(0,136)  

end; 

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                            {"Thi�n Nh�n Ch��ng", hkviptnd}, 
                --{"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 

AddGoldItem(0,101)  

end; 

function hkviptnd() 

AddGoldItem(0,115)  

end; 

function hkviptnb() 

AddGoldItem(0,107)  

end;

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                            {"C�i Bang B�ng", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 

AddGoldItem(0,94)  

end; 

function hkvipcbb() 

AddGoldItem(0,96)  

end;


-------------------------------------------------code cua quy ----------------------------------
----------------------------------------------------------------T�i L�nh ��o--------------------------------------------------------------------------------------------------
function lanhdao()
--if check_faction() == 10 then
--		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n ph�n th��ng n�y.")
--	return
--	end
if CalcFreeItemCellCount() < 0 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� � tr�ng r�i h�y m�.",0);
		return 1;
end
	if GetLevel()>=100 then
		if GetTask(14)==0 or GetTask(14)==1 or GetTask(14)==2 then
			FuYuan_Start()
			FuYuan_Add(900)
			AddLeadExp(90000000)
			AddRepute(950)
			SetTask(14,GetTask(14)+1)
			Msg2Player("Ch�c M�ng ��i Hi�p �� Nh�n ���c H� Tr� Th�nh C�ng.")
		else
			Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a. ")
		end
	else
		Talk(1, "", "Ng��i ch�a �� �i�u Ki�n Nh�n Th��ng, Xin H�y R�n Luy�n Th�m. ")
	end
end
-------------------------------------------------code cua quy ----------------------------------
function NhanHoTroTanThu()
		if CalcFreeItemCellCount() >= 40 then
			--SetTask(NhiemVuTanThu,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) SetItemBindState(Index, -2)--Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) ITEM_SetExpiredTime(Index,10080) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2)--Lenh Bai Tan Thu
			local Index = AddItem(0,10,8,10,0,0,0) -- Phi Van
			local Index	= AddItem(6,1,2426,0,0,0,0) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) --bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) --dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) --dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) --dai thanh bk 90
			local Index = AddItem(6,1,1125,0,0,0,0)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) --dai thanh bk 120
			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green>"..myplayersex().." H�y �� Tr�ng 40 � R�i Nh�n Th��ng...!")
		end
end


---------------test dev-------------

function sonht()

--AddGoldItem(0,3160) ---dang long giap begin
-- AddGoldItem(0,3400) -- giap end
--AddGoldItem(0,3161) -- vu khi begin
--AddGoldItem(0,3181)
--AddGoldItem(0,3401)  - end vu khi
--AddItem(6,1,4817,1,0,0) -- tu tinh khoang
for i=4881,4884 do
	for j=1,10 do
		--AddItem(6,1,i,1,0,0)
	end
end
for i=1,1000 do
	--AddItem(6,1,4885,1,0,0)
end
end



function trudiem()

if GetAccount() == "vinhcomnew7" then
	if GetTask(3930) < 1 then
		AddProp(-95)
		SetTask(3930,1)
	else
		Say("�� tr� �i�m th�nh c�ng")
	end

end


end

function vitri_congthanh()
local tab_Content = {
		"L�m An/goto_lam_an",
		"Bi�n Kinh/goto_bien_kinh",		
		"Th�nh ��/goto_thanh_do",
		"T��ng D��ng/goto_tuong_duong",
		"Ph��ng T��ng/goto_phuong_tuong",
		"D��ng Ch�u/goto_duong_chau",
		"��i L�/goto_dai_ly",
		"V�nh L�c Tr�n/goto_ba_lang",
		"�ua Ng�a/goto_dua_ngua",	
		"T�ng - Kim/goto_tong_kim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Thi�n T�/goto_tongkim",
		"Nguy�t Ca ��o/goto_ca_dao",
		"K�t th�c..!/No"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuy�n ��n t�a �� c�n ��n?<color>", 
"Ba L�ng Huy�n 1x/xem_blh1",
"Ba L�ng Huy�n 2 /xem_blh2",
"V�nh L�c Tr�n 1 /xem_vlt1",
"V�nh L�c Tr�n 2 /xem_vlt2",
"Long M�n Tr�n 1 /xem_lmt1",
"Long M�n Tr�n 2 /xem_lmt2",
"Chu Ti�n Tr�n 1 /xem_ctt1",
"Chu Ti�n Tr�n 2 x /xem_ctt2",
"Trang ti�p theo /xem_tt_n",
"K�t th�c ��i tho�i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuy�n ��n t�a �� c�n ��n<color>", 
"��o H�ng Th�n 1 /xem_dht1",
"��o H�ng Th�n 2 /xem_dht2",
"Long Tuy�n Th�n 1 /xem_ltt1",
"Long Tuy�n Th�n 2 x /xem_ltt2",
"Giang T�n Th�n 1 /xem_gtt1",
"Giang T�n Th�n 2 /xem_gtt2",
"Th�ch C� Tr�n1 /xem_tct1",
"Th�ch C� Tr�n1 /xem_tc2",
"K�t th�c ��i tho�i /No", 
} 
CreateTaskSay(tbDialog) 
end
-----------------------------------------------------------------------------
function goto_tong_kim()----------
NewWorld(900,180*8,208*16)
end
function xem_blh1()----------
NewWorld(53,220*8,200*16)
end
function xem_blh2()----------
NewWorld(53,207*8,182*16)
end
function xem_vlt1()----------
NewWorld(99,189*8,223*16)
end
function xem_vlt2()----------
NewWorld(99,224*8,206*16)
end
function xem_lmt1()----------
NewWorld(121,226*8,275*16)
end
function xem_lmt2()----------
NewWorld(121,276*8,282*16)
end
function xem_ctt1()----------
NewWorld(100,183*8,203*16)
end
function xem_ctt2()----------
NewWorld(100,229*8,190*16)
end
function xem_dht1()----------
NewWorld(101,171*8,198*16)
end
function xem_dht2()----------
NewWorld(101,232*8,205*16)
end
function xem_ltt1()----------
NewWorld(174,218*8,192*16)
end
function xem_ltt2()----------
NewWorld(174,183*8,211*16)
end
function xem_gtt1()----------
NewWorld(20,432*8,359*16)
end
function xem_gtt2()----------
NewWorld(20,438*8,396*16)
end
function xem_tct1()----------
NewWorld(153,232*8,180*16)
end
function xem_tct2()----------
NewWorld(153,189*8,223*16)
end
-------------------------------------------------------------------------------------
function goto_lam_an()
SetFightState(1)
NewWorld(930,1750,3394)
end
function goto_bien_kinh()
SetFightState(1)
NewWorld(927,1749,3388)
end
function goto_thanh_do()
SetFightState(1)
NewWorld(926,1712,3300)
end
function goto_tuong_duong()
SetFightState(1)
NewWorld(931,1710,3303)
end
function goto_phuong_tuong()
SetFightState(1)
NewWorld(929,1764,3513)
end
function goto_duong_chau()
SetFightState(1)
NewWorld(932,1728,3302)
end
function goto_dai_ly()
SetFightState(1)
NewWorld(928,1727,3295)
end
function goto_ba_lang()
SetFightState(0)
NewWorld(99,1627,3201)
end
function goto_loidai()
SetFightState(0)
NewWorld(209,1612,3197)
end
function goto_tongkim()
SetFightState(1)
NewWorld(380,1568,3195)
end
function goto_liendau()
SetFightState(0)
NewWorld(380,1568,3195)
end

function goto_ca_dao()
SetFightState(1)
NewWorld(968,1586,3172)
end

function trangthai()
local tbSay = {}
tinsert(tbSay,"H� Tr� Chi�n ��u/GMSkill")
tinsert(tbSay,"GM B�t T�.../GMBatTu")
tinsert(tbSay,"GM �n Th�n.../GManthan")
tinsert(tbSay,"GM Hi�n Th�n.../XoaSkillGM")
tinsert(tbSay,"Ch�nh Ph�i./mauvang")
tinsert(tbSay,"T� Ph�i./mautim")
tinsert(tbSay,"Trung L�p./mauxanh")
tinsert(tbSay,"S�t Th�./maudo")
tinsert(tbSay,"Nh�n V�t Ch� Tr�ng./mautrang")
tinsert(tbSay,"Chi�n ��u/ChienDau")
tinsert(tbSay,"Phi Chi�n ��u/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
function GMBatTu()
SetProtectTime(18*5000)
PlayerFunLib:AddSkillState(963,1,3,559872000,1)
SetFightState(0)
end
function GMSkill()
AddMagic(1003,20)
AddMagic(1310,20)
end

function GManthan()
AddMagic(732,20)
AddMagic(733,20)
Msg2Player("<color=pink>Ch�c M�ng B�n �� H�c ���c Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B�n �� X�a K� N�ng GM Th�nh C�ng")
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end

function ChienDau()
SetFightState(1)
end

function PhiChienDau()
SetFightState(0)
end

function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin()
SetCurCamp(5)
SetCamp(5) 
end
----------