IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
local tbGMAccount = {"volam1cham","","","","","",""} TENADMIN ={{"VLHKMP",99},{"",99},{"",99},{"",99},{"",99},{"",99},{"",99},{"",99}}
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function main()
	
	dofile("script/global/g7vn/g7hotrotanthu.lua")
	--if GetTask(5969)==3 and HaveMagic(1536)==-1 then ---- mo skill cl3
	--DelMagic(1534)
	--DelMagic(1535)
	--AddMagic(1536,20)
	--WriteLogPro("dulieu/themskill3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da thhem skill cl3\n");	
	--end
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if (nDate >= 201903251635) and (nDate <= 202104241000) and (GetAccount()~="luuhuanvlv201902" ) then
Say("H�y Ch� ��n 10h00 Server M�i Ch�nh Th�c Khai M� Nh�")
return 1;
end

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan ngh�nh m�i ng��i ��n v�i <color=yellow>http://volamhoainiemus.com<color>"
	local Opt = 
	{
		--{"Nh�p giftcode chia s� 5 b�nh ti�n th�o l�.", nhapgifcodethem},
		--{"Nh�n ��n b� 8 TTL ��c bi�t s� c� 26-12", g7denbu8TTL},	
	--	{"Nh�n �� Test", tbhoangkimbk},
	--{"Nh�n M�nh T�ng B�o ��", layevent},
--{"C�p 200.", NhanDiemKinhNghiem},
	--	{"H� Tr� T�n Th� L�n C�p 114 ( Gi� 299 Xu)", NhanDoLongDao},
	--	{"Nh�n �� H� Tr� T�n Th�", NhanHoTroTanThu},
	--	{"Nh�n L�i L�nh B�i T�n Th� + Th� ��a Ph�", lenhbaitanthu},
--		{"Nh�n Set HKMP ", sethkmp},
--		{"Nh�n Trang B� HKMP", doimanhrahkmp},
--		{"Nh�n H� Tr� T�n Th�", NhanHoTroThienKiem},
--		{"Nh�n V�t Ph�m H� Tr�", NhanDoHoTroTanThu},
	--	{"Nh�n T�i L�nh ��o + Danh V�ng + Ph�c Duy�n",lanhdaophucduyen},
	--	{"Nh�n C�c Lo�i Ng�a", nhancacloaingua},
	--{"Nh�n Ti�n ��ng Free", LayTienDOngtest},
--	{"Nh�n Set HKMP ", sethkmp},
----------{"Mua Ho�n Binh Ph� (100 Xu)", muahoanbinh},
---------{"D�ng Ho�n Binh Ph�", testcodeadmin},
		{"��i T�n Nh�n V�t Game (100 Xu)", DoiTenNV},
	--	{"Thay ��i M�u PK.", trangthai1},
		{"Thay ��i Gi�i T�nh (1000 Xu)", chuyen_gt},
	--	{"T�y t�y Nh�n V�t + Gi�m PK.",TayTuyFree},
	--	{"Ch�c H� Tr� Kh�c", MenuFree},
	--	{"Nh�n Nguy�n Li�u", tbtim1},
	--{"Nh�n Ng�a Vip & Phi Phong (Open S� ��ng T�nh N�ng N�y)", NhanNguaVip},
	--{"Nh�n Phi Phong", NhanPhiPhong},
		--{"Nh�n Sieu Quang Free", NhanPhienVu},

--	{"Nh�n Set HKMP ", sethkmp},
		--{"Nh�n T�i T�ng Kim", nhantuitongkim},
		--{"Xu�t s� c�p 60 + 5 v�n l��ng ", xuatsu1},	
		--{"Nh�n Phong V�n l�nh b�i <free>", gmnhanphongvanlenhbai},	
		--{"Ng� Hoa L� Bao T�n Th�", tuimautanthu},
		--{"Nh�p CODE T�n Th� m�c ��nh <c�>.", nhapgifcodetanthumoi},
		--{"Nh�p CODE T�n Th�", CODEVIP},	---- code pha thien tram
		--{"Nh�n th��ng ��t m�c c�p 30,40,50,60,90 ... ", gmnhanthuongdatmoc},
	--	{"�i�u ki�n th�nh l�p Bang H�i.", gmlapbanghoi},
		--{"H�y trang b� kh�a", DisposeItem},	
		--{"M�u PK", doimau},	
	--	{"Nh�n �i�m Ki�n Thi�t (D�nh Cho Bang Ch�).", kienthiet},
		{"K�t th�c ��i tho�i. ", End},
	}

	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			tinsert(Opt, 1, {"Ch�c N�ng Qu�n L� GM", ChucNangGM}) 
			break
		end
	end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure == TONG_MASTER) then
		tinsert(Opt, 1, {"Nh�n �i�m Ki�n Thi�t (D�nh Cho Bang Ch�).", kienthiet}) 
	end;
	CreateNewSayEx(szTitle,Opt)
end

