---------------------------------------------------------***Script*By*Heart*Doldly***-----------------------------------------------------------------------
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\doxanhtim.lua")
Include("\\script\\gm_tool\\dohoangkim.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\gm_tool\\findboss.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\gm_tool\\gmquanlyserver.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\missions\\yandibaozang\\yandibaozang_trigger.lua")
Include("\\script\\gm_tool\\baotri.lua")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1871}; nAddSkill = 180
LENHBAI_ADMIN = "<#><link=image[0]:\\spr\\item\\sprADMIN.spr>L�nh B�i GM: <link>"
---------------------------------------------------------------------------------

function GetCurIP()
local IPAD = split(GetIP()," :");
	return IPAD[1];
end;
IPADLU = "115.76.136.7"
IPADKIET = "27.77.142.156"
IPADKIET1 = "27.75.137.80"--hongbulong

if GetCurIP() == IPADLU or GetCurIP() == IPADKIET  or GetCurIP() == IPADKIET1 then
	else
local w,x,y=GetWorldPos()
Msg2Player("IP:<color=violet> "..GetCurIP().." <color>kh�ng ph�i c�a GM ti�n h�nh b�t gi� acc v� g�i th�ng b�o t�i ADMIN qua t�ng s� GM.hi�n �ang � map: T�a �� Hi�n T�i: <color=violet>"..w.."/"..x.."/"..y.."<color>")
SetMoveSpeed(1);
ForbidEnmity(1);
DisabledUseTownP(1);
ForbitSkill(1);
ForbitTrade(1); 
ForbidChangePK(1);
SetCurCamp(0)
SetCamp(0)
RemoveSkillState(733)
SetChatFlag(1)
SetAutoHangMapFlag(1)
DisabledStall(1)
KickOutSelf()
end
--------------------------------------------------------
tbGmRole = {}
tbGmRole.nPak = curpack()
tbGmRole.tbAccount = {
	

	[""] = {""},

	["jlk"] = {"V��L�m�"},

	[""] = {""},

	[""] = {""},
}

tbGMAccount = 
{
	{""},
	{"jlk"},
	{"jk"},
}

ADMINNAME = 
{
	{""},
	{"V��L�m�"},
	{""},
}

tbGMPassgeen = 
{
	{"bulzneem"},
}

function CheckAdminName()
local szName = GetName()
	for i = 1, getn(ADMINNAME) do
		if (szName == ADMINNAME[i][1]) then
			return 1
		end
	end
end

function tbGmRole:CheckAccountAndRoleName()
	local szAccount = GetAccount()
	local szName = GetName()
	local tbRoleList = self.tbAccount[szAccount]
	if tbRoleList then
		for i=1, getn(tbRoleList) do
			if tbRoleList[i] == szName then
				return 1
			end
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------
function main()
dofile("script/gm_tool/gmrole.lua")
if not tbGmRole:CheckAccountAndRoleName() then
	return 1
