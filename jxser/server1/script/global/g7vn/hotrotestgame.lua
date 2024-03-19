IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\tieungao\\huyvatpham.lua")
Include("\\script\\global\\g7vn\\hotrotinhnang.lua")
Include("\\script\\global\\g7vn\\npctanthu.lua")
Include("\\script\\global\\tieungao\\lenhbaihotro.lua")
Include("\\script\\global\\tieungao\\thorentieungao.lua")
Include("\\script\\global\\tieungao\\dotim.lua")

local tbGMAccount = {"thaipham1","kimluyen2002","","","","",""} TENADMIN ={{"testthiennhan",99},{"ADMIN02",99},{"",99},{"",99},{"",99},{"",99},{"",99},{"",99}}


function main()
	
	dofile("script/global/g7vn/hotrotestgame.lua")
	if CalcFreeItemCellCount() < 10 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if (nDate >= 202001021000) and (nDate <= 202008041000) then
Say("H�y Ch� ��n 10h00 Server M�i Ch�nh Th�c Khai M� Nh�")
return 1;
end

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan ngh�n m�i ng��i ��n v�i <color=yellow>http://volamhoainiemus.com<color>"
	local Opt = 
	{
		--{"Nh�p giftcode chia s� 5 b�nh ti�n th�o l�.", nhapgifcodethem},
		--{"Nh�n ��n b� 8 TTL ��c bi�t s� c� 26-12", g7denbu8TTL},	
	--	{"Nh�n �� Test", tbhoangkimbk},
	--{"Nh�n M�nh T�ng B�o ��", layevent},
	{"Nh�n c�p 200.", Nhancap200},
--{"V�o ph�i nh�n K� N�ng 150", choose_faction},
	{"Nh�n Set HKMP ", sethkmp},
	{"X�a H�nh Trang ", ClearBagCell},
--	{"H�p Trang B� Xanh", nhanmanhthienthach},
		{"Nh�n Ti�n ��ng + Ti�n V�n", LayTienDOngtest},
	--		{"Nh�n Huy�n Tinh Kho�ng Th�ch", NhanPhiPhong},
--{"Nh�n Nh�t K� + VLMT + TTK.", Nhannhatky},
	{"Nh�n L�nh B�i + Phi T�c + Chi�n C�", layhongngoc},
	--{"Nh�n Ph�c Duy�n", NhanDoLongDao},
	--	{"Nh�n H� Tr� T�n Th�", NhanHoTroThienKiem},
	--	{"��i T�n Nh�n V�t Game", DoiTenNV},
	--	{"Thay ��i M�u PK.", trangthai1},
	--	{"Thay ��i Gi�i T�nh", chuyen_gt},
	--{"T�y t�y Nh�n V�t + Gi�m PK.",TayTuyFree},
	{"T�y t�y Nh�n V�t.",clear_attibute_point},
	--	{"Ch�c H� Tr� Kh�c", MenuFree},
	{"Nh�n Trang B� AB,DQ MAX", NhanDoHoTroTanThu},
	{"Nh�n Ng�a Chi�u D� + Phi V�n + B�n Ti�u", NhanNguaVip},

	

	{"Nh�n b� k�p 9x, 12x", bikip90120},
--	{"Nh�n Nh�n Kim Quang", nhannhankimquang},
--		{"Nh�n Si�u Quang", NhanPhienVu},
	
--	{"Nh�n c�c v�t ph�m �p trang b� T�m", gmtrangbitim},
--		{"Nh�n �� T�m", dotim2},
		{"Nh�n �� Xanh", trangbixanh},

	--{"Nh�n B�o R��ng V� Kh� HKMP Maxx", laybaoruongmax},
{"Nh�n Nh�c V��ng Ki�m L� Bao", laynhacvuongkiem},

	{"Nh�n Th�y Tinh + THBT ", NhanTinhNgoc},
--	{"Nh�n Phi V�n Th�ch ", NhanDaiTinhNgoc},
	--{"Nh�n M�nh �� Vi�m �� ", NhanManhViemDe},
	--{"Nh�n M�nh �� HKMP", NhanManhDoHKMP},
--	{"Nh�n T�ng Kim B� B�o", NhanTongKimBiBao},
--	{"Nh�n T�n V�t Nhi�m V� Ng�y", NhanLBNhiemVuNgay},
--	{"Nh�n T�i T�ng Kim", nhantuitongkim},
		--{"Xu�t s� c�p 60 + 5 v�n l��ng ", xuatsu1},	
		--{"Nh�n Phong V�n l�nh b�i <free>", gmnhanphongvanlenhbai},	
		--{"Ng� Hoa L� Bao T�n Th�", tuimautanthu},
		--{"Nh�p CODE T�n Th� m�c ��nh <c�>.", nhapgifcodetanthumoi},
		--{"Nh�p CODE T�n Th�", CODEVIP},	---- code pha thien tram
		--{"Nh�n th��ng ��t m�c c�p 30,40,50,60,90 ... ", gmnhanthuongdatmoc},
	--	{"�i�u ki�n th�nh l�p Bang H�i.", gmlapbanghoi},
		{"H�y trang b� kh�a", DisposeItem},	
		--{"M�u PK", doimau},	
		{"K�t th�c ��i tho�i. ", End},
	}
	
	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		--	tinsert(Opt, 1, {"Ch�c N�ng Qu�n L� GM", ChucNangGM}) 
			break
		end
	end
	--	local _, nTongID = GetTongName()
