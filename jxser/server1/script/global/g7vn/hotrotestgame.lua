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
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if (nDate >= 202001021000) and (nDate <= 202008041000) then
Say("H·y Chê §Õn 10h00 Server Míi ChÝnh Thøc Khai Më NhÐ")
return 1;
end

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan nghªn mäi ng­êi ®Õn víi <color=yellow>http://volamhoainiemus.com<color>"
	local Opt = 
	{
		--{"NhËp giftcode chia sÏ 5 b×nh tiªn th¶o lé.", nhapgifcodethem},
		--{"NhËn ®Òn bï 8 TTL ®Æc biÖt sù cè 26-12", g7denbu8TTL},	
	--	{"NhËn §å Test", tbhoangkimbk},
	--{"NhËn M¶nh Tµng B¶o §å", layevent},
	{"NhËn cÊp 200.", Nhancap200},
--{"Vµo ph¸i nhËn Kû N¨ng 150", choose_faction},
	{"NhËn Set HKMP ", sethkmp},
	{"Xãa Hµnh Trang ", ClearBagCell},
--	{"Hép Trang BÞ Xanh", nhanmanhthienthach},
		{"NhËn TiÒn §ång + TiÒn V¹n", LayTienDOngtest},
	--		{"NhËn HuyÒn Tinh Kho¸ng Th¹ch", NhanPhiPhong},
--{"NhËn NhÊt Kû + VLMT + TTK.", Nhannhatky},
	{"NhËn LÖnh Bµi + Phi Tèc + ChiÕn Cæ", layhongngoc},
	--{"NhËn Phóc Duyªn", NhanDoLongDao},
	--	{"NhËn Hç Trî T©n Thñ", NhanHoTroThienKiem},
	--	{"§çi Tªn Nh©n VËt Game", DoiTenNV},
	--	{"Thay §æi Mµu PK.", trangthai1},
	--	{"Thay §æi Giíi TÝnh", chuyen_gt},
	--{"TÈy tñy Nh©n VËt + Gi¶m PK.",TayTuyFree},
	{"TÈy tñy Nh©n VËt.",clear_attibute_point},
	--	{"Chøc Hç Trî Kh¸c", MenuFree},
	{"NhËn Trang BÞ AB,DQ MAX", NhanDoHoTroTanThu},
	{"NhËn Ngùa ChiÕu D¹ + Phi V©n + B«n Tiªu", NhanNguaVip},

	

	{"NhËn bÝ kÝp 9x, 12x", bikip90120},
--	{"NhËn NhÉn Kim Quang", nhannhankimquang},
--		{"NhËn Siªu Quang", NhanPhienVu},
	
--	{"NhËn c¸c vËt phÈm Ðp trang bÞ TÝm", gmtrangbitim},
--		{"NhËn §å TÝm", dotim2},
		{"NhËn §å Xanh", trangbixanh},

	--{"NhËn B¶o R­¬ng Vò KhÝ HKMP Maxx", laybaoruongmax},
{"NhËn Nh¹c V­¬ng KiÕm LÔ Bao", laynhacvuongkiem},

	{"NhËn Thñy Tinh + THBT ", NhanTinhNgoc},
--	{"NhËn Phi V©n Th¹ch ", NhanDaiTinhNgoc},
	--{"NhËn M·nh §å Viªm §Õ ", NhanManhViemDe},
	--{"NhËn M·nh §å HKMP", NhanManhDoHKMP},
--	{"NhËn Tèng Kim BÝ B¶o", NhanTongKimBiBao},
--	{"NhËn TÝn VËt NhiÖm Vô Ngµy", NhanLBNhiemVuNgay},
--	{"NhËn Tói Tèng Kim", nhantuitongkim},
		--{"XuÊt s­ cÊp 60 + 5 v¹n l­îng ", xuatsu1},	
		--{"NhËn Phong V©n lÖnh bµi <free>", gmnhanphongvanlenhbai},	
		--{"Ngò Hoa LÔ Bao T©n Thñ", tuimautanthu},
		--{"NhËp CODE T©n Thñ mÆc ®Þnh <cò>.", nhapgifcodetanthumoi},
		--{"NhËp CODE T©n Thñ", CODEVIP},	---- code pha thien tram
		--{"NhËn th­ëng ®¹t mèc cÊp 30,40,50,60,90 ... ", gmnhanthuongdatmoc},
	--	{"§iÒu kiÖn thµnh lËp Bang Héi.", gmlapbanghoi},
		{"Hñy trang bÞ khãa", DisposeItem},	
		--{"Mµu PK", doimau},	
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	
	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		--	tinsert(Opt, 1, {"Chøc N¨ng Qu¶n Lý GM", ChucNangGM}) 
			break
		end
	end
	--	local _, nTongID = GetTongName()
--		local figure = TONGM_GetFigure(nTongID, GetName())
	--if (figure == TONG_MASTER)then
--	if GetName()==("ÙTiªuÙPhong") or GetName()==("oÙÙB¶oÙNgäcÙÙoÙÙ") or GetName()==("CuuTuoc")  or GetName()==("MTÙCÙBaÙidol") or GetName()==("§¹iÙB¸ÙV­¬ng") then
	--if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
	
--	end
	
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
	tinsert(Opt, 1, {"NhËn ®iÓm KiÕn ThiÕt (Dµnh Cho Bang Chñ).", kienthiet}) 
	end;
--	if GetAccount()=="boquyx1234" then
	CreateNewSayEx(szTitle,Opt)
	--end
end
function ClearBagCell()
	Say("<color=green>L­u ý:<color> <color=yellow>Muèn Xãa R­¬ng Hµnh Trang CÇn Ph¶i KiÓm Tra\nTrang BÞ VËt PhÈm Tr­íc Khi Xãa.\n<color=green>Lo¹i Trõ 6 VËt PhÈm HÖ Thèng Gi÷ L¹i:<color>\n<color=red>\t* Giang Hå LÖnh, ThÇn Hµnh Phï, Håi Thµnh Phï\n\t\t\tKim Nguyªn B¶o, TiÒn Xu, Tói M¸u T©n Thñ.<color>",2,"X¸c NhËn Muèn Xãa/ClearBag","Hñy Bá/No")
end
tbItemBag = {
	["LÖnh bµi GM"] = 1,
	["LÖnh Bµi T©n Thñ"] = 1,
	["Tói M¸u T©n Thñ"] = 1,
	["ThÇn Hµnh Phï"] = 1,
	["Håi thµnh phï (lín) "] = 1,
	["Håi thµnh phï (nhá) "] = 1,
	["Thæ ®Þa phï (sö dông v« h¹n) "] = 1,
	["Kim Nguyªn B¶o"] = 1,
	["TiÒn ®ång"] = 1,
	
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
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkimyendai",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
	Say("Hµnh trang ko ®ñ 10 « trèng")
	return
 end

		local tbAwardcc={
	{szName="NhÊt Kû", tbProp={6,1,2126,1,0,0},nCount = 1},
	{szName="TÈy Tñy Kinh", tbProp={6,1,22,1,0,0},nCount = 16},
	{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,1,0,0},nCount = 16},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
function NhanPhiPhong()
 if CalcFreeItemCellCount()<10 then 
	Say("Hµnh trang ko ®ñ 10 « trèng")
	return
 end
for i=1,10 do
				tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,i,0},nCount=10},}, "test", 1);
				end
