------------------------***Create*By*Heart*Doldly***----------------------------------
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\gm_tool\\dohoangkimmax.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\gm_tool\\baotri.lua")
Include("\\script\\lib\\log.lua")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}; DIEMVIP = 5995
--------------------------------------------------------------------------------------
LENHBAI_ADMIN = "<#><link=image[0]:\\spr\\item\\sprADMIN.spr>L�nh B�i GM: <link>"
------------------------------------------------------------------------------------------------------------------------------------------
local tbGMAccount = {"admin1", "t","","","","",""} TENADMIN ={{"VoLamHoangKim",99},{"S",99},{"Ar",99},{"Bl",99},{"",99},{"",99},{"",99},{"",99}}
-------------------------------------------------------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
---------------------------------------------------------------------------------
function main()
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			local szTitle = LENHBAI_ADMIN.."Xin Ch�o:<color=violet> "..GetName().." ...!\n<color><color=green>�� Tham Gia T�i Th� Gi�i V� L�m Truy�n K�...!\n                                                     <bclr=violet> * * * * * * * * V� * L�m * Truy�n * K� * * * * * * * * \n* * * * * * * * * * <bclr>Ch�c<color=yellow> "..myplayersex().." <color>Ch�i Games Vui V�...!<color>\n<color=blue>Ch�c N�ng Qu�n L� <color=yellow>SERVER<color> Ch� C� <color=pink>ADMIN<color> M�i ���c S� D�ng<color>"
			local tbOpt = {
					{"Qu�n L� Ch�c N�ng GM", ChucNang_Admin},
					{"K�t Th�c ��i Tho�i",},
				}
				CreateNewSayEx(szTitle, tbOpt)
			return 1;
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNang_Admin()
player = GetPlayerCount()
if AdminGame() == 1 then
CheckPassGM()
else
Say("<bclr=violet>Ch� C�<bclr> <color=pink>Ban Qu�n Tr� <color><bclr=violet>M�i C� Quy�n S� D�ng Ch�c N�ng N�y<bclr>")
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CheckPassGM()
	if GetTaskTemp(57) == 1 then
		ChucNangGM()
	else
		AskClientForString("MOCHUCNANGGM","",1,999999999,"Nh�p M�t Kh�u")
	end
end
function MOCHUCNANGGM(nVar)
	for i = 1,getn(CheckPassGMA) do
		if nVar == CheckPassGMA[i][1] then
			Talk(1,"ChucNangGM","<bclr=violet>Ch�c M�ng "..myplayersex().." �� M� ���c Ch�c N�ng Th�nh C�ng") SetTaskTemp(57,1)
		else
			Talk(1,"finish","<bclr=violet>"..myplayersex().." Nh�p M�t Kh�u Kh�ng Ch�nh X�c<bclr>")
		end
	end
