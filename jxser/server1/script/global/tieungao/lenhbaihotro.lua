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


local szTitle =  "B¹n §ang Cã <color=red>"..GetTask(747).."<color> §iÓm TÝch Lòy Tèng Kim"

local tbOpt = 
{
--{"Move Vinh Lac Tran.", goto_ba_lang},


{"Mua m¸u xu khãa.", ShopXuKhoaLeQuan},

{"Mua M¸u B»ng TiÒn V¹n",MuaTuiMauTienVan},
{"Chøc N¨ng Më Khãa §å §· §Ýnh.", MoKhoaDinh },
{"KÝch ho¹t l¹i vßng s¸ng bÞ LAG.", kichhoat},
{"NhËn Tµi L·nh §¹o Vµ Danh Väng",lanhdao},
{"NhËn Khiªu chiÕn lÖnh.", NhanKhieuChienLenh },
{"Tiªu Hñy VËt PhÈm",huyVPkhoa},
--{"Shop TiÒn V¹n",ShopTienVan},
--{"NhËn Hç Trî T©n Thñ",NhanHoTroTanThu},
--{"Ch¬i O¶n Tï T×",ThamGiaOanTuTi},
--{"Mua 10 Cµn Kh«n T¹o Hãa §an(500 §iÓm Tèng Kim)",MuaCanKhonTaoHoaDan},
--{"Mua 1 Tói tÝch lòy Tèng Kim(11000 §iÓm Tèng Kim)",MuaTuiTichLuyTongKim},

--{"Admin test",sonht},

--{"TÈy T¨ng TiÒm N¨ng", TayCongDiem},
--{"10 ngµn v¹n.", laytienvan},
--{"Häc L¹i Khinh C«ng.", AddMagic(210,1) },
--{"NhËn Phi Tèc LÖnh Bµi.", NhanChienCo },


{"Tho¸t"},
}

if GetSkillState(1502) > 0 or GetSkillState(1503) > 0 or GetSkillState(1504) > 0 or GetSkillState(1505) > 0 then 
tinsert(tbOpt, 1, {"KÝch ho¹t vßng s¸ng liªn ®Êu", kickhoatvongsangliendau}) 
end

if GetAccount()  == "" or GetAccount() =="" or GetAccount() =="" then
		--tinsert(tbOpt, 1, {"Chøc N¨ng Më Khãa §å §· §Ýnh", MoKhoaDinh}) 
			
		tinsert(tbOpt, 1, {"ADM Move=>CTC...", vitri_congthanh}) 
		tinsert(tbOpt, 2, {"Thay §æi Tr¹ng Th¸i", trangthai}) 

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
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
end
GiveItemUI("Më Khãa §Ýnh11", "<color=white>§¹i hiÖp cÇn më g× xin ®Æt vµo « d­íi ®©y! chØ cã thÓ më 1 vËt phÈm duy nhÊt nÕu bá h¬n th× më ngÉu nhiªn.", "batdaucheckngay", "onCancel", 1);
end


function batdaucheckngay(nItemIdx)
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, -1) ;
	local chikhoalaplanh = CalcEquiproomItemCount(6, 1, 1371, -1) ;
	if	(nSilverCount < 10)  or chikhoalaplanh<1 then -- gia xu
	Msg2Player("<color=white>B¹n CÇn Cã 10xu +1 Ch×a khãa lÊp l¸nh trong Hµnh Trang +") -- go
	return
	end
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang bÞ do BQT khãa vÜnh viÔn kh«ng thÓ më khãa ®­îc rÊt tiÕc.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=white>Më khãa vËt phÈm "..strItemlock, " thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp më khãa thµnh c«ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		ConsumeEquiproomItem(10,4,417,1,1);
		ConsumeEquiproomItem(1,6,1,1371,1);
		SaveNow();
end
--------------------------------------------------------xu khoa-------------------------
function ShopXuKhoaLeQuan()
local tbSay1 = {
"Mua 1 B×nh m¸u 900 (1 Xu)/#muadoxukhoa(4832,1,1)",
"Mua 5 B×nh m¸u 900 (5 Xu)/#muadoxukhoa(4832,5,5)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Mua G× Nµo",getn(tbSay1),tbSay1)
end

function muadoxukhoa(id,xu,num)
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end

if CalcEquiproomItemCount(6,1,4893,-1)>=xu then 
local tbAward100k = {

		{szName="R­¬ng M¸u §¹i",tbProp={6,1,id,1,0,0},nCount=num,nExpiredTime=30*24*60, nBindState = -2},
		
}		
tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng §¹t M«c 100 Ngµn")
ConsumeEquiproomItem(xu,6,1,4893,-1);

else Talk(1,"no","<color=red>B¹n kh«ng ®ñ 1 Xu Khãa.")	
end

end

