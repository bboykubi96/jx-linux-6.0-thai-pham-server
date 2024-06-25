function dotim()	local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"VËt phÈm hæ trî/khoangth",
		"MÆt n¹/manat",
		"Trang bÞ b¹ch kim/bachkim",
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
		"B¹ch Kim Yªu §¸i/bachkim",
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


function bachkim()
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
function khoangth()
local tab_Content = {
		"HuyÒn tinh/huytin",
		"kho¸ng th¹ch/kdb",
		"S¸t thñ gi¶n/stg",
		"Thñy tinh/thuyti",
		"Phóc duyªn/phucd",
		"KÕt thóc."
	}
	Say(" Muèn lÊy g× th× click ! ", getn(tab_Content), tab_Content);
end;

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti()
AddEventItem(239) 
AddEventItem(240) 
AddEventItem(241) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
function bachkim()
	local tbOpt =
	{
		{"ThiÕu l©m", bktl},
		{"Thiªn v­¬ng", bktv},
		{"®­êng m«n", bkdm},
		{"Ngò ®éc", bk5d},
		{"Nga mi", bknm},
		{"Thuý yªn", bkty},
		{"C¸i bang", bkcb},
		{"Thiªn nhÉn", bktn},
		{"Vâ ®ang", bkvd},
		{"C«n l«n", bkcl},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän m«n ph¸i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end
function manat()	local tab_Content = {
		"MÆt n¹ /hacthan",
		"MÆt n¹ 1/matna1",
		"MÆt n¹ 2/matna2",
		"MÆt n¹ 3/matna3",
		"MÆt n¹ 4/matna4",
		"MÆt n¹ 5/matna5",
		"KÕt thóc."
	}
	Say("Chän lo¹i mÆt n¹", getn(tab_Content), tab_Content);
end;

function hacthan()
for i=3890,3894 do
AddGoldItem(0, i)
end
end
function matna1()
for i=4493,4523 do
AddGoldItem(0, i)
end
end
function matna2()
for i=4524,4554 do
AddGoldItem(0, i)
end
end
function matna3()
for i=4555,4585 do
AddGoldItem(0, i)
end
end
function matna4()
for i=4586,4616 do
AddGoldItem(0, i)
end
end
function matna5()
for i=4617,4630 do
AddGoldItem(0, i)
end
end
function dohoangkim()
local szTitle = "Hæ trîi t©n thñ - Test"
local tbOpt =
{
{"Trang BÞ Tö M·ng", tumang},
{"Trang BÞ Kim ¤", kimo},
{"Trang BÞ B¹ch Hæ", bachho},
{"Trang BÞ XÝch L©n", xichlan},
{"Trang BÞ Minh Ph­îng", minhphuong},
{"Trang BÞ §»ng Long", danglong},
{"Thoi ta khong cÇn"},
}
CreateNewSayEx(szTitle, tbOpt)
end
function xichlan()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#sexichlan(1)",
"Thieu Lam Bong/#sexichlan(2)",
"Thieu Lam Dao/#sexichlan(3)",
"Thien Vuong Chuy/#sexichlan(4)",
"Thien Vuong Thuong/#sexichlan(5)",
"Thien Vuong Dao/#sexichlan(6)",
"Nga My kiem/#sexichlan(7)",
"Nga My chuong/#sexichlan(8)",
"Thuy Yen Dao/#sexichlan(9)",
"Thuy yen Song Dao/#sexichlan(10)",
"Ngu Doc Chuong/#sexichlan(11)",
"Ngu Doc Dao/#sexichlan(12)",
"Duong Mon Phi Dao/#sexichlan(13)",
"Duong Mon No/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#sexichlan(15)",
"Cai Bang Rong/#sexichlan(16)",
"Cai Bang Bong/#sexichlan(17)",
"Thien Nhan Kich/#sexichlan(18)",
"Thien Nhan Dao/#sexichlan(19)",
"Vo Dang Kiem/#sexichlan(20)",
"Vo Dang Quyen/#sexichlan(21)",
"Con Lon Dao/#sexichlan(22)",
"Con Lon Kiem/#sexichlan(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sexichlan(nId)
for i = 2515, 2524 do
AddGoldItem(0,10*nId+i-10)
end
end
function minhphuong()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#seminhphuong(1)",
"Thieu Lam Bong/#seminhphuong(2)",
"Thieu Lam Dao/#seminhphuong(3)",
"Thien Vuong Chuy/#seminhphuong(4)",
"Thien Vuong Thuong/#seminhphuong(5)",
"Thien Vuong Dao/#seminhphuong(6)",
"Nga My kiem/#seminhphuong(7)",
"Nga My chuong/#seminhphuong(8)",
"Thuy Yen Dao/#seminhphuong(9)",
"Thuy yen Song Dao/#seminhphuong(10)",
"Ngu Doc Chuong/#seminhphuong(11)",
"Ngu Doc Dao/#seminhphuong(12)",
"Duong Mon Phi Dao/#seminhphuong(13)",
"Duong Mon No/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#seminhphuong(15)",
"Cai Bang Rong/#seminhphuong(16)",
"Cai Bang Bong/#seminhphuong(17)",
"Thien Nhan Kich/#seminhphuong(18)",
"Thien Nhan Dao/#seminhphuong(19)",
"Vo Dang Kiem/#seminhphuong(20)",
"Vo Dang Quyen/#seminhphuong(21)",
"Con Lon Dao/#seminhphuong(22)",
"Con Lon Kiem/#seminhphuong(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function seminhphuong(nId)
for i = 2745, 2754 do
AddGoldItem(0,10*nId+i-10)
end
end
function danglong()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#sedanglong(1)",
"Thieu Lam Bong/#sedanglong(2)",
"Thieu Lam Dao/#sedanglong(3)",
"Thien Vuong Chuy/#sedanglong(4)",
"Thien Vuong Thuong/#sedanglong(5)",
"Thien Vuong Dao/#sedanglong(6)",
"Nga My kiem/#sedanglong(7)",
"Nga My chuong/#sedanglong(8)",
"Thuy Yen Dao/#sedanglong(9)",
"Thuy yen Song Dao/#sedanglong(10)",
"Ngu Doc Chuong/#sedanglong(11)",
"Ngu Doc Dao/#sedanglong(12)",
"Duong Mon Phi Dao/#sedanglong(13)",
"Duong Mon No/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#sedanglong(15)",
"Cai Bang Rong/#sedanglong(16)",
"Cai Bang Bong/#sedanglong(17)",
"Thien Nhan Kich/#sedanglong(18)",
"Thien Nhan Dao/#sedanglong(19)",
"Vo Dang Kiem/#sedanglong(20)",
"Vo Dang Quyen/#sedanglong(21)",
"Con Lon Dao/#sedanglong(22)",
"Con Lon Kiem/#sedanglong(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sedanglong(nId)
for i = 2975, 2984 do
AddGoldItem(0,10*nId+i-10)
end
end
function bachho()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#sebachho(1)",
"Thieu Lam Bong/#sebachho(2)",
"Thieu Lam Dao/#sebachho(3)",
"Thien Vuong Chuy/#sebachho(4)",
"Thien Vuong Thuong/#sebachho(5)",
"Thien Vuong Dao/#sebachho(6)",
"Nga My kiem/#sebachho(7)",
"Nga My chuong/#sebachho(8)",
"Thuy Yen Dao/#sebachho(9)",
"Thuy yen Song Dao/#sebachho(10)",
"Ngu Doc Chuong/#sebachho(11)",
"Ngu Doc Dao/#sebachho(12)",
"Duong Mon Phi Dao/#sebachho(13)",
"Duong Mon No/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#sebachho(15)",
"Cai Bang Rong/#sebachho(16)",
"Cai Bang Bong/#sebachho(17)",
"Thien Nhan Kich/#sebachho(18)",
"Thien Nhan Dao/#sebachho(19)",
"Vo Dang Kiem/#sebachho(20)",
"Vo Dang Quyen/#sebachho(21)",
"Con Lon Dao/#sebachho(22)",
"Con Lon Kiem/#sebachho(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sebachho(nId)
for i = 2285, 2294 do
AddGoldItem(0,10*nId+i-10)
end
end
function kimo()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#sekimo(1)",
"Thieu Lam Bong/#sekimo(2)",
"Thieu Lam Dao/#sekimo(3)",
"Thien Vuong Chuy/#sekimo(4)",
"Thien Vuong Thuong/#sekimo(5)",
"Thien Vuong Dao/#sekimo(6)",
"Nga My kiem/#sekimo(7)",
"Nga My chuong/#sekimo(8)",
"Thuy Yen Dao/#sekimo(9)",
"Thuy yen Song Dao/#sekimo(10)",
"Ngu Doc Chuong/#sekimo(11)",
"Ngu Doc Dao/#sekimo(12)",
"Duong Mon Phi Dao/#sekimo(13)",
"Duong Mon No/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#sekimo(15)",
"Cai Bang Rong/#sekimo(16)",
"Cai Bang Bong/#sekimo(17)",
"Thien Nhan Kich/#sekimo(18)",
"Thien Nhan Dao/#sekimo(19)",
"Vo Dang Kiem/#sekimo(20)",
"Vo Dang Quyen/#sekimo(21)",
"Con Lon Dao/#sekimo(22)",
"Con Lon Kiem/#sekimo(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sekimo(nId)
for i = 2055, 2064 do
AddGoldItem(0,10*nId+i-10)
end
end
function tumang()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#setumang(1)",
"Thieu Lam Bong/#setumang(2)",
"Thieu Lam Dao/#setumang(3)",
"Thien Vuong Chuy/#setumang(4)",
"Thien Vuong Thuong/#setumang(5)",
"Thien Vuong Dao/#setumang(6)",
"Nga My kiem/#setumang(7)",
"Nga My chuong/#setumang(8)",
"Thuy Yen Dao/#setumang(9)",
"Thuy yen Song Dao/#setumang(10)",
"Ngu Doc Chuong/#setumang(11)",
"Ngu Doc Dao/#setumang(12)",
"Duong Mon Phi Dao/#setumang(13)",
"Duong Mon No/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#setumang(15)",
"Cai Bang Rong/#setumang(16)",
"Cai Bang Bong/#setumang(17)",
"Thien Nhan Kich/#setumang(18)",
"Thien Nhan Dao/#setumang(19)",
"Vo Dang Kiem/#setumang(20)",
"Vo Dang Quyen/#setumang(21)",
"Con Lon Dao/#setumang(22)",
"Con Lon Kiem/#setumang(23)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function setumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end

function cucpham()
	local tab_Content = {
		"Set Hoµng Kim M«n Ph¸i /sethkmp",
		"Set Xich L©n /setxl",
		"Set Cùc PhÈm §éng S¸t /cpds",
		"MÆt N¹ GM /matnagm",
		"Set Minh Ph­îng /setmp",
		"Set Song Long /setsonglo",
		"Phi Phong /phip",
		"Trang Søc /trangs",
		"Kim Ên /kiman",
		"Tæng Hîp /tongh",
		"LÊy 100 ti?n ®ång /tiendong",
		"LÊy 1000v l­îng /tienvan",
		"M¹c b¾c th¶o nguyªn lÖnh /macblb",
		"Th«i kh«ng lÊy g× n÷a h?t."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function macblb()
AddItem(6,1,1448,1,0,0)
end
function kiman()
		AddGoldItem(0,3214)
		AddGoldItem(0,3224)
		AddGoldItem(0,3234)
end
function tongh()
		AddGoldItem(0,3506)
		AddGoldItem(0,3530)
		AddGoldItem(0,3541)
		AddGoldItem(0,3880)
		AddGoldItem(0,3881)
		AddGoldItem(0,3882)
		AddGoldItem(0,3883)
		AddGoldItem(0,3884)
		AddGoldItem(0,3885)
		AddGoldItem(0,3886)
		AddGoldItem(0,3887)
		AddGoldItem(0,3888)
end

function phip()
		AddGoldItem(0,3466)
		AddGoldItem(0,3467)
		AddGoldItem(0,3468)
		AddGoldItem(0,3469)
		AddGoldItem(0,3470)
		AddGoldItem(0,3471)
		AddGoldItem(0,3472)
		AddGoldItem(0,3473)
		AddGoldItem(0,3474)
		AddGoldItem(0,3475)
		AddGoldItem(0,3476)
		AddGoldItem(0,3477)
		AddGoldItem(0,3478)
		AddGoldItem(0,3479)
		AddGoldItem(0,3480)
		AddGoldItem(0,3481)
		AddGoldItem(0,3482)
		AddGoldItem(0,3483)
		AddGoldItem(0,3484)
		AddGoldItem(0,3485)
		AddGoldItem(0,3486)
		AddGoldItem(0,3487)
		AddGoldItem(0,3488)
		AddGoldItem(0,3489)
		AddGoldItem(0,3490)
end

function trangs()
		AddGoldItem(0,3507)
		AddGoldItem(0,3508)
		AddGoldItem(0,3509)
		AddGoldItem(0,3510)
		AddGoldItem(0,3511)
		AddGoldItem(0,3512)
		AddGoldItem(0,3513)
		AddGoldItem(0,3514)
		AddGoldItem(0,3515)
		AddGoldItem(0,3516)
		AddGoldItem(0,3517)
		AddGoldItem(0,3518)
		AddGoldItem(0,3519)
		AddGoldItem(0,3520)
end

function matnagm()
--AddItem(0,11,2,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,367,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,368,0,10,10,10,10,10,10,10,gio,day,month,nam)
end



function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end



function setsonglo()
	local tab_Content = {
		"Rêi khái/no",
		"Thi?u L©m quy?n/#setsonglo1(1)",
		"Thi?u L©m c«n/#setsonglo1(2)",
		"Thi?u L©m ®ao/#setsonglo1(3)",
		"Thiªn V­¬ng chïy/#setsonglo1(4)",
		"Thiªn V­¬ng th­¬ng/#setsonglo1(5)",
		"Thiªn V­¬ng ®ao/#setsonglo1(6)",
		"Nga My ki?m/#setsonglo1(7)",
		"Nga My ch­ëng/#setsonglo1(8)",
		"Nga My buff/#setsonglo1(9)",
		"Thóy Yªn ®ao/#setsonglo1(10)",
		"Thóy Yªn song ®ao/#setsonglo1(11)",
		"Ng? §éc ch­ëng/#setsonglo1(12)",
		"Ng? §éc ®ao/#setsonglo1(13)",
		"Ng? §éc bïa/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#setsonglo1(15)",
		"§­êng M«n tô tiÔn/#setsonglo1(16)",
		"§­êng M«n phi tiªu/#setsonglo1(17)",
		"§­êng M«n bÉy/#setsonglo1(18)",
		"C¸i Bang rång/#setsonglo1(19)",
		"C¸i Bang bæng/#setsonglo1(20)",
		"Thiªn NhÉn k?ch/#setsonglo1(21)",
		"Thiªn NhÉn ®ao/#setsonglo1(22)",
		"Thiªn NhÉn bïa/#setsonglo1(23)",
		"Vâ §ang kh? /#setsonglo1(24)",
		"Vâ §ang ki?m/#setsonglo1(25)",
		"C«n L«n ®ao/#setsonglo1(26)",
		"C«n L«n ki?m/#setsonglo1(27)",
		"C«n L«n bïa/#setsonglo1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"Thi?u L©m quy?n/#sethkmp1(1)",
		"Thi?u L©m c«n/#sethkmp1(2)",
		"Thi?u L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My ki?m/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Ng? §éc ch­ëng/#sethkmp1(12)",
		"Ng? §éc ®ao/#sethkmp1(13)",
		"Ng? §éc bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn k?ch/#sethkmp1(21)",
		"Thiªn NhÉn ®ao/#sethkmp1(22)",
		"Thiªn NhÉn bïa/#sethkmp1(23)",
		"Vâ §ang kh? /#sethkmp1(24)",
		"Vâ §ang ki?m/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n ki?m/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#setxl1(1)",
"Thieu Lam Bong/#setxl1(2)",
"Thieu Lam Dao/#setxl1(3)",
"Thien Vuong Chuy/#setxl1(4)",
"Thien Vuong Thuong/#setxl1(5)",
"Thien Vuong Dao/#setxl1(6)",
"Nga My kiem/#setxl1(7)",
"Nga My chuong/#setxl1(8)",
"Thuy Yen Dao/#setxl1(9)",
"Thuy yen Song Dao/#setxl1(10)",
"Ngu Doc Chuong/#setxl1(11)",
"Ngu Doc Dao/#setxl1(12)",
"Duong Mon Phi Dao/#setxl1(13)",
"Duong Mon No/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#setxl1(15)",
"Cai Bang Rong/#setxl1(16)",
"Cai Bang Bong/#setxl1(17)",
"Thien Nhan Kich/#setxl1(18)",
"Thien Nhan Dao/#setxl1(19)",
"Vo Dang Kiem/#setxl1(20)",
"Vo Dang Quyen/#setxl1(21)",
"Con Lon Dao/#setxl1(22)",
"Con Lon Kiem/#setxl1(23)",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"Roi Khoi/no",
"Thieu Lam Quyen/#setmp1(1)",
"Thieu Lam Bong/#setmp1(2)",
"Thieu Lam Dao/#setmp1(3)",
"Thien Vuong Chuy/#setmp1(4)",
"Thien Vuong Thuong/#setmp1(5)",
"Thien Vuong Dao/#setmp1(6)",
"Nga My kiem/#setmp1(7)",
"Nga My chuong/#setmp1(8)",
"Thuy Yen Dao/#setmp1(9)",
"Thuy yen Song Dao/#setmp1(10)",
"Ngu Doc Chuong/#setmp1(11)",
"Ngu Doc Dao/#setmp1(12)",
"Duong Mon Phi Dao/#setmp1(13)",
"Duong Mon No/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"Roi Khoi/no",
"Duong Mon Phi Tieu/#setmp1(15)",
"Cai Bang Rong/#setmp1(16)",
"Cai Bang Bong/#setmp1(17)",
"Thien Nhan Kich/#setmp1(18)",
"Thien Nhan Dao/#setmp1(19)",
"Vo Dang Kiem/#setmp1(20)",
"Vo Dang Quyen/#setmp1(21)",
"Con Lon Dao/#setmp1(22)",
"Con Lon Kiem/#setmp1(23)",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end

function tienvan()
	Earn(1000000000)	
end;

function tiendong()
	
	AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong




end;