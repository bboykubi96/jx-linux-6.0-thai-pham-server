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
		tinsert(tbOpt,"Ki�m tra th�ng tin nh�n v�t ./KiemTraTTNV")
		tinsert(tbOpt,"Band nh�n v�t v�nh vi�n ./BandLoginForver")
		tinsert(tbOpt,"M� band nh�n v�t v�nh vi�n ./UnBandLoginForver")
		tinsert(tbOpt,"KickOut acc b� k�t (t�i kho�n �ang ���c s� d�ng) ./g7kickoutEnterName")
		tinsert(tbOpt,"C�m nh�n v�t Chat ./g7camchatenterName")
		tinsert(tbOpt,"M� nh�n v�t Chat ./g7mochatenterName")
		tinsert(tbOpt,"L�y t�a �� hi�n t�i ./LayToaDoHienTai")
		tinsert(tbOpt,"Di chuy�n ��n ch� �n n�p nh�n v�t ./DiChuyenDenToaDoNhanVat")
		tinsert(tbOpt,"K�o nh�n v�t v� t�o �� GM ./KeoNhanVatVeGM")
		tinsert(tbOpt,"Di chuy�n ��n b�n �� t�a �� nh�p v�o ./DiChuyenDenBanDoViTri")
		tinsert(tbOpt,"Tri�u h�i to�n b� nh�n v�t server (gi�i k�t) ./gmGiaiKetNhanVat")
		tinsert(tbOpt,"Next ./gmhotrotrang2")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

end;



function gmhotrotrang2()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./gmhotro")
		tinsert(tbOpt,"Chuy�n tr�ng th�i PK nh�n v�t ./ChuyenTrangThaiNhanVat")
		tinsert(tbOpt,"X�a Ladder ./XoaXepHang")
		tinsert(tbOpt,"Update X�p h�ng./g7vnTuDongUpTop")
		tinsert(tbOpt,"Show Ladder ./ShowBangXepHangTG")
		tinsert(tbOpt,"Mo pass Ruong ./ReSetPassRuong")
		--tinsert(tbOpt,"Nh�n �i�m ./gmnhandiem")
		tinsert(tbOpt,"di tong kim ./ditongkim")
		tinsert(tbOpt,"di thien tu ./dithientu")
		 --tinsert(tbOpt,"L�nh b�i g�i boss ./lenhbaigoiboss")
		tinsert(tbOpt,"Kh�i t�o GM ./g7khoitaogm")
		tinsert(tbOpt,"GM t�ng h�nh./g7gmanthan")
		tinsert(tbOpt,"GM hi�n h�nh./g7gmhienhinh")
		--tinsert(tbOpt,"K� n�ng 120 ./gmkynang120")
		--tinsert(tbOpt,"K� n�ng 90 ./gmkynang90")
		--tinsert(tbOpt,"Next ./gmhotrotrang3")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)
end;

function gmhotrotrang3()	
	
		local tbOpt = {}
		--tinsert(tbOpt,"Back ./gmhotrotrang2")
		--tinsert(tbOpt,"T�n v�t m�n ph�i ./g7tinvatmonphai")
		--tinsert(tbOpt,"Nh�n ? v�n ./gmnhansoluongvan")
		--tinsert(tbOpt,"N�ng l�n 5 c�p ./gmlen5cap")
		--tinsert(tbOpt,"N�ng l�n c�p ? ./gmlennhapcap")
		--tinsert(tbOpt,"L�y ng�a ./layngua")
		--tinsert(tbOpt,"An Bang ./gmtbanbang")
		tinsert(tbOpt,"Next ./gmhotrotrang4")
		--tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

end;

function gmhotrotrang4()	
	
		local tbOpt = {}
		tinsert(tbOpt,"Back ./gmhotrotrang3")
		--tinsert(tbOpt,"Khi�u chi�n l�nh ./gmlaykhieuchienlenh")
		--tinsert(tbOpt,"M�t �� th�n b� ./gmlaymatdothanbi")
		--tinsert(tbOpt,"�� ph� HKMP ./gmdophohoangkim")
		--tinsert(tbOpt,"Nh�n 100 xu ./gmnhan100xu")
		--tinsert(tbOpt,"Nh�n 20 K v�n ./gmnhan50kvan")
		--tinsert(tbOpt,"Trang s�c, phi phong, �n ./fifong")
		--tinsert(tbOpt,"Trang b� ��ng s�t ./gmdongsat")
		--tinsert(tbOpt,"Trang b� h�ng �nh ./gmhonganh")
		--tinsert(tbOpt,"Ti�n th�o l� ��c bi�t ./tienthaolodacbiet")
		--tinsert(tbOpt,"B�n nhu�c t�m kinh ./gmbntk")
	    --tinsert(tbOpt,"H� tr�  Test Event ./gmhotrotestevent")
		--tinsert(tbOpt,"�i t�y s�n ��o ./ditaysondao")
		--tinsert(tbOpt,"Chuy�n sinh ./gmcsinh")
		--tinsert(tbOpt,"UserOnline ./ShowOnline")
		--tinsert(tbOpt,"Th�ng b�o b�o tr� to�n server ./gmthongbaobaotri")
		--tinsert(tbOpt,"Th�ng b�o to�n server ./gmthongbaotoanserver")
	    tinsert(tbOpt,"L�nh b�i g�i boss ./lenhbaigoiboss")
		--tinsert(tbOpt,"Trang b� HKMP ./hoangkimmonphai")
		--tinsert(tbOpt,"N�ng l�n 10 c�p ./gmlen10cap")
		--tinsert(tbOpt,"N�ng l�n 20 c�p ./gmlen20cap")
		tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
		Say("H� tr�: ", getn(tbOpt), tbOpt)

end;

function ditongkim()
NewWorld(380,1440, 3334)
end
	
function dithientu()
NewWorld(900,1440, 3334)
end