Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\seasonnpc.lua");

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(sel)
	
	--dofile("script/global/g7vn/item/phongvanlenhbai.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--do Say("T�m th�i ch�a s� ��ng d��c") return 1 end

	local tichdiem = GetTask(1403)
	local danglam = "Ch�a ho�n th�nh nhi�m v� CODE t�n th�, like trang, share b�i vi�t , tag 10 ng��i b�n inbox g�p Admin �� nh�n CODE t�i http://facebook.com/volamg7vn"
	if GetTask(1403) == 1 then
		danglam = "��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i"
	end
	if GetTask(1403) == 2 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� nh�p m�n, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Luy�n c�ng l�n c�p 50<color>"
	end
	if GetTask(1403) == 3 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 1 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 4 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 1, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 1000 con qu�i t�i Thi�n T�m Th�p T�ng 1<color>"
	end
	if GetTask(1403) == 5 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 2 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 6 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 2, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 2000 con qu�i t�i Thi�n T�m Th�p T�ng 3<color>"
	end
	if GetTask(1403) == 7 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 3 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 8 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 3, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 3000 con qu�i t�i L�m Du Quan, v� ho�n th�nh 20 nhi�m v� D� T�u<color>"
	end
	if GetTask(1403) == 9 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 4 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 10 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 4, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 4000 con qu�i t�i Ch�n N�i Tr��ng B�ch, v� tham gia tr�n T�ng Kim 20h00 ��t 1000 �i�m t�ch l�y tr� l�n<color>"
	end
	if GetTask(1403) == 11 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 5 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 12 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 5, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 5000 con qu�i t�i Sa M�c 3, mua trong KTC T�n Th� ��n b�m chu�t ph�i �� s� d�ng, v� ho�n th�nh 40 nhi�m v� D� T�u<color>"
	end
	if GetTask(1403) == 13 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 5, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 5000 con qu�i t�i Sa M�c 3, mua trong KTC T�n Th� ��n b�m chu�t ph�i �� s� d�ng, v� ho�n th�nh 40 nhi�m v� D� T�u<color>"
	end
	if GetTask(1403) >= 14 then
		danglam = "��i hi�p �� ho�n th�nh Chu�i nhi�m v� Phong V�n L�nh B�i �� �� s�c �� c� th� Ti�u Ng�o Giang H�"
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbSay = {}
	tinsert(tbSay,"<Nh�n nhi�m v� Nh�p M�n> ./#NhanNhiemVuNhapMon()")
	tinsert(tbSay,"<Ho�n th�nh nhi�m v� Nh�p M�n> ./#HoanThanhNhiemVuNhapMon()")
	tinsert(tbSay,"+ Ho�n th�nh nhanh nhi�m v� Nh�p M�n 1 <v�i 1 KNB> ./#HoanThanhNhiemVuNhapMon100xu()")
	tinsert(tbSay,"<Nh�n nhi�m v� T�n Th� 1> ./#NhanNhiemVuTanThu1()")
	tinsert(tbSay,"<Ho�n th�nh nhi�m v� T�n Th� 1> ./#HoanThanhNhiemVuTanThu1()")
	tinsert(tbSay,"+ Ho�n th�nh ngay T�n Th� 1 <v�i 1 KNB> ./#HoanThanhNhiemVuTanThu1100xu()")
	tinsert(tbSay,"<Nh�n nhi�m v� T�n Th� 2> ./#NhanNhiemVuTanThu2()")
	tinsert(tbSay,"<Ho�n th�nh nhi�m v� T�n Th� 2> ./#HoanThanhNhiemVuTanThu2()")
	tinsert(tbSay,"+ Ho�n th�nh ngay T�n Th� 2 <v�i 2 KNB> ./#HoanThanhNhiemVuTanThu2200xu()")
	tinsert(tbSay,"Trang sau ./trang2pvlb")
	tinsert(tbSay,"K�t th�c ./Oncancel")

	Say("Phong V�n L�nh B�i v�t ph�m h� tr� ��c l�c cho t�n th� m�i tham gia v�o Game V� L�m G7VN <color=red>"..danglam.."<color>", getn(tbSay), tbSay)
	return 1
end

function trang2pvlb()
	local tichdiem = GetTask(1403)
	local danglam = "Ch�a ho�n th�nh nhi�m v� CODE t�n th�, like trang, share b�i vi�t , tag 10 ng��i b�n inbox g�p Admin �� nh�n CODE t�i http://facebook.com/volamg7vn"
	if GetTask(1403) == 1 then
		danglam = "��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i"
	end
	if GetTask(1403) == 2 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� nh�p m�n, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Luy�n c�ng l�n c�p 50<color>"
	end
	if GetTask(1403) == 3 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 1 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 4 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 1, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 1000 con qu�i t�i Thi�n T�m Th�p T�ng 1<color>"
	end
	if GetTask(1403) == 5 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 2 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 6 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 2, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 2000 con qu�i t�i Thi�n T�m Th�p T�ng 3<color>"
	end
	if GetTask(1403) == 7 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 3 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 8 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 3, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 3000 con qu�i t�i L�m Du Quan, v� ho�n th�nh 20 nhi�m v� D� T�u<color>"
	end
	if GetTask(1403) == 9 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 4 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 10 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 4, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 4000 con qu�i t�i Ch�n N�i Tr��ng B�ch, v� tham gia tr�n T�ng Kim 20h00 ��t 1000 �i�m t�ch l�y tr� l�n<color>"
	end
	if GetTask(1403) == 11 then
		danglam = "Ti�p theo ��i hi�p nh�n nhi�m v� T�n Th� 5 trong Phong V�n l�nh b�i"
	end
	if GetTask(1403) == 12 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 5, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 5000 con qu�i t�i Sa M�c 3, mua trong KTC T�n Th� ��n b�m chu�t ph�i �� s� d�ng, v� ho�n th�nh 40 nhi�m v� D� T�u<color>"
	end
	if GetTask(1403) == 13 then
		danglam = "��i hi�p �ang th�c hi�n nhi�m v� T�n Th� 5, h�y mau mau ho�n th�nh nhi�m v� <color=yellow>Ti�u di�t 5000 con qu�i t�i Sa M�c 3, mua trong KTC T�n Th� ��n b�m chu�t ph�i �� s� d�ng, v� ho�n th�nh 40 nhi�m v� D� T�u<color>"
	end
	if GetTask(1403) >= 14 then
		danglam = "��i hi�p �� ho�n th�nh Chu�i nhi�m v� Phong V�n L�nh B�i �� �� s�c �� c� th� Ti�u Ng�o Giang H�"
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbSay = {}
	tinsert(tbSay,"Trang tr��c ./main")
	tinsert(tbSay,"<Nh�n nhi�m v� T�n Th� 3> ./#NhanNhiemVuTanThu3()")
	tinsert(tbSay,"<Ho�n th�nh nhi�m v� T�n Th� 3> ./#HoanThanhNhiemVuTanThu3()")
	tinsert(tbSay,"+ Ho�n th�nh ngay T�n Th� 3 <v�i 3 KNB> ./#HoanThanhNhiemVuTanThu3KNB()")
	tinsert(tbSay,"<Nh�n nhi�m v� T�n Th� 4> ./#NhanNhiemVuTanThu4()")
	tinsert(tbSay,"<Ho�n th�nh nhi�m v� T�n Th� 4> ./#HoanThanhNhiemVuTanThu4()")
	tinsert(tbSay,"+ Ho�n th�nh ngay T�n Th� 4 <v�i 4 KNB> ./#HoanThanhNhiemVuTanThu4400xu()")
	tinsert(tbSay,"<Nh�n nhi�m v� T�n Th� 5> ./#NhanNhiemVuTanThu5()")
	tinsert(tbSay,"<Ho�n th�nh nhi�m v� T�n Th� 5> ./#HoanThanhNhiemVuTanThu5()")
	tinsert(tbSay,"+ Ho�n th�nh ngay T�n Th� 5 <v�i 5 KNB> ./#HoanThanhNhiemVuTanThu5500Xu()")
	tinsert(tbSay,"K�t th�c ./Oncancel")
	Say("Phong V�n L�nh B�i v�t ph�m h� tr� ��c l�c cho t�n th� m�i tham gia v�o Game V� L�m G7VN <color=red>"..danglam.."<color>", getn(tbSay), tbSay)
	return 1
end

function NhanNhiemVuNhapMon()
	local tasktanthu = 1401 -- id task ho tro tan thu
	local gt_tasktanthu = GetTask(tasktanthu);
	if gt_tasktanthu ~= 1 then
		Say("Ch�a ho�n th�nh nhi�m v� CODE t�n th�, share, tag 10 ng��i b�n inbox �� nh�n CODE, sau �� nh�p v�o NPC H� Tr� T�n Th� �� nh�n qu�")
		return 1
	end
	if GetTask(1403) > 1 then--da nhan nhiem vu nhap mon
		Say("��i hi�p �� nh�n nhi�m v� n�y r�i")
		return 1
	end
	if GetTask(1403) == 1 then--da nhan phong van lenh bai
		SetTask(1403,2)--da nhan nhiem vu nhap mon
		Say("��i hi�p �� nh�n nhi�m v� nh�p m�n, �i luy�n c�ng ��n c�p 50 r�i ho�n th�nh nhi�m v�")
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) nh�n nhi�m v� Nh�p M�n")
		return 1
	end