--		local figure = TONGM_GetFigure(nTongID, GetName())
	--if (figure == TONG_MASTER)then
--	if GetName()==("�Ti�u�Phong") or GetName()==("o��B�o�Ng�c��o��") or GetName()==("CuuTuoc")  or GetName()==("MT�C�Ba�idol") or GetName()==("��i�B��V��ng") then
	--if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
	
--	end
	
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
	tinsert(Opt, 1, {"Nh�n �i�m Ki�n Thi�t (D�nh Cho Bang Ch�).", kienthiet}) 
	end;
--	if GetAccount()=="boquyx1234" then
	CreateNewSayEx(szTitle,Opt)
	--end
end
function ClearBagCell()
	Say("<color=green>L�u �:<color> <color=yellow>Mu�n X�a R��ng H�nh Trang C�n Ph�i Ki�m Tra\nTrang B� V�t Ph�m Tr��c Khi X�a.\n<color=green>Lo�i Tr� 6 V�t Ph�m H� Th�ng Gi� L�i:<color>\n<color=red>\t* Giang H� L�nh, Th�n H�nh Ph�, H�i Th�nh Ph�\n\t\t\tKim Nguy�n B�o, Ti�n Xu, T�i M�u T�n Th�.<color>",2,"X�c Nh�n Mu�n X�a/ClearBag","H�y B�/No")
end
tbItemBag = {
	["L�nh b�i GM"] = 1,
	["L�nh B�i T�n Th�"] = 1,
	["T�i M�u T�n Th�"] = 1,
	["Th�n H�nh Ph�"] = 1,
	["H�i th�nh ph� (l�n) "] = 1,
	["H�i th�nh ph� (nh�) "] = 1,
	["Th� ��a ph� (s� d�ng v� h�n) "] = 1,
	["Kim Nguy�n B�o"] = 1,
	["Ti�n ��ng"] = 1,
	
}
function ClearBag()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		local szName = GetItemName(tbRoomItems[i])
		if not tbItemBag[szName] or tbItemBag[szName] ~= 1 then
			RemoveItemByIndex(tbRoomItems[i])
		end
	end