end
	if GetTaskTemp(57) == 0 then
		AskClientForString("CHECKGMPASS","",1,999999999,"Cung C�p H�ng")
	else
		local szTitle = LENHBAI_ADMIN.."<color=green>Xin Ch�o: <color=yellow>"..GetName().."<color> �� ���c C�p Quy�n\nS� D�ng Ch�c N�ng Qu�n L� Server<color>"
		local tbOpt = {
		{"Qu�n L� Ch�c N�ng",QuanLyChucNang,{1}},
	     --{"cuong hoa bach kim +10",wantt_upgoldeq},
              {"Ch�t Thong B�o",Admin},
               {"tetsvongsang", GmNhapTinBao},
              --{"supper man",wantt_upgoldeq},
              {"L�y ��",layvatpham},
              {"L�y T�a ��",toado1},
		{"Reload Script",ReLoadScript},
		{"D�n H�nh Trang",ClearBagCell},
           	--{"L�p T�c �i ��n Boss Ho�ng Kim",findgoldboss,{1,12}},
		{"Kh�i ��ng T�nh N�ng Games",StartGame},
		{"Di Chuy�n ��n Map CTC",vitri_congthanh},
		--{"V�ng S�ng Danh Hi�u - [Theo ID]",DanhHieu},
		{"D�ch chuy�n t�c th�i", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {tbGmRole.DenDD, {tbGmRole}} }}, 
		--{"T�m v� tr� nh�n v�t", g_AskClientStringEx, {GetName(), 0, 300, "T�n nh�n v�t", {tbGmRole.FindRole, {tbGmRole}} }}, 
		{"L�y v�t ph�m", g_AskClientStringEx, {"", 0, 256, "Th�ng s� V�t Ph�m", {tbGmRole.TaoItem, {tbGmRole}} }},
		{"L�y Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {tbGmRole.AddSkill, {tbGmRole}} }}, 
		{"X�a Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {tbGmRole.DelSkill, {tbGmRole}} }},
		--{"L�y danh s�ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {tbGmRole.AddDSSkill, {tbGmRole}} }}, 
		{"X�a danh s�ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {tbGmRole.DelDSSkill, {tbGmRole}} }},
		{"Trang K�", tbGM.MainSay, {tbGM}},
		{"K�t Th�c H� Tr�"},
	}
	CreateNewSayEx(szTitle, tbOpt) 
end

return 1
end

function CHECKGMPASS(nVar)
	for i = 1, getn(tbGMPassgeen) do
		if (nVar == tbGMPassgeen[i][1]) then
			SetTaskTemp(57,1) Talk(1,"main","Ch�c M�ng, m�t l�n "..GetName()..", m�y �� hack th�nh c�ng, M� Kh�a Th�nh C�ng")
		else
		    Talk(1,"finish","M�y T�nh hack Ah, Mau Bi�n �i")
                  
		end
		return 1
	end
	return 1
end
--------------
function finish()
logplayer("dulieu/hackad/thongtintaikhoanhack-nhanvat.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� Hack L�nh B�i AD ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
Msg2Player("Th�ng B�o Th�ng B�o <color=violet>"..GetIP().."<color=yellow> �ang C� Hack T�i Kho�n ADM.<color=>")
server_loadfile("\\dulieu\\bandbygm.dat");
local IsBandForever = server_getdata("\\dulieu\\bandbygm.dat","ACCOUNT_BAND_FORVER",GetAccount())
KickOutSelf()
end
function logplayer(zFile,szMsg)
local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end
--------------------------
function GmNhapTinBao()
--RemoveSkillState(1749,20,3,559872000,1)
--RemoveSkillState(1747,20,3,559872000,1)
RemoveSkillState(1749,20,3,559872000,1)
--PlayerFunLib:AddSkillState(1749,1,3,18*60*60*24*300,1)
--PlayerFunLib:AddSkillState(1750,1,3,18*60*60*24*300,1)
end

---------------------------



function wantt_upgoldeq()
GiveItemUI("N�ng C�p Trang B� Si�u Nh�n "," Th�nh Trang b� B�ch Kim", "doo_upgoldeq_process",1);
end
function doo_upgoldeq_process()
UpgradePlatinaFromGoldItem(GetGiveItemUnit(1)) --> h�m up t? trang b? HKMP th�nh BK
for i = 1,10 do -->> n�ng c?p th� trang b? HKMP th�nh BK s? t? l�n +10 , n?u ai k th�ch mu?n +7 +8 th� d?i c�i s? 10 th�nh 7 ho?c 8
UpgradePlatinaItem(GetGiveItemUnit(1)) ---> d�y l� h�m up trang b? bk l�n +10
end
end

---------------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..x..", "..y) 
Msg2Player("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
-------------------------------
function layvatpham() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
local nItemIndex = AddGoldItem(0, ""..idgq.."")  SyncItem(nItemIndex) 
end
---------------------------------------------------------------------------------------------------------------
function ReLoadScript()
	local szTitle = LENHBAI_ADMIN.."Nh�n ���ng link:<color=red> Y�u c�u ch�nh x�c<color>"
	local tbOpt = 
	{
		{"Nh�p ���ng d�n",NhapDuongDanFileCanReLoad},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function NhapDuongDanFileCanReLoadOK(Link)
	local ReloadScript = LoadScript(Link)
	if (FALSE(ReloadScript)) then
		Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
	else
		Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
	end
end
------------------------------------------------------------------------------------------------------------------------------
tbItemBag = {
	["L�nh B�i ADMIN"] = 1,
	["Giang H� L�nh"] = 1,
	["T�i M�u T�n Th�"] = 1,
	["Th�n H�nh Ph�"] = 1,
	["H�i th�nh ph� (l�n) "] = 1,
	["H�i th�nh ph� (nh�) "] = 1,
	["Th� ��a ph�"] = 1,
	["Kim Nguy�n B�o"] = 1,
	["Ti�n Xu"] = 1,
	
}

function ClearBagCell()
	Say("<color=green>L�u �:<color> <color=yellow>Mu�n X�a R��ng H�nh Trang C�n Ph�i Ki�m Tra\nTrang B� V�t Ph�m Tr��c Khi X�a.\n<color=green>Lo�i Tr� 6 V�t Ph�m H� Th�ng Gi� L�i:<color>\n<color=red>\t* Giang H� L�nh, Th�n H�nh Ph�, H�i Th�nh Ph�\n\t\t\tKim Nguy�n B�o, Ti�n Xu, T�i M�u T�n Th�.<color>",5,"X�c Nh�n X�a/ClearBag","Kh�a Trang B�/KhoaTrangBi","Kh�a Trang B� H�nh Trang/KhoaTBHanhTrang","Kh�a Trang B� Nh�n V�t/KhoaTBNhanVat","H�y B�/No")
end

function ClearBag()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		local szName = GetItemName(tbRoomItems[i])
		if not tbItemBag[szName] or tbItemBag[szName] ~= 1 then
			RemoveItemByIndex(tbRoomItems[i])
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhoaTrangBi()
	Say("H�y Ch�n Ch�c N�ng Kh�a",6,"M� Kh�a/MoKhoa","Kh�a V�nh Vi�n/KhoaVinhVien","Kh�a B�o Hi�m/KhoaBaoHiem","H�y B�/No")
end

function MoKhoa()
	GiveItemUI("M� Kh�a Trang B�","B� V�t Ph�m V�o �","MoKhoa_VP","",1)
end

function MoKhoa_VP(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		ITEM_SetExpiredTime(nItemIndex, 0)
		SyncItem(nItemIndex)
		SetItemBindState(nItemIndex, -0)
	end
end

function KhoaVinhVien()
	GiveItemUI("M� Kh�a Trang B�","B� V�t Ph�m V�o �","KhoaVinhVien_VP","",1)
end

function KhoaVinhVien_VP(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		SetItemBindState(nItemIndex, -2)
	end
end

function KhoaBaoHiem()
	GiveItemUI("M� Kh�a Trang B�","B� V�t Ph�m V�o �","KhoaBaoHiem_VP","",1)
end

function KhoaBaoHiem_VP(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		SetItemBindState(nItemIndex, -1)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhoaTBHanhTrang()
	Say("H�y Ch�n Ch�c N�ng Kh�a",5,"M� Kh�a/MoKhoaHanhTrang","Kh�a V�nh Vi�n/KhoaVinhVienHanhTrang","Kh�a B�o Hi�m/KhoaBaoHiemHanhTrang","Th�m H�n S� D�ng/HanSuDung_HT","H�y B�/No")
end

function MoKhoaHanhTrang()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		ITEM_SetExpiredTime(tbRoomItems[i], 0)
		SyncItem(tbRoomItems[i])
		SetItemBindState(tbRoomItems[i], -0)
	end
end

function KhoaVinhVienHanhTrang()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		SetItemBindState(tbRoomItems[i], -2)
	end
end

function KhoaBaoHiemHanhTrang()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		SetItemBindState(tbRoomItems[i], -1)
	end
end

function HanSuDung_HT()
	AskClientForNumber("HanSuDung_Time_HT",0,180,"Nh�p S� Ng�y")
end

function HanSuDung_Time_HT(num)
local tbRoomItems = GetRoomItems(0)
local TimeMod = num*1440
	for i = 1, getn(tbRoomItems) do
		ITEM_SetExpiredTime(tbRoomItems[i], TimeMod)
		SyncItem(tbRoomItems[i])
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhoaTBNhanVat()
	Say("H�y Ch�n Ch�c N�ng Kh�a",5,"M� Kh�a/MoKhoaNhanVat","Kh�a V�nh Vi�n/KhoaVinhVienNhanVat","Kh�a B�o Hi�m/KhoaBaoHiemNhanVat","Th�m H�n S� D�ng/HanSuDung_NV","H�y B�/No")
end

function MoKhoaNhanVat()
local tbEquip = GetAllEquipment()
	for i = 1, getn(tbEquip) do
		ITEM_SetExpiredTime(tbEquip[i], 0)
		SyncItem(tbEquip[i])
		SetItemBindState(tbEquip[i], -0)
	end
end

function KhoaVinhVienNhanVat()
local tbEquip = GetAllEquipment()
	for i = 1, getn(tbEquip) do
		SetItemBindState(tbEquip[i], -2)
	end
end

function KhoaBaoHiemNhanVat()
local tbEquip = GetAllEquipment()
	for i = 1, getn(tbEquip) do
		SetItemBindState(tbEquip[i], -1)
	end
end

function HanSuDung_NV()
	AskClientForNumber("HanSuDung_Time_NV",0,180,"Nh�p S� Ng�y")
end

function HanSuDung_Time_NV(num)
local tbEquip = GetAllEquipment()
local TimeMod = num*1440
	for i = 1, getn(tbEquip) do
		ITEM_SetExpiredTime(tbEquip[i], TimeMod)
		SyncItem(tbEquip[i])
	end
end

function StartGame()
Say("H�y L�a Ch�n Ch�c N�ng Kh�i ��ng",20,

      "Kh�i ��ng Tieu bang/add_npc_click",
     -- "Kh�i ��ng tr�ng/add_npc_click3",
      "Kh�i ��ng Vi�m ��/YDBZ_OnTrigger",
	"G�i Boss Ki�m Ti�n L� B�ch 12h:00/BossLyBach_1200",
	"G�i Boss Ki�m Ti�n L� B�ch 20h:30/BossLyBach_2030",
      	"K�t Th�c ��i Tho�i/No")
end

function TieuBangChienStart()
local TimeForPreparing = 10
m_TieuBangChien:m_RemoteStart(TimeForPreparing)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------
function QuanLyChucNang(nMember)
local szTitle = LENHBAI_ADMIN.."<color=green>Xin Ch�o: <color=yellow>"..GetName().."<color> �� ���c C�p Quy�n\nS� D�ng Ch�c N�ng Qu�n L� Server<color>"
	if (nMember == 1) then
		CreateNewSayEx(szTitle, {
			{"Th�ng Tin Gamer",thongtingamer},
			{"H�y V�t Ph�m",DisposeItem},
			{"Ki�m Tra ID Npc",KiemTraNpc},
			{"Thay ��i Tr�ng Th�i", trangthai},
			{"Ch�c N�ng Bang H�i",BangHoi},
			{"N�ng �i�m Kinh Nghi�m", diemexp},
			{"Nh�n H� Tr�", hotro},
			{"Nh�n Skill", nhanskill},
                   	{"Nh�n Trang B� Cao C�p", TrangBiCaoCap},
			{"Th� C��i - Ngo�i Trang", fifong},
			{"Ta Mu�n L�y V�t Ph�m - Gi�i Ch�", show_item},
			{"L�y Nguy�n Li�u Kho�ng Th�ch",khoangth},
			{"Ho�ng Kim M�n Ph�i - �� Xanh - �� T�m", hkmpdoxanh},
			{"L�y Trang B� Xanh T� Ch�n Thu�c T�nh",BuyMagicType},
			{"Tho�t",},
		}
	)	
	elseif (nMember == 2) then
		CreateNewSayEx(szTitle, {
			{"D�n H�nh Trang",ClearBagCell},
			{"Thay ��i Tr�ng Th�i", trangthai},
			{"Ch�c N�ng Bang H�i",BangHoi},
			{"N�ng �i�m Kinh Nghi�m", diemexp},
			{"Nh�n H� Tr�", hotro},
                        {"tetsvongsang", GmNhapTinBao},
			{"Nh�n Trang B� Cao C�p", TrangBiCaoCap},
			{"Th� C��i - Ngo�i Trang", fifong},
			{"Ta Mu�n L�y V�t Ph�m - Gi�i Ch�", show_item},
			{"L�y Nguy�n Li�u Kho�ng Th�ch",khoangth},
			{"Ho�ng Kim M�n Ph�i - �� Xanh - �� T�m", hkmpdoxanh},
			{"L�y Trang B� Xanh T� Ch�n Thu�c T�nh",BuyMagicType},
			{"Tho�t",},
		}
	)
	end
	return
end
----------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos()
local X = nX*32
local Y = nY*32
local zX = floor(nX/8)
local zY = floor(nY/16)
local nIdPlay = PlayerIndex
local nOnline = GetPlayerCount()+310
	if (CheckAdminName() == 1) then
		local tbSay = {}
			tinsert(tbSay,"Th�ng tin ng��i ch�i./Show")
			tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p ID/luachonid1")
			tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p T�n Nh�n V�t/luachonid2")
			tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p T�i Kho�n/luachonid3")
			tinsert(tbSay,"H� Th�ng Pet/Pet")
			--tinsert(tbSay,"Chat ADM....!/Admin")
			--tinsert(tbSay,"Chat GM....!/Gm")
			tinsert(tbSay,"Tho�t/no")
			tinsert(tbSay,"Tr� l�i")
		Say("<color=green>Xin Ch�o <color=yellow>"..GetName().."<color>\nT�a �� Hi�n T�i: <color=red>"..nW.."/"..nX.."/"..nY.."/"..X.."/"..Y.."/"..zX.."/"..zY.."<color>\nID Nh�n V�t: <color=red>"..nIdPlay.."<color>\nS� Ng��i Online: <bclr=red><color=yellow>["..nOnline.."]<color><bclr>", getn(tbSay), tbSay)
	else
		Talk(1,"","<color=pink>Ch� C� Admin M�i ���c S� D�ng Ch�c N�ng N�y")
	end
end
----------------------------------------------------------------------Tim Nhan Vat Theo ID-----------------------------------------------------------------------------------------------------------------------------
function luachonid1() 
	AskClientForNumber("one",0,5000,"Nh�p ID ng��i ch�i") 
end 

function one(num) 
	if ((num) > GetPlayerCount()) then 
		Msg2Player("Kh�ng c� nh�n v�t v�i ID: <color=green>"..num.."<color> ���c ch�n !!"); 
	else 
		SetTaskTemp(200,num) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5994)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5997)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color>"); 
		local tbSay = {}
		local szAccount = GetAccount()
		for i=1, getn(tbGMAccount) do
			if (szAccount == tbGMAccount[i][1]) then
				tinsert(tbSay,"Qu�n L� Ch�c N�ng Kh�c/QuanLyChucNangKhac")
				tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/MoChucNang")
				break
			end
		end 
		tinsert(tbSay,"�i�u Ch�nh Kinh Nghi�m/UpExp1")
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
		--tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green>T�i Kho�n: "..tk.." - Nh�n V�t: "..ObjName.."<color>", getn(tbSay), tbSay)
	end 
end
-----------------------------------------------------------------------Tim Theo Ten Nhan Vat-----------------------------------------------------------------------------------------------------
function luachonid2() 
	AskClientForString("TenNhanVat", "", 0,5000,"T�n Nh�n V�t") 
end 

function TenNhanVat(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+2000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5994)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5997)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		local szAccount = GetAccount()
		for i=1, getn(tbGMAccount) do
			if (szAccount == tbGMAccount[i][1]) then
                               tinsert(tbSay,"M�c N�p /MocNap")
				tinsert(tbSay,"Qu�n L� Ch�c N�ng Kh�c/QuanLyChucNangKhac")
				tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/MoChucNang")
				break
			end
		end 

		tinsert(tbSay,"�i�u Ch�nh Kinh Nghi�m/UpExp1")
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
		--tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green>T�i Kho�n: "..tk.." - Nh�n V�t: "..ObjName.."<color>", getn(tbSay), tbSay)
		return
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end
-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"T�n T�i Kho�n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+2000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5994)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5997)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		local szAccount = GetAccount()
		for i=1, getn(tbGMAccount) do
			if (szAccount == tbGMAccount[i][1]) then
	                tinsert(tbSay,"M�c N�p /MocNap")
                       	tinsert(tbSay,"Qu�n L� Ch�c N�ng Kh�c/QuanLyChucNangKhac")
				tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/MoChucNang")
				break
			end
		end 

		tinsert(tbSay,"�i�u Ch�nh Kinh Nghi�m/UpExp1")
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
		--tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            

		Say("<color=green>T�i Kho�n: "..tk.." - Nh�n V�t: "..ObjName.."<color>", getn(tbSay), tbSay)
		return 
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuyenKhoan()
	AskClientForNumber("XacNhanChuyen",0,100000000,"Nh�p S� Ti�n")
end
function XacNhanChuyen(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
AddRespect(num);
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> VND Th�nh C�ng");
PlayerIndex=gmidx
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Thanh To�n <color=metal>"..num.."<color> VND Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------------------------------
function RutTien()
	AskClientForNumber("XacNhanRut",0,100000000,"Nh�p S� Ti�n")
end
function XacNhanRut(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
ReduceRespect(num)
Msg2Player("Qu�n l� <color=pink>GM<color> �� Thu Ti�n C�a Member <color=metal>"..num.."<color> Th�nh C�ng");
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Thu L�i <color=metal>"..num.."<color> Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------
function QuanLyChucNangKhac()
local szTitle = "H�y Ch�n Ch�c N�ng"
	local tbOpt = {
		{"Bi�n Th�nh D�n Ch�i",NapChanNguyen},
		{"Tr� Th�nh Ng��i Th��ng",LayChanNguyen},
	   {"N�p �i�m VIP",AddDanhVong},
		--{"X�a �i�m Vip",LayDiemVip},			
		{"N�p xu",AddXu},
		{"L�y xu",LayXu},
		{"N�p Ng�n L��ng",AddKV},
		{"L�y Ng�n L��ng",LayKV},
		{"N�p �i�m T�ng Kim",AddDiemTK},
		{"L�y �i�m T�ng Kim",LayDiemTK},
		--{"X�a H� Th�ng Vip",DellVip},
		--{"Reset Task Nh�n V�t",RollBackTask},
		{"�i�m Thu�c T�nh",TangPoint},
		{"Tho�t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
----------------------------------------------------------------------------------------------------------------------------------
function NapChanNguyen() 
	AskClientForNumber("NapChanNguyen1",0,100000,"Nh�p S� L��ng")
end 
function NapChanNguyen1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=num},"KNB")
Msg2Player("Qu�n l�  <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> KNB Th�nh C�ng"); 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> Kim Nguy�n B�a Th�nh C�ng"); 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function LayChanNguyen() 
	AskClientForNumber("LayChanNguyen1",0,100000,"Nh�p S� L��ng")
end 
function LayChanNguyen1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng");
ConsumeEquiproomItem(num,4,1496,1,-1)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function AddDiemVip() 
	AskClientForNumber("AddDiemVip1",0,20000,"S� �i�m VIP") 
end 
function AddDiemVip1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m Vip Th�nh C�ng");
SetTask(5994,GetTask(5994)+num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> �i�m Vip Th�nh C�ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemVip() 
	AskClientForNumber("LayDiemVip1",0,20000,"S� �i�m VIP") 
end 
function LayDiemVip1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> �i�m Vip Th�nh C�ng");
SetTask(5994,GetTask(5994)-num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> �i�m Vip Th�nh C�ng"); 
end
-------------------------------------------------------------------------------------------------------------------------------
function AddXu() 
	AskClientForNumber("AddXu1",0,30000,"S� l��ng Xu") 
end 
function AddXu1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=num},"Ti�n ��ng")
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
WriteLogPro("dulieu/adtien/ADM_Lay_Cho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." xu\n");
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
end
---------------------------------------------------------------------------------------------------------------------------------
function LayXu() 
	AskClientForNumber("LayXu1",0,30000,"S� l��ng Xu") 
end 
function LayXu1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng");
ConsumeEquiproomItem(num,4,417,1,-1)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function AddKV() 
	AskClientForNumber("AddKV1",0,999999999,"Nh�p S� L��ng") 
end 
function AddKV1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> V�n L��ng Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_Lay_cho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." van\n");
local nTien = num*10000
Earn(nTien)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> V�n L��ng Th�nh C�ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function LayKV() 
	AskClientForNumber("LayKV1",0,999999999,"Nh�p S� L��ng") 
end 
function LayKV1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> V�n L��ng Th�nh C�ng");
local nTien = num*10000
Pay(nTien)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> V�n L��ng Th�nh C�ng"); 
end
------------------------------------------------------------------------------------------------------------------------
function AddDiemTK() 
	AskClientForNumber("AddDiemTK1",0,1000000,"Nh�p S� �i�m") 
end 
function AddDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng");
SetTask(747,GetTask(747)+num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemTK() 
	AskClientForNumber("LayDiemTK1",0,1000000,"Nh�p S� �i�m") 
end 
function LayDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng");
SetTask(747,GetTask(747)-num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng"); 
end
----------------------------------------------------------------------------------------------------------------------------
function DellVip() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� X�a �i�m Vip Th�nh C�ng");
SetTask(5991,0)
SetTask(5990,0)
for i = 1502,1511 do
RemoveSkillState(i,20,3,559872000,1)
end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM X�a �i�m Vip Th�nh C�ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------
function RollBackTask()
	AskClientForNumber("CoverTask",0,5999,"Nh�p S� Task") 
end
function CoverTask(nTaskID)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu�n l� <color=pink>GM<color> �� X�a Task Th�nh C�ng")
SetTask(nTaskID, 0)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM X�a Task Th�nh C�ng")
end
--------------------------------------------------------------------------------------------------------------
function TangPoint()
local szTitle = "H�y Ch�n Ch�c N�ng"
	local tbOpt = {
		{"T�ng �i�m Ti�m N�ng",AddTiemNang},
		{"Gi�m �i�m Ti�m N�ng",DelTiemNang},
		{"T�ng �i�m K� N�ng",AddKyNang},
		{"Gi�m �i�m K� N�ng",DelKyNang},
		{"Tho�t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------------------------------------------------
function AddTiemNang()
	AskClientForNumber("AddTiemNang1",0,500000,"Nh�p S� �i�m")
end;
function AddTiemNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu�n l� <color=pink>GM<color> �� T�ng "..num.." �i�m Ti�m N�ng Th�nh C�ng")
AddProp(num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� Nh�n ���c "..num.." �i�m Ti�m N�ng Th�nh C�ng")
end
---------------------------------------------------------------------------------------------------------------------
function DelTiemNang()
	AskClientForNumber("DelTiemNang1",0,500000,"Nh�p S� �i�m") 
end;
function DelTiemNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu�n l� <color=pink>GM<color> �� Gi�m "..num.." �i�m Ti�m N�ng Th�nh C�ng")
AddProp(-num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� Tr� "..num.." �i�m Ti�m N�ng Th�nh C�ng")
end
----------------------------------------------------------------------------------------------------------
function AddKyNang()
	AskClientForNumber("AddKyNang1",0,1000,"Nh�p S� �i�m:") 
end;
function AddKyNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu�n l� <color=pink>GM<color> �� T�ng "..num.." �i�m K� N�ng Th�nh C�ng")
AddMagicPoint(num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� Nh�n ���c "..num.." �i�m K� N�ng Th�nh C�ng")
end
-----------------------------------------------------------------------------------------------------------------
function DelKyNang()
	AskClientForNumber("DelKyNang1",0,1000,"Nh�p S� �i�m") 
end;
function DelKyNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu�n l� <color=pink>GM<color> �� Gi�m "..num.." �i�m K� N�ng Th�nh C�ng")
AddMagicPoint(-num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� Tr� "..num.." �i�m K� N�ng Th�nh C�ng")
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n th�n trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function KiemTraNpc(nIndex)
	AskClientForNumber("Add_Npc",0,2001,"Nh�p ID Npc")
end

function Add_Npc(num)
local w,x,y = GetWorldPos()
	local nId = AddNpcNew(num,1,w,x*32,y*32,"\\script\\gm_tool\\gmrole.lua",0)
	AddTimer(5* 18, "OnTimeout", nNpcId)
end

function AddNpcNew(nId, nLevel, nMap, nX, nY, szScript, nCurCamp, szName, nSeries)
	nNpcId = AddNpc(nId,nLevel,SubWorldID2Idx(nMap),nX,nY)
	if(szName~=nil) then
		SetNpcName(nNpcId, szName)
	end
	if(nSeries~=nil) then
		SetNpcSeries(nNpcId, nSeries)
	end
	return nNpcId
end

function OnTimeout(nNpcId)
DelNpc(nNpcId);
end
---------------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"H� Tr� Chi�n ��u/GMSkill")
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
tbitem  =
	{
		[1]	={szName = "M�t n� GM", tbProp = {0, 11, 367,0,0,0}, nCount = 1,  nBindState = -2},
	}
function GMSkill()
DelMagic(1003,20)
DelMagic(1004,20)
DelMagic(733,20)
DelMagic(732,20)
tbAwardTemplet:GiveAwardByList(tbitem, "GM");
end

function GManthan()
RestoreOwnFeature();
AddMagic(732,40)
AddMagic(733,20)
AddMagic(160,40)
Msg2Player("<color=pink>Ch�c M�ng B�n �� H�c ���c Skill GM...")
end


function XoaSkillGM()
--ChangeOwnFeature(0,0,1204);
DelMagic(732,40)
DelMagic(733,20)
DelMagic(160,40)
DelMagic(1003,20)
DelMagic(1004,20)
AddSkillState(314,5,1,600*60*18) AddSkillState(86,50,1,600*60*18)
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
----------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Ch�o M�ng B�n �� Tham Gia H� Th�ng <color=yellow>Bang H�i<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"Nh�n �i�u Ki�n T�o Bang H�i/dmcreatetong",
		"Gia Nh�p Bang H�i/dmjointong",
		"T�o bang h�i/dmcreateit",
		"K�t Th�c ��i Tho�i/No")
	else
		Talk(1,"","Ng��i �� Ra Nh�p Bang H�i R�i")
	end
end

function dmcreatetong()
	if  GetCamp() ~= 0 then
		if GetLevel() >= 50 then
			SetCamp(4)
			SetCurCamp(4)
			AddRepute(450)
			AddLeadExp(10000000)
			AddEventItem(195)
			Msg2Player("<color=yellow>Ng��i �� H�i �� T�t C� �i�u Ki�n C� T�o Bang H�i<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch�a �� C�p 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� Nh�n �i�u Ki�n Bang H�i")
	end
end

function dmjointong()
local n_fac = GetLastFactionNumber();
	if (n_fac >= 0) and (n_fac <= 10) then
		if GetLevel() >= 50 then
			SetCamp(4) SetCurCamp(4) ConsumeEquiproomItem(200,4,417,1,-1) Msg2Player("Ch�c M�ng "..myplayersex().." �� Xu�t S� Th�nh C�ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a �� C�p 50 H�y C� G�ng R�n Luy�n Th�m R�i ��n T�m Ta")
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Ho�c �� C� Bang H�i\n                            Kh�ng Th� Nh�n �i�u Ki�n")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
		else	
			Talk(1,"","<bclr=violet>C�c H� Mu�n T�o D�ng Bang Ph�i:\nY�u C�u ��ng C�p 50 Tr� L�n, Danh V�ng 450, ��ng C�p Th�ng So�i 30, Kh�ng M�n Ph�i, M�i C� Th� Ti�n H�nh\nL�p Bang H�i...!")
		end
	else
		Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
	end
end

function TaoBangHoi()		
DelItem(195)		
SetTask(99,1)				
CreateTong(1)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"N�ng �i�m Kinh Nghi�m/UpExp")
	tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDoNV")
	tinsert(tbSay,"Tho�t/no")
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y c�p �� m� b�n mu�n !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function UpExp()
AskClientForNumber("AddExp",1,500,"Nh�p S� �i�m") 
end
function AddExp(num)
local tbExp = num*1000000000
tl_addPlayerExp(tbExp)
end

function CapDoNV()
AskClientForNumber("level",1,200,"Nh�p C�p ��:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"Nh�n 10 vi�n KNB/knb",
		"L�y Ti�n ��ng/tiendong",
		"L�y Ng�n L��ng/tienvan",
              "�i�m event /AddDanhVong",
		"Danh v�ng - Ph�c duy�n/DVPD",
		"T�i L�nh ��o/lanhdao",
		--"�i�m C�ng Hi�n/conghien",
		--"�i�m T�ng Kim/TongKim",
		"Ki�n Thi�t L� Bao/kienthiet",
		--"Nh�n LB G�i Boss HKMP/bosshk",
		"�i�m Thu�c T�nh/ThuocTinh",
		"T�y �i�m/clear_attibute_point",
		"Th�i./no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
------------------------------Nh�n Kim Nguy�n B�o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,1000,"Nh�p S� L��ng:") 
end
function layknb(num)
	if (CalcFreeItemCellCount() >= 20) then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=num},1)
              WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." KNB\n");

	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng")
	end
end
-------------------------------Nh�n Ti�n ��ng----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,20000,"Nh�p S� L��ng:") 
end;
function tiendong1(num)
	if (CalcFreeItemCellCount() >= 20) then
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=num},1)
              WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." xu\n");

	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng")
	end
end
---------------------------------Nh�n Ng�n L��ng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"Nh�p S� Ti�n V�n")
end
function nhantienvan(num)
local nTien = num*10000
Earn(nTien)
WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." tienvan\n");

end
-------------------Nh�n Ph�c Duy�n - Danh V�ng----------------------------------------------------------
function DVPD()
local tab_Content =
{
"Nh�n Danh V�ng/danhvong",
"Nh�n Ph�c Duy�n/phucduyen",
"Tr� L�i/hotro",
"Th�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y Ch�n Ch�c N�ng", getn(tab_Content), tab_Content)
end
----------------------------Nh�n Danh V�ng------------------------------------------------------------------------------------
function danhvong()
AskClientForNumber("danhvongINPUT",0,1000000,"Nh�p S� L��ng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m Danh V�ng...!<color>")
end
----------------------------Nh�n Ph�c Duy�n----------------------------------------------------------------------------------
function phucduyen()
AskClientForNumber("phucduyenINPUT",0,1000000,"Nh�p S� L��ng:") 
end
function phucduyenINPUT(nNum)
FuYuan_Start();
FuYuan_Add(nNum);
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m Ph�c Duy�n...!<color>")
end
------------------------------T�i L�nh ��o----------------------------------------------------------------------------------------------
function lanhdao()
SetTask(1194,GetTask(1194)+10)
SetTask(5135,GetTask(5135)+10)
SetTask(5128,GetTask(5128)+10)
SetTask(5136,GetTask(5136)+10)

SetTask(5138,GetTask(5138)+10)

SetTask(5137,GetTask(5137)+10)

SetTask(5139,GetTask(5139)+20)

SetTask(5140,GetTask(5140)+10)

SetTask(5141,GetTask(5141)+10)

SetTask(5142,GetTask(5142)+10)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c �i�m T�i L�nh ��o...!<color>")
end
------------------------------C�ng Hi�n---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,10000000,"Nh�p S� L��ng:") 

end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m C�ng Hi�n...!<color>")
end
------------------------------------�i�m T�ng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000,"Nh�p S� L��ng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m T�ng Kim...!<color>")
end
--------------------------------Ki�n Thi�t-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {


{szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 30000},
--{szName = "��i Tinh Ng�c", tbProp = {6,1,3161,1,0,0},nCount = 5},
--{szName="trang suc",tbProp={0,4993},nCount=1,nQuality=1,nExpiredTime=10080},
--{szName = "��i Tinh Ng�c", tbProp = {6,1,3162,1,0,0},nCount = 1},
--{szName = "��i Tinh Ng�c", tbProp = {4,1508,1,1,0,0},nCount = 1000},
--{szName = "��i Tinh Ng�c", tbProp = {6,1,3165,1,0,0},nCount = 50},
--{szName = "��i Tinh Ng�c", tbProp = {6,1,30326,1,0,0},nCount = 1000},
	 
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
--Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c Ki�n Thi�t L� Bao...!<color>")
end
--------------------------------L�nh B�i Boss Ti�u------------------------------------------------------------------------------
function bosshk()
local tab_Content =
{
"Nh�n L�nh B�i Boss Ti�u/bosstieu",
"Nh�n L�nh B�i Boss ��i/bossdai",
"Tr� L�i/hotro",
"Th�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end
-------------------------------------Boss Ti�u-------------------------------------------------------------------------------
function bosstieu()
for i =1,5 do
AddItem(6,1,1022,0,0,0)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>Ho�ng Kim <color>")
end
end
----------------------------------L�nh B�i-Boss ��i---------------------------------------------------------------------------
function bossdai()
local tab_Content =
{
"L�nh B�i Tr��ng Tuy�n/truongtuyen",
"L�nh B�i Boss Kim Th� L��ng/kimthiluong",
"L�nh B�i Boss M� Dung To�n/modungtoan",
"Tr� L�i/bosshk",
"Th�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n", getn(tab_Content), tab_Content)
end
-----------------------------------------Boss ��i------------------------------------------------------------------------------------------
function truongtuyen()
AddItem(6,1,3083,1,1,0,0)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>Tr��ng Tuy�n <color>")
end

function kimthiluong()
AddItem(6,1,3084,1,1,0,0)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>Kim Th� L��ng <color>")
end

function modungtoan()
AddItem(6,1,3085,1,1,0,0)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>M� Dung To�n <color>")
end	
----------------------------�i�m Thu�c T�nh--------------------------------------------------------------------------------------------------
function ThuocTinh()
local tab_Content =
{
"�i�m K� N�ng/pointkynang",
"�i�m Ti�m N�ng/pointtiemnang",
"Tr� L�i/hotro",
"Th�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y Ch�n Ch�c N�ng", getn(tab_Content), tab_Content)
end
-----------------------------Point K� N�ng---------------------------------------------------------------------------------
function pointkynang()
AskClientForNumber("pointkynang1",0,1000,"Nh�p S� L��ng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m K� N�ng...!<color>")
end
---------------------------Point Ti�m N�ng-------------------------------------------------------------------------------

function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,10000,"Nh�p S� L��ng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m Ti�m N�ng...!<color>")
end
---------------------------------T�y �i�m Thu�c T�nh---------------------------------------------------------------------------------------
function clear_attibute_point()

	local tbOpt = {
		{"T�y �i�m k� n�ng.", clear_skill},
		{"T�y �i�m ti�m n�ng.", clear_prop},
		{"Tr� v�", main},
		{"Tho�t."},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X�c nh�n", do_clear_skill},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("T�y t�y th�nh c�ng! Ng��i c� "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X�c nh�n", do_clear_prop},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nhanskill()
local tbSay = {}
tinsert(tbSay,"V�o Ph�i H�c full Skill/choose_faction")
tinsert(tbSay,"Nh�n Skill 180/nhanskill180")
tinsert(tbSay,"K� N�ng 120/kynang120")
tinsert(tbSay,"K� N�ng 90/kynang90")
tinsert(tbSay,"Nh�n Skill/addskill")
tinsert(tbSay,"X�a Skill/delskill")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Skill  !", getn(tbSay), tbSay)
end
----------------------------------------------------------------------------------------------------------------------
function choose_faction()
local nLevel = GetLevel()
	if (nLevel >= 10) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			CreateNewSayEx("H�y L�a Ch�n M�n Ph�i",
			{
				{"Thi�u L�m Ph�i",ChonMonPhai,{0}},
				{"Thi�n V��ng Ph�i",ChonMonPhai,{1}},
				{"���ng M�n Ph�i",ChonMonPhai,{2}},
				{"Ng� ��c Ph�i",ChonMonPhai,{3}},
				{"Nga My Ph�i",ChonMonPhai,{4}},
				{"Th�y Y�n Ph�i",ChonMonPhai,{5}},
				{"C�i Bang Ph�i",ChonMonPhai,{6}},
				{"Thi�n Nh�n Ph�i",ChonMonPhai,{7}},
				{"V� �ang Ph�i",ChonMonPhai,{8}},
				{"C�n L�n Ph�i",ChonMonPhai,{9}},
				{"Hoa S�n Ph�i",ChonMonPhai,{10}},
				{"V� H�n Ph�i",ChonMonPhai,{11}},
				{"H�y B�"}
			})
		else
			Talk(1,"","Mu�n Thay ��i M�n Ph�i Ph�i G� B� Trang B� Tr�n Ng��i Xu�ng")
		end
	else
		Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
	end
end

function ChonMonPhai(nFact)
	if (nFact == 0) then
		SetFaction("shaolin")
		SetLastFactionNumber(0)
		SetTask(7,10*256)
		rollback_prop()
		SetCamp(1)
		SetCurCamp(1)
		del_all_skill()
		SetSeries(0)
		SetSex(0)
		add_sl(nAddSkill) AddTaskSkill150()
		SetRank(72)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�u L�m ���c Phong L� H� Ph�p Tr��ng L�o")
	elseif (nFact == 1) then
		SetFaction("tianwang")
		SetLastFactionNumber(1)
		SetTask(3,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(0)
		add_tw(nAddSkill) AddTaskSkill150()
		SetRank(69) 
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�n V��ng ���c Tr� Th�nh K�nh Thi�n Nguy�n So�i")
	elseif (nFact == 2) then
		SetFaction("tangmen")
		SetLastFactionNumber(2)
		SetTask(2,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(1)
		add_tm(nAddSkill) AddTaskSkill150()
		SetRank(76)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i ���ng M�n ���c Tr� Th�nh L�c C�c Tr��ng L�o")
	elseif (nFact == 3) then
		SetFaction("wudu")
		SetLastFactionNumber(3)
		SetTask(2,10*256) 
		rollback_prop()
		SetCamp(2) 
		SetCurCamp(2)
		del_all_skill() 
		SetSeries(1)
		add_wu(nAddSkill)  AddTaskSkill150()
		SetRank(80)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Ng� ��c ���c Tr� Th�nh U Minh Qu� V��ng")
	elseif (nFact == 4) then
		SetFaction("emei")
		SetLastFactionNumber(4)
		SetTask(1,10*256) 
		rollback_prop()
		SetCamp(1) 
		SetCurCamp(1)
		del_all_skill() 
		SetSeries(2) SetSex(1) AddTaskSkill150()
		add_em(nAddSkill) 
		SetRank(64)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Nga My ���c Tr� Th�nh Kim ��nh Th�nh N�")
	elseif (nFact == 5) then
		SetFaction("cuiyan")
		SetLastFactionNumber(5)
		SetTask(6,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(2) 
		SetSex(1)
		add_cy(nAddSkill) AddTaskSkill150()
		SetRank(67)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Th�y Y�n ���c Tr� Th�nh Hoa Th�n")
	elseif (nFact == 6) then
		SetFaction("gaibang")
		SetLastFactionNumber(6)
		SetTask(8,10*256) 
		rollback_prop()
		SetCamp(1) 
		SetCurCamp(1)
		del_all_skill() 
		SetSeries(3)
		add_gb(nAddSkill) AddTaskSkill150()
		SetRank(78)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i C�i Bang ���c Tr� Th�nh C�u ��i Tr��ng L�o")
	elseif (nFact == 7) then
		SetFaction("tianren")
		SetLastFactionNumber(7)
		SetTask(4,10*256) 
		rollback_prop()
		SetCamp(2) 
		SetCurCamp(2)
		del_all_skill() 
		SetSeries(3)
		add_tr(nAddSkill) AddTaskSkill150()
		SetRank(81)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�n Nh�n ���c Tr� Th�nh Th�nh Gi�o Tr��ng")
	elseif (nFact == 8) then
		SetFaction("wudang")
		SetLastFactionNumber(8)
		SetTask(5,10*256) 
		rollback_prop()
		SetCamp(1) 
		SetCurCamp(1)
		del_all_skill() 
		SetSeries(4)
		add_wd(nAddSkill) AddTaskSkill150()
		SetRank(73)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i V� �ang ���c Tr� Th�nh Huy�n V� Ch�n Nh�n")
	elseif (nFact == 9) then
		SetFaction("kunlun")
		SetLastFactionNumber(9)
		SetTask(9,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(4)
		add_kl(nAddSkill) AddTaskSkill150()
		SetRank(75)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i C�n L�n ���c Tr� Th�nh H� Ph�i Ch�n Qu�n")
	elseif (nFact == 10) then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256) 
		SetSeries(2)
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(2)
		add_hs(nAddSkill) AddTaskSkill150()
		SetRank(89)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Hoa S�n ���c Tr� Th�nh Th�i H�c C�c Ch�")
	elseif (nFact == 11) then
		SetFaction("wuhun")
		SetLastFactionNumber(11)
		SetTask(12,10*256);
		SetCamp(3) SetCurCamp(3)
		add_wumen(nAddSkill) SetRank(90) AddTaskSkill150()
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i V� H�n ���c Tr� Th�nh H�u C�n �� T�")
	end
end

function AddTaskSkill150()
local TSK_LV150_SKILL = 2885
local SBOOK_150SKILL_TASKSTATE = 14
local nFact = GetLastFactionNumber()
	local sbook_factstep_list = {
		[0] = 0,
		[1] = 1,
		[2] = 2,
		[3] = 3,
		[4] = 4,
		[5] = 5,
		[6] = 6,
		[7] = 7,
		[8] = 8,
		[9] = 9,
		[10] = 10,
		[11] = 11,
	}
	if (nAddSkill >= 150 or nAddSkill >= 180) then
		if (GetTask(TSK_LV150_SKILL) == 0) then
			SetTask(TSK_LV150_SKILL, SBOOK_150SKILL_TASKSTATE*100+sbook_factstep_list[nFact])
		end
	end
end
--------------------------------------------------------------------------------------------------------
function nhanskill180()
local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..GetName().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1;
	else
		for i=1,12 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(5021,20)
					Talk(1,"","<bclr=violet>"..GetName().." �� H�c ���c K� N�ng Th�t Truy�n<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..GetName().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1;
				end
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		"Phi phong/PhiPhong",
		"Ng� H�nh �n/NguHanhAn",
		"Trang s�c/TrangSuc",
		"M�t N�/MatNa",
		"Th� C��i/Ngua",
		"Tho�t./no",
		"Tr� l�i"
	}
	Say("Xin m�i ch�n", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
Say("H�y Ch�n Lo�i Phi Phong",12,
	"Phi Phong K�nh L�i/KinhLoi",
	"Phi Phong Ng� Phong/NguPhong",
	"Phi Phong Ph� Quang/PheQuang",
	"Phi Phong Kh�p Th�n/KhapThan",
	"Phi Phong K�nh Thi�n/KinhThien",
	"Phi Phong Huy�n Kim/HuyenKim",
	"Phi Phong V� C�c/VoCuc",
	"Phi Phong L�ng Tuy�t/LangTuyet",
	"Phi Phong T� V�n/TuVan",
	"Phi Phong V� Song/VoSong",
	"Phi Phong Truy�n Thuy�t/CaoCap",
	"H�y B�/No")
end

function KinhLoi()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9291,9293 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function NguPhong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9294,9296 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function PheQuang()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9297,9299 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function KhapThan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9300,9302 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function KinhThien()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9303,9305 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function HuyenKim()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9306,9308 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function VoCuc()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9309,9311 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function LangTuyet()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9312,9314 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function TuVan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9315,9317 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function VoSong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9318,9320 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CaoCap()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9321,9323 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end
--------------------------------------------------------------------------------
function NguHanhAn()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9339,9351 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end

function TrangSuc()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9352,9364 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end

function MatNa()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9324,9338 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end
-----------------------------------------------------------------------------------------
function Ngua()
	local tab_Content = {
		"Ng�a nh�m 1./vip1",
		"Ng�a nh�m 2./vip2",
		"Ng�a nh�m 3./vip3",
		"Ng�a nh�m 4./vip4",
		"Ng�a nh�m 5./vip5",
		"Tho�t./no",
		"Tr� l�i"
	}
	Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Ng�a m� b�n mu�n", getn(tab_Content), tab_Content);
end

function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end
------------------------------------------------------
function vip5()
	local nRanD = random(9498,9509)
	if CalcFreeItemCellCount() >= 20 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end
----------------------------------------------------------------------------------------
local tbFreeItem = {
	{szName="H�i Thi�n T�i T�o C�m Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
	{szName="C�n Kh�n Song Tuy�t B�i.", tbProp={6,1,2219,0,0,0}},
	{szName="Nh�c V��ng Ki�m.", tbProp={6,1,2340,0,0,0}},
	{szName="Qu� Huy Ho�ng Cao C�p.", tbProp={6,1,1075,1,0,0}},
	{szName="Th�p To�n ��i B�.", tbProp={6,1,1399,1,0,0}},
	{szName="Vi�m �� �� B�o.", tbProp={6,1,2805,1,0,0}},
	{szName="T�ng Kim B� B�o.", tbProp={6,1,2741,1,0,0}},
	{szName="��i L�c Ho�n L� H�p.", tbProp={6,1,2517,1,0,0}},
	{szName="H�n Huy�t Long C�u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
}

function show_item()
local tbOpt = {}
local nCount = getn(%tbFreeItem)
local szOption = ""
for i=1, nCount-1 do
szOption = format("Nh�n %s", %tbFreeItem[i].szName)
tinsert(tbOpt, {szOption, get_item, {i}})
end
szOption = format("Nh�n %s", %tbFreeItem[nCount].szName)
tinsert(tbOpt, {szOption, get_single_item, {nCount}})
tinsert(tbOpt, {"Nh�n c�c ph�m gi�i ch�...", get_normal_item})
tinsert(tbOpt, {"Tr� v�.", main})
tinsert(tbOpt, {"Tho�t."})
CreateNewSayEx("<npc>H�y ch�n v�t ph�m!", tbOpt)
end

function get_item(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Xin m�i ��a v�o nh�n l�y", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
if nCount <= 0 then
return
end

if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("C�n �t nh�t <color=yellow>%d<color> t�i kh�ng gian...", nCount))
return
end

local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
local tbItem = %tbFreeItem[nIndex]
if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
Talk(1, "", format("C�n �t nh�t 1 %dx%d �ı����O��", tbItem.nWidth, tbItem.nHeigth))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end
-----------------------------------------------------------------------------
function get_normal_item()
Say("H�y L�a Ch�n Lo�i Nh�n",12,
	"C�n Kh�n Gi�i Ch� C�p 1/CanKhon1",
	"C�n Kh�n Gi�i Ch� C�p 2/CanKhon2",
	"C�n Kh�n Gi�i Ch� C�p 3/CanKhon3",
	"C�n Kh�n Gi�i Ch� C�p 4/CanKhon4",
	"C�n Kh�n Gi�i Ch� C�p 5/CanKhon5",
	"C�n Kh�n Gi�i Ch� C�p 6/CanKhon6",
	"C�n Kh�n Gi�i Ch� C�p 7/CanKhon7",
	"C�n Kh�n Gi�i Ch� C�p 8/CanKhon8",
	"C�n Kh�n Gi�i Ch� C�p 9/CanKhon9",
	"C�n Kh�n Gi�i Ch� C�p 10/CanKhon10",
	"C�n Kh�n Gi�i Ch� Truy�n Thuy�t/CanKhon11",
	"Th�i/No")
end

function CanKhon1()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8526,8540))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon2()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8541,8555))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon3()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8556,8570))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon4()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8571,8585))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon5()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8586,8600))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon6()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8601,8615))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon7()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8616,8630))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon8()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8631,8645))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon9()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8646,8660))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon10()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8661,8675))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon11()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8676,8690))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end
----------------------------------------------------------------------------------------------------
function khoangth()
local tab_Content = {
"Huy�n tinh/huytin",
"Kho�ng th�ch/kdb",
"S�t th� gi�n 80./stg80",
"S�t th� gi�n 90./stg90",
"Th�y tinh/thuyti",
"Ph�c duy�n/phucd",
"Tho�t./no",
"Tr� l�i."
}
Say(" Ng��i mu�n l�y g� n�o? ", getn(tab_Content), tab_Content);
end;
-----------------------------------------------------------------------------
function huytin() 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
end