end

function HoanThanhNhiemVuNhapMon100xu()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) > 2 then--Da hoan thanh nhiem vu nhap mon
		Say("��i hi�p �� ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 2 then--da nhan nhiem vu nhap mon
		--if GetLevel() >= 50 then--dang cap lon hon = 50
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 1) then				
				Say("Kh�ch quan kh�ng mang theo �� 1 kim nguy�n b�o?", 1, "��ng r�i, ch�a mang ��/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
					DelItemEx(1503);
			end
			if GetLevel()<50 then
				local nAddLevel = 50 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) ho�n th�nh nhi�m v� Nh�p M�n")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng 1 KNB<color=yellow>ho�n th�nh nhi�m v� Nh�p M�n l�n ngay level 50 nh�n ���c 100 v�n")
			SetTask(1403,3)--da hoan thanh nhiem vu nhap mon
			Earn(1000000)
		--	else
		--	Say("��i hi�p �� nh�n nhi�m v� nh�p m�n, nh�ng ��ng c�p kh�ng l�n h�n 50 ch�a th� ho�n th�nh nhi�m v�")
		--	return 1
		--end
	end
end

function HoanThanhNhiemVuNhapMon()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) > 2 then--Da hoan thanh nhiem vu nhap mon
		Say("��i hi�p �� ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 2 then--da nhan nhiem vu nhap mon
		if GetLevel() >= 50 then--dang cap lon hon = 50
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) ho�n th�nh nhi�m v� Nh�p M�n")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) ho�n th�nh nhi�m v� Nh�p M�n")
			SetTask(1403,3)--da hoan thanh nhiem vu nhap mon
			else
			Say("��i hi�p �� nh�n nhi�m v� nh�p m�n, nh�ng ��ng c�p kh�ng l�n h�n 50 ch�a th� ho�n th�nh nhi�m v�")
			return 1
		end
	end
