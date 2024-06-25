IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")


-------------------------------------------------------------------------------

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
--------------------------------------------------------------------------
function main(nItemIdx)
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end

	--Ky Nang 21
	if (P == 43045) then
	       local nFact = GetLastFactionNumber()
	       local openSkill = GetTask(3000)
	       if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	       end
              if openSkill ~= 0 then
		Say("Ng��i �� t�ng m� r�ng k� n�ng n�y r�i")
		return 1
              end
	       Msg2Player("<color=yellow>Ng��i �� Khai Th�ng  k� n�ng 150 c�p 21. C� th� h�c ��i th�nh 150 c�p 21! <color>");
              WriteLogPro("dulieu/hocskill/sach21.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 21\n");
	       SetTask(3000, openSkill + 1)
	       return 0
	       end
	--Ky Nang 22
	if (P == 43046) then
		local openSkill = GetTask(3000)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>��ng c�p c�a ng��i th�p h�n 150, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	if openSkill ~= 2 then 
		Say("Ng��i kh�ng �� �i�u ki�n �� m� r�ng k� n�ng 150 c�p 22")
		return 1
	end
	Msg2Player("<color=yellow>�� h�c k� n�ng 150 c�p 22. C� th� h�c ��i th�nh 150 c�p 22! <color>");
       WriteLogPro("dulieu/hocskill/sach22.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 22\n");
	SetTask(3000, openSkill + 1 )
	return 0
	       end

	--Ky Nang 23
	if (P == 43047) then
		local openSkill = GetTask(3000)
	       if openSkill ~= 4 then
		Say("Ng��i kh�ng th� m� r�ng k� n�ng n�y")
		return 1
	        end
	        if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	       end
	        Msg2Player("<color=yellow>�� h�c k� n�ng 150 c�p 23. C� th� h�c ��i th�nh 150 c�p 23! <color>");
              WriteLogPro("dulieu/hocskill/sach23.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 23\n");
	        SetTask(3000, openSkill + 1)
	       return 0
              end
	--Ky Nang 24
	      if (P == 43048) then
		local openSkill = GetTask(3000)
	        if openSkill ~= 6 then
		Say("Ng��i kh�ng th� m� r�ng k� n�ng n�y")
		return 1
	         end
	        local nFact = GetLastFactionNumber()
	        if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");

		return 1
	       end
	 	Msg2Player("<color=yellow>�� h�c k� n�ng 150 c�p 24. C� th� h�c ��i th�nh 150 c�p 24! <color>");
              WriteLogPro("dulieu/hocskill/sach24.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 24\n");
	       SetTask(3000, openSkill + 1)
	return 0
end
	--Ky Nang 25
	if (P == 43049) then
		local MonPhai = GetLastFactionNumber()
		local openSkill = GetTask(3000)
	        if openSkill ~= 8 then
		Say("Ng��i kh�ng th� m� r�ng k� n�ng n�y")
		return 1
	         end
	        local nFact = GetLastFactionNumber()
	        if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	       end
	 	Msg2Player("<color=yellow>�� h�c k� n�ng 150 c�p 25. C� th� h�c ��i th�nh 150 c�p 25! <color>");
             WriteLogPro("dulieu/hocskill/sach25.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 25\n");
	       SetTask(3000, openSkill + 1)
	return 0