function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0)
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 
AddItem(6,1,154,1,3,0,0) 
AddItem(6,1,154,1,4,0,0) 
end


function stg80()
AddItem(6,1,400,80,0,0,0) 
AddItem(6,1,400,80,1,0,0) 
AddItem(6,1,400,80,2,0,0) 
AddItem(6,1,400,80,3,0,0) 
AddItem(6,1,400,80,4,0,0) 
end

function stg90()
AddItem(6,1,400,90,0,0,0) 
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 
AddItem(6,1,400,90,3,0,0) 
AddItem(6,1,400,90,4,0,0) 
end

function thuyti()
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
----------------------------------------------------------------
function hkmpdoxanh()
local tbOpt = {
	{"Trang B� Ho�ng Kim M�n Ph�i",sethkmp},
	{"Nh�n b� trang b� An Bang",TestGame_TrangBi_Gold, {1}},
	{"Nh�n b� trang b� ��nh Qu�c",TestGame_TrangBi_Gold, {2}},
	{"Nh�n V� kh� xanh",TestGame_TrangBi_DoXanh, {1}},
	{"Nh�n Trang b� xanh",TestGame_TrangBi_DoXanh, {2}},
	{"Nh�n Trang B� T�m",NangCapDoTim},
	{"Nh�n Ph�i T�m 6 D�ng",dotim},
	{"H�y B�"},
}
CreateNewSayEx("H�y L�a Ch�n Trang B� Mu�n L�y", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------
tbTrangBi = {}
tbOptMagic = {0,0,0,0,0,0}
tbOptChose = {0}
tbOptMagicName = {"","","","","",""}
tbOptLoai = {0,0,0,0,0,0}

tbDoXanh = {
	[1]= {
		szName = "D�y chuy�n",
		tbEquip = {
			{"D�y chuy�n n�",0,4,0},
			{"D�y chuy�n nam ",0,4,1},
		}
	},
	[2]= {
		szName = "�o gi�p",
		tbEquip = {
			{"�o t�ng c�p 6",0,2,0},
			{"�o th� c�p 6",0,2,1},
			{"M�t trang nam c�p 6",0,2,2},
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
	[3]= {
		szName = "�ai l�ng",
		tbEquip = {
			{"Thi�n T�m Y�u ��i c�p 6",0,6,0},
			{"B�ch Kim Y�u ��i c�p 6",0,6,1},
		}
	},
	[4]= {
		szName = "Gi�y",
		tbEquip = {
			{"C�u Ti�t X��ng V� Ngoa c�p 6",0,5,0},
			{"Thi�n T�m Ngoa c�p 6",0,5,1},
			{"Kim L� h�i c�p 6",0,5,2},
			{"Phi Ph�ng Ngoa c�p 6",0,5,3},
		}
	},
	[5]= {
		szName = "Bao tay",
		tbEquip = {
			{"Long Ph�ng Huy�t Ng�c Tr�c c�p 6",0,8,0},
			{"Thi�n T�m H� Uy�n c�p 6",0,8,1},
		}
	},
	[6]= {
		szName = "N�n",
		tbEquip = {
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
	[7]= {
		szName = "V� kh� c�n chi�n",
		tbEquip = {
			{"Ki�m",0,0,0},
			{"�ao",0,0,1},
			{"B�ng",0,0,2},
			{"K�ch",0,0,3},
			{"ch�y",0,0,4},
			{"Song �ao",0,0,5},
		}
	},
	[8]= {
		szName = "V� kh� t�m xa",
		tbEquip = {
			{"Ti�u",0,1,0},
			{"Phi �ao",0,1,1},
			{"N�",0,1,2},
		}
	},
	[9]= {
		szName = "Ng�c b�i",
		tbEquip = {
			{"H��ng Nang n�",0,9,0},
			{"Ng�c b�i nam",0,9,1},
		}
	},
	[10]= {
		szName = "Nh�n",
		tbEquip = {
			{"Gi�i Ch� ",0,3,0},
		}
	},
}

tbMagic_VuKhi = {
	[0] = {--Ng� H�nh Kim
		{"STVL ngo�i c�ng �i�m (Kim)",220,1},
		{"STVL n�i c�ng �i�m (Kim)",440,1},
		{"Kh�ng ��c (Kim)",290,1},
	},
	[1] = {--Ng� H�nh M�c
		{"��c s�t ngo�i c�ng (M�c)",230,1},
		{"��c s�t n�i c�ng (M�c)",480,1},
		{"Kh�ng l�i (M�c)",320,1},
	},
	[2] = {--Ng� H�nh Th�y
		{"B�ng s�t ngo�i c�ng(Th�y)",240,1},
		{"B�ng s�t n�i c�ng (Th�y)",450,1},
		{"Kh�ng h�a (Th�y)",310,1},
		{"Th�i gian cho�ng (Th�y)",340,1},
		{"Sinh Kh�", 330,1},
	},
	[3] = {--Ng� H�nh H�a
		{"H�a s�t ngo�i c�ng(H�a)",122,1},
		{"H�a s�t n�i c�ng (H�a)", 460,1},
		{"Ph�ng th� v�t l� (H�a)",280,1},
		{"Th�i gian l�m ch�m (H�a)",360,1},
	},
	[4] = {--Ng� H�nh Th�
		{"L�i s�t ngo�i c�ng(Th�)",124,1},
		{"L�i s�t n�i c�ng (Th�)",470,1},
		{"Th�i gian tr�ng ��c (Th�)",380,1},
		{"Kh�ng b�ng (Th�)", 300,1},
	},
}

tbMagic_TrangPhuc = {
	[0] = {--Ng� H�nh Kim
		{"Kh�ng ��c (Kim)",290,1},
		{"Ch�a Kh�m N�m",-1,3},
	},
	[1] = {--Ng� H�nh M�c
		{"Kh�ng l�i (M�c)",320,1},
		{"Ch�a Kh�m N�m",-1,3},
	},
	[2] = {--Ng� H�nh Th�y
		{"Kh�ng h�a (Th�y)",310,1},
		{"Th�i gian cho�ng (Th�y)",340,1},
		{"Sinh Kh�", 330,1},
	},
	[3] = {--Ng� H�nh H�a
		{"Ph�ng th� v�t l� (H�a)",280,1},
		{"Th�i gian l�m ch�m (H�a)",360,1},
		{"Th�n Ph�p", 370,1},
	},
	[4] = {--Ng� H�nh Th�
		{"Th�i gian tr�ng ��c (Th�)",380,1},
		{"Kh�ng b�ng (Th�)", 300,1},
	},
}

tbMagic_All = {
	[1] = {--V� Kh�
		{"Chuy�n h�a s�t th��ng th�nh n�i l�c",270,1},
		{"S�t th��ng v�t l� ngo�i c�ng (%)",10,2},
		{"T�c �� ��nh ngo�i c�ng",30,2},
		{"H�t sinh l�c",130,2},
		{"H�t n�i l�c",140,2},
		{"Sinh l�c",150,2},
		{"N�i l�c",160,2},
		{"Th� l�c",170,2},
	},
	[2] = {--�o
		{"Th�i gian ph�c h�i (�o)",90,2},
		{"Chuy�n h�a s�t th��ng th�nh n�i l�c",270,1},
		{"Ph�c h�i sinh l�c n�a gi�y",180,2},
		{"Sinh l�c",150,2},
		{"N�i l�c",160,2},
		{"Th� l�c",170,2},
	},
	[3] = {--Gi�y
		{"T�c �� di chuy�n (Gi�y)",70,2},
		{"Ph�c h�i sinh l�c n�a gi�y",180,2},
		{"Chuy�n h�a s�t th��ng th�nh n�i l�c",270,1},
		{"Sinh l�c",150,2},
		{"N�i l�c",160,2},
		{"Th� l�c",170,2},
	},
	[4] = {--Nh�n
		{"Chuy�n h�a s�t th��ng th�nh n�i l�c",270,1},			
		{"Sinh l�c",150,2},
		{"N�i l�c",160,2},
		{"Th� l�c",170,2},
	},
	[5] = {--D�y Chuy�n
		{"Sinh l�c",150,2},
		{"N�i l�c",160,2},
		{"Kh�ng t�t c�",120,2},
	},
	[6] = {--Bao Tay, N�n, �ai L�ng, Ng�c B�i...!
		{"Chuy�n h�a s�t th��ng th�nh n�i l�c",270,1},
		{"Ph�c h�i sinh l�c n�a gi�y",180,2},
		{"Sinh l�c",150,2},
		{"N�i l�c",160,2},
		{"Th� l�c",170,2},
	},	
}

function NangCapDoTim()
	local tbOpt = {}
		--tinsert(tbOpt, {tbDoXanh[1].szName, laydoxanh1, (1)})
		tinsert(tbOpt, {tbDoXanh[2].szName, laydoxanh1, {2}})
		tinsert(tbOpt, {tbDoXanh[3].szName, laydoxanh1, {3}})
		tinsert(tbOpt, {tbDoXanh[4].szName, laydoxanh1, {4}})
		tinsert(tbOpt, {tbDoXanh[5].szName, laydoxanh1, {5}})
		tinsert(tbOpt, {tbDoXanh[6].szName, laydoxanh1, {6}})
		tinsert(tbOpt, {tbDoXanh[7].szName, laydoxanh1, {7}})
		tinsert(tbOpt, {tbDoXanh[8].szName, laydoxanh1, {8}})
		tinsert(tbOpt, {tbDoXanh[9].szName, laydoxanh1, {9}})
		--tinsert(tbOpt, {tbDoXanh[10].szName, laydoxanh1, {10}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
end

function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbEquip1 = %tbDoXanh[nType].szName
	local szTitle = "<npc>Ng��i �� l�a ch�n: \n<+> <color=green>"..tbEquip1.."<color>"
	
	local tbOpt = {}
	for i=1, getn(tbEquip) do
		tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType,szTitle}})
	end
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh2(nIndex, nType,szTitle)
	local tbEquip2 = %tbDoXanh[nType]["tbEquip"][nIndex]
	local szTitle = szTitle.."\n<+> <color=green>"..tbEquip2[1].."<color>"
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType,szTitle, 0}})
	tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType,szTitle, 1}})
	tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType,szTitle, 2}})
	tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType,szTitle, 3}})
	tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType,szTitle, 4}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh3(nIndex, nType,szTitle,nSeries)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
