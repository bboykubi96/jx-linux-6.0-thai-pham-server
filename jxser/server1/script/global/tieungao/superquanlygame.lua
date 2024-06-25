--quan lygame edity by mcteam

local tbSuperGMAccount =  {
"","","","","",
"","","","",
"","","","",
}

function issupergm()
local szAccount = GetAccount()
	for i=1, getn(%tbSuperGMAccount) do
		if szAccount == %tbSuperGMAccount[i] then
		return 1
		end
	end
return 0
end;

Include("\\script\\global\\g7vn\\g7configall.lua")

function testnvtanthu2015()
	--dofile("script/global/g7vn/g7configall.lua")
	SetTask(idtaskgiftcodet92015,1)
	SetTask(idtaskCodetanthuG7nv2,1)
	SetTask(idtaskCodetanthuG7nv3,1)
	SetTask(idtaskCodetanthuG7nv4,1)
	SetTask(idtaskCodetanthuG7nv5,1)
	--SetTask(idtaskCodetanthuG7nv6,1)
	--SetTask(idtaskCodetanthuG7nv7,1)
	SetTask(idtaskCodetanthuG7nv8,0)

	Msg2Player("§· settup task chuçi nv thø 9")
end

Include("\\script\\misc\\rank\\rank.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\tieungao\\g7trieuhoihuynhde.lua")
Include("\\script\\global\\g7vn\\g7quanly.lua")
Include("\\script\\global\\g7vn\\g7callboss15x.lua")
--Include("\\script\\activitysys\\config\\6\\doitrangbi_ex.lua");

function supergmhotro()	
	--dofile("script/misc/rank/rank.lua")
	--dofile("script/global/tieungao/dotim.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/tieungao/g7trieuhoihuynhde.lua")
	dofile("script/global/g7vn/g7quanly.lua")
	dofile("script/global/tieungao/superquanlygame.lua")
	--dofile("script/global/g7vn/g7callboss15x.lua")
	--dofile("script/activitysys/config/6/doitrangbi_ex.lua");

		local tbOpt = {}
		
		--tinsert(tbOpt,"TongKimToiThu7Demo ./TongKimToiThu7Demo")
		--tinsert(tbOpt,"test bach kim ./testbachkim")
		--tinsert(tbOpt,"PhanThuongTop1ThangXanh ./PhanThuongTop1ThangXanh")
		--tinsert(tbOpt,"KichToanBoSVRaNgoai ./KichToanBoSVRaNgoai")
		--tinsert(tbOpt,"Test GIFTCODE ®ît 3 ./thuonggiftcode1den140chuats")
		--tinsert(tbOpt,"Gäi boss 150 ./testbosss")
		--tinsert(tbOpt,"Test xÕp h¹ng ./XepHangDemo")
		--tinsert(tbOpt,"UserOnline ./ShowOnline")
		--tinsert(tbOpt,"Test ®æi R­¬ng HKMP khãa VV ./exchange_lingpai2goldequip")
		--tinsert(tbOpt,"testnvtanthu2015 ./testnvtanthu2015")
		--tinsert(tbOpt,"gmtbthienhoang ./gmtbthienhoang")
		--tinsert(tbOpt,"layquaHuyHoang ./layquaHuyHoang")
		--tinsert(tbOpt,"Test nhiÖm vô 150 ./gmtestnv150")
		--tinsert(tbOpt,"ResetPassRuong nh©n vËt ./ReSetPassRuong")
		--tinsert(tbOpt,"LÊy vËt phÈm theo ID ./G7TaoItem")
	  --  tinsert(tbOpt,"Hç trî  Test Event ./gmhotrotestevent")
	   --	tinsert(tbOpt,"LÖnh bµi gäi boss ./lenhbaigoiboss")
	--	tinsert(tbOpt,"TEST ./testgame")
		--tinsert(tbOpt,"§i t©y s¬n ®¶o ./ditaysondao")
		--tinsert(tbOpt,"Trang bÞ xanh ./laydoxanh")
		--tinsert(tbOpt,"ChuyÓn sinh ./gmcsinh")
		--tinsert(tbOpt,"NhËn hç trî 1000 xu ./gmnhan100xu")
		tinsert(tbOpt,"Xoa BXH ./XoaXepHang1")
		tinsert(tbOpt,"Cap Nhat BXH ./g7vnTuDongUpTop1")
		tinsert(tbOpt,"Next ./supergmhotrotrang2")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;

function testgame()
Earn(3000000)
end

function XoaXepHang1()
	--for i=10277,10288 do
	for i=10001,10300 do
		Ladder_ClearLadder(i)
		Msg2Player(i)
	end
	Ladder_ClearLadder(10119)
	Ladder_ClearLadder(10250)
	Ladder_ClearLadder(10279)
	Ladder_ClearLadder(10283)
