--quan lygame edity by mcteam

Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");

local tbGMAccount =  {"","","suntn96","adminvltb","","","","",}

function isgm()
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		return 1
		end
	end
return 0
end;

Include("\\script\\global\\g7vn\\g7quanly.lua")

function gmhotro()	
	
		dofile("script/global/g7vn/g7quanly.lua")

		local tbOpt = {}
		tinsert(tbOpt,"KiÓm tra th«ng tin nh©n vËt ./KiemTraTTNV")
		tinsert(tbOpt,"Band nh©n vËt vÜnh viÔn ./BandLoginForver")
		tinsert(tbOpt,"Më band nh©n vËt vÜnh viÔn ./UnBandLoginForver")
		tinsert(tbOpt,"KickOut acc bÞ kÑt (tµi kho¶n ®ang ®­îc sö dông) ./g7kickoutEnterName")
		tinsert(tbOpt,"CÊm nh©n vËt Chat ./g7camchatenterName")
		tinsert(tbOpt,"Më nh©n vËt Chat ./g7mochatenterName")
		tinsert(tbOpt,"LÊy täa ®é hiÖn t¹i ./LayToaDoHienTai")
		tinsert(tbOpt,"Di chuyÓn ®Õn chç Èn nÊp nh©n vËt ./DiChuyenDenToaDoNhanVat")
		tinsert(tbOpt,"KÐo nh©n vËt vÒ t¹o ®é GM ./KeoNhanVatVeGM")
		tinsert(tbOpt,"Di chuyÓn ®Õn b¶n ®å täa ®é nhËp vµo ./DiChuyenDenBanDoViTri")
		tinsert(tbOpt,"TriÖu håi toµn bé nh©n vËt server (gi¶i kÑt) ./gmGiaiKetNhanVat")
		tinsert(tbOpt,"Next ./gmhotrotrang2")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;



function gmhotrotrang2()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./gmhotro")
		tinsert(tbOpt,"ChuyÓn tr¹ng th¸i PK nh©n vËt ./ChuyenTrangThaiNhanVat")
		tinsert(tbOpt,"Xãa Ladder ./XoaXepHang")
		tinsert(tbOpt,"Update XÕp h¹ng./g7vnTuDongUpTop")
		tinsert(tbOpt,"Show Ladder ./ShowBangXepHangTG")
		tinsert(tbOpt,"Mo pass Ruong ./ReSetPassRuong")
		--tinsert(tbOpt,"NhËn ®iÓm ./gmnhandiem")
		tinsert(tbOpt,"di tong kim ./ditongkim")
		tinsert(tbOpt,"di thien tu ./dithientu")
		 --tinsert(tbOpt,"LÖnh bµi gäi boss ./lenhbaigoiboss")
		tinsert(tbOpt,"Khëi t¹o GM ./g7khoitaogm")
		tinsert(tbOpt,"GM tµng h×nh./g7gmanthan")
		tinsert(tbOpt,"GM hiÖn h×nh./g7gmhienhinh")
		--tinsert(tbOpt,"Kü n¨ng 120 ./gmkynang120")
		--tinsert(tbOpt,"Kü n¨ng 90 ./gmkynang90")
		--tinsert(tbOpt,"Next ./gmhotrotrang3")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)
end;

function gmhotrotrang3()	
	
		local tbOpt = {}
		--tinsert(tbOpt,"Back ./gmhotrotrang2")
		--tinsert(tbOpt,"TÝn vËt m«n ph¸i ./g7tinvatmonphai")
		--tinsert(tbOpt,"NhËn ? v¹n ./gmnhansoluongvan")
		--tinsert(tbOpt,"N©ng lªn 5 cÊp ./gmlen5cap")
		--tinsert(tbOpt,"N©ng lªn cÊp ? ./gmlennhapcap")
		--tinsert(tbOpt,"LÊy ngùa ./layngua")
		--tinsert(tbOpt,"An Bang ./gmtbanbang")
		tinsert(tbOpt,"Next ./gmhotrotrang4")
		--tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;

function gmhotrotrang4()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./gmhotrotrang3")
		--tinsert(tbOpt,"Khiªu chiÕn lÖnh ./gmlaykhieuchienlenh")
		--tinsert(tbOpt,"MËt ®å thÇn bÝ ./gmlaymatdothanbi")
		--tinsert(tbOpt,"§å phæ HKMP ./gmdophohoangkim")
		--tinsert(tbOpt,"NhËn 100 xu ./gmnhan100xu")
		--tinsert(tbOpt,"NhËn 20 K v¹n ./gmnhan50kvan")
		--tinsert(tbOpt,"Trang søc, phi phong, Ên ./fifong")
		--tinsert(tbOpt,"Trang bÞ ®éng s¸t ./gmdongsat")
		--tinsert(tbOpt,"Trang bÞ hång ¶nh ./gmhonganh")
		--tinsert(tbOpt,"Tiªn th¶o lé ®Æc biÖt ./tienthaolodacbiet")
		--tinsert(tbOpt,"Bµn nhuîc t©m kinh ./gmbntk")
	    --tinsert(tbOpt,"Hç trî  Test Event ./gmhotrotestevent")
		--tinsert(tbOpt,"§i t©y s¬n ®¶o ./ditaysondao")
		--tinsert(tbOpt,"ChuyÓn sinh ./gmcsinh")
		--tinsert(tbOpt,"UserOnline ./ShowOnline")
		--tinsert(tbOpt,"Th«ng b¸o b¶o tr× toµn server ./gmthongbaobaotri")
		--tinsert(tbOpt,"Th«ng b¸o toµn server ./gmthongbaotoanserver")
	    tinsert(tbOpt,"LÖnh bµi gäi boss ./lenhbaigoiboss")
		--tinsert(tbOpt,"Trang bÞ HKMP ./hoangkimmonphai")
		--tinsert(tbOpt,"N©ng lªn 10 cÊp ./gmlen10cap")
		--tinsert(tbOpt,"N©ng lªn 20 cÊp ./gmlen20cap")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;

function ditongkim()
NewWorld(380,1440, 3334)
end
	
function dithientu()
NewWorld(900,1440, 3334)
end