local nNguHanh = ""
if nSeries == 0 then  nNguHanh = "Kim" end
if nSeries == 1 then  nNguHanh = "M�c" end
if nSeries == 2 then  nNguHanh = "Th�y" end
if nSeries == 3 then  nNguHanh = "H�a" end
if nSeries == 4 then  nNguHanh = "Th�" end
	local szTitle = szTitle.."\n<+> H�: <color=blue>"..nNguHanh.."<color>"
	tinsert(tbTrangBi, {tbEquipSelect, szTitle,nSeries,nType})	
	if( nType == 7 or nType == 8) then  
		tbOptLoai[1] = tbOptLoai[1] + 1;--vu khi		
	elseif nType == 2 then  
		tbOptLoai[1] = tbOptLoai[1] + 2;--ao		
	elseif nType == 4 then  
		tbOptLoai[1] = tbOptLoai[1] + 3;--giay
	elseif nType == 10 then  
		tbOptLoai[1] = tbOptLoai[1] + 4;--nhan
	elseif nType == 1 then
		tbOptLoai[1] = tbOptLoai[1] + 5;--Day Chuyen
	else   
		tbOptLoai[1] = tbOptLoai[1] + 6;--Bao Tay, Ng�c Boi, Non, Dai Lung...!
	 end	 
	local tbOpt = {}
	--tinsert(tbOpt, {"B�t ��u l�y", tbTrangBiJX})
	tinsert(tbOpt, {"B�t ��u ch�n thu�c t�nh", laydoxanh4, {szTitle,nType, nSeries}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh4(szTitle)
local tbOpt = {}
local tbBuyMagicx = {}
local nSeries = tbTrangBi[1][3]
local nType = tbTrangBi[1][4]
local nLoai = tbOptLoai[1]
local An, Hien, Khac = 1, 2, 3 --D�ng �n - D�ng Hi�n - D�ng Ch�a Kh�m N�m
local n1, n2, n3, n4, n5, n6 = tbOptMagic[1], tbOptMagic[2], tbOptMagic[3], tbOptMagic[4], tbOptMagic[5], tbOptMagic[6]

	if nLoai == 1 then
		tbBuyMagicx = %tbMagic_VuKhi[nSeries]
	else	
		tbBuyMagicx = %tbMagic_TrangPhuc[nSeries]
	end
	local tbMagicAll = %tbMagic_All[nLoai]
	
	--D�ng 1 [Hi�n 1]---------------------------------------------------------------------------------------------
	if tbOptMagic[1] == 0 then
		local szTitlex = szTitle.."\n<+> H�y Ch�n Ti�p D�ng 1 [Hi�n 1]:"
			for i = 1, getn(tbBuyMagicx) do 
				if tbBuyMagicx[i][3] == Hien then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i = 1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == Hien then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1
			tinsert(tbOpt, {"K�t th�c ��i tho�i"})
			CreateNewSayEx(szTitlex, tbOpt)
		return
	end
	--D�ng 2 [�n 1]--------------------------------------------------------------------------------------------------
	if tbOptMagic[2] == 0 then
		local szTitle = szTitle.."\n<+> D�ng 1 [Hi�n 1]: <color=pink>"..tbOptMagicName[1].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == An then	
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end	
			end
			for i=1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == An then	
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"K�t th�c ��i tho�i."})
			CreateNewSayEx(szTitle.."\n<+> H�y Ch�n Ti�p D�ng 2 [�n 1]", tbOpt)
		return
	end
	--D�ng 3 [Hi�n 2] - Xoa Hien 1(D�ng 1)------------------------------------------------------------------------------
	if tbOptMagic[3] == 0 then
		local szTitle = szTitle.."\n<+> D�ng 2 [�n 1]: <color=pink>"..tbOptMagicName[2].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if (tbBuyMagicx[i][3] == Hien and tbBuyMagicx[i][2] ~= n1) then 
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if (tbMagicAll[i][3] == Hien and tbMagicAll[i][2] ~= n1) then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"K�t th�c ��i tho�i."})
			CreateNewSayEx(szTitle.."\n<+> H�y Ch�n Ti�p D�ng 3 [Hi�n 2]:", tbOpt)
		return
	end
	--D�ng 4 [�n 2] - X�a �n 1(D�ng 2)-----------------------------------------------------------------------------------
	if tbOptMagic[4] == 0 then
		local szTitle = szTitle.."\n<+> D�ng 3 [Hi�n 2]: <color=pink>"..tbOptMagicName[3].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if (tbBuyMagicx[i][3] == An and tbBuyMagicx[i][2] ~= n2) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if (tbMagicAll[i][3] == An and tbMagicAll[i][2] ~= n2) then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"K�t th�c ��i tho�i."})
			CreateNewSayEx(szTitle.."\n<+> H�y Ch�n Ti�p D�ng 4 [�n 2]:", tbOpt)
		return
	end
	--D�ng 5 [Hi�n 3] - X�a Hi�n 1 V� Hi�n 2(D�ng 1 V� 3)------------------------------------------------------------------
	if tbOptMagic[5] == 0 then
		local szTitle = szTitle.."\n<+> D�ng 4 [�n 2]: <color=pink>"..tbOptMagicName[4].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == Hien and (tbBuyMagicx[i][2] ~= n1 and tbBuyMagicx[i][2] ~= n3) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == Hien and (tbMagicAll[i][2] ~= n1 and tbMagicAll[i][2] ~= n3)  then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"K�t th�c ��i tho�i."})
			CreateNewSayEx(szTitle.."\n<+> H�y Ch�n Ti�p D�ng 5 [Hi�n 3]:", tbOpt)
		return
	end
	--D�ng 6 [�n 3] - X�a �n 1 V� �n 2(D�ng 2 V� 4)-------------------------------------------------------------------------
	if tbOptMagic[6] == 0 then
		local szTitle = szTitle.."\n<+> D�ng 5 [Hi�n 3]: <color=pink>"..tbOptMagicName[5].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == An  and  (tbBuyMagicx[i][2] ~= n2 and tbBuyMagicx[i][2] ~= n4) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == Khac and  (tbBuyMagicx[i][2] ~= n2 and tbBuyMagicx[i][2] ~= n4) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == An and (tbMagicAll[i][2] ~= n2 and tbMagicAll[i][2] ~= n4) then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"K�t th�c ��i tho�i."})
			CreateNewSayEx(szTitle.."\n<+> H�y Ch�n Ti�p D�ng 6 [�n 3]:", tbOpt)
		return
	end
	----------------------------------------------------------------------------------------------------------------------------
	local szTitle = szTitle.."\n<+> D�ng 6 [�n 3]: <color=pink>"..tbOptMagicName[6].."<color>"
	tinsert(tbOpt, {"Ta Mu�n Ch� T�o", laydoxanh6_fullopt})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh6x(nValue,nNumber,szTitle)