end

Include("\\script\\worldrank\\vngtop10.lua")
function g7vnTuDongUpTop1()
	tbTop10:SapXepDSXepHang()
	Msg2Player("Da cap nhat BXH")
end


function supergmhotrotrang2()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./supergmhotro")
		tinsert(tbOpt,"T¨ng LV cho NV kh¸c ./TangLVChoNVKhac")
		--tinsert(tbOpt,"T¨ng ®iÓm cho NV kh¸c ./TangDiemChoNVKhac")
		--tinsert(tbOpt,"TÆng ®å cho NV kh¸c ./TangDoG7TaoItem")
		--tinsert(tbOpt,"TÆng skill cho NV kh¸c ./TangSkillChoNV")
		--tinsert(tbOpt,"NhËn ®iÓm ./gmnhandiem")
		--tinsert(tbOpt,"Trang søc, phi phong, Ên ./fifong")
		--tinsert(tbOpt,"Trang bÞ ®éng s¸t ./gmdongsat")
		--tinsert(tbOpt,"Trang bÞ hång ¶nh ./gmhonganh")
		--tinsert(tbOpt,"Tiªn th¶o lé ®Æc biÖt ./tienthaolodacbiet")
		--tinsert(tbOpt,"Bµn nhuîc t©m kinh ./gmbntk")
		--tinsert(tbOpt,"Kü n¨ng 120 ./gmkynang120")
		--tinsert(tbOpt,"Kü n¨ng 90 ./gmkynang90")
		--tinsert(tbOpt,"Trang bÞ HKMP ./hoangkimmonphai")
		--tinsert(tbOpt,"Next ./supergmhotrotrang3")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;

function supergmhotrotrang3()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./gmhotrotrang2")
		tinsert(tbOpt,"TËp trung cæng BK ./gmtaptrungcongbk")
		--tinsert(tbOpt,"TriÖu håi toµn bé nh©n vËt server (gi¶i kÑt) ./gmGiaiKetNhanVat")
		--tinsert(tbOpt,"NhËn 100 xu ./gmnhan100xu")
		tinsert(tbOpt,"CÊm nh©n vËt Chat ./g7camchatenterName")
		tinsert(tbOpt,"KickOut nh©n vËt ./g7kickoutEnterName")
		tinsert(tbOpt,"Më nh©n vËt Chat ./g7mochatenterName")
		--tinsert(tbOpt,"NhËn ? v¹n ./gmnhansoluongvan")
		--tinsert(tbOpt,"N©ng lªn 1 cÊp ./gmlen5cap")
		--tinsert(tbOpt,"N©ng lªn 5 cÊp ./gmlen10cap")
		--tinsert(tbOpt,"N©ng lªn 20 cÊp ./gmlen20cap")
		--tinsert(tbOpt,"N©ng lªn cÊp ? ./gmlennhapcap")
		--tinsert(tbOpt,"Nh¹c v­¬ng kiÕm ./gmnhacvuongkiem")
		tinsert(tbOpt,"Next ./supergmhotrotrang4")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;

function supergmhotrotrang4()	
	
		local tbOpt = {}

		tinsert(tbOpt,"Back ./supergmhotrotrang3")
		--tinsert(tbOpt,"Kü n¨ng ./gmdiemkynang")
		--tinsert(tbOpt,"T×m n¨ng ./gmdiemtiemnang")
		--tinsert(tbOpt,"§å phæ HKMP ./gmdophohoangkim")
		--tinsert(tbOpt,"LÊy ngùa ./layngua")
		----tinsert(tbOpt,"TB kim « ./gmtbkimo")
		--tinsert(tbOpt,"Trang bÞ tÝm ./nhando6dong")
		--tinsert(tbOpt,"T¨ng 500 triÖu kinh nghiÖm ./#g7tangdiemkn(500000000)")
		--tinsert(tbOpt,"Test B¾c ®Èu truyÒn c«ng ./#testbacdautruyencong()")
		--tinsert(tbOpt,"An Bang ./gmtbanbang")
		--tinsert(tbOpt,"An Bang HM ./gmtbanbanghoanmy")
		--tinsert(tbOpt,"§Þnh quèc ./gmtbdinhquoc")
		--tinsert(tbOpt,"Xãa Ladder ./XoaXepHang")
		--tinsert(tbOpt,"Update Ladder ./g7vnTuDongUpTop")
		--tinsert(tbOpt,"Show Ladder ./ShowBangXepHangTG")
		tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
		Say("Hç trî: ", getn(tbOpt), tbOpt)

end;

