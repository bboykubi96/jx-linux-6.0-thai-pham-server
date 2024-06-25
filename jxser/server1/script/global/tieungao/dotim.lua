--Script by mcteam

Include("\\script\\global\\autoexec_head.lua")


function muabangxu(soxu)

	local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
	if (nCurTD < soxu) then
		Say("Kh¸ch quan kh«ng mang ®ñ TiÒn §ång!", 0)
		return -1;
	end

	if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
		Msg2Player("Trõ tiÒn ®ång thÊt b¹i !")
		return -1;
	end
	
	return 1;--du dieu kien mua

end;

function muabangtienvan(sltienphaitra)

	local sltien = GetCash()
	if(sltien < sltienphaitra) then
		Say("Kh¸ch quan kh«ng mang ®ñ: "..sltienphaitra.." l­îng")
		return -1
	end

	Pay(sltienphaitra)	

	return 1;--du dieu kien mua

end;


function gmtrangbitim()
	--do Say("Chøc n¨ng nµy ®ang t¹m ®ãng") return end

	local tbOpt = {}
	--tinsert(tbOpt,"Mua trang bÞ 6 dßng ./nhando6dong")
	tinsert(tbOpt,"Mua nguyªn liÖu Ðp  ./nguyenlieuep")
	tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Thî rÌn # Ta chuyªn b¸n c¸c lo¹i vËt phÈm ®Ó kh¶m n¹m trang bÞ TÝm, kh¸ch quan cÇn g×?", getn(tbOpt), tbOpt)
end

function nguyenlieuep()
	local tab_Content = {
		"HuyÒn tinh/cuahanghuyentinh",
		"Kho¸ng th¹ch 1 bé # gi¸: 100 v¹n/#cuahangkhoangthachsltienphaitra(1000000)",
		--"S¸t thñ gi¶n/stg",
		--"Thñy tinh/thuyti",
		"Phóc duyªn/cuahangphucduyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say("Kh¸ch quan muèn mua g×?", getn(tab_Content), tab_Content);
end;

function cuahangkhoangthachsltienphaitra(sotien)
	local trutien = muabangtienvan(sotien);
	if(trutien  == -1) then
		return
	end
	kdb();
	Msg2Player("§· nhËn ®­îc 1 bé kho¸ng th¹ch!")
end

function cuahangphucduyen()
	local tab_Content = {
		"Phóc duyªn lé tiÓu # gi¸: 20 v¹n /#muaphucduyenkvan(122,200000)",
		"Phóc duyªn lé trung # gi¸: 50 v¹n /#muaphucduyenkvan(123,400000)",
		"Phóc duyªn lé ®¹i # gi¸: 100 v¹n /#muaphucduyenkvan(124,1000000)",
		"KÕt thóc ®èi tho¹i."
	}
	Say("Kh¸ch quan muèn mua g×?", getn(tab_Content), tab_Content);

end;

function muaphucduyenkvan(idpd,sotien)
	local trutien = muabangtienvan(sotien);
	if(trutien  == -1) then
		return
	end
	AddItem(6,1,idpd,1,0,0,0)
	Msg2Player("§· nhËn ®­îc 1 hép phóc duyªn!")

end;

function cuahanghuyentinh()
	local tab_Content = {
		"HuyÒn tinh cÊp 4 # gi¸: 8 xu/#muahtinhbangxu(4,8)",
		"HuyÒn tinh cÊp 5 # gi¸: 10 xu/#muahtinhbangxu(5,10)",
		"HuyÒn tinh cÊp 6 # gi¸: 15 xu/#muahtinhbangxu(6,15)",
		"HuyÒn tinh cÊp 7 # gi¸: 20 xu/#muahtinhbangxu(7,20)",
		"HuyÒn tinh cÊp 8 # gi¸: 30 xu/#muahtinhbangxu(8,30)",
		"HuyÒn tinh cÊp 9 # gi¸: 40 xu/#muahtinhbangxu(9,40)",
		"KÕt thóc ®èi tho¹i."
	}
	Say("Kh¸ch quan muèn mua g×?", getn(tab_Content), tab_Content);
end;

function muahtinhbangxu(cap,xu)
	local truxu = muabangxu(xu);
	if(truxu == -1) then
		return
	end
	AddItem(6,1,147,cap,0,0,0) 
	Msg2Player("§· nhËn ®­îc 1 viªn huyÒn tinh!")
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
--AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) --hien 1
AddItem(6,1,150,1,0,0,0) --an 1 kim
AddItem(6,1,150,1,1,0,0) --an 1 moc
AddItem(6,1,150,1,2,0,0) --an 1 thuy
AddItem(6,1,150,1,3,0,0) --an 1 hoa
AddItem(6,1,150,1,4,0,0) --an 1 tho

