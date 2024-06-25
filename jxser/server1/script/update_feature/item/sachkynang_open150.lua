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
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	       end
              if openSkill ~= 0 then
		Say("Ng­êi ®· tõng më réng kü n¨ng nµy råi")
		return 1
              end
	       Msg2Player("<color=yellow>Ng­¬i §· Khai Th«ng  kü n¨ng 150 cÊp 21. Cã thÓ häc ®¹i thµnh 150 cÊp 21! <color>");
              WriteLogPro("dulieu/hocskill/sach21.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 21\n");
	       SetTask(3000, openSkill + 1)
	       return 0
	       end
	--Ky Nang 22
	if (P == 43046) then
		local openSkill = GetTask(3000)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>§¼ng cÊp cña ng­¬i thÊp h¬n 150, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	if openSkill ~= 2 then 
		Say("Ng­êi kh«ng ®ñ ®iÒu kiÖn ®Ó më réng kü n¨ng 150 cÊp 22")
		return 1
	end
	Msg2Player("<color=yellow>§· häc kü n¨ng 150 cÊp 22. Cã thÓ häc ®¹i thµnh 150 cÊp 22! <color>");
       WriteLogPro("dulieu/hocskill/sach22.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 22\n");
	SetTask(3000, openSkill + 1 )
	return 0
	       end

	--Ky Nang 23
	if (P == 43047) then
		local openSkill = GetTask(3000)
	       if openSkill ~= 4 then
		Say("Ng­¬i kh«ng thÓ më réng kü n¨ng nµy")
		return 1
	        end
	        if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	       end
	        Msg2Player("<color=yellow>§· häc kü n¨ng 150 cÊp 23. Cã thÓ häc ®¹i thµnh 150 cÊp 23! <color>");
              WriteLogPro("dulieu/hocskill/sach23.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 23\n");
	        SetTask(3000, openSkill + 1)
	       return 0
              end
	--Ky Nang 24
	      if (P == 43048) then
		local openSkill = GetTask(3000)
	        if openSkill ~= 6 then
		Say("Ng­¬i kh«ng thÓ më réng kü n¨ng nµy")
		return 1
	         end
	        local nFact = GetLastFactionNumber()
	        if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");

		return 1
	       end
	 	Msg2Player("<color=yellow>§· häc kü n¨ng 150 cÊp 24. Cã thÓ häc ®¹i thµnh 150 cÊp 24! <color>");
              WriteLogPro("dulieu/hocskill/sach24.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 24\n");
	       SetTask(3000, openSkill + 1)
	return 0
end
	--Ky Nang 25
	if (P == 43049) then
		local MonPhai = GetLastFactionNumber()
		local openSkill = GetTask(3000)
	        if openSkill ~= 8 then
		Say("Ng­¬i kh«ng thÓ më réng kü n¨ng nµy")
		return 1
	         end
	        local nFact = GetLastFactionNumber()
	        if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	       end
	 	Msg2Player("<color=yellow>§· häc kü n¨ng 150 cÊp 25. Cã thÓ häc ®¹i thµnh 150 cÊp 25! <color>");
             WriteLogPro("dulieu/hocskill/sach25.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \tKhai thong skill 25\n");
	       SetTask(3000, openSkill + 1)
	return 0