function ShopTienVan()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbSay = {
"Mua M¸u B»ng TiÒn V¹n/#MuaTuiMauTienVan()",
--"Mua Hµnh HiÖp Ký 2000 V¹n/#MuaDoTienVan(4875,2000)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Mua G×",getn(tbSay),tbSay)
end

function MuaDoTienVan(id,sotien)
local vatpham={
{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,id,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
}
sotienthat=sotien*10000
if GetCash()>=sotienthat and CalcFreeItemCellCount()>=5 then
	tbAwardTemplet:GiveAwardByList(vatpham,"PhÇn Th­ëng GiftCode")
	Pay(sotienthat)
	else Say("Kh«ng §ñ "..sotien.." V¹n HoÆc 5 ¤ Trèng")
end



end
function MuaTuiMauTienVan()

local szTitle =  "Mua B»ng TiÒn V¹n, Qu¸ §·!"
local tbOpt = 
{
{"Mua 1 B×nh 60 (40 v¹n)", muabinh60},
{"Mua 1 B×nh 900 (200 v¹n)",muabinh900},
{"Mua 5 B×nh 900 (1000 v¹n)",muabinh300},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)

end

function muabinh60()
local tuimau60={
{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,2527,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
}
if GetCash()>=400000 and CalcFreeItemCellCount()>=5 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"PhÇn Th­ëng GiftCode")
	Pay(400000)
	
	else Say("Kh«ng §ñ 40 V¹n HoÆc 5 ¤ Trèng")
end

end

function muabinh900()
local tuimau60={
{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4832,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},	
}
if GetCash()>=2000000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"PhÇn Th­ëng GiftCode")
	Pay(2000000)
	
	else Say("Kh«ng §ñ 200 V¹n HoÆc 7 ¤ Trèng")
end
end

function muabinh300()
local tuimau60={
{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4832,1,0,0},nCount = 5,nExpiredTime=7*24*60,nBindState = -2},	
}
if GetCash()>=10000000 and CalcFreeItemCellCount()>=7 then
	tbAwardTemplet:GiveAwardByList(tuimau60,"PhÇn Th­ëng GiftCode")
	Pay(10000000)
	
	else Say("Kh«ng §ñ 1000 V¹n HoÆc 7 ¤ Trèng")
end