end
function dotim2()	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


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
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
	--	AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


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
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


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
		AddQualityItem(2,0,2,5,7,3,0,-1,-1,-1,-1,-1,-1)
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
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


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


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


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


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkimyendai",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkimyendai()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


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
function Nhannhatky()
 if CalcFreeItemCellCount()<10 then 
	Say("H�nh trang ko �� 10 � tr�ng")
	return
 end

		local tbAwardcc={
	{szName="Nh�t K�", tbProp={6,1,2126,1,0,0},nCount = 1},
	{szName="T�y T�y Kinh", tbProp={6,1,22,1,0,0},nCount = 16},
	{szName="V� L�m M�t T�ch", tbProp={6,1,26,1,0,0},nCount = 16},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
function NhanPhiPhong()
 if CalcFreeItemCellCount()<10 then 
	Say("H�nh trang ko �� 10 � tr�ng")
	return
 end
for i=1,10 do
				tbAwardTemplet:GiveAwardByList({{szName = "Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,i,0},nCount=10},}, "test", 1);
				end
end

function nhanmanhthienthach()
 if CalcFreeItemCellCount()<10 then 
	Say("H�nh trang ko �� 10 � tr�ng")
	return
 end

		local tbAwardcc={
--	{szName="H�p Qu� Xanh", tbProp={6,1,1441,1,0,0},nCount = 100},
	{szName="H�p Qu� Xanh", tbProp={6,1,4478,1,0,0},nCount = 100},
	{szName="H� Ti�u L�nh", tbProp={6,1,4476,1,0,0},nCount = 100},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
function nhanmatnatongkim()
if CalcFreeItemCellCount()  >= 10 then
for i=842,851 do
		tbAwardTemplet:GiveAwardByList({{szName = "M�t n� T�ng Kim",tbProp={0,11,i,1,1,0,0},nCount=1},}, "test", 1);
		end
	else
	Say("H�nh trang kh�ng �� 10 � tr�ng.")
	return
	end
end
function nhannhankimquang()
if CalcFreeItemCellCount() >= 5 then
	local tbAwardcc={
	{szName="Nh�n Kim Quang", tbProp={0,3771},nCount = 2,nQuality=1},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
	end
end
function bikip90120()
if CalcFreeItemCellCount() >= 10 then

	local Index = AddItem(6,1,1125,0,0,0,0) SetItemBindState(Index, -2)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 10 � R�i Nh�n Th��ng...!")
	end
end
--=============t�y t�y============
function clear_attibute_point()
	local tbOpt =
	{
		{"1. T�y �i�m k� n�ng.", clear_skill},
		{"2. T�y �i�m ti�m n�ng.", clear_prop},
		{"3. K�t th�c."},
	}
	CreateNewSayEx("<npc>H�y ch�n h� tr� c�n t�y t�y.", tbOpt)
end
function laynhacvuongkiem()
if CalcFreeItemCellCount() >= 5 then
	local tbAwardcc={
	{szName="Nh�c V��ng Ki�m L� Bao", tbProp={6,1,2340,1,0,0},nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
	end
end
function laybaoruongmax()
	if CalcFreeItemCellCount() >= 5 then
	local tbAwardcc={
	{szName="B�o r��ng HKMP Max", tbProp={6,1,4402,1,0,0},nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
	end
end
function layhongngoc()
	if CalcFreeItemCellCount() >= 10 then
	local tbAwardcc={
	{szName="Chi�n C�", tbProp={6,1,156,1,0,0},nCount = 100},
	{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 100},
	{szName="Phi T�c", tbProp={6,1,190,1,0,0},nCount = 100},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 10 � R�i Nh�n Th��ng...!")
	end
end
function LayTienDOngtest()
	if (CalcEquiproomItemCount(4,417,1,-1)>=2000) then
		Talk(1, "", "Ti�n ��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		Earn(10000000)
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong


	--	AddStackItem(200,4,343,1,1,0,0,0)	-- nhan 100 tien dong
	--	AddStackItem(200,4,343,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("Nh�n ���c 1000 ti�n ��ng.");
	end
end;
function NhanLBNhiemVuNgay()
	if CalcFreeItemCellCount() >= 5 then
		local tbAwardcc={
{szName="T�n V�t VI�m ��", tbProp={6,1,4422,1,0,0},nCount = 10},
{szName="T�n V�t V��t �i", tbProp={6,1,4423,1,0,0},nCount = 10},
{szName="T�n V�t PLD", tbProp={6,1,4424,1,0,0},nCount = 10},
{szName="T�n V�t T�ng Kim", tbProp={6,1,4425,1,0,0},nCount = 10},
{szName="T�n V�t T�n S�", tbProp={6,1,4426,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
		end
end
function NhanTongKimBiBao()
	if CalcFreeItemCellCount() >= 5 then
		local tbAwardcc={
{szName="T�ng Kim B� B�o", tbProp={6,1,2741,1,0,0},nCount = 250},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
		end
end
function NhanManhDoHKMP()
	if CalcFreeItemCellCount() >= 10 then
		local tbAwardcc={
{szName="M�nh HKMP Thi�u L�m", tbProp={6,1,4427,1,0,0},nCount = 500},
{szName="M�nh HKMP Thi�n V��ng", tbProp={6,1,4428,1,0,0},nCount = 500},
{szName="M�nh HKMP Nga My", tbProp={6,1,4429,1,0,0},nCount = 500},
{szName="M�nh HKMP Thu� Y�n", tbProp={6,1,4430,1,0,0},nCount = 500},
{szName="M�nh HKMP C�i Bang", tbProp={6,1,4431,1,0,0},nCount = 500},
{szName="M�nh HKMP Thi�n Nh�n", tbProp={6,1,4432,1,0,0},nCount = 500},
{szName="M�nh HKMP ���ng M�n", tbProp={6,1,4433,1,0,0},nCount = 500},
{szName="M�nh HKMP Ng� ��c", tbProp={6,1,4434,1,0,0},nCount = 500},
{szName="M�nh HKMP C�n L�n", tbProp={6,1,4435,1,0,0},nCount = 500},
{szName="M�nh HKMP V� �ang", tbProp={6,1,4436,1,0,0},nCount = 500},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 10 � R�i Nh�n Th��ng...!")
		end
end
function NhanManhViemDe()
	if CalcFreeItemCellCount() >= 5 then
		local tbAwardcc={
{szName="M�nh To�i Nh�n", tbProp={6,1,4417,1,0,0},nCount = 500},
{szName="M�nh Ch�c Dung", tbProp={6,1,4418,1,0,0},nCount = 500},
{szName="M�nh Ph�c Hi", tbProp={6,1,4419,1,0,0},nCount = 500},
{szName="M�nh N� Oa", tbProp={6,1,4420,1,0,0},nCount = 500},
{szName="M�nh Th�n N�ng", tbProp={6,1,4421,1,0,0},nCount = 500},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Nh�n Th��ng...!")
		end
end
function NhanTinhNgoc()
	if CalcFreeItemCellCount() >= 10 then
		local tbAwardcc={
{szName="Th�y tinh", tbProp={4,238,1,1},nCount = 1},
{szName="Th�y tinh", tbProp={4,239,1,1},nCount = 1},
{szName="Th�y tinh", tbProp={4,240,1,1},nCount = 1},
{szName="THBT", tbProp={4,353,1,1},nCount = 6},

}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 10 � R�i Nh�n Th��ng...!")
		end
end
function NhanDaiTinhNgoc()
	if CalcFreeItemCellCount() >= 10 then
		local tbAwardcc={
{szName="Phi V�n Th�ch", tbProp={4,1620,1,1},nCount = 100},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
	else
			Talk(1,"","<color=green> H�y �� Tr�ng 10 � R�i Nh�n Th��ng...!")
		end
end
function NhanHoTroThienKiem()
if GetTask(4545) == 1 then
	Talk(1,"","<color=green> C�c h� �� nh�n H� Tr� T�n Th� r�i...!")
	return 0;
end
if CalcFreeItemCellCount() >= 40 then
			--SetTask(NhiemVuTanThu,1)
			SetTask(4545,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) ITEM_SetExpiredTime(Index,60*24*30) SyncItem(Index) SetItemBindState(Index, -2) --Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) ITEM_SetExpiredTime(Index,60*24*30) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
			local Index = AddItem(0,10,8,10,0,0,0) SetItemBindState(Index, -2 )-- Chieu Da
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0)  SetItemBindState(Index, -2) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1125,0,0,0,0) SetItemBindState(Index, -2)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			local Index = AddItem(6,1,2390,0,0,0,0) SetItemBindState(Index, -2) --tu ngoc
			local Index = AddItem(6,1,2391,0,0,0,0) SetItemBindState(Index, -2) --bach ngoc
			local tbAwardcc={
{szName="C�n Kh�n T�o H�a �an", tbProp={6,1,215,1,0,0},nCount = 5000,nBindState=-2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");

			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green> H�y �� Tr�ng 40 � R�i Nh�n Th��ng...!")
		end
end
function NhanDoHoTroTanThu()
local tbSay = {

--"Nh�n Trang B� �� Xanh./trangbixanh",
--"Nh�n Lb T�n Th� + Skill Thi�u + Ng�a./NhanHoTroTanThu",
--"Nh�n 1 M�n HKMP L�a Ch�n./hkmpvip1",
"Nh�n 1 Set Kim Quang ./SetKimQuang",
"Nh�n Set An Bang (C�c Ph�m)./NhanAnBangcucpham",
"Nh�n Set Nhu T�nh (C�c Ph�m)./Nhannhutinhtanthu",
"Nh�n Set ��nh Qu�c (C�c Ph�m)./Nhandinhquoccucpham",
"Nh�n Set Hi�p C�t (C�c Ph�m)./Nhanhiepcotcucpham",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)

end

function SetKimQuang()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x4 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,194) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,195) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,196) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,197) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,198) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,199) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,200) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,201) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,202) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,203) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c b� trang b� Kim Quang VIP.")
end

function NhanAnBangcucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,408) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,409) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,410) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,411) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c b� trang s�c An Bang C�c Ph�m.")
end

function Nhannhutinhcucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,416) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,417) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,418) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,419) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c b� trang b� Nhu T�nh.")
end

function Nhandinhquoccucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,403) SyncItem(Index) --SetItemBindState(Index, -2)-- DQ Tieu
	local Index = AddGoldItem(0,404) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,405) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,406) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,407) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c Trang B� ��nh Qu�c!")