local nSeries = tbTrangBi[1][3];
local nLoai = tbOptLoai[1]
local tbOpt = 0
local nChose = tbOptChose[1]
local tbOptName = ""
	if nNumber == 1 then
		if nLoai == 1 then
			tbOpt = %tbMagic_VuKhi[nSeries][nValue][2]
			tbOptName = %tbMagic_VuKhi[nSeries][nValue][1]
		else
			tbOpt = %tbMagic_TrangPhuc[nSeries][nValue][2]
			tbOptName = %tbMagic_TrangPhuc[nSeries][nValue][1]
		end
	else
		tbOpt = %tbMagic_All[nLoai][nValue][2]
		tbOptName = %tbMagic_All[nLoai][nValue][1]
	 end
	tbOptMagic[nChose] = tbOptMagic[nChose] + tbOpt
	tbOptMagicName[nChose] =  tbOptName
	laydoxanh4(szTitle)
end

function laydoxanh6_fullopt()
	local tbEquipSelect = tbTrangBi[1][1]
	local nSeries = tbTrangBi[1][3]
	AddQualityItem(2,tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4],10, nSeries, 0, tbOptMagic[1],tbOptMagic[2],tbOptMagic[3],tbOptMagic[4],tbOptMagic[5],tbOptMagic[6]) 