function layvatpham() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
local nItemIndex = AddGoldItem(0, ""..idgq.."")  SyncItem(nItemIndex) 
end
function testcodeadmin_ok()
	local nItemIdx = GetGiveItemUnit(1)
	local nMaCodeItem = ITEM_GetItemRandSeed(nItemIdx);
	local nMaCodeItem2 = ITEM_GetImmediaItemIndex(nItemIdx);
	local nMaCodeItem3 = ITEM_GetItemVersion(nItemIdx);
	local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx );
	local nQuality = GetItemQuality( nItemIdx );
	local arynMagLvl = GetItemAllParams( nItemIdx );
	local nStackCount = GetItemStackCount( nItemIdx );
	local nCurItemQuality	= GetItemQuality(nItemIdx);
	local bindState = GetItemBindState(nItemIdx)
	local nG, nD,nP,nLevel,nHe,nDong2 = GetItemProp(nItemIdx)
	local timeitem = ITEM_GetExpiredTime(nItemIdx)
	local nIdHKMP = GetGlodEqIndex(nItemIdx)
    local nTen=GetItemName(nItemIdx)
	local nRestCount = GetItemAllParams(nItemIdx)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
		return
	end
	
        if  timeitem > 0	then
		Talk(1,"", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
		return
		end	
		if nG == 4 or nG == 6 then
			Say("ng��i ��t c�i g� v�o th� n�y ",0);
			return
		end
		if nQuality ~= 0 then
					Say("ch� ��t v�o trang b� xanh",0);
			return
		end
		if nDetailType ~= 0 and nDetailType  ~= 1 then
				Say("ch� ��t v�o v� kh�",0);
			return
		end

	local nDetailTypeR = random(0,1)
		local nParticularR = random(0,5)
				if 	nDetailTypeR == nDetailType and nParticularR == nParticular then
			Say("L�n ho�n ��i n�y th�t b�i m�t h�t nguy�n li�u xin ��ng n�n ch�..",0)
			return
		end
		if 	nDetailTypeR == 1 and nParticularR > 2  then
		Say("L�n ho�n ��i n�y th�t b�i m�t h�t nguy�n li�u xin ��ng n�n ch�..",0)
		return
		end
		
		AddItemEx(4,nMaCodeItem,nQuality,nGenre,nDetailTypeR,nParticularR,nLevel,nSeries,nLuck,arynMagLvl[1],arynMagLvl[2],arynMagLvl[3],arynMagLvl[4],arynMagLvl[5],arynMagLvl[6],nStackCount)
		local szNews = format("Ch�c m�ng   <color=green>"..GetName().."<color> ho�n ��i trang b� xanh<color=cyan> "..nTen.."<color> th�nh c�ng.")
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end
function lenhbaitanthu()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2)
	local Index = AddItem(6,1,438,1,0,0) SetItemBindState(Index, -2)
end
function doimanhrahkmp()
	local tbSay = {
	"Thi�u L�m./#doimanhhkmpthieulam()",
"Thi�n V��ng./#doimanhhkmpthienvuong()",
"Nga My./#doimanhhkmpngamy()",
"Thu� Y�n./#doimanhhkmpthuyyen()",
"���ng M�n./#doimanhhkmpduongmon()",
"Trang sau./#doimanhrahkmp2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhrahkmp2()
	local tbSay = {
	"Ng� ��c./#doimanhhkmpngudoc()",
"C�i Bang./#doimanhhkmpcaibang()",
"Thi�n Nh�n./#doimanhhkmpthiennhan()",
"C�n L�n./#doimanhhkmpconlon()",
"V� �ang./#doimanhhkmpvodang()",
"Trang tr��c./#doimanhrahkmp()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam()
	local tbSay = {
	"M�ng Long Ch�nh H�ng T�ng M�o./#doimanhhkmpthieulam_ok(1)",
"M�ng Long Ph�t Ph�p Huy�n B�i./#doimanhhkmpthieulam_ok(4)",
"M�ng Long Huy�n Ti Ph�t ��i./#doimanhhkmpthieulam_ok(3)",
"M�ng Long ��t Ma T�ng h�i./#doimanhhkmpthieulam_ok(5)",
"Ph�c Ma Huy�n Ho�ng C� Sa./#doimanhhkmpthieulam_ok(7)",
"Ph�c Ma � Kim Nhuy�n �i�u./#doimanhhkmpthieulam_ok(8)",
"Ph�c Ma Ph�t T�m Nhuy�n Kh�u./#doimanhhkmpthieulam_ok(9)",
"Ph�c Ma Ph� �� T�ng h�i./#doimanhhkmpthieulam_ok(10)",
"T� Kh�ng T� Kim C� Sa./#doimanhhkmpthieulam_ok(12)",
"T� Kh�ng H� ph�p Y�u ��i./#doimanhhkmpthieulam_ok(13)",
"T� Kh�ng Nhuy�n B� H� Uy�n./#doimanhhkmpthieulam_ok(14)",
"T� Kh�ng Gi�i Lu�t Ph�p gi�i./#doimanhhkmpthieulam_ok(15)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthienvuong()
	local tbSay = {
	"H�m Thi�n V� Th�n T��ng Kim Gi�p./#doimanhhkmpthieulam_ok(17)",
"H�m Thi�n Uy V� Th�c y�u ��i./#doimanhhkmpthieulam_ok(18)",
"H�m Thi�n H� ��u Kh�n Th�c Uy�n./#doimanhhkmpthieulam_ok(19)",
"H�m Thi�n Th�a Long Chi�n Ngoa./#doimanhhkmpthieulam_ok(20)",
"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i./#doimanhhkmpthieulam_ok(22)",
"K� Nghi�p B�ch H� V� Song kh�u./#doimanhhkmpthieulam_ok(23)",
"K� Nghi�p H�aV�n K� L�n Th� ./#doimanhhkmpthieulam_ok(24)",
"K� Nghi�p Chu T��c L�ng V�n Ngoa./#doimanhhkmpthieulam_ok(25)",
"Ng� Long Chi�n Th�n Phi Qu�i gi�p./#doimanhhkmpthieulam_ok(27)",
"Ng� Long Thi�n M�n Th�c Y�u ho�n./#doimanhhkmpthieulam_ok(28)",
"Ng� Long T�n Phong H� y�n./#doimanhhkmpthieulam_ok(29)",
"Ng� Long Tuy�t M�nh Ch� ho�n./#doimanhhkmpthieulam_ok(30)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tinhsuongmax21()
local tab_Content = {
"���ng M�n Phi Ti�u/#setinhsuongmax1(15)",
"C�i Bang R�ng/#setinhsuongmax1(16)",
"C�i Bang B�ng/#setinhsuongmax1(17)",
"Thi�n Nh�n K�ch/#setinhsuongmax1(18)",
"Thi�n Nh�n �ao/#setinhsuongmax1(19)",
"V� �ang Ki�m/#setinhsuongmax1(21)",
"V� �ang Quy�n/#setinhsuongmax1(20)",
"C�n L�n �ao/#setinhsuongmax1(22)",
"C�n L�n Ki�m/#setinhsuongmax1(23)",
"Hoa S�n Kh� T�ng/#setinhsuongmax1(25)",
"Hoa S�n Ki�m T�ng/#setinhsuongmax1(24)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setinhsuongmax1(nId)
for i = 6481, 6490 do
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10*nId+i-10},nQuality=1,nExpiredTime=2*60,nBindState = -2},}, "test", 1);
end
end

function SetNK1Ngay()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setnguyetkhuyet1(1)",
"Thi�u L�m B�ng/#setnguyetkhuyet1(2)",
"Thi�u L�m �ao/#setnguyetkhuyet1(3)",
"Thi�n V��ng Ch�y/#setnguyetkhuyet1(4)",
"Thi�n V��ng Th��ng/#setnguyetkhuyet1(5)",
"Thi�n V��ng �ao/#setnguyetkhuyet1(6)",
"Nga Mi Ki�m/#setnguyetkhuyet1(7)",
"Nga Mi Ch��ng/#setnguyetkhuyet1(8)",
"Th�y Y�n �ao/#setnguyetkhuyet1(9)",
"Th�y Y�n Song �ao/#setnguyetkhuyet1(10)",
"Ng� ��c Ch��ng/#setnguyetkhuyet1(11)",
"Ng� ��c �ao/#setnguyetkhuyet1(12)",
"���ng M�n Phi �ao/#setnguyetkhuyet1(13)",
"���ng M�n N�/#setnguyetkhuyet1(14)",
"Trang sau/nguyetkhuyet2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function nguyetkhuyet2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setnguyetkhuyet1(15)",
"C�i Bang R�ng/#setnguyetkhuyet1(16)",
"C�i Bang B�ng/#setnguyetkhuyet1(17)",
"Thi�n Nh�n K�ch/#setnguyetkhuyet1(18)",
"Thi�n Nh�n �ao/#setnguyetkhuyet1(19)",
"V� �ang Quy�n/#setnguyetkhuyet1(20)",
"V� �ang Ki�m/#setnguyetkhuyet1(21)",
"C�n L�n �ao/#setnguyetkhuyet1(22)",
"C�n L�n Ki�m/#setnguyetkhuyet1(23)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setnguyetkhuyet1(nId)
	if CalcFreeItemCellCount() <=20 then
			Talk(1,"","<color=green>�� Nh�n Th��ng ho�c H�y �� Tr�ng 20 � R�i Nh�n Th��ng...!")
			return 1;
		end
for i = 3655, 3664 do
	--local Index = AddGoldItem(0,10*nId+i-10)  ITEM_SetExpiredTime(Index,1*24*60) SyncItem(Index) SetItemBindState(Index, -2)
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,10*nId+i-10},nQuality=1,nExpiredTime=1*24*60,nBindState = -2},}, "test", 1);
end
end