end

function NhanNhiemVuTanThu1()

	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) > 3 then
		Say("��i hi�p nh�n nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 3 then--da hoan thanh nhiem vu nhap mon
		Say("��i hi�p �� nh�n nhi�m v� T�n Th� 1, ��n Thi�n T�m Th�p T�ng 1 ti�u di�t 1000 con qu�i sau �� ho�n th�nh nhi�m v�")
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) nh�n nhi�m v� T�n Th� 1")
		SetTask(1403,4)--nhan nhiem vu tan thu 1
	end
end

function HoanThanhNhiemVuTanThu1()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 4 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 4 then--da nhan nhiem vu tan thu 1
		local tongquai = GetTask(1404)
		if tongquai >= 1000 then
			if GetLevel()<60 then
				local nAddLevel = 60 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,5)--da hoan thanh nhiem vu tan thu 1
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 1 l�p t�c l�n ngay level 60")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 1 l�p t�c l�n ngay level 60")
			else
			Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 1000 con qu�i � Thi�n T�m Th�p T�ng 1 kh�ng th� ho�n th�nh nhi�m v� n�y")
		end
	end
end

function HoanThanhNhiemVuTanThu1100xu()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 4 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 4 then--da nhan nhiem vu tan thu 1
		--local tongquai = GetTask(1404)
		--if tongquai >= 1000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 1) then				
				Say("Kh�ch quan kh�ng mang theo �� 1 kim nguy�n b�o?", 1, "��ng r�i, ch�a mang ��/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,1 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<60 then
				local nAddLevel = 60 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,5)--da hoan thanh nhiem vu tan thu 1
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 1 l�p t�c l�n ngay level 60")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>1 KNB<color> ho�n th�nh nhanh nhi�m v� T�n Th� 1 l�p t�c l�n ngay level 60 v� 100 v�n")
			Earn(1000000)
			--else
			--Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 1000 con qu�i � Thi�n T�m Th�p T�ng 1 kh�ng th� ho�n th�nh nhi�m v� n�y")
		--end
	end