end
function finish()
KickOutSelf()
end
------------------------------------------------------------------------------------------------------------------------------------------------
function ChucNangGM()
	local tbOpt = {
		{"H�y V�t Ph�m",DisposeItem},
		{"L�y V�t Ph�m.....", layvatpham},
		{"Ch�c N�ng Bang H�i",BangHoi},
		{"Qu�n L� Gamer", thongtingamer},
		{"N�ng �i�m Kinh Nghi�m", diemexp},
		{"Nh�n �i�m - Ti�n - V�ng S�ng", hotro},
		{"Nh�n Trang B�", dohoangkim},
		{"Nh�n Trang B� Maxop", dohoangkimmax},
		{"Th� C��i - Ngo�i Trang", fifong},
		{"Ta Mu�n L�y V�t Ph�m - Gi�i Ch�", show_item},
		{"Thay ��i Tr�ng Th�i", trangthai},
		{"Nh�n Skill", nhanskill},
		{"Trang B� H�c Th�n - Long T��ng",TrangBiHiem},
		{"L�y Nguy�n Li�u Kho�ng Th�ch",khoangth},
		{"Ho�ng Kim M�n Ph�i - �� Xanh - �� T�m", hkmpdoxanh},
		{"Tho�t",},
	}
	CreateNewSayEx("<bclr=violet>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng C�n H� Tr�<bclr>", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function layvatpham()
	local tbOpt = {
		{"L�y V�t Ph�m Theo..ID..", TaoItem},
		{"L�y V�t Ph�m Goldequip..", Glodequip},
	}
	CreateNewSayEx("<npc>Xin M�i Ch�n Ch�c N�ng", tbOpt)
end

function TaoItem() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Item Code:",{TaoItemID}) 
end

function TaoItemID(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item Code. Thi�u tr��ng y�u c�u <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item Code. Qu� nhi�u tr��ng d� li�u <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� man �� kh�ng ���c th�p qu� <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� ��n c�p 10. Hi�n t�i nh�p v�o <color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
function Glodequip() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
AddGoldItem(0, ""..idgq.."")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos() 
local nIdPlay = PlayerIndex 
local tbSay = {}
	tinsert(tbSay,"ADM Move=>CTC.../vitri_congthanh")
	tinsert(tbSay,"Th�ng tin ng��i ch�i./Show")
	tinsert(tbSay,"Thao t�c l�n ng��i ch�i./luachonid1")
	tinsert(tbSay,"H� Th�ng Pet/Pet")
	tinsert(tbSay,"L�y T�a ��/toado1")
	tinsert(tbSay,"Th�ng B�o B�o Tr�/OnTimer")
	tinsert(tbSay,"L�y ID V�ng S�ng/kiemtra_spr")
	tinsert(tbSay,"Chat ADM....!/Admin")
	tinsert(tbSay,"Chat GM....!/Gm")
	tinsert(tbSay,"Tho�t/no")
	tinsert(tbSay,"Tr� l�i")
	Say("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nS� SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m�nh.\nHi�n �ang C�:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng��i ch�i trong game.\n", getn(tbSay), tbSay)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
		"Tong -Kim/goto_tongkim",
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Show() 
AskClientForNumber("ShowRoom",1,1180,"Nh�p S� ID Ng��i Ch�i") 
end 

function ShowRoom(num) 
local nNum = num + 100
	for i = num,nNum do 
		gmidx = PlayerIndex
		PlayerIndex = i
		TarName = GetName()
		nExp = GetExp()
		nCurLevel = 0
		if (TarName > "") then
		nCurLevel = GetLevel()
		end
		PlayerIndex = gmidx 
		Msg2Player("S� ID: <color=green>"..i.."<color> - T�n: <color=green>"..TarName.."<color> - C�p: <color=green>"..nCurLevel.."<color> - Kinh Nghi�m: <color=green>"..nExp.."<color>"); 
	end 
end
-----------------------------------------------------------------Ch�n Ch�c N�ng GM------------------------------------------------------------------
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
		local tbSay =  {}
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"N�p Kim Nguy�n B�o/NapThe")
		tinsert(tbSay,"Chuy�n Kho�n Kim Nguy�n B�o/ChuyenKhoan")
		--tinsert(tbSay,"H� Tr� KNB/AddKNB")
		tinsert(tbSay,"H� tr� ti�n ��ng./bufskillsgm1")
		tinsert(tbSay,"H� tr� ti�n v�n./themtienvan1")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
		tinsert(tbSay,"Add �i�m cho ng��i ch�i../buffpoint")
		tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/MoChucNang")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
		tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            
		Say("T�i Kho�n:<color=green> "..tk.."<color> - Nh�n V�t   :<color=green> "..ObjName.."<color>\nC�p ��   :<color=green> "..lev.."<color>           - Kinh nghi�m: <color=green>"..xp.."%<color>\nM�u      :<color=green> "..cam.."<color>             - M�n ph�i   :<color=green>"..fac.."<color>\nTi�n V�n :<color=green> "..(cash/10000).." v�n<color> - Ti�n ��ng  :<color=green>"..lif.." ��ng<color>\nV� tr�   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
		Msg2Player("Ng��i ch�i <color=cyan>"..xinxi) 
	end 
end
---------------------------L�t Ti�n V�n--------------------------------------------
function themtienvan1() 
AskClientForNumber("themtienvan",0,999999999,"Nh�p s� ti�n c�n chuy�n") 
end 
function themtienvan(num) 
nNum = num/999999999 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..nNum.."<color> V�n L��ng Th�nh C�ng")
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Trao T�ng <color=metal>"..nNum.."<color> V�n L��ng Th�nh C�ng"); 
end
-----------------------L�y KNB---------------------------------------
function AddKNB() 
AskClientForNumber("buffknbgm",0,40,"S� L��ng KNB") 
end 
function buffknbgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng");
AddExtPoint(1,num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Trao T�ng <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng"); 
end;
---------------------------L�y Ti�n ��ng---------------------------------------------------
function bufskillsgm1() 
AskClientForNumber("buffskillsgm",0,500,"s� l��ng ti�n ��ng") 
end 
function buffskillsgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
AddStackItem(num,4,417,1,1,0,0) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Trao T�ng <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
end;
----------------------------T�ng �i�m------------------------------------------------------------
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� T�ng �i�m Theo Y�u C�u"); 

PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM T�ng �i�m Theo Y�u C�u Th�nh C�ng"); 
end; 
-----------------------------------------------------------------------------------------
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
ChucNangGM()
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
Msg2SubWorld("<bclr=white>Qu�n L� GM: <bclr><color=yellow>"..zVar.."")
AddGlobalCountNews(" GM Xin Th�ng B�o ��n C�c Nh�n S� <bclr=blue>V� L�m Truy�n K� H�y L�ng Nghe Th�ng B�o V�i N�i Dung Nh� Sau: "..zVar.."<bclr>")
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
Msg2SubWorld("<bclr=white>Qu�n L� GM: <bclr><color=yellow>"..zVar.."")
AddGlobalCountNews(" GM Xin Th�ng B�o ��n C�c Nh�n S� <bclr=blue>V� L�m Truy�n K� H�y L�ng Nghe Th�ng B�o V�i N�i Dung Nh� Sau: "..zVar.."<bclr>")
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
function kiemtra_spr()
	local tbOpt = {
		{"V�ng S�ng Chuy�n Sinh 1",VSCS1},
		{"V�ng S�ng Chuy�n Sinh 2",VSCS2},
		{"V�ng S�ng Chuy�n Sinh 3",VSCS3},
		{"V�ng S�ng Chuy�n Sinh 4",VSCS4},
		{"V�ng S�ng Chuy�n Sinh 5",VSCS5},
		{"V�ng S�ng C�i L�o Ho�n ��ng",VSCLHD},
		{"Th�i",No},
	}
	CreateNewSayEx("<bclr=violet>L�a Ch�n V�ng S�ng Mu�n Ki�m Tra<bclr>", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VSCS1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip359.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 1 ID<bclr> <bclr=red>359<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip361.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 2 ID<bclr> <bclr=red>361<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS3()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip366.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 3 ID<bclr> <bclr=red>366<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip365.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 4 ID<bclr> <bclr=red>365<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCS5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip360.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 5 ID<bclr> <bclr=red>360<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function VSCLHD()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip364.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Th� Nh�t ID<bclr> <bclr=red>364<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function IDVS4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip362.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Th� Nh�t ID<bclr> <bclr=red>362<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end

function IDVS5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip363.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Th� Nh�t ID<bclr> <bclr=red>363<bclr>"
	local tbOpt = {				
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDoNV")
	tinsert(tbSay,"N�ng Kinh Nghi�m/kinhnghiem")
	tinsert(tbSay,"N�ng C�p 200/Up_Level")
	tinsert(tbSay,"Tho�t/no")
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y c�p �� m� b�n mu�n !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function CapDoNV()
AskClientForNumber("level",1,200,"Nh�p C�p ��:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
end

function kinhnghiem()
AskClientForNumber("kinhnghiem1",0,9999999999999999,"Nh�p EXP") 
end
function kinhnghiem1(nNum)
tl_addPlayerExp(nNum)
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> kinh nghi�m.") 
end

function Up_Level()
local nCureLevel = GetLevel()
	if (nCureLevel < 200) then
		Say("C�c H� C� Mu�n N�ng C�p Kh�ng",2,"Ta Mu�n N�ng C�p/Up_Level_200","H�y B�/No")
	else
		Say("�� ��t C�p 200",2,"Ti�p T�c Chuy�n Sinh/TrungSinh","H�y B�/No")
	end
end
function Up_Level_200()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
ST_LevelUp(nAddLevel)
Up_Level()
end

function TrungSinh()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 5) then
		ST_DoTransLife()
	else
		Talk(1,"","<color=yellow>Gi�i H�n Tr�ng Sinh 6 V�n Ch�a M�")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"V�ng s�ng danh hi�u/DanhHieu",
		"Nh�n 10 vi�n KNB/knb",
		"L�y Ti�n ��ng/tiendong",
		"L�y Ng�n L��ng/tienvan",
		"Danh v�ng - Ph�c duy�n/DVPD",
		"T�i L�nh ��o/lanhdao",
		"�i�m C�ng Hi�n/conghien",
		"�i�m T�ng Kim/TongKim",
		"Ki�n Thi�t L� Bao/kienthiet",
		"Nh�n LB G�i Boss HKMP/bosshk",
		"�i�m Thu�c T�nh/ThuocTinh",
		"T�y �i�m/clear_attibute_point",
		"Th�i./no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end
------------------------------Nh�n Kim Nguy�n B�o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,60,"Nh�p S� L��ng:") 
end
function layknb(slknb)
for i=1, slknb do
AddEventItem(343)
end
Msg2Player("B�n nh�n ���c <color=yellow>"..slknb.." <color>KNB.")
end
-------------------------------Nh�n Ti�n ��ng----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,2000,"Nh�p S� L��ng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
Msg2Player("B�n nh�n ���c <color=yellow>"..sltiendong.." <color>ti�n ��ng.")
end
---------------------------------Nh�n Ng�n L��ng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"Xin Nh�p S� L��ng")
end
function nhantienvan(num)
Earn(num,999999999)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=metal>"..num.."<color> Ng�n L��ng Th�nh C�ng");
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
AskClientForNumber("tailanhdao",0,20000000,"Nh�p S� L��ng:") 
end;
function tailanhdao(nNum)
AddLeadExp(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m T�i L�nh ��o...!<color>")
end
------------------------------C�ng Hi�n---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,100000000,"Nh�p S� L��ng:") 
end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m C�ng Hi�n...!<color>")
end
------------------------------------�i�m T�ng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000000,"Nh�p S� L��ng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m T�ng Kim...!<color>")
end
--------------------------------Ki�n Thi�t-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {
	{szName="Ki�n Thi�t L� Bao", tbProp={6,1,30217,1,0,0},nCount = 10},
	{szName="Chi�n B� L� Bao", tbProp={6,1,30219,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c Ki�n Thi�t L� Bao...!<color>")
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
AskClientForNumber("pointkynang1",0,100000,"Nh�p S� L��ng:") 
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
----------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		"Phi phong/PhiPhong",
		"Ng� H�nh �n/NguHanhAn",
		"Trang s�c/TrangSuc",
		"L�y Ng�a/Ngua",
		"Tho�t./no",
		"Tr� l�i"
	}
	Say("Xin m�i ch�n", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
for i = 3905,3939 do
AddGoldItem(0,i)
end
end

function NguHanhAn()
for i=3950,3962 do
AddGoldItem(0, i)
end
end

function TrangSuc()
for i=3988,3997 do
AddGoldItem(0, i)
end
end

function Ngua()
local tab_Content =
{
"Ng�a nh�m 1./vip1",
"Ng�a nh�m 2./vip2",
"Ng�a nh�m 3./vip3",
"Ng�a nh�m 4./vip4",
"Ng�a nh�m 5./vip5",
"S� t� ho�ng kim./sutu",
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

function vip5()
for i=3963,3966 do
AddGoldItem(0, i)
end
end

function sutu()
AddGoldItem(0, 3967)
end
------------------------------------------------------------------------------------------------
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
local i = random(1,15)
	if (i == 1) then
		AddGoldItem(0,4120)
	elseif (i == 2) then
		AddGoldItem(0,4121)
	elseif (i == 3) then
		AddGoldItem(0,4122)
	elseif (i == 4) then
		AddGoldItem(0,4123)
	elseif (i == 5) then
		AddGoldItem(0,4124)
	elseif (i == 6) then
		AddGoldItem(0,4125)
	elseif (i == 7) then
		AddGoldItem(0,4126)
	elseif (i == 8) then
		AddGoldItem(0,4127)
	elseif (i == 9) then
		AddGoldItem(0,4128)
	elseif (i == 10) then
		AddGoldItem(0,4129)
	elseif (i == 11) then
		AddGoldItem(0,4130)
	elseif (i == 12) then
		AddGoldItem(0,4131)
	elseif (i == 13) then
		AddGoldItem(0,4132)
	elseif (i == 14) then
		AddGoldItem(0,4133)
	elseif (i == 15) then
		AddGoldItem(0,4134)
	end
end
---------------------------------------------------------------------------------------------------------------
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
---------------------------------------------------------------------
function nhanskill()
local tbSay = {}
tinsert(tbSay,"V�o Ph�i H�c full Skill/choose_faction")
tinsert(tbSay,"V�o Ph�i Hoa S�n/PhaiHoaSon")
tinsert(tbSay,"Nh�n Skill 180/nhanskill180")
tinsert(tbSay,"K� N�ng 120/kynang120")
tinsert(tbSay,"K� N�ng 90/kynang90")
tinsert(tbSay,"Nh�n Skill/addskill")
tinsert(tbSay,"X�a Skill/delskill")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Skill  !", getn(tbSay), tbSay)
end
--------------------------------------------------------------------------------------------------------
function nhanskill180()
local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,1)
					Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c ���c K� N�ng Th�t Truy�n<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1;
				end
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------------------------
function kynang90()
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
end
function kynang120()
AddItem(6,1,2425,0,0,0,0)
AddItem(6,1,1125,0,0,0,0)
end
------------------------------------------------------
function addskill()
if check_faction() == 1 then
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
AddMagic(1055,20)
AddMagic(1056,20)
AddMagic(1057,20)
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(1220,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�u L�m. ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(1221,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n V��ng. ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
AddMagic(1110,20)
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(351,0)
AddMagic(710,20)
AddMagic(1223,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a ���ng M�n. ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
AddMagic(353,20)
AddMagic(355,20)
AddMagic(390,0)
AddMagic(711,20)
AddMagic(1222,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ng� ��c.")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
AddMagic(328,20)
AddMagic(380,20)
AddMagic(332,0)
AddMagic(712,20)
AddMagic(1224,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Nga My.")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(1225,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Th�y Y�n.")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(1227,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�i Bang.")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
AddMagic(362,20)
AddMagic(361,20)
AddMagic(391,0)
AddMagic(715,20)
AddMagic(1226,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n Nh�n.")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(1228,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� �ang.")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
AddMagic(372,20)
AddMagic(375,20)
AddMagic(394,0)
AddMagic(717,20)
AddMagic(1229,20)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�n L�n.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end
------------------------------------------------------------------------------------------------------------------------
function delskill()
if check_faction() == 1 then
	Talk(1, "", "Ch�a t�i c�p 150 ch�a th� x�a Skill ���c...!")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
DelMagic(1055,20)
DelMagic(1056,20)
DelMagic(1057,20)
DelMagic(318,20)
DelMagic(319,20)
DelMagic(321,20)
DelMagic(709,20)
DelMagic(1220,20)
Talk(1,"","Ch�c m�ng b�n �� x�a  th�nh c�ng tuy�t k� c�a Thi�u L�m. ")
elseif mp == "tianwang" then
DelMagic(1058,20)
DelMagic(1059,20)
DelMagic(1060,20)
DelMagic(322,20)
DelMagic(325,20)
DelMagic(323,20)
DelMagic(708,20)
DelMagic(1221,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a Thi�n V��ng. ")
elseif mp == "tangmen" then
DelMagic(1069,20)
DelMagic(1070,20)
DelMagic(1071,20)
DelMagic(1110,20)
DelMagic(302,20)
DelMagic(342,20)
DelMagic(339,20)
DelMagic(710,20)
DelMagic(1223,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a ���ng M�n. ")
elseif mp == "wudu" then
DelMagic(1066,20)
DelMagic(1067,20)
DelMagic(353,20)
DelMagic(355,20)
DelMagic(711,20)
DelMagic(1222,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a Ng� ��c.")

elseif mp == "emei" then
DelMagic(1061,20)
DelMagic(1062,20)
DelMagic(1114,20)
DelMagic(328,20)
DelMagic(380,20)
DelMagic(712,20)
DelMagic(1224,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a Nga My.")

elseif mp == "cuiyan" then
DelMagic(1063,20)
DelMagic(1065,20)
DelMagic(336,20)
DelMagic(337,20)
DelMagic(713,20)
DelMagic(1225,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a Th�y Y�n.")

elseif mp == "gaibang" then
DelMagic(1073,20)
DelMagic(1074,20)
DelMagic(359,20)
DelMagic(357,20)
DelMagic(714,20)
DelMagic(1227,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a C�i Bang.")
elseif mp == "tianren" then
DelMagic(1075,20)
DelMagic(1076,20)
DelMagic(362,20)
DelMagic(361,20)
DelMagic(715,20)
DelMagic(1226,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a Thi�n Nh�n.")
elseif mp == "wudang" then
DelMagic(1078,20)
DelMagic(1079,20)
DelMagic(365,20)
DelMagic(368,20)
DelMagic(716,20)
DelMagic(1228,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� c�a V� �ang.")
elseif mp == "kunlun" then
DelMagic(1080,20)
DelMagic(1081,20)
DelMagic(372,20)
DelMagic(375,20)
DelMagic(717,20)
DelMagic(1229,20)
Talk(1,"","Ch�c m�ng b�n �� x�a th�nh c�ng tuy�t k� 150 c�a C�n L�n.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end

function PhaiHoaSon()
	if GetCurCamp() == 0 then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256)
		SetCamp(3) SetCurCamp(3)
		SetRank(89) SetSeries(2)
		KickOutSelf() addskill()
	else
		Talk(1,"","Ng��i �� Gia Nh�p Ph�i R�i")
	end
end

function addskill()
AddMagic(1347)
AddMagic(1372)
AddMagic(1349)
AddMagic(1350)
AddMagic(1374)
AddMagic(1375)
AddMagic(1351)
AddMagic(1376)
AddMagic(1354)
AddMagic(1378)
AddMagic(1355)
AddMagic(1379)
AddMagic(1358)
AddMagic(1360)
AddMagic(1380)
AddMagic(1364,20)
AddMagic(1382,20)
AddMagic(1365,20)
AddMagic(1370,20)
AddMagic(1368,20)
AddMagic(1384,20) 
end
--------------------------------------------------------------------------------------------------------------
function TrangBiHiem()
local tab_Content = {
	"Trang B� H�c Th�n/hacthan",
	"Trang B� Long T��ng/longtuong",
	"Tho�t./no",
}
Say("Xin m�i ch�n !", getn(tab_Content), tab_Content);
end

function hacthan()
for i = 3998,4002 do
AddGoldItem(0,i)
end
end

function longtuong()
for i = 4018,4026 do
AddGoldItem(0,i)
end
end
----------------------------------------------------------------------------------------------
function hkmpdoxanh()
local tab_Content = {
	"Trang B� Ho�ng Kim M�n Ph�i./sethkmp",
	"V� Kh� HKMP./bachkim",
	"L�y �� Xanh./laydoxanh",
	"L�y �� T�m./dotim1",
	"B� An Bang./anbang",
	"[C�c Ph�m] An Bang./anbang1",
	"[Ho�n M�] An Bang./anbang2",
	"[Li�n ��u] An Bang./anbang3",
	"Th�i./no",
	"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n trang b� m� b�n mu�n !", getn(tab_Content), tab_Content)

end
--------------------------------------------------------------------------------------------------------------------------------
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
function laydoxanh()
local tbOpt = {}

for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Tho�t."})
CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Tho�t."})
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


tinsert(tbOpt, {"Tho�t."})
local szTitle = format("<npc>Ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 60, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 200, 10) end
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
---------------------------------------------------------------
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
------------------------------------------Danh Hi�u--------------------------------------------------------------------------------------------------
function DanhHieu()
local tab_Content =
{
"V�ng s�ng Admin./vsadmin",
"V� L�m Ki�t Xu�t./vlkx",
"V� L�m Minh Ch� 1./vlmc1",
"V� L�m Minh Ch� 2./vlmc2",
"Ng� Long Cu�ng �ao./ngulongcd",
"��i H�i Server./daihoisv",
"Thi�n H� �� Nh�t Bang./thdnb",
"Tuy�t Th� Cao Th�./tuyetthect",
"M�nh Long Tranh B�./manhlongtb",
"Th�i./no",
"Tr� l�i"
}
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Danh Hi�u !", getn(tab_Content), tab_Content);
end
----------------------------------------------------------------------------------------------------------------------------
function vsadmin()
n_title = 228---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlkx()
n_title = 85 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlmc2()
n_title = 3000 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function vlmc1()
n_title = 188 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function ngulongcd()
n_title = 165 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function daihoisv()
n_title = 150 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function thdnb()
n_title = 189 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function tuyetthect()
n_title = 235 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function manhlongtb()
n_title = 263 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function xunghieu()
local tbSay = {}

tinsert(tbSay,"Thi�u L�m ./xunghieu1")
tinsert(tbSay,"Thi�n V��ng./xunghieu2")
tinsert(tbSay,"Ng� ��c./xunghieu3")
tinsert(tbSay,"���ng M�n./xunghieu4")
tinsert(tbSay,"Nga Mi./xunghieu5")
tinsert(tbSay,"Th�y Y�n./xunghieu6")
tinsert(tbSay,"C�i Bang./xunghieu7")
tinsert(tbSay,"Thi�n Nh�n./xunghieu8")
tinsert(tbSay,"V� �ang./xunghieu9")
tinsert(tbSay,"C�n L�n./xunghieu10")
tinsert(tbSay,"Hoa S�n./xunghieu11")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n M�n Ph�i  !", getn(tbSay), tbSay)
end

function xunghieu1()
SetRank(72)
Msg2Player("B�n ���c x�ng hi�u: H� Ph�p Tr��ng L�o.")
end
function xunghieu2()
SetRank(69)
Msg2Player("B�n ���c x�ng hi�u: K�nh Thi�n Nguy�n So�i.")
end
function xunghieu3()
SetRank(80)
Msg2Player("B�n ���c x�ng hi�u: U Minh Qu� V��ng.")
end
function xunghieu4()
SetRank(76)
Msg2Player("B�n ���c x�ng hi�u: L�c C�c Tr��ng L�o.")
end
function xunghieu5()
SetRank(64)
Msg2Player("B�n ���c x�ng hi�u: Kim ��nh Th�nh N�.")
end
function xunghieu6()
SetRank(67)
Msg2Player("B�n ���c x�ng hi�u: Hoa Th�n.")
end
function xunghieu7()
SetRank(78)
Msg2Player("B�n ���c x�ng hi�u: C�u ��i Tr��ng L�o.")
end
function xunghieu8()
SetRank(81)
Msg2Player("B�n ���c x�ng hi�u: Th�nh Gi�o Tr��ng L�o.")
end
function xunghieu9()
SetRank(73)
Msg2Player("B�n ���c x�ng hi�u: Huy�n V� Ch�n Nh�n.")
end
function xunghieu10()
SetRank(75)
Msg2Player("B�n ���c x�ng hi�u: H� Ph�i Ch�n Qu�n.")
end
function xunghieu11()
SetRank(89)
Msg2Player("B�n ���c x�ng hi�u: V� L��ng Thi�n T�n.")
end
-----------------------------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "Thi�u L�m Quy�n",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph��ng ch�u li�n", " Minh Ph��ng t�ng m�o", " Minh Ph��ng th��ng gi�i", " Minh Ph��ng h� uy�n", " Minh Ph��ng y�u ��i",
					" Minh Ph��ng c� sa ", " Minh Ph��ng tri�n th� ", " Minh Ph��ng t�ng h�i ", " Minh Ph��ng y�u tr�y ", " Minh Ph��ng h� gi�i ",
				},
			},
			{
				szFaction = "Thi�u L�m C�n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng c�n", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i", 
				},
			},
			{
				szFaction = "Thi�u L�m �ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng �ao", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thi�n V��ng Ch�y",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph��ng ��nh quang li�n", "Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang th��ng gi�i", "Minh Ph��ng ��nh quang th�c o�n", "Minh Ph��ng ��nh quang y�u ��i",
					"Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang ch�y", "Minh Ph��ng ��nh quang ngoa", "Minh Ph��ng ��nh quang b�i", "Minh Ph��ng ��nh quang h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng Th��ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph��ng ng� phong li�n", "Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng gi�i", "Minh Ph��ng ng� phong th�c o�n", "Minh Ph��ng ng� phong y�u ��i",
					"Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng", "Minh Ph��ng ng� phong ngoa", "Minh Ph��ng ng� phong b�i", "Minh Ph��ng ng� phong h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng �ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph��ng bi�u phong li�n", "Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong th��ng gi�i", "Minh Ph��ng bi�u phong th�c o�n", "Minh Ph��ng bi�u phong y�u ��i",
					"Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong �ao", "Minh Ph��ng bi�u phong ngoa", "Minh Ph��ng bi�u phong b�i", "Minh Ph��ng bi�u phong h� gi�i",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi �ao ���ng M�n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph��ng n�c �nh h�ng li�n", "Minh Ph��ng n�c �nh qu�n", "Minh Ph��ng n�c �nh th��ng gi�i", "Minh Ph��ng n�c �nh h� uy�n", "Minh Ph��ng n�c �nh tri�n y�u",
					"Minh Ph��ng n�c �nh gi�p", "Minh Ph��ng n�c �nh phi �ao", "Minh Ph��ng n�c �nh ngoa", "Minh Ph��ng n�c �nh y�u tr�y", "Minh Ph��ng n�c �nh h� gi�i",
				},
			},
			{
				szFaction = "N� ���ng M�n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph��ng c�c quang h�ng li�n", "Minh Ph��ng c�c quang qu�n", "Minh Ph��ng c�c quang th��ng gi�i", "Minh Ph��ng c�c quang h� uy�n", "Minh Ph��ng c�c quang tri�n y�u",
					"Minh Ph��ng c�c quang gi�p", "Minh Ph��ng c�c quang n� ", "Minh Ph��ng c�c quang ngoa ", "Minh Ph��ng c�c quang y�u tr�y ", "Minh Ph��ng c�c quang h� gi�i ",
				},
			},
			{
				szFaction = "Phi Ti�u ���ng M�n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph��ng th��c kim h�ng li�n ", " Minh Ph��ng th��c kim qu�n ", " Minh Ph��ng th��c kim th��ng gi�i ", " Minh Ph��ng th��c kim h� uy�n ", " Minh Ph��ng th��c kim tri�n y�u ",
					" Minh Ph��ng th��c kim gi�p ", " Minh Ph��ng th��c kim phi ti�u ", " Minh Ph��ng th��c kim ngoa ", " Minh Ph��ng th��c kim y�u tr�y ", " Minh Ph��ng th��c kim h� gi�i ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ng� ��c Ch��ng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph��ng ��c sa h�ng li�n ", " H�ch H� ��c sa ph�t ��i ", " Minh Ph��ng ��c sa th��ng gi�i ", " Minh Ph��ng ��c sa h� uy�n ", " Minh Ph��ng ��c sa y�u ��i ",
					" Minh Ph��ng ��c sa b� trang ", " Minh Ph��ng ��c sa tri�n th� ", " Minh Ph��ng ��c sa ngoa ", " Minh Ph��ng ��c sa y�u tr�y ", " Minh Ph��ng ��c sa h� gi�i ",
				},
			},
			{
				szFaction = "Ng� ��c �ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph��ng u linh h�ng li�n ", " H�ch H� u linh ph�t ��i ", " Minh Ph��ng u linh th��ng gi�i ", " Minh Ph��ng u linh h� uy�n ", " Minh Ph��ng u linh y�u ��i ",
					" Minh Ph��ng u linh b� trang ", " Minh Ph��ng u linh �ao ", " Minh Ph��ng u linh ngoa ", " Minh Ph��ng u linh y�u tr�y ", " Minh Ph��ng u linh h� gi�i ",
				},
			},
		},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip =
		{
			{
				szFaction = "Nga Mi Ki�m",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph��ng l�u v�n ch�u li�n", "Minh Ph��ng l�u v�n ph�t ��i", "Minh Ph��ng l�u v�n th��ng gi�i", "Minh Ph��ng l�u v�n h� uy�n", "Minh Ph��ng l�u v�n y�u ��i ",
					"Minh Ph��ng l�u v�n sam", "Minh Ph��ng l�u v�n ki�m", "Minh Ph��ng l�u v�n ngoa", "Minh Ph��ng l�u v�n b�i ", "Minh Ph��ng l�u v�n h� gi�i ",
				},
			},
			{
				szFaction = "Nga Mi Ch��ng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph��ng h�n ng�c ch�u li�n ", "Minh Ph��ng h�n ng�c ph�t ��i", "Minh Ph��ng h�n ng�c th��ng gi�i", "Minh Ph��ng h�n ng�c h� uy�n", "Minh Ph��ng h�n ng�c y�u ��i",
					"Minh Ph��ng h�n ng�c sam", "Minh Ph��ng h�n ng�c tri�n th� ", "Minh Ph��ng h�n ng�c ngoa ", "Minh Ph��ng h�n ng�c b�i ", "Minh Ph��ng h�n ng�c h� gi�i ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Th�y Y�n �ao (Ngo�i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph��ng h�ng nhan ch�u li�n ", "Minh Ph��ng h�ng nhan ph�t ��i", "Minh Ph��ng h�ng nhan th��ng gi�i", "Minh Ph��ng h�ng nhan h� uy�n", "Minh Ph��ng h�ng nhan y�u ��i",
					"Minh Ph��ng h�ng nhan sam", "Minh Ph��ng h�ng nhan �ao ", "Minh Ph��ng h�ng nhan ngoa ", "Minh Ph��ng h�ng nhan b�i ", "Minh Ph��ng h�ng nhan h� gi�i ",
				},
			},
			{
				szFaction = "Th�y Y�n Song �ao (N�i)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph��ng �o th�i ch�u li�n ", "Minh Ph��ng �o th�i ph�t ��i", "Minh Ph��ng �o th�i th��ng gi�i", "Minh Ph��ng �o th�i h� uy�n", "Minh Ph��ng �o th�i y�u ��i",
					"Minh Ph��ng �o th�i sam", "Minh Ph��ng �o th�i �ao ", "Minh Ph��ng �o th�i ngoa ", "Minh Ph��ng �o th�i b�i ", "Minh Ph��ng �o th�i h� gi�i ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C�i Bang Ch��ng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph��ng h� ph�p h�ng li�n", " Minh Ph��ng h� ph�p ��u ho�n", " Minh Ph��ng h� ph�p th��ng gi�i ", " Minh Ph��ng h� ph�p h� uy�n ", " Minh Ph��ng h� ph�p th�c y�u",
					" Minh Ph��ng h� ph�p c�i y", " Minh Ph��ng h� ph�p tri�n th� ", " Minh Ph��ng h� ph�p ngoa ", "Minh Ph��ng h� ph�p b�i ", " Minh Ph��ng h� ph�p h� gi�i ",
				},
			},
			{
				szFaction = "C�i Bang B�ng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph��ng tr�ng gi�i h�ng li�n", "Minh Ph��ng tr�ng gi�i ��u ho�n", "Minh Ph��ng tr�ng gi�i th��ng gi�i ", "Minh Ph��ng tr�ng gi�i h� uy�n", "Minh Ph��ng tr�ng gi�i th�c y�u",
					"Minh Ph��ng tr�ng gi�i c�i y", "Minh Ph��ng tr�ng gi�i tr��ng", "Minh Ph��ng tr�ng gi�i ngoa", "Minh Ph��ng tr�ng gi�i b�i", "Minh Ph��ng tr�ng gi�i h� gi�i ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "Chi�n Nh�n",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph��ng x�ch minh h�ng li�n", "H�ch H� x�ch minh kh�i", "Minh Ph��ng x�ch minh th��ng gi�i", "Minh Ph��ng x�ch minh h� o�n", "Minh Ph��ng x�ch minh y�u ��i",
					"Minh Ph��ng x�ch minh gi�p", "Minh Ph��ng x�ch minh th��ng", "Minh Ph��ng x�ch minh ngoa", "Minh Ph��ng x�ch minh b�i", "Minh Ph��ng x�ch minh h� gi�i",
				},
			},
			{
				szFaction = "Ma Nh�n",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph��ng s�t vi�m h�ng li�n", "H�ch H� s�t vi�m kh�i", "Minh Ph��ng s�t vi�m th��ng gi�i", "Minh Ph��ng s�t vi�m h� o�n", "Minh Ph��ng s�t vi�m y�u ��i",
					"Minh Ph��ng s�t vi�m gi�p", "Minh Ph��ng s�t vi�m �ao", "Minh Ph��ng s�t vi�m ngoa", "Minh Ph��ng s�t vi�m b�i", "Minh Ph��ng s�t vi�m h� gi�i",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "V� �ang Kh�",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph��ng ti�n �m ph� ", " Minh Ph��ng ti�n �m qu�n", " Minh Ph��ng ti�n �m th��ng gi�i ", " Minh Ph��ng ti�n �m t� ", " Minh Ph��ng ti�n �m ph�p ��i ",
					" Minh Ph��ng ti�n �m ��o b�o ", " Minh Ph��ng ti�n �m ki�m ", " Minh Ph��ng ti�n �m ngoa ", " Minh Ph��ng ti�n �m b�i ", " Minh Ph��ng ti�n �m h� gi�i ",
				},
			},
			{
				szFaction = "V� �ang Ki�m",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph��ng ��o minh ph� ", " Minh Ph��ng ��o minh qu�n ", " Minh Ph��ng ��o minh th��ng gi�i ", " Minh Ph��ng ��o minh t� ", " Minh Ph��ng ��o minh ph�p ��i ",
					" Minh Ph��ng ��o minh ��o b�o ", " Minh Ph��ng ��o minh ki�m ", " Minh Ph��ng ��o minh ngoa ", " Minh Ph��ng ��o minh b�i ", " Minh Ph��ng ��o minh h� gi�i ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C�n L�n �ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph��ng thi�n canh h�ng li�n ", "Minh Ph��ng thi�n canh ��o qu�n", "Minh Ph��ng thi�n canh th��ng gi�i", "Minh Ph��ng thi�n canh h� uy�n", "Minh Ph��ng thi�n canh ph�p ��i",
					"Minh Ph��ng thi�n canh ��o b�o", "Minh Ph��ng thi�n canh �ao", "Minh Ph��ng thi�n canh ngoa", "Minh Ph��ng thi�n canh b�i", "Minh Ph��ng thi�n canh h� gi�i",
				},
			},
			{
				szFaction = "C�n L�n Ki�m",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph��ng ng�o s��ng h�ng li�n ", "Minh Ph��ng ng�o s��ng ��o qu�n", "Minh Ph��ng ng�o s��ng th��ng gi�i", "Minh Ph��ng ng�o s��ng h� uy�n", "Minh Ph��ng ng�o s��ng ph�p ��i",
					"Minh Ph��ng ng�o s��ng ��o b�o", "Minh Ph��ng ng�o s��ng ki�m ", "Minh Ph��ng ng�o s��ng ngoa ", "Minh Ph��ng ng�o s��ng b�i", "Minh Ph��ng ng�o s��ng h� gi�i",
				},
			},
		},
	},
}

local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
local nFaction = GetLastFactionNumber()
if nFaction == 10 then
	Talk(1, "", "Ng��i �� gia nh�p m�n ph�i r�i")
return end
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i r�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� v�", dialog_main})
	tinsert(tbOpt, {"Tho�t."})
	CreateNewSayEx("<npc>M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X�c nh�n mu�n gia nh�p m�n ph�i ?<color=yellow>%s<color> m�n ph�i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� v�.", choose_faction},
		{"Tho�t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i %s", %tbFaction[nIndex].szShowName))
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n th�n trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Ch�o M�ng B�n �� Tham Gia H� Th�ng <color=yellow>Bang H�i<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"Nh�n �i�u Ki�n T�o Bang H�i/dmcreatetong",
		"Gia Nh�p Bang H�i/dmjointong",
		"T�o bang h�i/dmcreateit",
		"K�t Th�c ��i Tho�i/No")
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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NapThe()
	local tbOpt = {
		{"N�p 10.000 => 2 KNB",Nap10},
		{"N�p 20.000 => 4 KNB",Nap20},
		{"N�p 50.000 => 10 KNB",Nap50},
		{"N�p 100.000 => 20 KNB",Nap100},
		{"N�p 200.000 => 40 KNB",Nap200},
		{"N�p 500.000 => 100 KNB",Nap500},
		{"N�p 1000.000 => 200 KNB",Nap1000},
		{"N�p 2000.000 => 400 KNB",Nap2000},
		{"H�y B�",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Mu�n N�p M�c N�o H�y L�a Ch�n", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function Nap10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>2<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,2) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+10) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>2<color> Kim Nguy�n B�o Th�nh C�ng");
end
----------------------------------------------------------------------------------------------------------------------------
function Nap20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>4<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,4) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+20) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>4<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function Nap50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>10<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,10) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+50) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>10<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>20<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,20) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+100) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>20<color> Kim Nguy�n B�o Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>40<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+200) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>40<color> Kim Nguy�n B�o Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>100<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+500) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>100<color> Kim Nguy�n B�o Th�nh C�ng");
end
---------------------------------------------------------------------------------------------------------------------------
function Nap1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>200<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+1000) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>200<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>400<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+2000) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>400<color> Kim Nguy�n B�o Th�nh C�ng");
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuyenKhoan()
	local tbOpt = {
		{"Chuy�n Kho�n 10.000 => 3 KNB",CK10},
		{"Chuy�n Kho�n 20.000 => 6 KNB",CK20},
		{"Chuy�n Kho�n 50.000 => 15 KNB",CK50},
		{"Chuy�n Kho�n 100.000 => 30 KNB",CK100},
		{"Chuy�n Kho�n 200.000 => 60 KNB",CK200},
		{"Chuy�n Kho�n 500.000 => 150 KNB",CK500},
		{"Chuy�n Kho�n 1000.000 => 300 KNB",CK1000},
		{"Chuy�n Kho�n 2000.000 => 600 KNB",CK2000},
		{"H�y B�",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Mu�n Chuy�n Kho�n M�c N�o H�y L�a Ch�n\nH�nh Th�c Chuy�n Kho�n ���c Nh�n 1.5 L�n Tr�n T� Gi�\nN�p...!", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function CK10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>3<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,3) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+10) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>3<color> Kim Nguy�n B�o Th�nh C�ng");
end
----------------------------------------------------------------------------------------------------------------------------
function CK20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>6<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,6) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+20) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>6<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function CK50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>15<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,15) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+50) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>15<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function CK100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>30<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,30) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+100) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>30<color> Kim Nguy�n B�o Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------
function CK200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>60<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,60) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+200) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>60<color> Kim Nguy�n B�o Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------
function CK500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>150<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,150) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+500) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>150<color> Kim Nguy�n B�o Th�nh C�ng");
end
---------------------------------------------------------------------------------------------------------------------------
function CK1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>300<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,300) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+1000) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>300<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function CK2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>600<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,600) end
if (GetTask(DIEMVIP) < 2000) then SetTask(DIEMVIP,GetTask(DIEMVIP)+2000) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>600<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------------