function HoTroTinVat1Ngay()
	if CalcFreeItemCellCount() <=5 then
			Talk(1,"","<color=green>�� Nh�n Th��ng ho�c H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
			return 1;
		end
		tbAwardTemplet:GiveAwardByList({{szName = "T�n V�t MP",tbProp={6,1,1670,1,1},nCount=1,nExpiredTime=1*24*60},}, "test", 1);
end
function NhanKinhNghiemDuoi194()
local nCureLevel = GetLevel()
local nAddLevel = 194 - nCureLevel
if nCureLevel <194 and GetTask(5969)==1 and GetTask(task_nhankinhnghiem194)==0 then
	ST_LevelUp(nAddLevel)
	SetTask(task_nhankinhnghiem194,1)
	else Say("B�n �� C�p 194  ho�c �� nh�n r�i")
	end
end


function mattichnhanlai()
local nFaction = GetLastFactionNumber()
 if nFaction == 5 then
	 local szTitlezs = "<color=green>C�i Giang H� M�nh Ta ��c B��c<color>\n<color=violet>* * * * <color=fire>��ng Phuong Gi�o Ch�<color> * * * * <color>\n<color=yellow> S� Gi�p Ta C� ���c T�t C� <color>"
		local tbOpt =
	{
		{"Th�y y�n Kh�ng N�n H�c, V� s� l�m m�t kh� n�ng chi�n ��u"},
	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else
if nFaction == 11 then
	 local szTitlezs = "<color=green>C�i Giang H� M�nh Ta ��c B��c<color>\n<color=violet>* * * * <color=fire>��ng Phuong Gi�o Ch�<color> * * * * <color>\n<color=yellow> S� Gi�p Ta C� ���c T�t C� <color>"
		local tbOpt =
	{
		{"Ta l� V� H�n ��i �� T�",NhanKyNang1801},
	       {"K�t th�c ��i tho�i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)		
else

               local szTitlezs = "<color=green>C�i Giang H� M�nh Ta ��c B��c<color>\n<color=violet>* * * * <color=fire>��ng Phuong Gi�o Ch�<color> * * * * <color>\n<color=yellow> S� Gi�p Ta C� ���c T�t C� <color>"
		local tbOpt =
	{
		{"Nh�n Fee 180 N�o",NhanKyNang180},
             	{"K�t th�c ��i tho�i."},

	}
            CreateNewSayEx(szTitlezs, tbOpt)
end	
end
end

function NhanKyNang1801()
AddMagic(1986,20) 
end

-----------------------------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1986}
function NhanKyNang180()
	local nFaction = GetLastFactionNumber() +1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20) 
					Talk(1,"","<color=green>"..myplayersex().." �� H�c ���c K� N�ng Th�t Truy�n<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1;
				end
			end
		end
	end
end
--------------------------------------------------------------------------------------------





function NhanHoTroLaiRuong()

if GetTask(3904)==0 then
local nhanthuong={
--{szName="B�o R��ng Tinh S��ng H� Gi�i",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
{szName="Phi phong Ng� Phong",tbProp={0,6036},nQuality=1,nCount=1},
}
tbAwardTemplet:GiveAwardByList(nhanthuong,"Ph�n Th��ng GiftCode")
SetTask(3904,1)

else Say("Nh� Ng��i �� Nh�n Th��ng R�i")

end


end

function NhanLaiLenhBaiTanThu()

		if CalcFreeItemCellCount() >= 20 then
		
	local Index = AddItem(6,1,4265,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
--	local Index = AddGoldItem(0,3940)  SetItemBindState(Index, -2)
	local Index = AddGoldItem(0,6129)  SetItemBindState(Index, -2)--X�ch Long C�u Truy�n Thuy�t

		local Index = AddGoldItem(0,3953)  SetItemBindState(Index, -2)
		local Index = AddGoldItem(0,3991)  SetItemBindState(Index, -2)
		else
			Talk(1,"","<color=green> H�y �� Tr�ng 20 � R�i Nh�n Th��ng...!")
		end

end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function nhanhotrotest1()

		if CalcFreeItemCellCount() <=20 then
			Talk(1,"","<color=green>�� Nh�n Th��ng ho�c H�y �� Tr�ng 20 � R�i Nh�n Th��ng...!")
			return 1;
		end

	local tbOpt =
	{
		{"M�t N� 3 C�p.",nhanmatna3cap},
		{"Nh�n 1 Set Nguy�t Khuy�t Max (24h).",nguyetkhuyetmax24h},
		--{"Trang B� Tinh S��ng.",tinhsuongtest},
		--{"Trang B� Di�u D��ng.",DieuDuongTest},
		--{"Trang B� Di�u D��ng Tinh Ch�.",DieuDuongTest_TinhChe},
	--	{"Level 200.",HoTroLevel},
		{"Nh�n B� K�p 21-22-23.",HoTroNhanBiKip2x},
		{"500 ti�n ��ng. ", laytiendong},
		{"10 ng�n v�n.", laytienvan},
	 	{"Nh�n Ng�a Vip.", LayNguaVip},
	        {"Nh�n �n + Trang S�c Vip.", LayPhiPhongVip},
		{"Nh�n 500 Ng�c Linh H�n.", Nhan500NgocLinhHon},
		{"Nh�n 500 Ng�c C��ng H�a Nguy�n Li�u.", Nhan500NgocCuongHoa},
		{"Nh�n 500 B�ch Luy�n Th�nh C��ng.", Nhan500BachLuyenThanhCuong},
		{"Nh�n T�i L� Bao Phi Phong C�p 8 (10 Sao)", LayPhiPhong7},
	--	{"Nh�n Nguy�n Li�u �p Tinh S��ng.", LayNguyenLieuEp},
		{"Nh�n 300k �i�m Huy�t Chi�n.", Nhan300kdiemhuyetchien},
		{"8 R��ng Nguy�t Khuy�t (Thi�u �o + V� Kh�)", NhanRuongNKTanThu},	
		{"Tho�t.",no},
		
	}
       CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------------------------------------

function NhanRuongNKTanThu()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t H�ng Li�n",tbProp={6,1,4516,1,1,0},nCount=1,tbParam={1,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t Kh�i",tbProp={6,1,4517,1,1,0},nCount=1,tbParam={2,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t Th��ng Gi�i",tbProp={6,1,4518,1,1,0},nCount=1,tbParam={3,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t H� Uy�n",tbProp={6,1,4519,1,1,0},nCount=1,tbParam={4,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t Y�u ��i",tbProp={6,1,4520,1,1,0},nCount=1,tbParam={5,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t H�i",tbProp={6,1,4523,1,1,0},nCount=1,tbParam={8,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t B�i",tbProp={6,1,4524,1,1,0},nCount=1,tbParam={9,0,0,0,0,0}},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Nguy�t Khuy�t H� Gi�i",tbProp={6,1,4525,1,1,0},nCount=1,tbParam={10,0,0,0,0,0}},}, "test", 1);

end
	function Nhan500BachLuyenThanhCuong()

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4906,1,1},nCount=500,},}, "test", 1);--B�ch Luy�n Th�nh C��ng


end
function Nhan500NgocLinhHon()

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4912,1,1},nCount=500,},}, "test", 1);--Ng�c Linh H�n