end

function NhanNhiemVuTanThu2()

	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) > 5 then
		Say("��i hi�p nh�n nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 5 then--da hoan thanh nhiem vu tan thu 1
		Say("��i hi�p �� nh�n nhi�m v� T�n Th� 2, ��n Thi�n T�m Th�p T�ng 3 ti�u di�t 2000 con qu�i sau �� ho�n th�nh nhi�m v�")
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) nh�n nhi�m v� T�n Th� 2")
		SetTask(1403,6)--nhan nhiem vu tan thu 2
	end
end

function HoanThanhNhiemVuTanThu2()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 6 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 6 then--da nhan nhiem vu tan thu 1
		local tongquai = GetTask(1404)
		if tongquai >= 2000 then
			if GetLevel()<70 then
				local nAddLevel = 70 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,7)--da hoan thanh nhiem vu tan thu 1
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 2 l�p t�c l�n ngay level 70")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 2 l�p t�c l�n ngay level 70")
			else
			Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 2000 con qu�i � Thi�n T�m Th�p T�ng 3 kh�ng th� ho�n th�nh nhi�m v� n�y")
		end
	end
end

function HoanThanhNhiemVuTanThu2200xu()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 6 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 6 then--da nhan nhiem vu tan thu 1
		--local tongquai = GetTask(1404)
		--if tongquai >= 2000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 2) then				
				Say("Kh�ch quan kh�ng mang theo �� 2 kim nguy�n b�o?", 1, "��ng r�i, ch�a mang ��/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,2 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<70 then
				local nAddLevel = 70 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			SetTask(1404,0)
			SetTask(1403,7)--da hoan thanh nhiem vu tan thu 1
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 2 l�p t�c l�n ngay level 70")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>2 KNB<color> ho�n th�nh nhanh nhi�m v� T�n Th� 2 l�p t�c l�n ngay level 70 v� nh�n ���c 200 v�n")
			Earn(2000000)
			--else
			--Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 2000 con qu�i � Thi�n T�m Th�p T�ng 3 kh�ng th� ho�n th�nh nhi�m v� n�y")
		--end
	end
end

function NhanNhiemVuTanThu3()

	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 7 then
		Say("��i hi�p nh�n nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 7 then--da hoan thanh nhiem vu tan thu 2
		Say("��i hi�p �� nh�n nhi�m v� T�n Th� 1, ��n L�m Du Quan ti�u di�t 3000 con qu�i, v� ho�n th�nh 20 nhi�m v� d� t�u li�n ti�p kh�ng h�y sau �� ho�n th�nh nhi�m v�")
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) nh�n nhi�m v� T�n Th� 3")
		SetTask(1403,8)--nhan nhiem vu tan thu 3
	end
end