AddItem(6,1,151,1,0,0,0) --hien 2
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) --hien 3
AddItem(6,1,154,1,0,0,0) 
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

function nhando6dong()	
	local tab_Content = {
		"Vò KhÝ/vukhi6dong",
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

function vukhi6dong()
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
		AddQualityItem(2,0,0,0,10,0,0,10,220,140,290,30,270)--kim
		AddQualityItem(2,0,0,0,10,1,0,150,480,30,230,140,320)--moc
		AddQualityItem(2,0,0,0,10,2,0,30,240,10,340,130,310)--thuy
		AddQualityItem(2,0,0,0,10,3,0,160,460,30,360,150,270)--hoa
		AddQualityItem(2,0,0,0,10,4,0,110,470,10,300,30,380)--tho
		
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,10,220,140,290,30,270)--kim
		AddQualityItem(2,0,0,1,10,1,0,150,480,30,230,140,320)--moc
		AddQualityItem(2,0,0,1,10,2,0,30,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,1,10,3,0,160,460,30,360,150,270)--hoa
		AddQualityItem(2,0,0,1,10,4,0,150,470,10,300,160,380)--tho
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,10,220,140,290,30,270)--kim
		AddQualityItem(2,0,0,2,10,1,0,150,480,30,230,140,320)--moc
		AddQualityItem(2,0,0,2,10,2,0,30,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,2,10,3,0,110,460,30,360,150,270)--hoa
		AddQualityItem(2,0,0,2,10,4,0,150,470,10,300,160,380)--tho	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,10,220,140,290,30,270)
		AddQualityItem(2,0,0,3,10,1,0,150,480,30,230,140,320)
		AddQualityItem(2,0,0,3,10,2,0,30,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,3,10,3,0,110,460,30,360,150,270)
		AddQualityItem(2,0,0,3,10,4,0,110,470,10,300,160,380)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,10,220,140,290,30,270)
		AddQualityItem(2,0,0,4,10,1,0,40,480,30,230,140,320)
		AddQualityItem(2,0,0,4,10,2,0,130,240,10,310,140,340)--thuy
		AddQualityItem(2,0,0,4,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,0,4,10,4,0,40,470,10,300,160,380)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,110,220,140,290,30,270)
		AddQualityItem(2,0,0,5,10,1,0,110,480,30,230,140,320)
		AddQualityItem(2,0,0,5,10,2,0,110,450,10,310,140,340)--thuy
		AddQualityItem(2,0,0,5,10,3,0,110,460,30,360,150,270)
		AddQualityItem(2,0,0,5,10,4,0,110,470,10,300,160,380)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,30,220,10,290,137,270)
		AddQualityItem(2,0,1,0,10,1,0,130,480,30,230,140,320)
		AddQualityItem(2,0,1,0,10,2,0,130,240,10,310,140,340)
		AddQualityItem(2,0,1,0,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,1,0,10,4,0,40,470,10,300,160,380)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,30,220,10,290,137,270)
		AddQualityItem(2,0,1,1,10,1,0,130,480,30,230,140,320)
		AddQualityItem(2,0,1,1,10,2,0,130,240,10,310,140,340)
		AddQualityItem(2,0,1,1,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,1,1,10,4,0,40,470,10,300,160,380)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,30,220,10,290,137,270)
		AddQualityItem(2,0,1,2,10,1,0,130,480,30,230,140,320)
		AddQualityItem(2,0,1,2,10,2,0,130,240,10,310,140,340)
		AddQualityItem(2,0,1,2,10,3,0,40,460,30,360,150,270)
		AddQualityItem(2,0,1,2,10,4,0,40,470,10,300,160,380)	
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

		AddQualityItem(2,0,2,0,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,0,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,0,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,0,10,3,0,150,280,160,360,90,270)
		AddQualityItem(2,0,2,0,10,4,0,90,300,150,380,160,270)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,1,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,1,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,1,10,3,0,150,280,160,360,90,270)
		AddQualityItem(2,0,2,1,10,4,0,90,300,150,380,160,270)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,2,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,2,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,2,10,3,0,150,280,160,360,90,270)
		AddQualityItem(2,0,2,2,10,4,0,90,300,150,380,160,270)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,3,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,3,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,3,10,3,0,150,280,90,360,160,270)
		AddQualityItem(2,0,2,3,10,4,0,90,300,150,380,160,270)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,4,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,4,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,4,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,4,10,4,0,90,300,150,380,160,270)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,5,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,5,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,5,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,5,10,4,0,90,300,150,380,160,270)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,6,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,6,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,6,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,6,10,4,0,90,300,150,380,160,270)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,8,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,8,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,8,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,8,10,4,0,90,300,150,380,160,270)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,9,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,9,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,9,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,9,10,4,0,90,300,150,380,160,270)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,10,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,10,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,10,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,10,10,4,0,90,300,150,380,160,270)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,11,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,11,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,11,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,11,10,4,0,90,300,150,380,160,270)