end

function Nhan500NgocCuongHoa()

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end

			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4913,1,1},nCount=500,},}, "test", 1);--Ng�c C��ng H�a Nguy�n Li�u

end

function nhanmatna3cap()

local Index = AddItem(0,11,840,1,0,0) ITEM_SetExpiredTime(Index,24*60*1) SyncItem(Index)
end
function LayPhiPhong7()

tbAwardTemplet:GiveAwardByList({{szName = "T�i L� Bao Phi Phong C�p 8 (10 Sao)",tbProp={6,1,4941,1,1},nCount=1,},}, "test", 1);
end
function Nhan300kdiemhuyetchien()
SetTask(3002, GetTask(3002) + 300000) --150k diem huyet chienn
Say("Ok �� nh�n th�m 300k �i�m huy�t chi�n, �i�m hi�n t�i l� "..GetTask(3002).."!")
end
function HoTroNhanBiKip2x()

	tbAwardTemplet:GiveAwardByList({{szName = "M�t T�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "M�t T�ch K� N�ng 150 C�p 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "M�t T�ch K� N�ng 150 C�p 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
	
end

function LayNguyenLieuEp()
local tbAward ={
	{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},
	{szName="L�nh b�i Tinh S��ng",tbProp={6,1,4882,1,0,0},nCount=5},
	{szName="�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,0,0},nCount=5},
	{szName="�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,0,0},nCount=5},
	{szName="T� Tinh Kho�ng Th�ch ",tbProp={6,1,4885,1,0,0},nCount=1000},
}
		if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000")
		else
			Talk(1,"","<color=green> H�y �� Tr�ng 20 � R�i Nh�n Th��ng...!")
		end
end

function LayNguaVip()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end
local Index = AddGoldItem(0,3964)
local Index = AddGoldItem(0,3965)
local Index = AddGoldItem(0,3966)
local Index = AddGoldItem(0,6049)
end

function LayPhiPhongVip()
--for i=6058,6071 do

--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6058},nQuality=1,nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6059},nQuality=1,nCount=1},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6060},nQuality=1,nCount=1},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6065},nQuality=1,nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6066},nQuality=1,nCount=1},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6067},nQuality=1,nCount=1},}, "test", 1);
--end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNangGM()
player = GetPlayerCount()
if AdminGame() == 1 then
MoChucNangGM()
else
Msg2Player("Ch� C� <color=pink>Ban Qu�n Tr� <color>M�i C� Quy�n S� D�ng Ch�c N�ng N�y")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"Nh�n L�nh B�i Admin", LBAdmin},
		{"K�t Th�c ��i Tho�i."},
	}
	CreateNewSayEx("<npc>L�o Phu C� M�t S� Man C�c Ph�m, Ng��i C�n M�n N�o", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
AddMagic(732, 50) --Skill GM
AddMagic(1209, 50) --Skill GM
AddSkillState(314,5,1,600*60*18)
AddSkillState(86,50,1,600*60*18)
local index = AddItem(6,1,4257,0,0,0,0); SetItemBindState(index,-2)
--local index = AddItem(6,1,4358,0,0,0,0); SetItemBindState(index,-2)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=yellow>L�nh B�i <color> <color=pink>ADMIN <color>")
end



function tbhoangkimbk()

	local tbOpt =
	{
		{"Nh�n Trang B�", dohoangkim},	
		--{"H� Tr� Tr�ng Sinh 5", level_up_to},
		{"TH� Tr� C�i L�o 3- Ch�n Skill ��i Di�p Kh� Tr�o", TienHanhCaiLao_tanthu_ddkt},
		{"TH� Tr� C�i L�o 3- Ch�n Skill X�c Xu�t Tr�ng K�ch", TienHanhCaiLao_tanthu_xstk},
	--	{"TH� Tr� C�i L�o 2", HoTroChuyenSinh1},
		{"Nh�n �i�m H� Tr�.",testgame1},


		{"Tho�t.",no},
		
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end
function HoTroLevel()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
if nCureLevel <200 then
	ST_LevelUp(nAddLevel)
	else Say("Ban da cap 200 roi")
	end
end
-----------------------------------------------------------------------------------------------------------------------
function TienHanhCaiLao_tanthu_ddkt()
local n_solan = GetTask(5969);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
	if CalcFreeItemCellCount() >= 20 then
		if (nTransLife >= 5 and nCurLevel >= 200 and n_solan==0) then
			nAddLevel = 170 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(4)
			AddProp(681) SetTask(5969,3); do_clear_prop(); TaySkill();-- VongSangCaiLao()
			DelMagic(1534)
			DelMagic(1535)
			AddMagic(993,20)
			AddMagic(1718,20)
			PlayerFunLib:AddSkillState(1727,1,3,18*60*60*24*300,1)
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o <bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: ��ng C�p Tu Luy�n ��t 200+ Tr�ng Sinh 5+ Ch�a C�i L�o...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H�y �� Tr�ng 20 � Tr�ng R�i Ti�p T�c C�i T� H�i Sinh")
	end
end
function TienHanhCaiLao_tanthu_xstk()
local n_solan = GetTask(5969);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
	if CalcFreeItemCellCount() >= 20 then
		if (nTransLife >= 5 and nCurLevel >= 200 and n_solan==0) then
			nAddLevel = 170 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(4)
			AddProp(681) SetTask(5969,3); do_clear_prop(); TaySkill();-- VongSangCaiLao()
		--	ConsumeEquiproomItem(60,4,417,1,1)
		--	if n_solan ==1 then
			DelMagic(1534)
			DelMagic(1535)
			AddMagic(998,20)
                        AddMagic(1715,20)
			PlayerFunLib:AddSkillState(1718,1,3,18*60*60*24*300,1)
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o <bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: ��ng C�p Tu Luy�n ��t 200+ Tr�ng Sinh 5+ Ch�a C�i L�o...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H�y �� Tr�ng 20 � Tr�ng R�i Ti�p T�c C�i T� H�i Sinh")
	end
end

function doimau()

	if check_faction() == 0 then
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
	end


	local tbOpt =
	{
	--	{"M�u Tr�ng", mautrang},
		{"Ch�nh ph�i", mauvang},
		{"T� ph�i", mautim},
		{"Trung l�p", mauxanh},
		{"S�t Th�", maudo},
		{"Tr� l�i", dialog_main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("��i m�u PK Ch�nh Ph�i th�nh c�ng.")
		Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("��i m�u PK T� Ph�i th�nh c�ng.")
		Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("��i m�u PK Trung L�p th�nh c�ng.")
		Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("��i m�u PK S�t Th� th�nh c�ng.")	
		Pay(50000)
end
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return 1
	end
	return 0
end

	IncludeLib("TONG")
	Include("\\script\\tong\\tong_header.lua")
	
function kienthiet()
		local nBuildFund = 10000000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i, kh�ng th� s� d�ng ��o c� n�y.");
		return 1
	end
	local figure = TONGM_GetFigure(nTongID, GetName())

	if (figure == TONG_MASTER)then
		TONG_ApplyAddBuildFund(nTongID,nBuildFund)
		Msg2Player(format("N�p th�nh c�ng %d �i�m Ki�n thi�t", nBuildFund))
		%tbLog:PlayerAwardLog("KienThietLebao", "SuDungVatPhamNhanDuoc5000000diemKienThiet")
		return 0;
	end
end

-----------------------------------------------------------------------------------------------------------------------
function testgame1()
	local tbOpt =
	{
		{"1. Nh�n �i�m Danh V�ng. ", diemdanhvong},
	--	{"2. Nh�n �i�m Ph�c duy�n. ", diemphucduyen},
	--	{"3. Nh�n �i�m C�ng hi�n. ", conghien},
		{"4. Nh�n �i�m t�i l�nh ��o. ", lanhdao},
		{"5. Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------
function level_up_to()
local nCureLevel = GetLevel()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 5) then
		Say("C�c H� C� Mu�n N�ng C�p Tr�ng Sinh 5 + C�i L�o 1 Kh�ng",2,"Ta Mu�n N�ng C�p/Up_Level_200","H�y B�/No")
	else
		Say("�� ��t C�p Tr�ng Sinh 5 R�i")
	end
end

function Up_Level_200()
local nCureLevel = GetLevel()
local nTransLife = ST_GetTransLifeCount()
local nAddLevel = 200 - nCureLevel
for w = 1,5 do
ST_LevelUp(nAddLevel)
ST_DoTransLife()
end
ST_LevelUp(nAddLevel)
end

------------------------------------------------
function laytiendong()
	if (CalcEquiproomItemCount(4,417,1,-1)>=5000) then
		Talk(1, "", "Ti�n ��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("Nh�n ���c 5000 ti�n ��ng.");
	end
end;

function laytienvan()
	if (GetCash() >= 50000000000) then 	--  50 ng�n v�n
		Talk(1, "", "Ng�n l��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		Earn(500000000000)
		Msg2Player("Nh�n ���c 500000000000 v�n l��ng.");
	end
end

function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function diemdanhvong()
	AddRepute(1000);
	Msg2Player("Nh�n ���c 1000 �i�m danh v�ng.");
end

function diemphucduyen()
	FuYuan_Start();
	FuYuan_Add(1000);
end

function conghien()
AddContribution(100000)
Msg2Player("Nh�n ���c 1000 �i�m Cong Hien.");
end

-------------------------------code cua quy ----------------------------------
function NhanHoTroTanThu()


		if CalcFreeItemCellCount() >= 20 and GetTask(3903)== 0 then
		
			--local Index = AddItem(6,1,4825,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) ITEM_SetExpiredTime(Index,40320) SyncItem(Index) SetItemBindState(Index, -2) --Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) ITEM_SetExpiredTime(Index,40320)  SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4265,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
			--local Index = AddItem(6,1,4804,1,0,0) SetItemBindState(Index, -2) --MT 180
			local Index = AddItem(6,1,4875,1,0,0) ITEM_SetExpiredTime(Index,20160) SyncItem(Index) SetItemBindState(Index, -2) --Hanh Hiep Ky
			local Index = AddItem(6,1,4825,1,0,0) ITEM_SetExpiredTime(Index,10080) SyncItem(Index) SetItemBindState(Index, -2) --Hoi Thien 900
			SetTask(3903,1)
			--Earn(50000)
		else
			Talk(1,"","<color=green>�� Nh�n Th��ng ho�c H�y �� Tr�ng 20 � R�i Nh�n Th��ng...!")
		end
end

----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng��i t�m ta c� vi�c g�?",3,
		"Mua 1 l�n ��i t�n nh�n v�t/dangkydoiten",
		"��t t�n cho nh�n v�t/about_rename_role",
		"Nh�n ti�n gh� qua th�i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B�n v�n c�n 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end

	Say("M�i l�n ��i t�n nh�n v�t c�n <color=red>50 Ti�n ��ng<color>, ng��i chu�n b� xong ch�a?",
		2,
		"Ta �� chu�n b� xong/#buy_addibox_yes(10)",
		"Khi n�o �� ti�n ta s� quay l�i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 50) then
		Say("<color=yellow>Kh�ch quan ch�a �� 30 ti�n! Khi n�o c� �� ti�n h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(50, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B�n nh�n ���c 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t");
end
function about_rename_role()
	local strInfo = "Ch�o b�n! V� t�n nh�n v�t c�a b�n v� ng��i ch�i kh�c gi�ng nhau, cho n�n h� th�ng �� gi�p b�n ��i t�n, b�n c� th� s�a t�n nh�n v�t c�a b�n tr��c ��y, c� th� ki�m tra xem t�n �� c� d�ng ���c kh�ng. Ch� �! B�n ch� c� 1 c� h�i duy nh�t �� ��i t�n, xin h�y c�n th�n t�ng b��c.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta mu�n ki�m tra xem t�n nh�n v�t d�ng ���c kh�ng/query_rolename",
			"Ti�n h�nh thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
			"�� l�n sau ta thay ��i v�y/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t m�i v�o");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "��i hi�p <color=yellow>"..GetName().."<color> �� ��i t�n th�nh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B�n mu�n ��i t�n g�?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin l�i! B�n ph�i mua l�n ��i t�n nh�n v�t r�i h�y ch�n ch�c n�ng n�y!<color>",
		1,
		"Bi�t r�i!/cancel")
end

sbook_150skill_list = {
		[0] = {318 ,319 ,321, 1055, 1056, 1057},
		[1] = {322 ,323 ,325, 1058, 1059, 1060},
		[2] = {339 ,302 ,342, 1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
		[10] = {1368, 1384},
}

sbook_factstep_list = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
		[10] = 5,
	}

function fixskill150()
	
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>��ng c�p c�a ng��i th�p h�n 150, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	local tb150Skill = sbook_150skill_list[nFact]
	
	for i = 1, getn(tb150Skill) do
		local nSkillId = tb150Skill[i]
		if (HaveMagic(nSkillId) == 20) then
			SetTask(3000,0)
		end

		if (HaveMagic(nSkillId) == 21) then
			SetTask(3000,2)
		end
		if (HaveMagic(nSkillId) == 22) then
			SetTask(3000,4)
		end
		if (HaveMagic(nSkillId) == 23) then
			SetTask(3000,6)
		end
		if (HaveMagic(nSkillId) == 24) then
			SetTask(3000,8)
		end


	end
end



function vukhihoangkimmax()
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
local tab_Content =
{
--"Trang B� Kim �./kimomax",
--"Trang B� B�ch H�./bachhomax",
--"Trang B� X�ch L�n./xichlanmax",
--"Trang B� Minh Ph��ng./minhphuongmax",
"Trang B� ��ng Long/danglongmax",
--"Trang B� Tinh S��ng/tinhsuongmax",
--"Trang B� Nguy�t Khuy�t/nguyetkhuyetmax",
"Tho�t./no",
"Tr� l�i"
}


Say(" Mu�n l�y trang b� g� ? ", getn(tab_Content), tab_Content);
end


-------------------------------------------------------------------------------------------------------------------------------
function nguyetkhuyetmax24h()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#senguyetkhuyetmax(1)",
"Thi�u L�m B�ng/#senguyetkhuyetmax(2)",
"Thi�u L�m �ao/#senguyetkhuyetmax(3)",
"Thi�n V��ng Ch�y/#senguyetkhuyetmax(4)",
"Thi�n V��ng Th��ng/#senguyetkhuyetmax(5)",
"Thi�n V��ng �ao/#senguyetkhuyetmax(6)",
"Nga Mi Ki�m/#senguyetkhuyetmax(7)",
"Nga Mi Ch��ng/#senguyetkhuyetmax(8)",
"Th�y Y�n �ao/#senguyetkhuyetmax(9)",
"Th�y Y�n Song �ao/#senguyetkhuyetmax(10)",
"Ng� ��c Ch��ng/#senguyetkhuyetmax(11)",
"Ng� ��c �ao/#senguyetkhuyetmax(12)",
"���ng M�n Phi �ao/#senguyetkhuyetmax(13)",
"���ng M�n N�/#senguyetkhuyetmax(14)",
"Trang sau/nguyetkhuyetmax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function nguyetkhuyetmax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#senguyetkhuyetmax(15)",
"C�i Bang R�ng/#senguyetkhuyetmax(16)",
"C�i Bang B�ng/#senguyetkhuyetmax(17)",
"Thi�n Nh�n K�ch/#senguyetkhuyetmax(18)",
"Thi�n Nh�n �ao/#senguyetkhuyetmax(19)",
"V� �ang Ki�m/#senguyetkhuyetmax(21)",
"V� �ang Quy�n/#senguyetkhuyetmax(20)",
"C�n L�n �ao/#senguyetkhuyetmax(22)",
"C�n L�n Ki�m/#senguyetkhuyetmax(23)",
"Hoa S�n Kh� T�ng/#senguyetkhuyetmax(25)",
"Hoa S�n Ki�m T�ng/#senguyetkhuyetmax(24)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function senguyetkhuyetmax(nId)
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang 40 � Tr�ng")
end

for i = 5650, 5659 do
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
local idcan=10*nId+i-10
	tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t",tbProp={0,idcan},nQuality=1,nExpiredTime=nRestMin,nBindState = -2}}, "test", 1);
end
end
function nhanff710sao()
local tab_Content = {

"Ph�ng Th� V�t L�/#nhanff710sao_ok(6088)",
"Kh�ng B�ng/#nhanff710sao_ok(6093)",
"Kh�ng L�i/#nhanff710sao_ok(6098)",
"Kh�ng H�a/#nhanff710sao_ok(6103)",
"Kh�ng ��c/#nhanff710sao_ok(6109)",
"X�c Xu�t Tr�ng K�ch/#nhanff710sao_ok(6113)",
"R�i kh�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon Phi Phong Ph� Quang", getn(tab_Content), tab_Content);

end
function nhanff710sao_ok(nId)
if (CalcFreeItemCellCount() < 10) then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang 10 � Tr�ng")
end

local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));

	tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t",tbProp={0,nId},nQuality=1,nExpiredTime=nRestMin,nBindState = -2}}, "test", 1);

end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------
function TaySkill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local h = HaveMagic(732)		
	local k = HaveMagic(733)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
	KickOutSelf()
end

function tinhsuongtest()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setinhsuong(1)",
"Thi�u L�m B�ng/#setinhsuong(2)",
"Thi�u L�m �ao/#setinhsuong(3)",
"Thi�n V��ng Ch�y/#setinhsuong(4)",
"Thi�n V��ng Th��ng/#setinhsuong(5)",
"Thi�n V��ng �ao/#setinhsuong(6)",
"Nga Mi Ki�m/#setinhsuong(7)",
"Nga Mi Ch��ng/#setinhsuong(8)",
"Th�y Y�n �ao/#setinhsuong(9)",
"Th�y Y�n Song �ao/#setinhsuong(10)",
"Ng� ��c Ch��ng/#setinhsuong(11)",
"Ng� ��c �ao/#setinhsuong(12)",
"���ng M�n Phi �ao/#setinhsuong(13)",
"���ng M�n N�/#setinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setinhsuong(15)",
"C�i Bang R�ng/#setinhsuong(16)",
"C�i Bang B�ng/#setinhsuong(17)",
"Thi�n Nh�n K�ch/#setinhsuong(18)",
"Thi�n Nh�n �ao/#setinhsuong(19)",
"V� �ang Quy�n/#setinhsuong(20)",
"V� �ang Ki�m/#setinhsuong(21)",
"C�n L�n �ao/#setinhsuong(22)",
"C�n L�n Ki�m/#setinhsuong(23)",
"Hoa S�n Ki�m T�ng/#setinhsuong(24)",
"Hoa S�n Kh� T�ng/#setinhsuong(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setinhsuong(nId)
for i = 3405, 3414 do
AddGoldItem(0,10*nId+i-10)
end
end


function DieuDuongTest()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#SetDieuDuong(1)",
"Thi�u L�m B�ng/#SetDieuDuong(2)",
"Thi�u L�m �ao/#SetDieuDuong(3)",
"Thi�n V��ng Ch�y/#SetDieuDuong(4)",
"Thi�n V��ng Th��ng/#SetDieuDuong(5)",
"Thi�n V��ng �ao/#SetDieuDuong(6)",
"Nga Mi Ki�m/#SetDieuDuong(7)",
"Nga Mi Ch��ng/#SetDieuDuong(8)",
"Th�y Y�n �ao/#SetDieuDuong(9)",
"Th�y Y�n Song �ao/#SetDieuDuong(10)",
"Ng� ��c Ch��ng/#SetDieuDuong(11)",
"Ng� ��c �ao/#SetDieuDuong(12)",
"���ng M�n Phi �ao/#SetDieuDuong(13)",
"���ng M�n N�/#SetDieuDuong(14)",
"Trang sau/DieuDuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function DieuDuong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#SetDieuDuong(15)",
"C�i Bang R�ng/#SetDieuDuong(16)",
"C�i Bang B�ng/#SetDieuDuong(17)",
"Thi�n Nh�n K�ch/#SetDieuDuong(18)",
"Thi�n Nh�n �ao/#SetDieuDuong(19)",
"V� �ang Quy�n/#SetDieuDuong(20)",
"V� �ang Ki�m/#SetDieuDuong(21)",
"C�n L�n �ao/#SetDieuDuong(22)",
"C�n L�n Ki�m/#SetDieuDuong(23)",
"Hoa S�n Ki�m T�ng/#SetDieuDuong(24)",
"Hoa S�n Kh� T�ng/#SetDieuDuong(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function SetDieuDuong(nId)
for i = 7093, 7102 do
AddGoldItem(0,10*nId+i-10)
end
end


function DieuDuongTest_TinhChe()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#SetDieuDuong_TinhChe(1)",
"Thi�u L�m B�ng/#SetDieuDuong_TinhChe(2)",
"Thi�u L�m �ao/#SetDieuDuong_TinhChe(3)",
"Thi�n V��ng Ch�y/#SetDieuDuong_TinhChe(4)",
"Thi�n V��ng Th��ng/#SetDieuDuong_TinhChe(5)",
"Thi�n V��ng �ao/#SetDieuDuong_TinhChe(6)",
"Nga Mi Ki�m/#SetDieuDuong_TinhChe(7)",
"Nga Mi Ch��ng/#SetDieuDuong_TinhChe(8)",
"Th�y Y�n �ao/#SetDieuDuong_TinhChe(9)",
"Th�y Y�n Song �ao/#SetDieuDuong_TinhChe(10)",
"Ng� ��c Ch��ng/#SetDieuDuong_TinhChe(11)",
"Ng� ��c �ao/#SetDieuDuong_TinhChe(12)",
"���ng M�n Phi �ao/#SetDieuDuong_TinhChe(13)",
"���ng M�n N�/#SetDieuDuong_TinhChe(14)",
"Trang sau/DieuDuong2_TinhChe",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function DieuDuong2_TinhChe()
local tab_Content = {
"���ng M�n Phi Ti�u/#SetDieuDuong_TinhChe(15)",
"C�i Bang R�ng/#SetDieuDuong_TinhChe(16)",
"C�i Bang B�ng/#SetDieuDuong_TinhChe(17)",
"Thi�n Nh�n K�ch/#SetDieuDuong_TinhChe(18)",
"Thi�n Nh�n �ao/#SetDieuDuong_TinhChe(19)",
"V� �ang Quy�n/#SetDieuDuong_TinhChe(20)",
"V� �ang Ki�m/#SetDieuDuong_TinhChe(21)",
"C�n L�n �ao/#SetDieuDuong_TinhChe(22)",
"C�n L�n Ki�m/#SetDieuDuong_TinhChe(23)",
"Hoa S�n Ki�m T�ng/#SetDieuDuong_TinhChe(24)",
"Hoa S�n Kh� T�ng/#SetDieuDuong_TinhChe(25)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function SetDieuDuong(nId)
for i = 7343, 7352 do
AddGoldItem(0,10*nId+i-10)
end
end