function HoanThanhNhiemVuTanThu3()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 8 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 8 then--da nhan nhiem vu tan thu 3
		local nhiemvudatau = tl_counttasklinknum(1);--Task PVLB1 nhiem vu da tau da lam
		if nhiemvudatau < 20 then
			Say("��i hi�p �� ho�n th�nh <color=yellow>"..nhiemvudatau.."<color> nhi�m v� d� t�u ph�i ho�n th�nh th�m <color=green>"..20 - nhiemvudatau.."<color> nhi�m v� D� T�u n�a m�i c� th� ho�n th�nh nhi�m v� n�y")
			return 1
		end
		local tongquai = GetTask(1404)
		if tongquai >= 3000 then
			if GetLevel()<80 then
				local nAddLevel = 80 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "Chi�u D� Ng�c S� T�"	,tbProp={0,10,5,5,0,0},nCount=1, nBindState = -2,nExpiredTime=60*24*30},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 3");
			SetTask(1404,0)
			SetTask(1403,9)--da hoan thanh nhiem vu tan thu 3
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 3 l�p t�c l�n ngay level 80")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 3 l�p t�c l�n ngay level 80")
			else
			Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 3000 con qu�i � L�m Du Quan kh�ng th� ho�n th�nh nhi�m v� n�y")
		end
	end
end

function HoanThanhNhiemVuTanThu3KNB()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 8 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 8 then--da nhan nhiem vu tan thu 3
		local nhiemvudatau = tl_counttasklinknum(1);--Task PVLB1 nhiem vu da tau da lam
		if nhiemvudatau < 20 then
			Say("��i hi�p �� ho�n th�nh <color=yellow>"..nhiemvudatau.."<color> nhi�m v� d� t�u ph�i ho�n th�nh th�m <color=green>"..20 - nhiemvudatau.."<color> nhi�m v� D� T�u n�a m�i c� th� ho�n th�nh nhi�m v� n�y")
			return 1
		end
		--local tongquai = GetTask(1404)
		--if tongquai >= 3000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 3) then				
				Say("Kh�ch quan kh�ng mang theo �� 3 kim nguy�n b�o?", 1, "��ng r�i, ch�a mang ��/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,3 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<80 then
				local nAddLevel = 80 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "Chi�u D� Ng�c S� T�"	,tbProp={0,10,5,5,0,0},nCount=1, nBindState = -2,nExpiredTime=60*24*30},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 3");
			SetTask(1404,0)
			SetTask(1403,9)--da hoan thanh nhiem vu tan thu 3
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 3 l�p t�c l�n ngay level 80")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>3 KNB<color> ho�n th�nh nhanh nhi�m v� T�n Th� 3 l�p t�c l�n ngay level 80 v� nh�n ���c 300 v�n")
			Earn(3000000)
		--	else
		--	Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 3000 con qu�i � L�m Du Quan kh�ng th� ho�n th�nh nhi�m v� n�y")
		--end
	end
end

function NhanNhiemVuTanThu4()

	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 9 then
		Say("��i hi�p nh�n nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 9 then--da hoan thanh nhiem vu tan thu 3
		Say("��i hi�p �� nh�n nhi�m v� T�n Th� 4, ��n Ch�n N�i Tr��ng B�ch ti�u di�t 4000 con qu�i, v� ��i ��n 20h00 tham gia 1 tr�n T�ng Kim ��t ���c 1000 �i�m t�ch l�y sau �� ho�n th�nh nhi�m v�")
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) nh�n nhi�m v� T�n Th� 4")
		SetTask(1403,10)--nhan nhiem vu tan thu 4
	end
end