end

function nhanmanhthienthach()
 if CalcFreeItemCellCount()<10 then 
	Say("Hµnh trang ko ®ñ 10 « trèng")
	return
 end

		local tbAwardcc={
--	{szName="Hép Quµ Xanh", tbProp={6,1,1441,1,0,0},nCount = 100},
	{szName="Hép Quµ Xanh", tbProp={6,1,4478,1,0,0},nCount = 100},
	{szName="Hé Tiªu LÖnh", tbProp={6,1,4476,1,0,0},nCount = 100},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
function nhanmatnatongkim()
if CalcFreeItemCellCount()  >= 10 then
for i=842,851 do
		tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹ Tèng Kim",tbProp={0,11,i,1,1,0,0},nCount=1},}, "test", 1);
		end
	else
	Say("Hµnh trang kh«ng ®ñ 10 « trèng.")
	return
	end
end
function nhannhankimquang()
if CalcFreeItemCellCount() >= 5 then
	local tbAwardcc={
	{szName="NhÉn Kim Quang", tbProp={0,3771},nCount = 2,nQuality=1},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
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
			Talk(1,"","<color=green> H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng...!")
	end
end
--=============tÈy tñy============
function clear_attibute_point()
	local tbOpt =
	{
		{"1. TÈy ®iÓm kü n¨ng.", clear_skill},
		{"2. TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"3. KÕt thóc."},
	}
	CreateNewSayEx("<npc>H·y chän hç trî cÇn tÈy tñy.", tbOpt)
end
function laynhacvuongkiem()
if CalcFreeItemCellCount() >= 5 then
	local tbAwardcc={
	{szName="Nh¹c V­¬ng KiÕm LÔ Bao", tbProp={6,1,2340,1,0,0},nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
	end
end
function laybaoruongmax()
	if CalcFreeItemCellCount() >= 5 then
	local tbAwardcc={
	{szName="B¶o r­¬ng HKMP Max", tbProp={6,1,4402,1,0,0},nCount = 1},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
	end
end
function layhongngoc()
	if CalcFreeItemCellCount() >= 10 then
	local tbAwardcc={
	{szName="ChiÕn Cæ", tbProp={6,1,156,1,0,0},nCount = 100},
	{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 100},
	{szName="Phi Tèc", tbProp={6,1,190,1,0,0},nCount = 100},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng...!")
	end
end
function LayTienDOngtest()
	if (CalcEquiproomItemCount(4,417,1,-1)>=2000) then
		Talk(1, "", "TiÒn ®ång trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		Earn(10000000)
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(200,4,417,1,1,0,0,0)	-- nhan 100 tien dong


	--	AddStackItem(200,4,343,1,1,0,0,0)	-- nhan 100 tien dong
	--	AddStackItem(200,4,343,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("NhËn ®­îc 1000 tiÒn ®ång.");
	end
end;
function NhanLBNhiemVuNgay()
	if CalcFreeItemCellCount() >= 5 then
		local tbAwardcc={
{szName="TÝn VËt VIªm §Õ", tbProp={6,1,4422,1,0,0},nCount = 10},
{szName="TÝn VËt V­ît ¶i", tbProp={6,1,4423,1,0,0},nCount = 10},
{szName="TÝn VËt PLD", tbProp={6,1,4424,1,0,0},nCount = 10},
{szName="TÝn VËt Tèng Kim", tbProp={6,1,4425,1,0,0},nCount = 10},
{szName="TÝn VËt TÝn Sø", tbProp={6,1,4426,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanTongKimBiBao()
	if CalcFreeItemCellCount() >= 5 then
		local tbAwardcc={
{szName="Tèng Kim BÝ B¶o", tbProp={6,1,2741,1,0,0},nCount = 250},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanManhDoHKMP()
	if CalcFreeItemCellCount() >= 10 then
		local tbAwardcc={
{szName="M·nh HKMP ThiÕu L©m", tbProp={6,1,4427,1,0,0},nCount = 500},
{szName="M·nh HKMP Thiªn V­¬ng", tbProp={6,1,4428,1,0,0},nCount = 500},
{szName="M·nh HKMP Nga My", tbProp={6,1,4429,1,0,0},nCount = 500},
{szName="M·nh HKMP Thuý Yªn", tbProp={6,1,4430,1,0,0},nCount = 500},
{szName="M·nh HKMP C¸i Bang", tbProp={6,1,4431,1,0,0},nCount = 500},
{szName="M·nh HKMP Thiªn NhÉn", tbProp={6,1,4432,1,0,0},nCount = 500},
{szName="M·nh HKMP §­êng M«n", tbProp={6,1,4433,1,0,0},nCount = 500},
{szName="M·nh HKMP Ngò §éc", tbProp={6,1,4434,1,0,0},nCount = 500},
{szName="M·nh HKMP C«n L«n", tbProp={6,1,4435,1,0,0},nCount = 500},
{szName="M·nh HKMP Vâ §ang", tbProp={6,1,4436,1,0,0},nCount = 500},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanManhViemDe()
	if CalcFreeItemCellCount() >= 5 then
		local tbAwardcc={
{szName="M·nh To¹i Nh©n", tbProp={6,1,4417,1,0,0},nCount = 500},
{szName="M·nh Chóc Dung", tbProp={6,1,4418,1,0,0},nCount = 500},
{szName="M·nh Phôc Hi", tbProp={6,1,4419,1,0,0},nCount = 500},
{szName="M·nh N÷ Oa", tbProp={6,1,4420,1,0,0},nCount = 500},
{szName="M·nh ThÇn N«ng", tbProp={6,1,4421,1,0,0},nCount = 500},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanTinhNgoc()
	if CalcFreeItemCellCount() >= 10 then
		local tbAwardcc={
{szName="Thñy tinh", tbProp={4,238,1,1},nCount = 1},
{szName="Thñy tinh", tbProp={4,239,1,1},nCount = 1},
{szName="Thñy tinh", tbProp={4,240,1,1},nCount = 1},
{szName="THBT", tbProp={4,353,1,1},nCount = 6},

}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanDaiTinhNgoc()
	if CalcFreeItemCellCount() >= 10 then
		local tbAwardcc={
{szName="Phi V©n Th¹ch", tbProp={4,1620,1,1},nCount = 100},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
	else
			Talk(1,"","<color=green> H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanHoTroThienKiem()
if GetTask(4545) == 1 then
	Talk(1,"","<color=green> C¸c h¹ ®· nhËn Hç Trî T©n Thñ råi...!")
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
{szName="Cµn Kh«n T¹o Hãa §an", tbProp={6,1,215,1,0,0},nCount = 5000,nBindState=-2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");

			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green> H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanDoHoTroTanThu()
local tbSay = {

--"NhËn Trang BÞ §å Xanh./trangbixanh",
--"NhËn Lb T©n Thñ + Skill ThiÕu + Ngùa./NhanHoTroTanThu",
--"NhËn 1 Mãn HKMP Lùa Chän./hkmpvip1",
"NhËn 1 Set Kim Quang ./SetKimQuang",
"NhËn Set An Bang (Cùc PhÈm)./NhanAnBangcucpham",
"NhËn Set Nhu T×nh (Cùc PhÈm)./Nhannhutinhtanthu",
"NhËn Set §Þnh Quèc (Cùc PhÈm)./Nhandinhquoccucpham",
"NhËn Set HiÖp Cèt (Cùc PhÈm)./Nhanhiepcotcucpham",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)

end

function SetKimQuang()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x4 « trèng");
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
Msg2Player("NhËn ®­îc bé trang bÞ Kim Quang VIP.")
end

function NhanAnBangcucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,408) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,409) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,410) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,411) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("NhËn ®­îc bé trang søc An Bang Cùc PhÈm.")
end

function Nhannhutinhcucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,416) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,417) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,418) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,419) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("NhËn ®­îc bé trang bÞ Nhu T×nh.")
end

function Nhandinhquoccucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,403) SyncItem(Index) --SetItemBindState(Index, -2)-- DQ Tieu
	local Index = AddGoldItem(0,404) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,405) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,406) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,407) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("NhËn ®­îc Trang BÞ §Þnh Quèc!")
end

function Nhanhiepcotcucpham()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,412) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,413) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,414) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,415) SyncItem(Index) --SetItemBindState(Index, -2)-- an bang
Msg2Player("NhËn ®­îc Trang BÞ HiÖp Cèt!")
end


function NhanNguaVip()
if CalcFreeItemCellCount()<20 then
Say("Hµnh trang cÇn 20 « trèng")
return
end
local tbAward = {
			{szName="ChiÕu D¹ Ngäc S­ Tö",tbProp={0,10,5,5,0,0,0},nCount=1},		
			{szName="Phi V©n",tbProp={0,10,8,10,0,0,0},nCount=1},	
			{szName="B«n Tiªu",tbProp={0,10,6,10,0,0,0},nCount=1},	
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng")
end

function Moc2000_ngua(idgold)
	--if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
			{szName="S­ Tö Hoµng Kim",tbProp={0,idgold},nCount=1,nQuality=1,nExpiredTime=30*24*60},		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 300") SetTask(NHANTHUONGMOC,1)
		--Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300")	

	--else
	--	Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
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
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");

end

function nhantuitongkim()
local award1111  ={
{

		{szName="Thien Thach",tbProp={6,1,4361,1,0,0},nCount=500},


	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");

end
function NhanPhienVu()
local Index = AddItem(0,10,13,10,0,0,0) -- Phi Van
end
-------------------------------------------------code cua quy ----------------------------------
function Nhancap200()
	if GetLevel()<200 then
			local nAddLevel =200 - GetLevel()

		ST_LevelUp(nAddLevel)

else Say("Ng­¬i §· §¹t CÊp 190 Råi")
end
end
-----------code moi

function xuatsu1()
if check_faction() == 1 then
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
end

if(GetLevel()<61) then
		Say("ChØ dµnh cho nh÷ng nh©n sü ®¼ng cÊp > 60")
		return 1
end

	if  GetCamp() ~= 4 then
			
				local sltien = GetCash()
				local sltienphaitra = 50000
				if(sltien < sltienphaitra) then
					Say("§¹i hiÖp kh«ng mang ®ñ: "..sltienphaitra.." l­îng")
					return
				end
				SetCamp(4)
				SetCurCamp(4)
								Pay(sltienphaitra)
else
Say("Ng­¬i lµ s¸t thñ kh«ng thÓ thùc hiÖn mÖnh lÖnh!")
end
end
function NhanDoLongDao()

	if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y nhËn.",0);
		return 1
	end
local award1111  ={
{

		{szName="Phóc Duyªn",tbProp={6,1,124,1,1},nCount=20},

	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");
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
Msg2Player("ChØ Cã <color=pink>Ban Qu¶n TrÞ <color>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"NhËn LÖnh Bµi Admin", LBAdmin},
		{"Kªt Thóc §èi Tho¹i."},
	}
	CreateNewSayEx("<npc>L·o Phu Cã Mét Sè Man Cùc PhÈm, Ng­êi CÇn Mãn Nµo", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
local index = AddItem(6,1,4357,0,0,0,0); SetItemBindState(index,-2)
local index = AddItem(6,1,4358,0,0,0,0); SetItemBindState(index,-2)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=yellow>LÖnh Bµi <color> <color=pink>ADMIN <color>")
end


function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu L©m quyÒn/#sethkmp1(1)",
		"ThiÕu L©m c«n/#sethkmp1(2)",
		"ThiÕu L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My kiÕm/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Hoa S¬n KiÕm/#sethkmphskiem()",
		"Hoa S¬n KhÝ T«ng /#sethkmphskiemtong()",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
		"Ngò §éc ch­ëng/#sethkmp1(12)",
		"Ngò §éc ®ao/#sethkmp1(13)",
		"Ngò §éc bïa/#sethkmp1(14)",
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn kÝch/#sethkmp1(21)",
		"Thiªn NhÉn bïa/#sethkmp1(22)",
		"Thiªn NhÉn ®ao/#sethkmpche()",
		"Vâ §ang khÝ /#sethkmp1(24)",
		"Vâ §ang kiÕm/#sethkmp1(25)",
		"Trang sau/sethkmp3",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function sethkmp3()
	local tab_Content = {
		"Rêi khái/no",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n kiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
		"Tiªu Dao CÇm/#sethkmptieudaocam()",
		"Tieu Dao KiÕm/#sethkmptieudaokiem()",

	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
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
	Talk(1, "", "Trao ®æi thµnh c«ng");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>200 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
			Talk(1,"","<color=green> H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng...!")
		end
end

function kienthiet()
		local nBuildFund = 10000000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi, kh«ng thÓ sö dông ®¹o cô nµy.");
		return 1
	end
	local figure = TONGM_GetFigure(nTongID, GetName())

	if (figure == TONG_MASTER)then
		TONG_ApplyAddBuildFund(nTongID,nBuildFund)
		Msg2Player(format("N¹p thµnh c«ng %d ®iÓm KiÕn thiÕt", nBuildFund))
		%tbLog:PlayerAwardLog("KienThietLebao", "SuDungVatPhamNhanDuoc5000000diemKienThiet")
		return 0;
	end
end