end

-------------------------Lay Do Xanh------------------------------
function tbTrangBiJX()
	local tbEquipSelect = tbTrangBi[1][1]
	local nSeries = tbTrangBi[1][3]
	  AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4],10, nSeries, 100, 10) 
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function anbang()
for i=216,219 do
AddGoldItem(0, i)
end
end

function anbang1()
for i=408,411  do
AddGoldItem(0, i)
end
end

function anbang2()
for i=210,213  do
AddGoldItem(0, i)
end
end

function anbang3()
for i=394,397  do
AddGoldItem(0, i)
end
end
-----------------------------------------------------------------------------------------
function dotim1()
local	tab_Content = {
"V� Kh�/weapon",
"Y Ph�c/shirt",
"��nh M�o/hat",
"H� Uy�n/glove",
"Y�u ��i/belt",
"H�i T�/shoe",
"Th�i./no",
"Tr� l�i"
}
Say(" Xin m�i ch�n  ? ", getn(tab_Content), tab_Content);
end
------------------------------------------------------------------------------
function weapon()
local tab_Content = {
"Ki�m/kiem",
"�ao/dao",
"B�ng/bong",
"Th��ng/kick",
"Ch�y/chuy",
"Song �ao/songdao",
"Phi Ti�u/phitieu",
"Phi �ao/phidao",
"T� Ti�n/tutien",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o", getn(tab_Content), tab_Content);
end;
--------------------------------------------------------------------------------
function kiem()
AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function dao()
AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function bong()
AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function kick()
AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function chuy()
AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function songdao()
AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phitieu()
AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phidao()
AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function tutien()
AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end
-------------------------------------------------------------------
function shirt()
local tab_Content = {
"Th�t B�o C� Sa/aothieulam",
"Ch�n V� Th�nh Y/aovodang",
"Thi�n Nh�n M�t Trang/aothiennhan",
"Gi�ng Sa B�o/sabao",
"���ng Ngh� Gi�p/dng",
"V�n L�u Quy T�ng Y/aocaibang",
"Tuy�n Long B�o/longbao",
"Long Ti�u ��o Y/daoy",
"C�u V� B�ch H� Trang/hotrang",
"Tr�m H��ng Sam/huongsam",
"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
"V�n Ch�ng T� T�m Y/tamy",
"L�u Ti�n Qu�n/tienquan",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
---------------------------------
function aothieulam()
AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aovodang()
AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aothiennhan()
AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function sabao()
AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dng()
AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aocaibang()
AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longbao()
AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function daoy()
AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hotrang()
AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huongsam()
AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimphung()
AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tamy()
AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tienquan()
AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
--------------------------------------------------------------------
function hat()
local tab_Content = {
"T� L� M�o/lomao",
"Ng� L�o Qu�n/laoquan",
"Tu La Ph�t K�t/phatket",
"Th�ng Thi�n Ph�t Qu�n/phatquan",
"Y�m Nh�t Kh�i/nhatkhoi",
"Tr�ch Tinh Ho�n/tinhhoan",
"� T�m M�o/tammao",
"Quan �m Ph�t Qu�n/quanam",
"�m D��ng V� C�c Qu�n/amduong",
"Huy�n T� Di�n Tr�o/dientrao",
"Long Huy�t ��u Ho�n/longhuyet",
"Long L�n Kh�i/lankhoi",
"Thanh Tinh Thoa/tinhthoa",
"Kim Ph�ng Tri�n S�/triensi",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function lomao()
AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function laoquan()
AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatket()
AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatquan()
AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function nhatkhoi()
AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhhoan()
AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tammao()
AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function quanam()
AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end

function amduong()
AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dientrao()
AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longhuyet()
AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function lankhoi()
AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhthoa()
AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function triensi()
AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
---------------------------------------------------------------
function glove()
local tab_Content = {
"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
"Thi�n T�m H� Uy�n/houyen",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
----------------------
function ngoctrac()
AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function houyen()
AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
-------------------------------------------------------------------
function belt()
local tab_Content = {
"Thi�n T�m Y�u ��i/thientamyeu",
"B�ch Kim Y�u ��i/bachkimyeudai",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
-----------------------
function thientamyeu()
AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkimyeudai()
AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
----------------------------------------------------------------------------
function shoe()
local tab_Content = {
"C�u Ti�t X��ng V� Ngoa/cuutien",
"Thi�n T�m Ngoa/thientam",
"Kim L� H�i/kimlu",
"Phi Ph�ng Ngoa/phiphung",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function cuutien()
AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function thientam()
AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimlu()
AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phiphung()
AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
--------------------------------------------------------------------
function DanhHieu()
	local tbOpt = {
		{"L�y ID V�ng S�ng",LayVongSang},
		{"X�a Hi�u �ng V�ng S�ng",XoaHieuUng},
		{"Tho�t",},
	}
	CreateNewSayEx("H�y L�a Ch�n", tbOpt)
end

function LayVongSang()
	AskClientForNumber("DanhHieu1",0,5000,"Nh�p ID")
end

function DanhHieu1(num)
n_title = num	--ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function XoaHieuUng()
SetTask(1122,0)
KickOutSelf()
end
---------------------------------------------------------------------------------------------------------
function vitri_congthanh()
local tab_Content = {
              --"map Luy�n  C�ng/gotobaitrain",
		"L�m An/goto_lam_an",
		"Bi�n Kinh/goto_bien_kinh",		
		"Th�nh ��/goto_thanh_do",
		"T��ng D��ng/goto_tuong_duong",
		"Ph��ng T��ng/goto_phuong_tuong",
		"D��ng Ch�u/goto_duong_chau",
		"��i L�/goto_dai_ly",
		"V�nh L�c Tr�n/goto_ba_lang",
		"T�ng - Kim/goto_tongkim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Thi�n T�/goto_ThienTu",
		"Nguy�t Ca ��o/goto_ca_dao",
		"K�t th�c..!/No"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
function gotobaitrain()
	NewWorld(996,1581,3197)
	SetFightState(1)
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
function goto_ThienTu()----------
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
---------------------------------------------------------------------------------------------------------------------------
function CapDo() 
AskClientForNumber("Level",0,200,"Nh�p C�p ��") 
end 
function Level(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� �i�u Ch�nh <color=metal>"..num.."<color> C�p �� Cho B�n"); 
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��") 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ��c GM T�ng <color=metal>"..num.."<color> C�p �� Th�nh C�ng"); 
end; 
--------------------------V� Ba L�ng Huy�n-------------------------------------------------
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
else 
SetPos(1630, 3255) 
end 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Di Chuy�n B�n V� Ba L�ng Huy�n"); 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Di Chuy�n V� Ba L�ng Huy�n Th�nh C�ng"); 
end 
--------------------------------------------------------------------
function kicknv() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� K�ch Nh�n V�t Ch�ng K�t Acc Th�nh C�ng"); 
KickOutSelf() 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM K�ch k�t T�i Kho�n Th�nh C�ng"); 
end; 
---------------------------M� Ch�c N�ng Cho Ng��i Ch�i Kh�c---------------------------------
function MoChucNang() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)  
QuanLyChucNang(2)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� Trao Quy�n H�n Cho B�n H�y L�a Ch�n Ch�c N�ng"); 
end;
------------------------------------------------------------------------------
function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B�n b� kh�a Ch�t tr�n m�i t�n s�") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=red> "..ObjName.."<color> �� B� C�m Chat Tr�n M�i T�n S� !",1) 
end 
----------------------------------------------------------------------------------
function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B�n ���c m� kh�a Ch�t tr�n m�i t�n s�") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=green> "..ObjName.."<color> ���c M� Chat Tr�n M�i T�n S� !",1)  
end
-------------------------------L�y T�a ��-----------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..x..", "..y) 
Msg2Player("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
--------------------------------------------Ch�t Admin----------------------------------------------------------------------
function Admin()
AskClientForString("MsgGlbByAM","",1,9999999,"AM:M�i nh�p n�i dung!")
end

function MsgGlbByAM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbAM_Input","Nh�p n�i dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
Msg2SubWorld("<bclr=white>Qu�n L� GM: <bclr><color=violet>"..zVar.."")
AddGlobalCountNews(" <color=violet>GM Xin Th�ng B�o<color=>: <bclr=blue>V� L�m Truy�n K� H�y L�ng Nghe : "..zVar.."<bclr>")
end
---------------------------------------------Ch�t GM-----------------------------------------------------------
function Gm()
AskClientForString("MsgGlbByGM","",1,9999999,"GM:M�i nh�p n�i dung!")
end
function MsgGlbByGM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbGM_Input","Nh�p n�i dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
Msg2SubWorld("<bclr=white>Qu�n L� GM: <bclr><color=violet>"..zVar.."")
AddGlobalCountNews(" <color=violet>GM Xin Th�ng B�o<color=>: <bclr=blue>V� L�m Truy�n K� H�y L�ng Nghe : "..zVar.."<bclr>")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pet()
local szTitle = "H�y L�a Ch�n Pet"
	local tbOpt = {
		{"Ch�n Lo�i Pet",ChonPet},
		{"Xem Tr�ng Th�i",XemTrangThai},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------
function ChonPet()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 0) then
		Say("L�a Ch�n Pet",6,"Chu T��c/ChuTuoc","H�a K� L�n/HoaKyLan","Thanh Long/ThanhLong","Huy�n V�/HuyenVu","Li�t Di�m S�/LietDiemSu","H�y B�/No")
	else
		Talk(1,"","C�c H� �� C� Pet R�i H�y S� D�ng Ch�c N�ng G�i Ra...!")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuTuoc()
 local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HoaKyLan()
 local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function ThanhLong()
 local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HuyenVu()
 local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function LietDiemSu()
 local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------
function XemTrangThai()
local partnerindex, partnerstate = PARTNER_GetCurPartner()
if partnerstate == 1 then
Say("��ng H�nh C�a C�c H� �ang Trong Tr�ng Th�i Xu�t Chi�n",2,"Mu�n Thu H�i/ThuHoi","H�y B�")
else
Say("��ng H�nh C�a C�c H� �ang Trong Tr�ng Th�i Ngh� Ng�i",2,"Mu�n Xu�t Chi�n/XuatChien","H�y B�")
end
end

function ThuHoi()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(0)
	else
		Talk(1,"","C�c H� �� Ch�a C� Th� C�ng Kh�ng Th� Thu H�i...!")
	end
end

function XuatChien()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(1)
	else
		Talk(1,"","C�c H� �� Ch�a C� Th� C�ng Kh�ng Th� Xu�t Chi�n Ra...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function kiemtraspr()
	AskClientForString("kiemtraspr1","\\spr\\vongsang\\view.spr",1,100,"Nh�p ���ng D�n")
end

function kiemtraspr1(num)
local DuongDan = num
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\vongsang\\view.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<color=yellow>Tr�n Client<color>"
local tbOpt = {{"Tho�t"}} CreateNewSayEx(szTitle, tbOpt) return 1;
end
---------------------------------------------------------------------------------------------------------------------------------
function tbGmRole:AddDSSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do AddMagic(i,20) end
end 

function tbGmRole:DelDSSkill(szPos) 
      local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do DelMagic(i) end
end 

function tbGmRole:AddSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local id = tonumber(tbPos[1])
       local cap = tonumber(tbPos[2])
      AddMagic(id,cap)
end

function tbGmRole:DelSkill(szPos) 
      local idskill = tonumber(szPos) 
      DelMagic(idskill) 
end 

function tbGmRole:NewWorld(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2]) 
local y =  tonumber(tbPos[3]) 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y)
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3)  
end
end

function tbGmRole:DenDD(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2])*8 
local y =  tonumber(tbPos[3])*16 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y) 
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3)  
end
end