function HoanThanhNhiemVuTanThu4400xu()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 10 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end
	--local diemtk = GetTask(747)
	--if diemtk < 1000 then
	--	Say("��i hi�p m�i ch� ��t ���c <color=green>"..diemtk.." �i�m t�ch l�y<color> T�ng Kim, c�n ph�i ��t �� 1000 �i�m m�i c� th� ho�n th�nh nhi�m v� n�y")
	--	return 1
	--end

	if GetTask(1403) == 10 then--da nhan nhiem vu tan thu 4
		--local tongquai = GetTask(1404)
		--if tongquai >= 4000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 4) then				
				Say("Kh�ch quan kh�ng mang theo �� 4 kim nguy�n b�o?", 1, "��ng r�i, ch�a mang ��/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,4 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<90 then
				local nAddLevel = 90 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1, nBindState = -2,},
				{szName = "V� L�m M�t T�ch"	,tbProp={6,1,26,1,0,0},nCount=1, nBindState = -2,},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 4");
			SetTask(1404,0)
			SetTask(1403,11)--da hoan thanh nhiem vu tan thu 4
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 4 l�p t�c l�n ngay level 90")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>4 KNB<color> ho�n th�nh nhanh nhi�m v� T�n Th� 4 l�p t�c l�n ngay level 90 v� nh�n 400 v�n")
			Earn(4000000)
			--else
			--Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 4000 con qu�i � Ch�n N�i Tr��ng B�ch kh�ng th� ho�n th�nh nhi�m v� n�y")
		--end
	end
end