end
	--Ky Nang 26
	if (P == 43050) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_26","Vi �� Hi�n X�/ThieuLamCon_26","Tam Gi�i Quy Thi�n/ThieuLamDao_26","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_26","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_26","B� V��ng T�m Kim/ThienVuongThuong_26","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_26","Thi�t Li�n T� S�t/DMTuTien_26","C�n Kh�n Nh�t Tr�ch/DMTieu_26","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_26","U H�n Ph� �nh/NguDocDao_26","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_26","B�ng V� L�c Tinh/NgaMyChuong_26","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_26","Th�y Anh Man T�/ThuyYenNoi_26","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_26","B�ng Hu�nh L��c ��a/CaiBangCon_26","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_26","T�t H�a Li�u Nguy�n/ThienNhanDao_26","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_26","Ki�m Th�y Tinh H�/VoDangKiem_26","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_26","Thi�n L�i Ch�n Nh�c/ConLonKiem_26","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_26","Th�n Quang To�n Nhi�u/HoaSonKhi_26","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 27
	if (P == 43051) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_27","Vi �� Hi�n X�/ThieuLamCon_27","Tam Gi�i Quy Thi�n/ThieuLamDao_27","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_27","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_27","B� V��ng T�m Kim/ThienVuongThuong_27","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_27","Thi�t Li�n T� S�t/DMTuTien_27","C�n Kh�n Nh�t Tr�ch/DMTieu_27","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_27","U H�n Ph� �nh/NguDocDao_27","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_27","B�ng V� L�c Tinh/NgaMyChuong_27","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_27","Th�y Anh Man T�/ThuyYenNoi_27","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_27","B�ng Hu�nh L��c ��a/CaiBangCon_27","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_27","T�t H�a Li�u Nguy�n/ThienNhanDao_27","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_27","Ki�m Th�y Tinh H�/VoDangKiem_27","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_27","Thi�n L�i Ch�n Nh�c/ConLonKiem_27","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_27","Th�n Quang To�n Nhi�u/HoaSonKhi_27","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 28
	if (P == 43052) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_28","Vi �� Hi�n X�/ThieuLamCon_28","Tam Gi�i Quy Thi�n/ThieuLamDao_28","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_28","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_28","B� V��ng T�m Kim/ThienVuongThuong_28","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_28","Thi�t Li�n T� S�t/DMTuTien_28","C�n Kh�n Nh�t Tr�ch/DMTieu_28","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_28","U H�n Ph� �nh/NguDocDao_28","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_28","B�ng V� L�c Tinh/NgaMyChuong_28","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_28","Th�y Anh Man T�/ThuyYenNoi_28","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_28","B�ng Hu�nh L��c ��a/CaiBangCon_28","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_28","T�t H�a Li�u Nguy�n/ThienNhanDao_28","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_28","Ki�m Th�y Tinh H�/VoDangKiem_28","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_28","Thi�n L�i Ch�n Nh�c/ConLonKiem_28","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_28","Th�n Quang To�n Nhi�u/HoaSonKhi_28","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 29
	if (P == 43053) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_29","Vi �� Hi�n X�/ThieuLamCon_29","Tam Gi�i Quy Thi�n/ThieuLamDao_29","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_29","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_29","B� V��ng T�m Kim/ThienVuongThuong_29","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_29","Thi�t Li�n T� S�t/DMTuTien_29","C�n Kh�n Nh�t Tr�ch/DMTieu_29","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_29","U H�n Ph� �nh/NguDocDao_29","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_29","B�ng V� L�c Tinh/NgaMyChuong_29","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_29","Th�y Anh Man T�/ThuyYenNoi_29","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_29","B�ng Hu�nh L��c ��a/CaiBangCon_29","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_29","T�t H�a Li�u Nguy�n/ThienNhanDao_29","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_29","Ki�m Th�y Tinh H�/VoDangKiem_29","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_29","Thi�n L�i Ch�n Nh�c/ConLonKiem_29","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_29","Th�n Quang To�n Nhi�u/HoaSonKhi_29","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 30
	if (P == 43054) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_30","Vi �� Hi�n X�/ThieuLamCon_30","Tam Gi�i Quy Thi�n/ThieuLamDao_30","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_30","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_30","B� V��ng T�m Kim/ThienVuongThuong_30","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_30","Thi�t Li�n T� S�t/DMTuTien_30","C�n Kh�n Nh�t Tr�ch/DMTieu_30","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_30","U H�n Ph� �nh/NguDocDao_30","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_30","B�ng V� L�c Tinh/NgaMyChuong_30","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_30","Th�y Anh Man T�/ThuyYenNoi_30","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_30","B�ng Hu�nh L��c ��a/CaiBangCon_30","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_30","T�t H�a Li�u Nguy�n/ThienNhanDao_30","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_30","Ki�m Th�y Tinh H�/VoDangKiem_30","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_30","Thi�n L�i Ch�n Nh�c/ConLonKiem_30","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_30","Th�n Quang To�n Nhi�u/HoaSonKhi_30","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 31
	if (P == 43055) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_31","Vi �� Hi�n X�/ThieuLamCon_31","Tam Gi�i Quy Thi�n/ThieuLamDao_31","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_31","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_31","B� V��ng T�m Kim/ThienVuongThuong_31","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_31","Thi�t Li�n T� S�t/DMTuTien_31","C�n Kh�n Nh�t Tr�ch/DMTieu_31","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_31","U H�n Ph� �nh/NguDocDao_31","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_31","B�ng V� L�c Tinh/NgaMyChuong_31","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_31","Th�y Anh Man T�/ThuyYenNoi_31","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_31","B�ng Hu�nh L��c ��a/CaiBangCon_31","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_31","T�t H�a Li�u Nguy�n/ThienNhanDao_31","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_31","Ki�m Th�y Tinh H�/VoDangKiem_31","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_31","Thi�n L�i Ch�n Nh�c/ConLonKiem_31","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_31","Th�n Quang To�n Nhi�u/HoaSonKhi_31","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 32
	if (P == 43056) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_32","Vi �� Hi�n X�/ThieuLamCon_32","Tam Gi�i Quy Thi�n/ThieuLamDao_32","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_32","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_32","B� V��ng T�m Kim/ThienVuongThuong_32","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_32","Thi�t Li�n T� S�t/DMTuTien_32","C�n Kh�n Nh�t Tr�ch/DMTieu_32","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_32","U H�n Ph� �nh/NguDocDao_32","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_32","B�ng V� L�c Tinh/NgaMyChuong_32","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_32","Th�y Anh Man T�/ThuyYenNoi_32","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_32","B�ng Hu�nh L��c ��a/CaiBangCon_32","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_32","T�t H�a Li�u Nguy�n/ThienNhanDao_32","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_32","Ki�m Th�y Tinh H�/VoDangKiem_32","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_32","Thi�n L�i Ch�n Nh�c/ConLonKiem_32","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_32","Th�n Quang To�n Nhi�u/HoaSonKhi_32","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 33
	if (P == 43057) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_33","Vi �� Hi�n X�/ThieuLamCon_33","Tam Gi�i Quy Thi�n/ThieuLamDao_33","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_33","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_33","B� V��ng T�m Kim/ThienVuongThuong_33","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_33","Thi�t Li�n T� S�t/DMTuTien_33","C�n Kh�n Nh�t Tr�ch/DMTieu_33","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_33","U H�n Ph� �nh/NguDocDao_33","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_33","B�ng V� L�c Tinh/NgaMyChuong_33","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_33","Th�y Anh Man T�/ThuyYenNoi_33","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_33","B�ng Hu�nh L��c ��a/CaiBangCon_33","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_33","T�t H�a Li�u Nguy�n/ThienNhanDao_33","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_33","Ki�m Th�y Tinh H�/VoDangKiem_33","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_33","Thi�n L�i Ch�n Nh�c/ConLonKiem_33","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_33","Th�n Quang To�n Nhi�u/HoaSonKhi_33","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 34
	if (P == 43058) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_34","Vi �� Hi�n X�/ThieuLamCon_34","Tam Gi�i Quy Thi�n/ThieuLamDao_34","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_34","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_34","B� V��ng T�m Kim/ThienVuongThuong_34","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_34","Thi�t Li�n T� S�t/DMTuTien_34","C�n Kh�n Nh�t Tr�ch/DMTieu_34","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_34","U H�n Ph� �nh/NguDocDao_34","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_34","B�ng V� L�c Tinh/NgaMyChuong_34","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_34","Th�y Anh Man T�/ThuyYenNoi_34","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_34","B�ng Hu�nh L��c ��a/CaiBangCon_34","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_34","T�t H�a Li�u Nguy�n/ThienNhanDao_34","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_34","Ki�m Th�y Tinh H�/VoDangKiem_34","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_34","Thi�n L�i Ch�n Nh�c/ConLonKiem_34","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_34","Th�n Quang To�n Nhi�u/HoaSonKhi_34","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 35
	if (P == 43059) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_35","Vi �� Hi�n X�/ThieuLamCon_35","Tam Gi�i Quy Thi�n/ThieuLamDao_35","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_35","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_35","B� V��ng T�m Kim/ThienVuongThuong_35","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_35","Thi�t Li�n T� S�t/DMTuTien_35","C�n Kh�n Nh�t Tr�ch/DMTieu_35","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_35","U H�n Ph� �nh/NguDocDao_35","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_35","B�ng V� L�c Tinh/NgaMyChuong_35","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_35","Th�y Anh Man T�/ThuyYenNoi_35","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_35","B�ng Hu�nh L��c ��a/CaiBangCon_35","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_35","T�t H�a Li�u Nguy�n/ThienNhanDao_35","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_35","Ki�m Th�y Tinh H�/VoDangKiem_35","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_35","Thi�n L�i Ch�n Nh�c/ConLonKiem_35","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_35","Th�n Quang To�n Nhi�u/HoaSonKhi_35","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 36
	if (P == 43060) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_36","Vi �� Hi�n X�/ThieuLamCon_36","Tam Gi�i Quy Thi�n/ThieuLamDao_36","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_36","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_36","B� V��ng T�m Kim/ThienVuongThuong_36","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_36","Thi�t Li�n T� S�t/DMTuTien_36","C�n Kh�n Nh�t Tr�ch/DMTieu_36","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_36","U H�n Ph� �nh/NguDocDao_36","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_36","B�ng V� L�c Tinh/NgaMyChuong_36","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_36","Th�y Anh Man T�/ThuyYenNoi_36","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_36","B�ng Hu�nh L��c ��a/CaiBangCon_36","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_36","T�t H�a Li�u Nguy�n/ThienNhanDao_36","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_36","Ki�m Th�y Tinh H�/VoDangKiem_36","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_36","Thi�n L�i Ch�n Nh�c/ConLonKiem_36","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_36","Th�n Quang To�n Nhi�u/HoaSonKhi_36","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 37
	if (P == 43061) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_37","Vi �� Hi�n X�/ThieuLamCon_37","Tam Gi�i Quy Thi�n/ThieuLamDao_37","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_37","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_37","B� V��ng T�m Kim/ThienVuongThuong_37","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_37","Thi�t Li�n T� S�t/DMTuTien_37","C�n Kh�n Nh�t Tr�ch/DMTieu_37","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_37","U H�n Ph� �nh/NguDocDao_37","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_37","B�ng V� L�c Tinh/NgaMyChuong_37","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_37","Th�y Anh Man T�/ThuyYenNoi_37","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_37","B�ng Hu�nh L��c ��a/CaiBangCon_37","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_37","T�t H�a Li�u Nguy�n/ThienNhanDao_37","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_37","Ki�m Th�y Tinh H�/VoDangKiem_37","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_37","Thi�n L�i Ch�n Nh�c/ConLonKiem_37","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_37","Th�n Quang To�n Nhi�u/HoaSonKhi_37","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 38
	if (P == 43062) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_38","Vi �� Hi�n X�/ThieuLamCon_38","Tam Gi�i Quy Thi�n/ThieuLamDao_38","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_38","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_38","B� V��ng T�m Kim/ThienVuongThuong_38","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_38","Thi�t Li�n T� S�t/DMTuTien_38","C�n Kh�n Nh�t Tr�ch/DMTieu_38","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_38","U H�n Ph� �nh/NguDocDao_38","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_38","B�ng V� L�c Tinh/NgaMyChuong_38","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_38","Th�y Anh Man T�/ThuyYenNoi_38","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_38","B�ng Hu�nh L��c ��a/CaiBangCon_38","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_38","T�t H�a Li�u Nguy�n/ThienNhanDao_38","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_38","Ki�m Th�y Tinh H�/VoDangKiem_38","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_38","Thi�n L�i Ch�n Nh�c/ConLonKiem_38","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_38","Th�n Quang To�n Nhi�u/HoaSonKhi_38","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 39
	if (P == 43063) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_39","Vi �� Hi�n X�/ThieuLamCon_39","Tam Gi�i Quy Thi�n/ThieuLamDao_39","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_39","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_39","B� V��ng T�m Kim/ThienVuongThuong_39","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_39","Thi�t Li�n T� S�t/DMTuTien_39","C�n Kh�n Nh�t Tr�ch/DMTieu_39","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_39","U H�n Ph� �nh/NguDocDao_39","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_39","B�ng V� L�c Tinh/NgaMyChuong_39","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_39","Th�y Anh Man T�/ThuyYenNoi_39","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_39","B�ng Hu�nh L��c ��a/CaiBangCon_39","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_39","T�t H�a Li�u Nguy�n/ThienNhanDao_39","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_39","Ki�m Th�y Tinh H�/VoDangKiem_39","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_39","Thi�n L�i Ch�n Nh�c/ConLonKiem_39","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_39","Th�n Quang To�n Nhi�u/HoaSonKhi_39","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end

	--Ky Nang 40
	if (P == 43064) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"��i L�c Kim Cang Ch��ng/ThieuLamQuyen_40","Vi �� Hi�n X�/ThieuLamCon_40","Tam Gi�i Quy Thi�n/ThieuLamDao_40","H�y B�/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"H�o H�ng Tr�m/ThienVuongDao_40","Tung Ho�nh B�t Ph��ng/ThienVuongChuy_40","B� V��ng T�m Kim/ThienVuongThuong_40","H�y B�/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",4,"V� �nh Xuy�n/DMPhiDao_40","Thi�t Li�n T� S�t/DMTuTien_40","C�n Kh�n Nh�t Tr�ch/DMTieu_40","H�y B�/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"H�nh Ti�u C�t L�p/NguDocChuong_40","U H�n Ph� �nh/NguDocDao_40","H�y B�/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Ki�m Hoa V�n Tinh/NgaMyKiem_40","B�ng V� L�c Tinh/NgaMyChuong_40","H�y B�/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"B�ng T��c Ho�t K�/ThuyYenDao_40","Th�y Anh Man T�/ThuyYenNoi_40","H�y B�/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Th�i Th�ng L�c Long/CaiBangQuyen_40","B�ng Hu�nh L��c ��a/CaiBangCon_40","H�y B�.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"Giang H�i N� Lan/ThienNhanKich_40","T�t H�a Li�u Nguy�n/ThienNhanDao_40","H�y B�/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"T�o H�a Th�i Thanh/VoDangQuyen_40","Ki�m Th�y Tinh H�/VoDangKiem_40","H�y B�/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"C�u Thi�n C��ng Phong/ConLonDao_40","Thi�n L�i Ch�n Nh�c/ConLonKiem_40","H�y B�/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H�y L�a Ch�n K� N�ng Mu�n Kh�i Ph�c",3,"��c C� C�u Ki�m/HoaSonKiem_40","Th�n Quang To�n Nhi�u/HoaSonKhi_40","H�y B�/No") return 1
		else
			Talk(1,"","Ng��i Ch�a Gia Nh�p M�n Ph�i Kh�ng L�nh Ng� ���c G�") return 1
		end
	end
end