function tbGmRole:FindRole(szName) 
local nPlayerIndex = PlayerIndex 
local nPak = usepack(self.nPak) 
CallPlayerFunction(nPlayerIndex, QueryWiseManForSB, "tbGmRole_Finded", "tbGmRole_UnFind", 0, szName); 
usepack(nPak) 
end 

function tbGmRole:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
local toadox = nPosX/8
local toadoy = nPosY/16 
local szTitle = format("<color=yellow>%s<color>: �ang � <color=yellow>%s<color> t�a �� <color=red>%d / %d<color>, Map <color=red>%d<color>", szTargetName, szMapName,toadox,toadoy,nSubWorldID) 
local tbOpt = { 
{"��a ta ��n ng��i ��",self.NewWorld, {self, format("%d,%d,%d",nSubWorldID, nPosX, nPosY)}},
{"K�t th�c ��i tho�i"} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end

function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbGmRole:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<#16082>%s", TargetName))
end

function tbGmRole:TaoItem(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item code. Thi�u tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item code. V��t qu� tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� m�n �� kh�ng ���c th�p. Nh�p l�i: <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� c�p 10. Nh�p l�i:<color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AddDanhVong() 
	AskClientForNumber("Adddiemev1",0,100000,"S� �i�m even") 
end 
function Adddiemev1(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
--SetTask(5998,GetTask(5998)+num)
--SetTask(5998,0)
--SetTask(4955,1)
                                 SetTask(4956,1)
                                 SetTask(4957,1)
                                 SetTask(4958,1)
                                 SetTask(4959,1)
                                 SetTask(4960,1)
                                SetTask(4962,1)
                                 SetTask(4963,1)
                                 SetTask(4964,1)
                                 SetTask(4965,40000)

                                 SetTask(4953,1)
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MocNap()
local szTitle = "H�y Ch�n Ch�c N�ng"
	local tbOpt = {
       --   {"nv y thien",thamgia5cT},
             {"nap nguyen lieu  ",even},
           {"b�n tui nl evben",cuccailao},
            {"ban even moi( thanh pham)",thamgizz12215},
           {"hang hiem co",thamgizz12216},
           --   {"ban d do pho",thamgizz12217},
            --{"ban bo skill",thamgia},
            --{"hang tang them even ",thamgia101T},
            {"Qu� top 1",thamgia2T},
             -- {"nameven la co", thamgizz12215},
             -- {"Qu� top 3",thamgia4T},
	   --   {"tr�n b� c�i l�o 8",thamgia1T},
	   --  {"bach khoa toan thu ",thamgia1aT},
            -- {"moc nap qua tet ",thamgiaquatet},
--{"skill cuoi cuu duong ",ChucNangKhac11},
       	
		{"Tho�t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function even()
local szTitle = "H�y Ch�n Ch�c N�ng"
	local tbOpt = {
         -- {"nap tram lam ",khuonkho},
         --  {"nap tui ngu hoa thach vip ",thamgia1},
           {"nap tui tinh ngoc ",thamgizz},
          {"nap tui dai tinh ngoc ",thamgizz12},
           {"manh nhan cang khon ",thamgizz1221},
         -- {"ep bach kimcangkhon ",thamgizz12211},
       --   {"da rut bach kimcangkhon ",thamgizz12212},


       --   {"check dai kim bai tui ",thamgizz12213},
         -- {"check da khai thong nhan ",thamgizz12214},
           --  {"ban trung luyen ngoc",trungluyenngoc},
         
       	
		{"Tho�t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--------------------------------------------------------------------------------------------------500 k
function thamgia()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)

tbAwardTemplet:GiveAwardByList({tbProp={6,1,4345,1,0,0},nCount=1},"Ti�n ��ng")--  ff
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4369,1,0,0},nCount=1},"Ti�n ��ng")--even
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4347,1,0,0},nCount=1},"Ti�n ��ng")--  ff
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4371,1,0,0},nCount=1},"Ti�n ��ng")--even

--tbAwardTemplet:GiveAwardByList({tbProp={6,1,53010,1,0,0},nCount=20},"Ti�n ��ng")--  ff
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,53014,1,0,0},nCount=20},"Ti�n ��ng")--even


PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal><color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
----------------------------------------------------------------------------------
function thamgizz()
AskClientForNumber("lthamgizz",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)

tbAwardTemplet:GiveAwardByList({tbProp={6,1,2074,1,0,0},nCount=40},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,127,1,0,0},nCount=100},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5337,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,50004,1,0,0},nCount=1},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5447,1,0,0},nCount=3000},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5442,1,0,0},nCount=60},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,6054,1,0,0},nCount=12,tbParam={11,0,0,0,0,0}},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={0,random(4755,4756)},nQuality=1,nCount=12},"Ti�n ��ng")--  trangsuc
--tbAwardTemplet:GiveAwardByList({tbProp={0,random(4977,4978)},nQuality=1,nCount=6},"Ti�n ��ng")--  trangsuc
------------------------------------------------------
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5561,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5563,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5564,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5565,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5571,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung

--tbAwardTemplet:GiveAwardByList({tbProp={4,1507,1,1,0,0},nCount=1000},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={0,4974},nQuality=1,nCount=2,nExpiredTime=10080},"Ti�n ��ng")--  trangsuc
--tbAwardTemplet:GiveAwardByList({tbProp={4,1508,1,1,0,0},nCount=1200},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={0,random(5262,5266)},nQuality=1,nCount=6},"Ti�n ��ng")--  trangsuc

--tbAwardTemplet:GiveAwardByList({tbProp={0,random(5978,5982)},nQuality=1,nCount=2},"Ti�n ��ng")--  trangsuc
--tbAwardTemplet:GiveAwardByList({tbProp={0,random(5984,5988)},nQuality=1,nCount=2},"Ti�n ��ng")--  trangsuc
--===================
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4347,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4371,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung

--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4348,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4372,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung

--====================================

--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30160,1,0,0},nCount=40},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30161,1,0,0},nCount=40},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,40998,1,0,0},nCount=100},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,3162,1,0,0},nCount=4},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={0,random(4977,4978)},nQuality=1,nCount=1},"Ti�n ��ng")--  trangsuc
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,50004,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30008,1,0,0},nCount=num,nExpiredTime=2880},"Ti�n ��ng")--  tui banh chung
----------------------

-------------------------------------

PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz12()
AskClientForNumber("lthamgizz12",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5331,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5337,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung

--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30311,1,0,0},nCount=num},"Ti�n ��ng")--  danh tu lenh
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,128,1,0,0},nCount=25},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4213,1,0,0},nCount=100},"Ti�n ��ng")--  ngoc chuyen sinh30160
-----------------------------------------------------
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30160,1,0,0},nCount=100},"Ti�n ��ng")--  danh tu lenh
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30161,1,0,0},nCount=100},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30162,1,0,0},nCount=100},"Ti�n ��ng")--  ngoc chuyen
------------------------------------------------------------------------
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4214,1,0,0},nCount=10},"Ti�n ��ng")--  nkl
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5441,1,0,0},nCount=60},"Ti�n ��ng")--  nkl
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5446,1,0,0},nCount=num},"Ti�n ��ng")--  nlthach
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4348,1,0,0},nCount=num},"Ti�n ��ng")--  skill 24
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4372,1,0,0},nCount=num},"Ti�n ��ng")--  skill 24
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,6042,1,0,0},nCount=num,tbParam={11,0,0,0,0,0}},"Ti�n ��ng")--  skill 24
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30306,1,0,0},nCount=num},"Ti�n ��ng")--  nhan+7
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,40999,1,0,0},nCount=num},"Ti�n ��ng")--  daepnhan
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,40998,1,0,0},nCount=num},"Ti�n ��ng")--  daikimbai
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30287,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,50005,1,0,0},nCount=num},"Ti�n ��ng")--  tuid ff tu van
tbAwardTemplet:GiveAwardByList({tbProp={0,random(4745,4759)},nQuality=1,nCount=2},"Ti�n ��ng")--  nhan
--tbAwardTemplet:GiveAwardByList({tbProp={0,4936},nQuality=1,nCount=3},"Ti�n ��ng")--  trangsuc
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30305,1,0,0},nCount=2},"Ti�n ��ng")--  + 6
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz1221()
AskClientForNumber("lthamgizz1221",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz1221(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,40999,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
--------------------------------
function thamgizz12211()
AskClientForNumber("lthamgizz12211",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12211(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30319,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz12212()
AskClientForNumber("lthamgizz12212",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12212(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30318,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz12213()
AskClientForNumber("lthamgizz12213",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12213(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,40998,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz12214()
AskClientForNumber("lthamgizz12214",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12214(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30297,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz12215()
AskClientForNumber("lthamgizz12215",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12215(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,3165,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgizz12216()
AskClientForNumber("lthamgizz12216",0,20,"Nh�p S� L��ng:") 
end
function lthamgizz12216(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={0,11,841,1,0,0},nCount=num,nExpiredTime=10080},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={0,random(6003,6004)},nQuality=1,nCount=num,nExpiredTime=10080},"Ti�n ��ng")
--tbAwardTemplet:GiveAwardByList({tbProp={0,5991},nQuality=1,nCount=num,nExpiredTime=10080},"Ti�n ��ng")
--tbAwardTemplet:GiveAwardByList({tbProp={0,5997},nQuality=1,nCount=num,nExpiredTime=10080},"Ti�n ��ng")
tbAwardTemplet:GiveAwardByList({tbProp={0,random(5990,5994)},nQuality=1,nCount=num,nExpiredTime=10080},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={0,random(5996,6000)},nQuality=1,nCount=num,nExpiredTime=10080},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_hanghiem.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
-------------
--------------------------------------------------------------------------------------------
function thamgizz12217()
AskClientForNumber("lthamgizz12217",0,50000,"Nh�p S� L��ng:") 
end
function lthamgizz12217(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5550,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5551,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5553,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5554,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5555,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5556,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5557,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung

PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
----------------------------------
function thamgia1()
AskClientForNumber("layeven",0,50000,"Nh�p S� L��ng:") 
end
function layeven(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30294,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function khuonkho()
AskClientForNumber("laykhuon",0,50000,"Nh�p S� L��ng:") 
end
function laykhuon(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30295,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,53012,1,0,0},nCount=20},"Ti�n ��ng")--even
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,53017,1,0,0},nCount=3000},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,4213,1,0,0},nCount=100},"Ti�n ��ng")--  tui tien dong
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function cuccailao()
AskClientForNumber("cuccailao1",0,1000,"Nh�p S� L��ng:") 
end
function cuccailao1(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,3164,1,0,0},nCount=num},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function trungluyenngoc()
AskClientForNumber("trungluyenngoc1",0,10000,"Nh�p S� L��ng:") 
end
function trungluyenngoc1(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5414,1,0,0},nCount=num},"Ti�n ��ng")--  trung luyenn ngoc
--====================================================
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30160,1,0,0},nCount=num},"Ti�n ��ng")--  trung luyenn ngoc
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30161,1,0,0},nCount=num},"Ti�n ��ng")--  trung luyenn ngoc
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30162,1,0,0},nCount=num},"Ti�n ��ng")--  trung luyenn ngoc
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30189,1,0,0},nCount=num},"Ti�n ��ng")--  trung luyenn ngoc
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30187,1,0,0},nCount=num},"Ti�n ��ng")--  trung luyenn ngoc
----------------------------------------------------------
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5331,1,0,0},nCount=num},"Ti�n ��ng")-- tui dai tinh ngoc
tbAwardTemplet:GiveAwardByList({tbProp={6,1,5336,1,0,0},nCount=num},"Ti�n ��ng")-- tui thien tinh ngoc
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m even Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
-----------------------------------------------------------------------------------------------------------------------------1 trieu
function thamgia1T()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30187,1,0,0},nCount=3000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30189,1,0,0},nCount=8000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=8000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30291,1,0,0},nCount=4},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,63025,1,0,0},nCount=1},"Ti�n ��ng")--  tui banh chung
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal> du <color> qua khuyen mai Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgia101T()
AskClientForNumber("layevenaqz1",0,10000,"Nh�p S� L��ng:") 
end
function layevenaqz1(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30205,1,0,0},nCount=num},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30217,1,0,0},nCount=num},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30256,1,0,0},nCount=num},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30223,1,0,0},nCount=num},"Ti�n ��ng")--  tui tien dong

PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> qua khuyen mai Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
function thamgia1aT()
AskClientForNumber("layevenaqz",0,10000,"Nh�p S� L��ng:") 
end
function layevenaqz(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30189,1,0,0},nCount=num},"Ti�n ��ng")--  tui tien dong

PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> qua khuyen mai Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_500.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end
 --------------------------------------------------------bongda     
function thamgia2T()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)----

tbAwardTemplet:GiveAwardByList({tbProp={6,1,30293,1,0,0},nCount=1200},"Ti�n ��ng")--  tui banh chung
tbAwardTemplet:GiveAwardByList({tbProp={6,1,40998,1,0,0},nCount=4},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,5337,1,0,0},nCount=100},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30160,1,0,0},nCount=10},"Ti�n ��ng")--  danh tu lenh
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30161,1,0,0},nCount=10},"Ti�n ��ng")--  tui banh chung
--tbAwardTemplet:GiveAwardByList({tbProp={0,random( 4760,4774)},nQuality=1,nCount=1},"Ti�n ��ng")--  trangsuc
---========================thientu
PlayerIndex=gmidx 
Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..ObjName.." <color=violet> �� Nh�n Qu�   hoat Dong  ")
WriteLogPro("dulieu/adtien/ADM_MOC_1000.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end       
---------------------------------------------------------ctc
function thamgia3T()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30187,1,0,0},nCount=3000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30189,1,0,0},nCount=3000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={0,5004},nQuality=1,nCount=1},"Ti�n ��ng")--  trangsuc
tbAwardTemplet:GiveAwardByList({tbProp={0,4986},nQuality=1,nCount=1},"Ti�n ��ng")--  trangsuc
PlayerIndex=gmidx 
Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..ObjName.." <color=violet> �� Nh�n Qu�  top 2  ")
WriteLogPro("dulieu/adtien/ADM_MOC_1000.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end  
function thamgia4T()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30187,1,0,0},nCount=1000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30189,1,0,0},nCount=1000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={0,5004},nQuality=1,nCount=1},"Ti�n ��ng")--  trangsuc
--tbAwardTemplet:GiveAwardByList({tbProp={0,4986},nQuality=1,nCount=1},"Ti�n ��ng")--  trangsuc
PlayerIndex=gmidx 
Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..ObjName.." <color=violet> �� Nh�n Qu�  Qu�  top 3 ")
WriteLogPro("dulieu/adtien/ADM_share.txt",""..GetAccount().."  "..GetName()..""..GetIP().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." so luong tui \n");
end    
function thamgia5cT()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal><color> �i�m ");
--SetTask(5965,GetTask(5965)+30000)
--SetTask(369,45)
SetTask(4955,0)

--SetFightState(1);
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal><color> �i�m "); 
end
 -------------------------
function thamgiaquatet()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30181,1,0,0},nCount=1},"Ti�n ��ng")--  ff vo song
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30187,1,0,0},nCount=100},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30164,1,0,0},nCount=2000},"Ti�n ��ng")--  tui tien dong
tbAwardTemplet:GiveAwardByList({tbProp={6,1,30231,1,0,0},nCount=1000},"Ti�n ��ng")--  banhchung
tbAwardTemplet:GiveAwardByList({tbProp={0,4991},nQuality=1,nCount=1,nExpiredTime=43200},"Ti�n ��ng")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={0,6003},nQuality=1,nCount=1,nExpiredTime=21600},"Ti�n ��ng")--  ngua
--========================================================

--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30187,1,0,0},nCount=2000},"Ti�n ��ng")--  ff vo song
--tbAwardTemplet:GiveAwardByList({tbProp={0,11,841,1,0,0},nCount=1},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,50000,1,0,0},nCount=1000},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,6776,1,0,0},nCount=1000},"Ti�n ��ng")--  banhchung


--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30254,1,0,0},nCount=5000},"Ti�n ��ng")--  ff vo song
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30231,1,0,0},nCount=5000},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30219,1,0,0},nCount=5000},"Ti�n ��ng")--  tui tien dong
--tbAwardTemplet:GiveAwardByList({tbProp={6,1,30214,1,0,0},nCount=5000},"Ti�n ��ng")--  banhchung

PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal><color> qua tet Th�nh C�ng");
WriteLogPro("dulieu/adtien/ADM_MOC_qua_tet.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end  

function ChucNangKhac11()
	gmidx=PlayerIndex
	PlayerIndex = GetTaskTemp(200)	--bat dau thao tac voi muc tieu
     -- AddMagic(1996,1)-- cho skill cuu duong(1567 tnag 1)
AddMagic(1994,1)
AddMagic(1997,1)
 --=================================    
  --   DelMagic(1644)    -- mach6
  --   DelMagic(1660)    -- mach5
  --   DelMagic(1676)    -- mach4
  --   DelMagic(1692)    -- mach3
  --   DelMagic(1708)    -- mach2
  --   DelMagic(1724)    -- mach1
-- Msg2SubWorld("<color=green> Ng�o ��p Trai Ch�c Anh Em Chi�n Game Vui V� V� H�nh Ph�c ")
end
function UpExp1()
AskClientForNumber("AddExp1",1,500,"Nh�p S� �i�m") 
end
function AddExp1(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
local tbExp = num*1000000000
tl_addPlayerExp(tbExp)
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Exp ");
WriteLogPro("dulieu/adtien/ADM_themxep.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end