function HoanThanhNhiemVuTanThu4()
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 10 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end
	local diemtk = GetTask(747)
	if diemtk < 1000 then
		Say("��i hi�p m�i ch� ��t ���c <color=green>"..diemtk.." �i�m t�ch l�y<color> T�ng Kim, c�n ph�i ��t �� 1000 �i�m m�i c� th� ho�n th�nh nhi�m v� n�y")
		return 1
	end

	if GetTask(1403) == 10 then--da nhan nhiem vu tan thu 4
		local tongquai = GetTask(1404)
		if tongquai >= 4000 then
			if GetLevel()<90 then
				local nAddLevel = 90 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			local thuongpvlb = 
			{
				{szName = "T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1, nBindState = -2,},
				{szName = "V� L�m M�t T�ch"	,tbProp={6,1,26,1,0,0},nCount=1, nBindState = -2,},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 4");
			SetTask(1404,0)
			SetTask(1403,11)--da hoan thanh nhiem vu tan thu 4
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 4 l�p t�c l�n ngay level 90")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 4 l�p t�c l�n ngay level 90")
			else
			Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 4000 con qu�i � Ch�n N�i Tr��ng B�ch kh�ng th� ho�n th�nh nhi�m v� n�y")
		end
	end
end

function NhanNhiemVuTanThu5()

	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) > 11 then
		Say("��i hi�p nh�n nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 11 then--da hoan thanh nhiem vu tan thu 4
		Say("��i hi�p �� nh�n nhi�m v� T�n Th� 5, ��n Sa M�c 3 ti�u di�t 5000 con qu�i, v� ho�n th�nh 40 nhi�m v� D� T�u, mua T�n Th� ��n trong KTC chu�t ph�i �� s� d�ng")
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> t�i npc H� Tr� T�n Th� (Ba L�ng Huy�n 203/199) nh�n nhi�m v� T�n Th� 5")
		SetTask(1403,12)--nhan nhiem vu tan thu 5
	end
end

function HoanThanhNhiemVuTanThu5()
	if CalcFreeItemCellCount() < 50 then
		Say("H�nh trang kh�ng �� 50 � tr�ng")
		return 1
	end
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 11 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 5, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 5 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) == 12 then--da nhan nhiem vu tan thu 4 chua su dung tan thu don
		Say("��i hi�p ch�a s� d�ng T�n Th� ��n kh�ng th� ho�n th�nh nhi�m v� n�y")
		return 1
	end

	if GetTask(1403) > 13 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 13 then--da nhan nhiem vu tan thu 5
		
		local nhiemvudatau = tl_counttasklinknum(1);
		if nhiemvudatau < 40 then
			Say("��i hi�p �� ho�n th�nh <color=yellow>"..nhiemvudatau.."<color> nhi�m v� d� t�u ph�i ho�n th�nh th�m <color=green>"..40 - nhiemvudatau.."<color> nhi�m v� D� T�u n�a m�i c� th� ho�n th�nh nhi�m v� n�y")
			return 1
		end

		local tongquai = GetTask(1404)
		if tongquai >= 5000 then
			if GetLevel()<100 then
				local nAddLevel = 100 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			Earn(10000000)
			SetTask(1404,0)
			SetTask(1403,14)--da hoan thanh nhiem vu tan thu 5
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 5 l�p t�c l�n ngay level 100")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 5 l�p t�c l�n ngay level 100 + 1 B� Kim Phong ng�u nhi�n thu�c t�nh")
			local tbbachkim  =
			{
				{szName = "Kim Phong 1", tbProp = {0,177}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 2", tbProp = {0,178}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 3", tbProp = {0,179}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 4", tbProp = {0,180}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 5", tbProp = {0,181}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 6", tbProp = {0,182}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 7", tbProp = {0,183}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 8", tbProp = {0,184}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 9", tbProp = {0,185}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
			}
			tbAwardTemplet:GiveAwardByList(tbbachkim, "PhanThuongBoKimPhongPVLB");
			else
			Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 5000 con qu�i � Sa M�c 3 kh�ng th� ho�n th�nh nhi�m v� n�y")
		end
	end
end

function HoanThanhNhiemVuTanThu5500Xu()
	if CalcFreeItemCellCount() < 50 then
		Say("H�nh trang kh�ng �� 50 � tr�ng")
		return 1
	end
	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 11 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 5, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 5 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) == 12 then--da nhan nhiem vu tan thu 4 chua su dung tan thu don
		Say("��i hi�p ch�a s� d�ng T�n Th� ��n kh�ng th� ho�n th�nh nhi�m v� n�y")
		return 1
	end

	if GetTask(1403) > 13 then
		Say("��i hi�p ho�n th�nh nhi�m v� n�y r�i")
		return 1
	end

	if GetTask(1403) == 13 then--da nhan nhiem vu tan thu 5
		
		local nhiemvudatau = tl_counttasklinknum(1);
		if nhiemvudatau < 40 then
			Say("��i hi�p �� ho�n th�nh <color=yellow>"..nhiemvudatau.."<color> nhi�m v� d� t�u ph�i ho�n th�nh th�m <color=green>"..40 - nhiemvudatau.."<color> nhi�m v� D� T�u n�a m�i c� th� ho�n th�nh nhi�m v� n�y")
			return 1
		end

		--local tongquai = GetTask(1404)
		--if tongquai >= 5000 then
			local nSilverCount = GetItemCountEx(1503);
			if (nSilverCount < 5) then				
				Say("Kh�ch quan kh�ng mang theo �� 5 kim nguy�n b�o?", 1, "��ng r�i, ch�a mang ��/no");
				return 1
			end
			if (GetItemCountEx(1503) > 0) then		
				for i=1,5 do
					DelItemEx(1503);		
				end
			end
			if GetLevel()<100 then
				local nAddLevel = 100 - GetLevel()
				ST_LevelUp(nAddLevel)
			end
			Earn(10000000)
			SetTask(1404,0)
			SetTask(1403,14)--da hoan thanh nhiem vu tan thu 5
			Say("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Phong V�n L�nh B�i<color> �� ho�n th�nh nhi�m v� T�n Th� 5 l�p t�c l�n ngay level 100")
			Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>5 KNB<color> �� ho�n th�nh nhi�m v� T�n Th� 5 l�p t�c l�n ngay level 100 v� nh�n ���c 500 v�n + 1 B� Kim Phong ng�u nhi�n thu�c t�nh")
			Earn(5000000)
			local tbbachkim  =
			{
				{szName = "Kim Phong 1", tbProp = {0,177}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 2", tbProp = {0,178}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 3", tbProp = {0,179}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 4", tbProp = {0,180}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 5", tbProp = {0,181}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 6", tbProp = {0,182}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 7", tbProp = {0,183}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 8", tbProp = {0,184}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
				{szName = "Kim Phong 9", tbProp = {0,185}, nCount = 1,nQuality = 1, nBindState=-2, nExpiredTime=60*24*60},
			}
			tbAwardTemplet:GiveAwardByList(tbbachkim, "PhanThuongBoKimPhongPVLB");
			--else
			--Say("��i hi�p �� ti�u di�t "..tongquai.." ch�a ��nh �� 5000 con qu�i � Sa M�c 3 kh�ng th� ho�n th�nh nhi�m v� n�y")
		--end
	end
end

function Oncancel()end