end

function Nhanhiepcotcucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,412) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,413) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,414) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,415) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c Trang B� Hi�p C�t!")
end


function NhanNguaVip()
if CalcFreeItemCellCount()<20 then
Say("H�nh trang c�n 20 � tr�ng")
return
end
local tbAward = {
			{szName="Chi�u D� Ng�c S� T�",tbProp={0,10,5,5,0,0,0},nCount=1},		
			{szName="Phi V�n",tbProp={0,10,8,10,0,0,0},nCount=1},	
			{szName="B�n Ti�u",tbProp={0,10,6,10,0,0,0},nCount=1},	
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng")
end

function Moc2000_ngua(idgold)
	--if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
			{szName="S� T� Ho�ng Kim",tbProp={0,idgold},nCount=1,nQuality=1,nExpiredTime=30*24*60},		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 300") SetTask(NHANTHUONGMOC,1)
		--Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300")	

	--else
	--	Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	--end
end
function layevent()
local award1111  ={
{

		{szName="Thien Thach",tbProp={4,490,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,491,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,492,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,493,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,494,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,495,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,496,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,497,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,498,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,499,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,500,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,501,1,1,0,0},nCount=100},

	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");

end

function nhantuitongkim()
local award1111  ={
{

		{szName="Thien Thach",tbProp={6,1,4361,1,0,0},nCount=500},


	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");

end
function NhanPhienVu()
local Index = AddItem(0,10,13,10,0,0,0) -- Phi Van
end
-------------------------------------------------code cua quy ----------------------------------
function Nhancap200()
	if GetLevel()<200 then
			local nAddLevel =200 - GetLevel()

		ST_LevelUp(nAddLevel)

else Say("Ng��i �� ��t C�p 190 R�i")
end
end
-----------code moi

function xuatsu1()
if check_faction() == 1 then
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
end

if(GetLevel()<61) then
		Say("Ch� d�nh cho nh�ng nh�n s� ��ng c�p > 60")
		return 1
end

	if  GetCamp() ~= 4 then
			
				local sltien = GetCash()
				local sltienphaitra = 50000
				if(sltien < sltienphaitra) then
					Say("��i hi�p kh�ng mang ��: "..sltienphaitra.." l��ng")
					return
				end
				SetCamp(4)
				SetCurCamp(4)
								Pay(sltienphaitra)
else
Say("Ng��i l� s�t th� kh�ng th� th�c hi�n m�nh l�nh!")
end
end
function NhanDoLongDao()

	if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y nh�n.",0);
		return 1
	end
local award1111  ={
{

		{szName="Ph�c Duy�n",tbProp={6,1,124,1,1},nCount=20},

	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");
end






function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end

function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;


function tuimautanthu()
local idex = AddItem(6,1,4335,1,0,0,0)
SyncItem(idex);
SetItemBindState(idex,-2) -- Khoa bao hiem vinh vien
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
local index = AddItem(6,1,4357,0,0,0,0); SetItemBindState(index,-2)
local index = AddItem(6,1,4358,0,0,0,0); SetItemBindState(index,-2)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=yellow>L�nh B�i <color> <color=pink>ADMIN <color>")
end


function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Hoa S�n Ki�m/#sethkmphskiem()",
		"Hoa S�n Kh� T�ng /#sethkmphskiemtong()",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k�ch/#sethkmp1(21)",
		"Thi�n Nh�n b�a/#sethkmp1(22)",
		"Thi�n Nh�n �ao/#sethkmpche()",
		"V� �ang kh� /#sethkmp1(24)",
		"V� �ang ki�m/#sethkmp1(25)",
		"Trang sau/sethkmp3",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function sethkmp3()
	local tab_Content = {
		"R�i kh�i/no",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
		"Ti�u Dao C�m/#sethkmptieudaocam()",
		"Tieu Dao Ki�m/#sethkmptieudaokiem()",

	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end
function sethkmpche1()
local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
if  nCount_muaban >= 200  then
	ConsumeEquiproomItem(200, 4,417, 1,-1)
	local Index = AddGoldItem(0,681) SyncItem(Index)
	local Index = AddGoldItem(0,682) SyncItem(Index)
	local Index = AddGoldItem(0,683) SyncItem(Index)
	local Index = AddGoldItem(0,684) SyncItem(Index)
	local Index = AddGoldItem(0,685) SyncItem(Index)
	Talk(1, "", "Trao ��i th�nh c�ng");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>200 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end
	

end

function sethkmptieudaocam()
	local Index = AddGoldItem(0,6284) SyncItem(Index)
	local Index = AddGoldItem(0,6285) SyncItem(Index)
	local Index = AddGoldItem(0,6286) SyncItem(Index)
	local Index = AddGoldItem(0,6287) SyncItem(Index)
	local Index = AddGoldItem(0,6288) SyncItem(Index)

end

function sethkmptieudaokiem()
	local Index = AddGoldItem(0,6290) SyncItem(Index)
	local Index = AddGoldItem(0,6291) SyncItem(Index)
	local Index = AddGoldItem(0,6292) SyncItem(Index)
	local Index = AddGoldItem(0,6293) SyncItem(Index)
	local Index = AddGoldItem(0,6294) SyncItem(Index)

end

function sethkmphskiem()
	local Index = AddGoldItem(0,6272) SyncItem(Index)
	local Index = AddGoldItem(0,6273) SyncItem(Index)
	local Index = AddGoldItem(0,6274) SyncItem(Index)
	local Index = AddGoldItem(0,6275) SyncItem(Index)
	local Index = AddGoldItem(0,6276) SyncItem(Index)

end

function sethkmphskiemtong()
	local Index = AddGoldItem(0,6278) SyncItem(Index)
	local Index = AddGoldItem(0,6279) SyncItem(Index)
	local Index = AddGoldItem(0,6280) SyncItem(Index)
	local Index = AddGoldItem(0,6281) SyncItem(Index)
	local Index = AddGoldItem(0,6282) SyncItem(Index)

end

function sethkmpche()
	--local Index = AddGoldItem(0,790) SyncItem(Index)
	local Index = AddGoldItem(0,111) SyncItem(Index)
	local Index = AddGoldItem(0,112) SyncItem(Index)
	local Index = AddGoldItem(0,113) SyncItem(Index)
	local Index = AddGoldItem(0,114) SyncItem(Index)
	local Index = AddGoldItem(0,115) SyncItem(Index)

end
-------------------------------------------------code cua quy ----------------------------------
function NhanHoTroTanThu()
		if CalcFreeItemCellCount() >= 40 then
			--SetTask(NhiemVuTanThu,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) SetItemBindState(Index, -2)--Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
			local Index = AddItem(0,10,8,10,0,0,0) SetItemBindState(Index, -2 )-- Chieu Da
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0)  SetItemBindState(Index, -2)--bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1125,0,0,0,0) SetItemBindState(Index, -2)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green> H�y �� Tr�ng 40 � R�i Nh�n Th��ng...!")
		end
end

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