end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,12,10,1,0,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,12,10,2,0,90,310,150,340,160,270)
		AddQualityItem(2,0,2,12,10,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,12,10,4,0,90,300,150,380,160,270)

end


function tienquan()
		AddQualityItem(2,0,2,8,13,0,0,80,290,90,270,150,-1)
		AddQualityItem(2,0,2,8,13,1,0,90,150,320,90,270,160,-1)
		AddQualityItem(2,0,2,8,13,2,0,310,150,340,160,270)
		AddQualityItem(2,0,2,8,13,3,0,90,360,150,270,80,280)--hoa
		AddQualityItem(2,0,2,8,13,4,0,90,300,150,380,160,270)
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
		AddQualityItem(2,0,7,0,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,0,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,0,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,0,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,0,10,4,0,150,300,160,380,180,270)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,1,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,1,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,1,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,1,10,4,0,150,300,160,380,180,270)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,2,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,2,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,2,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,2,10,4,0,150,300,160,380,180,270)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,3,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,3,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,3,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,3,10,4,0,150,300,160,380,180,270)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,4,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,4,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,4,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,4,10,4,0,150,300,160,380,180,270)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,5,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,5,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,5,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,5,10,4,0,150,300,160,380,180,270)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,6,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,6,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,6,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,6,10,4,0,150,300,160,380,180,270)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,7,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,7,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,7,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,7,10,4,0,150,300,160,380,180,270)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,8,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,8,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,8,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,8,10,4,0,150,300,160,380,180,270)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,9,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,9,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,9,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,9,10,4,0,150,300,160,380,180,270)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,10,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,10,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,10,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,10,10,4,0,150,300,160,380,180,270)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,11,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,11,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,11,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,11,10,4,0,150,300,160,380,180,270)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,12,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,12,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,12,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,12,10,4,0,150,300,160,380,180,270)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,7,13,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,7,13,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,7,13,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,7,13,10,4,0,150,300,160,380,180,270)
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
		AddQualityItem(2,0,8,0,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,8,0,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,8,0,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,8,0,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,8,0,10,4,0,150,300,160,380,180,270)		
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,8,1,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,8,1,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,8,1,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,8,1,10,4,0,150,300,160,380,180,270)	
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
		AddQualityItem(2,0,6,0,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,6,0,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,6,0,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,6,0,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,6,0,10,4,0,150,300,160,380,180,270)	
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,150,290,160,270,180,-1)
		AddQualityItem(2,0,6,1,10,1,0,150,320,160,270,180,-1)
		AddQualityItem(2,0,6,1,10,2,0,150,310,160,340,180,270)
		AddQualityItem(2,0,6,1,10,3,0,150,280,160,360,180,270)
		AddQualityItem(2,0,6,1,10,4,0,150,300,160,380,180,270)	
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
		AddQualityItem(2,0,5,0,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,0,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,0,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,0,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,0,10,4,0,150,300,160,380,70,270)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,1,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,1,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,1,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,1,10,4,0,150,300,160,380,70,270)
end


function kimlu()

		AddQualityItem(2,0,5,2,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,2,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,2,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,2,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,2,10,4,0,150,300,160,380,70,270)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,150,290,160,270,70,-1)
		AddQualityItem(2,0,5,3,10,1,0,150,320,160,270,70,-1)
		AddQualityItem(2,0,5,3,10,2,0,150,310,70,340,160,270)
		AddQualityItem(2,0,5,3,10,3,0,150,280,70,360,180,370)
		AddQualityItem(2,0,5,3,10,4,0,150,300,160,380,70,270)
end