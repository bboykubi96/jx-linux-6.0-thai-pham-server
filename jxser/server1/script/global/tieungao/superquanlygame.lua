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

	Msg2Player("�� settup task chu�i nv th� 9")
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
		--tinsert(tbOpt,"Test GIFTCODE ��t 3 ./thuonggiftcode1den140chuats")
		--tinsert(tbOpt,"G�i boss 150 ./testbosss")
		--tinsert(tbOpt,"Test x�p h�ng ./XepHangDemo")
		--tinsert(tbOpt,"UserOnline ./ShowOnline")
		--tinsert(tbOpt,"Test ��i R��ng HKMP kh�a VV ./exchange_lingpai2goldequip")
		--tinsert(tbOpt,"testnvtanthu2015 ./testnvtanthu2015")
		--tinsert(tbOpt,"gmtbthienhoang ./gmtbthienhoang")
		--tinsert(tbOpt,"layquaHuyHoang ./layquaHuyHoang")
		--tinsert(tbOpt,"Test nhi�m v� 150 ./gmtestnv150")
		--tinsert(tbOpt,"ResetPassRuong nh�n v�t ./ReSetPassRuong")
		--tinsert(tbOpt,"L�y v�t ph�m theo ID ./G7TaoItem")
	  --  tinsert(tbOpt,"H� tr�  Test Event ./gmhotrotestevent")
	   --	tinsert(tbOpt,"L�nh b�i g�i boss ./lenhbaigoiboss")
	--	tinsert(tbOpt,"TEST ./testgame")
		--tinsert(tbOpt,"�i t�y s�n ��o ./ditaysondao")
		--tinsert(tbOpt,"Trang b� xanh ./laydoxanh")
		--tinsert(tbOpt,"Chuy�n sinh ./gmcsinh")
		--tinsert(tbOpt,"Nh�n h� tr� 1000 xu ./gmnhan100xu")
		tinsert(tbOpt,"Xoa BXH ./XoaXepHang1")
		tinsert(tbOpt,"Cap Nhat BXH ./g7vnTuDongUpTop1")
		tinsert(tbOpt,"Next ./supergmhotrotrang2")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

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
		tinsert(tbOpt,"T�ng LV cho NV kh�c ./TangLVChoNVKhac")
		--tinsert(tbOpt,"T�ng �i�m cho NV kh�c ./TangDiemChoNVKhac")
		--tinsert(tbOpt,"T�ng �� cho NV kh�c ./TangDoG7TaoItem")
		--tinsert(tbOpt,"T�ng skill cho NV kh�c ./TangSkillChoNV")
		--tinsert(tbOpt,"Nh�n �i�m ./gmnhandiem")
		--tinsert(tbOpt,"Trang s�c, phi phong, �n ./fifong")
		--tinsert(tbOpt,"Trang b� ��ng s�t ./gmdongsat")
		--tinsert(tbOpt,"Trang b� h�ng �nh ./gmhonganh")
		--tinsert(tbOpt,"Ti�n th�o l� ��c bi�t ./tienthaolodacbiet")
		--tinsert(tbOpt,"B�n nhu�c t�m kinh ./gmbntk")
		--tinsert(tbOpt,"K� n�ng 120 ./gmkynang120")
		--tinsert(tbOpt,"K� n�ng 90 ./gmkynang90")
		--tinsert(tbOpt,"Trang b� HKMP ./hoangkimmonphai")
		--tinsert(tbOpt,"Next ./supergmhotrotrang3")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

end;

function supergmhotrotrang3()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./gmhotrotrang2")
		tinsert(tbOpt,"T�p trung c�ng BK ./gmtaptrungcongbk")
		--tinsert(tbOpt,"Tri�u h�i to�n b� nh�n v�t server (gi�i k�t) ./gmGiaiKetNhanVat")
		--tinsert(tbOpt,"Nh�n 100 xu ./gmnhan100xu")
		tinsert(tbOpt,"C�m nh�n v�t Chat ./g7camchatenterName")
		tinsert(tbOpt,"KickOut nh�n v�t ./g7kickoutEnterName")
		tinsert(tbOpt,"M� nh�n v�t Chat ./g7mochatenterName")
		--tinsert(tbOpt,"Nh�n ? v�n ./gmnhansoluongvan")
		--tinsert(tbOpt,"N�ng l�n 1 c�p ./gmlen5cap")
		--tinsert(tbOpt,"N�ng l�n 5 c�p ./gmlen10cap")
		--tinsert(tbOpt,"N�ng l�n 20 c�p ./gmlen20cap")
		--tinsert(tbOpt,"N�ng l�n c�p ? ./gmlennhapcap")
		--tinsert(tbOpt,"Nh�c v��ng ki�m ./gmnhacvuongkiem")
		tinsert(tbOpt,"Next ./supergmhotrotrang4")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

end;

function supergmhotrotrang4()	
	
		local tbOpt = {}

		tinsert(tbOpt,"Back ./supergmhotrotrang3")
		--tinsert(tbOpt,"K� n�ng ./gmdiemkynang")
		--tinsert(tbOpt,"T�m n�ng ./gmdiemtiemnang")
		--tinsert(tbOpt,"�� ph� HKMP ./gmdophohoangkim")
		--tinsert(tbOpt,"L�y ng�a ./layngua")
		----tinsert(tbOpt,"TB kim � ./gmtbkimo")
		--tinsert(tbOpt,"Trang b� t�m ./nhando6dong")
		--tinsert(tbOpt,"T�ng 500 tri�u kinh nghi�m ./#g7tangdiemkn(500000000)")
		--tinsert(tbOpt,"Test B�c ��u truy�n c�ng ./#testbacdautruyencong()")
		--tinsert(tbOpt,"An Bang ./gmtbanbang")
		--tinsert(tbOpt,"An Bang HM ./gmtbanbanghoanmy")
		--tinsert(tbOpt,"��nh qu�c ./gmtbdinhquoc")
		--tinsert(tbOpt,"X�a Ladder ./XoaXepHang")
		--tinsert(tbOpt,"Update Ladder ./g7vnTuDongUpTop")
		--tinsert(tbOpt,"Show Ladder ./ShowBangXepHangTG")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

end;