end
	--Ky Nang 26
	if (P == 43050) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_26","Vi §µ HiÕn Xö/ThieuLamCon_26","Tam Giíi Quy ThiÒn/ThieuLamDao_26","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_26","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_26","B¸ V­¬ng T¹m Kim/ThienVuongThuong_26","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_26","ThiÕt Liªn Tø S¸t/DMTuTien_26","Cµn Kh«n NhÊt TrÞch/DMTieu_26","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_26","U Hån PhÖ ¶nh/NguDocDao_26","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_26","B¨ng Vò L¹c Tinh/NgaMyChuong_26","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_26","Thñy Anh Man Tó/ThuyYenNoi_26","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_26","Bæng Huýnh L­îc §Þa/CaiBangCon_26","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_26","TËt Háa LiÖu Nguyªn/ThienNhanDao_26","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_26","KiÕm Thïy Tinh Hµ/VoDangKiem_26","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_26","Thiªn L«i ChÊn Nh¹c/ConLonKiem_26","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_26","ThÇn Quang Toµn NhiÔu/HoaSonKhi_26","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 27
	if (P == 43051) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_27","Vi §µ HiÕn Xö/ThieuLamCon_27","Tam Giíi Quy ThiÒn/ThieuLamDao_27","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_27","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_27","B¸ V­¬ng T¹m Kim/ThienVuongThuong_27","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_27","ThiÕt Liªn Tø S¸t/DMTuTien_27","Cµn Kh«n NhÊt TrÞch/DMTieu_27","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_27","U Hån PhÖ ¶nh/NguDocDao_27","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_27","B¨ng Vò L¹c Tinh/NgaMyChuong_27","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_27","Thñy Anh Man Tó/ThuyYenNoi_27","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_27","Bæng Huýnh L­îc §Þa/CaiBangCon_27","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_27","TËt Háa LiÖu Nguyªn/ThienNhanDao_27","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_27","KiÕm Thïy Tinh Hµ/VoDangKiem_27","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_27","Thiªn L«i ChÊn Nh¹c/ConLonKiem_27","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_27","ThÇn Quang Toµn NhiÔu/HoaSonKhi_27","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 28
	if (P == 43052) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_28","Vi §µ HiÕn Xö/ThieuLamCon_28","Tam Giíi Quy ThiÒn/ThieuLamDao_28","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_28","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_28","B¸ V­¬ng T¹m Kim/ThienVuongThuong_28","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_28","ThiÕt Liªn Tø S¸t/DMTuTien_28","Cµn Kh«n NhÊt TrÞch/DMTieu_28","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_28","U Hån PhÖ ¶nh/NguDocDao_28","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_28","B¨ng Vò L¹c Tinh/NgaMyChuong_28","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_28","Thñy Anh Man Tó/ThuyYenNoi_28","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_28","Bæng Huýnh L­îc §Þa/CaiBangCon_28","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_28","TËt Háa LiÖu Nguyªn/ThienNhanDao_28","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_28","KiÕm Thïy Tinh Hµ/VoDangKiem_28","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_28","Thiªn L«i ChÊn Nh¹c/ConLonKiem_28","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_28","ThÇn Quang Toµn NhiÔu/HoaSonKhi_28","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 29
	if (P == 43053) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_29","Vi §µ HiÕn Xö/ThieuLamCon_29","Tam Giíi Quy ThiÒn/ThieuLamDao_29","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_29","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_29","B¸ V­¬ng T¹m Kim/ThienVuongThuong_29","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_29","ThiÕt Liªn Tø S¸t/DMTuTien_29","Cµn Kh«n NhÊt TrÞch/DMTieu_29","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_29","U Hån PhÖ ¶nh/NguDocDao_29","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_29","B¨ng Vò L¹c Tinh/NgaMyChuong_29","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_29","Thñy Anh Man Tó/ThuyYenNoi_29","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_29","Bæng Huýnh L­îc §Þa/CaiBangCon_29","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_29","TËt Háa LiÖu Nguyªn/ThienNhanDao_29","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_29","KiÕm Thïy Tinh Hµ/VoDangKiem_29","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_29","Thiªn L«i ChÊn Nh¹c/ConLonKiem_29","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_29","ThÇn Quang Toµn NhiÔu/HoaSonKhi_29","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 30
	if (P == 43054) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_30","Vi §µ HiÕn Xö/ThieuLamCon_30","Tam Giíi Quy ThiÒn/ThieuLamDao_30","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_30","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_30","B¸ V­¬ng T¹m Kim/ThienVuongThuong_30","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_30","ThiÕt Liªn Tø S¸t/DMTuTien_30","Cµn Kh«n NhÊt TrÞch/DMTieu_30","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_30","U Hån PhÖ ¶nh/NguDocDao_30","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_30","B¨ng Vò L¹c Tinh/NgaMyChuong_30","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_30","Thñy Anh Man Tó/ThuyYenNoi_30","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_30","Bæng Huýnh L­îc §Þa/CaiBangCon_30","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_30","TËt Háa LiÖu Nguyªn/ThienNhanDao_30","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_30","KiÕm Thïy Tinh Hµ/VoDangKiem_30","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_30","Thiªn L«i ChÊn Nh¹c/ConLonKiem_30","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_30","ThÇn Quang Toµn NhiÔu/HoaSonKhi_30","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 31
	if (P == 43055) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_31","Vi §µ HiÕn Xö/ThieuLamCon_31","Tam Giíi Quy ThiÒn/ThieuLamDao_31","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_31","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_31","B¸ V­¬ng T¹m Kim/ThienVuongThuong_31","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_31","ThiÕt Liªn Tø S¸t/DMTuTien_31","Cµn Kh«n NhÊt TrÞch/DMTieu_31","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_31","U Hån PhÖ ¶nh/NguDocDao_31","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_31","B¨ng Vò L¹c Tinh/NgaMyChuong_31","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_31","Thñy Anh Man Tó/ThuyYenNoi_31","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_31","Bæng Huýnh L­îc §Þa/CaiBangCon_31","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_31","TËt Háa LiÖu Nguyªn/ThienNhanDao_31","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_31","KiÕm Thïy Tinh Hµ/VoDangKiem_31","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_31","Thiªn L«i ChÊn Nh¹c/ConLonKiem_31","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_31","ThÇn Quang Toµn NhiÔu/HoaSonKhi_31","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 32
	if (P == 43056) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_32","Vi §µ HiÕn Xö/ThieuLamCon_32","Tam Giíi Quy ThiÒn/ThieuLamDao_32","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_32","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_32","B¸ V­¬ng T¹m Kim/ThienVuongThuong_32","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_32","ThiÕt Liªn Tø S¸t/DMTuTien_32","Cµn Kh«n NhÊt TrÞch/DMTieu_32","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_32","U Hån PhÖ ¶nh/NguDocDao_32","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_32","B¨ng Vò L¹c Tinh/NgaMyChuong_32","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_32","Thñy Anh Man Tó/ThuyYenNoi_32","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_32","Bæng Huýnh L­îc §Þa/CaiBangCon_32","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_32","TËt Háa LiÖu Nguyªn/ThienNhanDao_32","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_32","KiÕm Thïy Tinh Hµ/VoDangKiem_32","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_32","Thiªn L«i ChÊn Nh¹c/ConLonKiem_32","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_32","ThÇn Quang Toµn NhiÔu/HoaSonKhi_32","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 33
	if (P == 43057) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_33","Vi §µ HiÕn Xö/ThieuLamCon_33","Tam Giíi Quy ThiÒn/ThieuLamDao_33","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_33","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_33","B¸ V­¬ng T¹m Kim/ThienVuongThuong_33","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_33","ThiÕt Liªn Tø S¸t/DMTuTien_33","Cµn Kh«n NhÊt TrÞch/DMTieu_33","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_33","U Hån PhÖ ¶nh/NguDocDao_33","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_33","B¨ng Vò L¹c Tinh/NgaMyChuong_33","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_33","Thñy Anh Man Tó/ThuyYenNoi_33","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_33","Bæng Huýnh L­îc §Þa/CaiBangCon_33","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_33","TËt Háa LiÖu Nguyªn/ThienNhanDao_33","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_33","KiÕm Thïy Tinh Hµ/VoDangKiem_33","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_33","Thiªn L«i ChÊn Nh¹c/ConLonKiem_33","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_33","ThÇn Quang Toµn NhiÔu/HoaSonKhi_33","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 34
	if (P == 43058) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_34","Vi §µ HiÕn Xö/ThieuLamCon_34","Tam Giíi Quy ThiÒn/ThieuLamDao_34","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_34","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_34","B¸ V­¬ng T¹m Kim/ThienVuongThuong_34","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_34","ThiÕt Liªn Tø S¸t/DMTuTien_34","Cµn Kh«n NhÊt TrÞch/DMTieu_34","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_34","U Hån PhÖ ¶nh/NguDocDao_34","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_34","B¨ng Vò L¹c Tinh/NgaMyChuong_34","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_34","Thñy Anh Man Tó/ThuyYenNoi_34","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_34","Bæng Huýnh L­îc §Þa/CaiBangCon_34","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_34","TËt Háa LiÖu Nguyªn/ThienNhanDao_34","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_34","KiÕm Thïy Tinh Hµ/VoDangKiem_34","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_34","Thiªn L«i ChÊn Nh¹c/ConLonKiem_34","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_34","ThÇn Quang Toµn NhiÔu/HoaSonKhi_34","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 35
	if (P == 43059) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_35","Vi §µ HiÕn Xö/ThieuLamCon_35","Tam Giíi Quy ThiÒn/ThieuLamDao_35","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_35","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_35","B¸ V­¬ng T¹m Kim/ThienVuongThuong_35","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_35","ThiÕt Liªn Tø S¸t/DMTuTien_35","Cµn Kh«n NhÊt TrÞch/DMTieu_35","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_35","U Hån PhÖ ¶nh/NguDocDao_35","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_35","B¨ng Vò L¹c Tinh/NgaMyChuong_35","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_35","Thñy Anh Man Tó/ThuyYenNoi_35","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_35","Bæng Huýnh L­îc §Þa/CaiBangCon_35","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_35","TËt Háa LiÖu Nguyªn/ThienNhanDao_35","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_35","KiÕm Thïy Tinh Hµ/VoDangKiem_35","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_35","Thiªn L«i ChÊn Nh¹c/ConLonKiem_35","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_35","ThÇn Quang Toµn NhiÔu/HoaSonKhi_35","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 36
	if (P == 43060) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_36","Vi §µ HiÕn Xö/ThieuLamCon_36","Tam Giíi Quy ThiÒn/ThieuLamDao_36","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_36","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_36","B¸ V­¬ng T¹m Kim/ThienVuongThuong_36","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_36","ThiÕt Liªn Tø S¸t/DMTuTien_36","Cµn Kh«n NhÊt TrÞch/DMTieu_36","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_36","U Hån PhÖ ¶nh/NguDocDao_36","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_36","B¨ng Vò L¹c Tinh/NgaMyChuong_36","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_36","Thñy Anh Man Tó/ThuyYenNoi_36","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_36","Bæng Huýnh L­îc §Þa/CaiBangCon_36","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_36","TËt Háa LiÖu Nguyªn/ThienNhanDao_36","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_36","KiÕm Thïy Tinh Hµ/VoDangKiem_36","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_36","Thiªn L«i ChÊn Nh¹c/ConLonKiem_36","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_36","ThÇn Quang Toµn NhiÔu/HoaSonKhi_36","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 37
	if (P == 43061) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_37","Vi §µ HiÕn Xö/ThieuLamCon_37","Tam Giíi Quy ThiÒn/ThieuLamDao_37","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_37","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_37","B¸ V­¬ng T¹m Kim/ThienVuongThuong_37","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_37","ThiÕt Liªn Tø S¸t/DMTuTien_37","Cµn Kh«n NhÊt TrÞch/DMTieu_37","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_37","U Hån PhÖ ¶nh/NguDocDao_37","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_37","B¨ng Vò L¹c Tinh/NgaMyChuong_37","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_37","Thñy Anh Man Tó/ThuyYenNoi_37","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_37","Bæng Huýnh L­îc §Þa/CaiBangCon_37","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_37","TËt Háa LiÖu Nguyªn/ThienNhanDao_37","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_37","KiÕm Thïy Tinh Hµ/VoDangKiem_37","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_37","Thiªn L«i ChÊn Nh¹c/ConLonKiem_37","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_37","ThÇn Quang Toµn NhiÔu/HoaSonKhi_37","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 38
	if (P == 43062) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_38","Vi §µ HiÕn Xö/ThieuLamCon_38","Tam Giíi Quy ThiÒn/ThieuLamDao_38","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_38","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_38","B¸ V­¬ng T¹m Kim/ThienVuongThuong_38","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_38","ThiÕt Liªn Tø S¸t/DMTuTien_38","Cµn Kh«n NhÊt TrÞch/DMTieu_38","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_38","U Hån PhÖ ¶nh/NguDocDao_38","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_38","B¨ng Vò L¹c Tinh/NgaMyChuong_38","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_38","Thñy Anh Man Tó/ThuyYenNoi_38","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_38","Bæng Huýnh L­îc §Þa/CaiBangCon_38","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_38","TËt Háa LiÖu Nguyªn/ThienNhanDao_38","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_38","KiÕm Thïy Tinh Hµ/VoDangKiem_38","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_38","Thiªn L«i ChÊn Nh¹c/ConLonKiem_38","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_38","ThÇn Quang Toµn NhiÔu/HoaSonKhi_38","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 39
	if (P == 43063) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_39","Vi §µ HiÕn Xö/ThieuLamCon_39","Tam Giíi Quy ThiÒn/ThieuLamDao_39","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_39","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_39","B¸ V­¬ng T¹m Kim/ThienVuongThuong_39","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_39","ThiÕt Liªn Tø S¸t/DMTuTien_39","Cµn Kh«n NhÊt TrÞch/DMTieu_39","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_39","U Hån PhÖ ¶nh/NguDocDao_39","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_39","B¨ng Vò L¹c Tinh/NgaMyChuong_39","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_39","Thñy Anh Man Tó/ThuyYenNoi_39","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_39","Bæng Huýnh L­îc §Þa/CaiBangCon_39","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_39","TËt Háa LiÖu Nguyªn/ThienNhanDao_39","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_39","KiÕm Thïy Tinh Hµ/VoDangKiem_39","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_39","Thiªn L«i ChÊn Nh¹c/ConLonKiem_39","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_39","ThÇn Quang Toµn NhiÔu/HoaSonKhi_39","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end

	--Ky Nang 40
	if (P == 43064) then
		local MonPhai = GetLastFactionNumber()
		if (MonPhai == 0) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen_40","Vi §µ HiÕn Xö/ThieuLamCon_40","Tam Giíi Quy ThiÒn/ThieuLamDao_40","Hñy Bá/No") return 1
		elseif (MonPhai == 1) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao_40","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy_40","B¸ V­¬ng T¹m Kim/ThienVuongThuong_40","Hñy Bá/No") return 1
		elseif (MonPhai == 2) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao_40","ThiÕt Liªn Tø S¸t/DMTuTien_40","Cµn Kh«n NhÊt TrÞch/DMTieu_40","Hñy Bá/No") return 1
		elseif (MonPhai == 3) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong_40","U Hån PhÖ ¶nh/NguDocDao_40","Hñy Bá/No") return 1
		elseif (MonPhai == 4) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem_40","B¨ng Vò L¹c Tinh/NgaMyChuong_40","Hñy Bá/No") return 1
		elseif (MonPhai == 5) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao_40","Thñy Anh Man Tó/ThuyYenNoi_40","Hñy Bá/No") return 1
		elseif (MonPhai == 6) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen_40","Bæng Huýnh L­îc §Þa/CaiBangCon_40","Hñy Bá.No") return 1
		elseif (MonPhai == 7) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich_40","TËt Háa LiÖu Nguyªn/ThienNhanDao_40","Hñy Bá/No") return 1
		elseif (MonPhai == 8) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen_40","KiÕm Thïy Tinh Hµ/VoDangKiem_40","Hñy Bá/No") return 1
		elseif (MonPhai == 9) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao_40","Thiªn L«i ChÊn Nh¹c/ConLonKiem_40","Hñy Bá/No") return 1
		elseif (MonPhai == 10) then
			Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem_40","ThÇn Quang Toµn NhiÔu/HoaSonKhi_40","Hñy Bá/No") return 1
		else
			Talk(1,"","Ng­¬i Ch­a Gia NhËp M«n Ph¸i Kh«ng LÜnh Ngé §­îc G×") return 1
		end
	end
end