end
function ThamGiaOanTuTi()
tbAloneScriptGame:DialogMain();
end
function NhanDoHoTro()
local szTitle =  "Vâ L©m T¹i Thiªn webside www.volamtestvinhvien.com chia sÎ ngay tõ h«m nay ®Ó nhËn core vip.!"
local tbOpt = 
{
{"NhËn C¸c Lo¹i Ngùa", nhancacloaingua},
{"NhËn Trang BÞ §å Xanh ",trangbixanh},
{"NhËn Trang BÞ HKMP", hkmpvip1},
{"NhËn AB, §Q, NT, HC", HoangKimTanThu},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
end
function MuaTuiTichLuyTongKim()
local tbAwardcc={
--{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="Cµn Kh«n T¹o Hãa §an", tbProp={6,1,4361,1,0,0},nCount = 1},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
if GetTask(747)>=11000 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	SetTask(747,GetTask(747)-11000)
	else
	Say("B¹n Kh«ng §ñ 11000 §iÓm TÝch Lòy")
end
end

function MuaCanKhonTaoHoaDan()
local tbAwardcc={
--{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="Cµn Kh«n T¹o Hãa §an", tbProp={6,1,215,1,0,0},nCount = 10},
}
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
if GetTask(747)>=500 then
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	SetTask(747,GetTask(747)-500)
	else
	Say("B¹n Kh«ng §ñ 500 §iÓm TÝch Lòy")
end

end
function NhanChienCo()
if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
local tbAwardcc={
--{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nBindState = -2},
{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 50,nBindState = -2},
{szName="HPhong V©n Phi Tèc hoµn", tbProp={6,1,190,1,0,0},nCount = 50,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
---------------------------------------------------------------------------
function NhanKhieuChienLenh()
	if CalcFreeItemCellCount() < 3 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
	local tbAwardcc={
		{
			szName="HPhong V©n Phi Tèc hoµn", tbProp={6,1,1499,1,0,0},nCount = 10},
		}
	tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end

function TayCongDiem()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"TÈy TiÒm N¨ng Di §éng./tayTNnhe","Céng TiÒm N¨ng Nhanh/TangDiemTiemNangNhanh","§Ó ta suy nghÜ l¹i. /0")
end

function laytienvan()
	if (GetCash() >= 500000000) then 	--  50 ngµn v¹n
		Talk(1, "", "Ng©n l­îng trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		Earn(500000000)
		Msg2Player("NhËn ®­îc 500000000 v¹n l­îng.");
	end
end

function huyVPkhoa()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"Phi shop mét mãn ®å! /banshop","Hñy bá mét mãn ®å! /Huydeltem","§Ó ta suy nghÜ l¹i. /0")
end


function tayTNnhe()
	local base_str = {35,20,25,30,20}			-- ÎåÐÐÈËÎïµÄÌìÉúÊôÐÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖÐÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
Talk(1, "", "<color=green>TÈy tiÒm n¨ng thµnh c«ng!"); 
end

function TangDiemTiemNangNhanh()
	Say("Ng­¬i ph¶i hiÓu râ c¸ch t¨ng ®iÓm", 4,
			"Søc m¹nh/add_prop_str",
			"Th©n ph¸p/add_prop_dex",
			"Sinh khÝ/add_prop_vit",
			"Néi c«ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khÝ:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
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
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
GiveItemUI("Hñy VËt PhÈm Khãa", " §¹i hiÖp cÇn hñy g× xin ®Æt vµo « d­íi ®©y! Cã thÓ hñy nhiÒu vËt phÈm cïng lóc", "DisposeConfirm", "onCancel", 1);

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
Msg2Player("Thao t¸c b¸n vËt phÈm thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp ®· hñy vËt phÈm khãa thµnh c«ng!"); 
end



------------------------------------ NHAN TRANG BI XANH --------------------------

tbDoXanh =
{
[1]=
{
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}
function trangbixanh()

	if CalcFreeItemCellCount() < 6 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 6 « trèng råi h·y tiÕp tôc nhÐ !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "Läc ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "Läc ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
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
	Say("Xin mêi chän trang bÞ cÇn test",5,"Trang BÞ An Bang/hoanmytanthu","Trang BÞ Nhu T×nh/nhutinhtanthu","Trang BÞ §Þnh Quèc/dinhquoctanthu","Trang BÞ HiÖp Cèt/hiepcottanthu","KÕt thóc ®èi tho¹i/no")
end

function hoanmytanthu()                
AddGoldItem(0,394)
AddGoldItem(0,395)
AddGoldItem(0,396)
AddGoldItem(0,397)
Msg2Player("NhËn ®­îc Trang BÞ An Bang Hoµn Mü!")
end

function nhutinhtanthu()
AddGoldItem(0,191)
AddGoldItem(0,192)
AddGoldItem(0,193)
--AddGoldItem(0,419)
Msg2Player("NhËn ®­îc Trang BÞ Nhu T×nh")
end

function dinhquoctanthu()
AddGoldItem(0,389)
AddGoldItem(0,390)
AddGoldItem(0,391)
AddGoldItem(0,392)
AddGoldItem(0,393)
Msg2Player("NhËn ®­îc Trang BÞ §Þnh Quèc!")
end

function hiepcottanthu()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
--AddGoldItem(0,415)
Msg2Player("NhËn ®­îc Trang BÞ HiÖp Cèt!")
end

function OnCancel()
end

function savenhanvatnhanh()
SaveNow();
Say("Thao t¸c save nh©n vËt thµnh c«ng.",0)
end

function savechongroll()
	local tbDialog = 
{ 
"<color=green>Save nh©n vËt tøc lµ l­u ®å ®¹c nh©n vËt b¹n hiÖn t¹i gièng nh­ save game vËy tr¸nh tr­êng hîp nÕu cã rñi ro server bÞ ph¸ th× ®å b¹n sÏ ko mÊt m¸t g×.Th«ng th­êng server tù save tù ®éng nªn tr­êng hîp nµy chØ dµnh cho lóc khÈn cÊp th«i nhe.",
"Ch¾c ch¾n råi save ngay vµ lu«n/savenhanvatnhanh",
"KÕt thóc ®èi tho¹i/",
} 
CreateTaskSay(tbDialog)
end

function savenhanvatnhanh()
SaveNow();
Say("<color=green>Save nh©n vËt thµnh c«ng.",0)
end

function FixLoiThanHanhPhuOK()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("§ang lµm nhiÖm vô quan träng kh«ng thÓ sö dông chøc n¨ng nµy.",0)
		else
FixLoiThanHanhPhuOOK()
	end
end



function FixLoiThanHanhPhuOOK()
local PlayerIndex = GetTaskTemp(246);
CallPlayerFunction(PlayerIndex, DisabledUseTownP, 0);
return 
CallPlayerFunction(PlayerIndex, Say, "Gi¶i kÑt thµnh c«ng b¹n cã thÓ dïng ThÇn thµnh Phï.", 0);
end

function nhancacloaingua()
	local tbOpt =
	{
                                                                                    {"NhËn Ngùa TuyÖt ¶nh", tuyetanh},
                                                                                    {"NhËn Ngùa ChiÕu D¹", chieudatanthu},
	  {"NhËn Ngùa XÝch Thè", xichthotanthu},
                                                                                    {"NhËn Ngùa ¤ V©n §¹p TuyÕt", ovan},
	  {"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®¹i tû cÇn g× ¹ ?", tbOpt)
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
Say("Xin mêi chän trang bÞ",7,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2","KÕt thóc ®èi tho¹i/no") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1","KÕt thóc ®èi tho¹i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
               -- {"Nga My Buff", hkvipnmbuff}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                            {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n B¨ng Hµn", hkvippd}, 
                               -- {"§­êng M«n BÉy", hkvipbay}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                            {"Ngò §éc §ao", hkvipndd}, 
               -- {"Ngò §éc Bïa", hkvipndb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                            {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                            {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                            {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                            {"C«n L«n Ch­ëng", hkvipclc}, 
                {"C«n L«n Bïa", hkvipclb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                            {"Thiªn NhÉn Ch­ëng", hkviptnd}, 
                --{"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
                            {"C¸i Bang Bæng", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 

AddGoldItem(0,94)  

end; 

function hkvipcbb() 

AddGoldItem(0,96)  

end;


-------------------------------------------------code cua quy ----------------------------------
----------------------------------------------------------------Tµi L·nh §¹o--------------------------------------------------------------------------------------------------
function lanhdao()
--if check_faction() == 10 then
--		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn phÇn th­ëng nµy.")
--	return
--	end
if CalcFreeItemCellCount() < 0 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã « trèng råi h·y më.",0);
		return 1;
end
	if GetLevel()>=100 then
		if GetTask(14)==0 or GetTask(14)==1 or GetTask(14)==2 then
			FuYuan_Start()
			FuYuan_Add(900)
			AddLeadExp(90000000)
			AddRepute(950)
			SetTask(14,GetTask(14)+1)
			Msg2Player("Chóc Mõng §¹i HiÖp §· NhËn §­îc Hç Trî Thµnh C«ng.")
		else
			Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a. ")
		end
	else
		Talk(1, "", "Ng­¬i ch­a §ñ §iÒu KiÖn NhËn Th­ëng, Xin H·y RÌn LuyÖn Thªm. ")
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
			Talk(1,"","<color=green>"..myplayersex().." H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng...!")
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
		Say("§· trõ ®iÓm thµnh c«ng")
	end

end


end

function vitri_congthanh()
local tab_Content = {
		"L©m An/goto_lam_an",
		"BiÖn Kinh/goto_bien_kinh",		
		"Thµnh §«/goto_thanh_do",
		"T­¬ng D­¬ng/goto_tuong_duong",
		"Ph­îng T­êng/goto_phuong_tuong",
		"D­¬ng Ch©u/goto_duong_chau",
		"§¹i Lý/goto_dai_ly",
		"VÜnh L¹c TrÊn/goto_ba_lang",
		"§ua Ngùa/goto_dua_ngua",	
		"Tèng - Kim/goto_tong_kim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Thiªn Tö/goto_tongkim",
		"NguyÖt Ca §¶o/goto_ca_dao",
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn?<color>", 
"Ba L¨ng HuyÖn 1x/xem_blh1",
"Ba L¨ng HuyÖn 2 /xem_blh2",
"VÜnh L¹c TrÊn 1 /xem_vlt1",
"VÜnh L¹c TrÊn 2 /xem_vlt2",
"Long M«n TrÊn 1 /xem_lmt1",
"Long M«n TrÊn 2 /xem_lmt2",
"Chu Tiªn TrÊn 1 /xem_ctt1",
"Chu Tiªn TrÊn 2 x /xem_ctt2",
"Trang tiÕp theo /xem_tt_n",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn<color>", 
"§¹o H­ng Th«n 1 /xem_dht1",
"§¹o H­ng Th«n 2 /xem_dht2",
"Long TuyÒn Th«n 1 /xem_ltt1",
"Long TuyÒn Th«n 2 x /xem_ltt2",
"Giang T©n Th«n 1 /xem_gtt1",
"Giang T©n Th«n 2 /xem_gtt2",
"Th¹ch Cæ TrÊn1 /xem_tct1",
"Th¹ch Cæ TrÊn1 /xem_tc2",
"KÕt thóc ®èi tho¹i /No", 
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
tinsert(tbSay,"Hç Trî ChiÕn §Êu/GMSkill")
tinsert(tbSay,"GM BÊt Tö.../GMBatTu")
tinsert(tbSay,"GM Èn Th©n.../GManthan")
tinsert(tbSay,"GM HiÖn Th©n.../XoaSkillGM")
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Nh©n VËt Ch÷ Tr¾ng./mautrang")
tinsert(tbSay,"ChiÕn §Êu/ChienDau")
tinsert(tbSay,"Phi ChiÕn §Êu/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
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
Msg2Player("<color=pink>Chóc Mõng B¹n §· Häc §­îc Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B¹n §· Xãa Kü N¨ng GM Thµnh C«ng")
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