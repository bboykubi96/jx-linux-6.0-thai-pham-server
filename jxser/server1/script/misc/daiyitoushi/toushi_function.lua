IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\lib\\awardtemplet.lua")
-------------------------------------------------------------------------
TinVatMonPhai			 = 5989	--Dieu Kien Chuyen Mon Phai
KyNangThatTruyen		 = 5988	--Kiem Tra Skill 180
TSK_ZHENPAILINGDAN_USECNT	 = 5987	--Yeu Cau Chuyen Phai Moi Duoc Su Dung Tran Phai Linh Duoc
NhanLinhDuoc			 = 5986	--Gioi Han Nhan Linh Duoc Toi Da 15 Lan Khi Chuyen Phai
skill21 = 3000
--------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
---------------------------------------------------------------------------
function main1()
--dofile("script/misc/daiyitoushi/toushi_function.lua")
Say("Chuc Nang Nay Tam Khoa")
end
---------------------------------------------------------------------------
function main()
-- dofile("script/misc/daiyitoushi/toushi_function.lua")
	local tbOpt = {
		-- {"Mua TÝn vËt D­¬ng Anh (50 Xu)",MuaTinVatDuongAnh},
		{"Giao Nép TÝn VËt ChuyÓn Ph¸i",NopTinVat},
		{"§¸i NghÖ §Çu S­ Gia NhËp M«n Ph¸i",ChonMonPhai},
		{"Thay §æi Giíi TÝnh(1000xu)", chuyen_gt},
		{"Th«i §Ó Ta Suy NghÜ Thªm",No},
	}
	CreateNewSayEx("<bclr=violet>Xin Chµo C¸c H¹ T×m Ta Cã ViÖc G×<bclr>", tbOpt)
end
------------------------------------------------------------------------Mua Tin VËt D­¬ng Anh-----------------------------------------------------------------------------------------------------
function MuaTinVatDuongAnh()
local tbItem = {
	{szName="TÝn vËt D­¬ng Anh",tbProp={6,1,1671,1,0,0},nCount=1},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Mua Thµnh C«ng TÝn vËt D­¬ng Anh")

				WriteLogPro("dulieu/muabanlinhtinh.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Mua Tin VËt D­¬ng Anh 50xu\n");
	else
		Say("Kh«ng ®ñ 50 Xu, Xin Xem L¹i")
	end

end
------------------------------------------------------------------------Giao Nép TÝn VËt-----------------------------------------------------------------------------------------------------
function NhanTinVatFree()
	local tbAwar1 ={

		{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=3,nExpiredTime=60*24*3,nBindState = -2},
		
		}
		if (CountFreeRoomByWH(3,3,1) < 1) then
		Say("Hµnh trang kh«ng ®ñ 3 « däc + 3 « ngang liÒn nhau!")
		return
	end
		
		tbAwardTemplet:GiveAwardByList(tbAwar1,"PhÇn Th­ëng")

end

function NhanTinVatFree1Day()

	if (CountFreeRoomByWH(3,3,1) < 1) then
		Say("Hµnh trang kh«ng ®ñ 3 « däc + 3 « ngang liÒn nhau!")
		return
	end


local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));

	tbAwardTemplet:GiveAwardByList({{szName = "TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nExpiredTime=nRestMin,nBindState = -2}}, "test", 1);
end
------------------------------------------------------------------------Giao Nép TÝn VËt-----------------------------------------------------------------------------------------------------
function NopTinVat()
	--ThiÕu L©m
	if GetLastFactionNumber() == 0 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i ThiÕu L©m/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Thiªn V­¬ng
	elseif GetLastFactionNumber() == 1 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Thiªn V­¬ng/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No") 
	--§­êng M«n
	elseif GetLastFactionNumber() == 2 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i §­êng M«n/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Ngò §éc
	elseif GetLastFactionNumber() == 3 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Ngò §éc/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Nga My
	elseif GetLastFactionNumber() == 4 then	
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Nga My/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Thóy Yªn
	elseif GetLastFactionNumber() == 5 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Thóy Yªn/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--C¸i Bang
	elseif GetLastFactionNumber() == 6 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i C¸i Bang/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Thiªn NhÉn
	elseif GetLastFactionNumber() == 7 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Thiªn NhÉn/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Vâ §ang
	elseif GetLastFactionNumber() == 8 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Vâ §ang/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--C«n L«n
	elseif GetLastFactionNumber() == 9 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i C«n L«n/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")
	--Hoa S¬n
	elseif GetLastFactionNumber() == 10 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Hoa S¬n/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")	

    elseif GetLastFactionNumber() == 11 then
		Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Vò Hån/TrinhTinVatMonPhai","Ta Quay L¹i Sau/No")	
	else
		Talk(1,"","<bclr=violet>C¸c H¹ Ch­a Gia NhËp M«n Ph¸i")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TrinhTinVatMonPhai()
	if (GetTask(TinVatMonPhai) == 0) then
		GiveItemUI("Tr×nh TÝn VËt M«n Ph¸i","Bá TÝn VËt M«n Ph¸i Vµo ¤ Bªn\nD­íi","KiemTra","onCancel",1)
	else
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
	end
end

function KiemTra(nCount)
local nItemIdx = GetGiveItemUnit(nCount);
local nG, nD, nP = GetItemProp(nItemIdx);
local szKey = join({nG, nD, nP});
	if (nCount ~= 1) then
		Say("TÝn VËt M«n Ph¸i Kh«ng Ph¶i Lµ Mãn §å Ch¬i TrÎ Con\nKh«ng LÏ Ng­¬i Lµm Mê M¾t Ta Hay Sao",3,"Tr×nh L¹i TÝn VËt M«n Ph¸i/TrinhTinVatMonPhai","Ta SÏ Quay L¹i Sau/No")
		return
	end
	if (szKey ~= join({6,1,1670})) then
		Say("TÝn VËt M«n Ph¸i Kh«ng Ph¶i Lµ Mãn §å Ch¬i TrÎ Con\nKh«ng LÏ Ng­¬i Lµm Mê M¾t Ta Hay Sao",3,"Tr×nh L¹i TÝn VËt M«n Ph¸i/TrinhTinVatMonPhai","Ta SÏ Quay L¹i Sau/No")
		return
	end
	fixskill150()
	fixskill180()
	SetTask(TinVatMonPhai,1) RemoveItemByIndex(nItemIdx) Talk(1,"","Chóc Mõng "..myplayersex().." §· Ra M«n Ph¸i TÝn VËt, Yªu CÇu\nChuyÓn M«n Ph¸i Thµnh C«ng")
end
----------------------------------------------------------Chän M«n Ph¸i Gia NhËp------------------------------------------------------------------------------------------------------------------------------
function ChonMonPhai()
Say(""..myplayersex().." H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",
12,
	"ThiÕu L©m/ThieuLam",
	"Thiªn V­¬ng/ThienVuong",
	"§­êng M«n/DuongMon",
	"Ngò §éc/NguDoc",
	"Nga My/NgaMy",
	"Thóy Yªn/ThuyYen",
	"C¸i Bang/CaiBang",
	"Thiªn NhÉn/ThienNhan",
	"Vâ §ang/VoDang",
	"C«n L«n/ConLon",
	--"Hoa S¬n(300 KNB)/HoaSon",
        --"Vò Hån(300 KNB)/VuHon",
	"Th«i §Ó Ta Suy NghÜ/No")
end
----------------------------------------------------------Ph¸i ThiÕu L©m----------------------------------------------------------------------------------------------------------------------------
function ThieuLam()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 0 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (GetSex() == 0) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			SetFaction("shaolin")
			SetLastFactionNumber(0)
			SetTask(7,10*256) rollback_prop()
			SetCamp(1) SetCurCamp(1)
			SetRank(72) SetSeries(0)
			del_all_skill() add_sl(150)
			SetTask(TinVatMonPhai,0)
			addskill() PhanThuong()
			KickOutSelf() 
		else
			Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
		end
	else
		Talk(1,"","Ph¸i ThiÕu L©m Tõ X­a §Õn Nay ChØ Thu NhËn Nam §Ö Tö Kh«ng Bao Giê Thu NhËn N÷ §Ö Tö")
	end
end
---------------------------------------------------------Ph¸i Thiªn V­¬ng--------------------------------------------------------------------------------------------------------------------	
function ThienVuong()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 1 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (GetSex() == 0) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			SetFaction("tianwang")
			SetLastFactionNumber(1)
			SetTask(3,10*256) rollback_prop()
			SetCamp(3) SetCurCamp(3)
			SetRank(69) SetSeries(0)
			del_all_skill() add_tw(150)
			SetTask(TinVatMonPhai,0)
			 addskill() PhanThuong()
			 KickOutSelf()
		else
			Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
		end
	elseif (GetSex() == 1) then
		GiveItemUI("Tr×nh TÝn VËt D­¬ng Anh","Bá TÝn VËt D­¬ng Anh Vµo ¤ Bªn\nD­íi","TrinhTinVatDuongAnh","onCancel",1)
	end
end
function TrinhTinVatDuongAnh(nCount)
local nItemIdx = GetGiveItemUnit(nCount);
local nG, nD, nP = GetItemProp(nItemIdx);
local szKey = join({nG, nD, nP});
	if (nCount ~= 1) then
		Say("TÝn VËt D­¬ng Anh Kh«ng Ph¶i Lµ Mãn §å Ch¬i TrÎ Con\nKh«ng LÏ Ng­¬i Lµm Mê M¾t Ta Hay Sao",3,"Tr×nh L¹i TÝn VËt D­¬ng Anh/TrinhTinVatMonPhai","Ta SÏ Quay L¹i Sau/No")
		return
	end
	if (szKey ~= join({6,1,1671})) then
		Say("TÝn VËt D­¬ng Anh Kh«ng Ph¶i Lµ Mãn §å Ch¬i TrÎ Con\nKh«ng LÏ Ng­¬i Lµm Mê M¾t Ta Hay Sao",3,"Tr×nh L¹i TÝn VËt D­¬ng Anh/TrinhTinVatMonPhai","Ta SÏ Quay L¹i Sau/No")
		return
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("tianwang")
		SetLastFactionNumber(1)
		SetTask(3,10*256) rollback_prop()
		SetCamp(3) SetCurCamp(3)
		SetRank(69) SetSeries(0)
		del_all_skill() add_tw(150)
		SetTask(TinVatMonPhai,0) RemoveItemByIndex(nItemIdx)
		ConsumeEquiproomItem(1,6,1,1671,-1) addskill() PhanThuong()
		KickOutSelf() 
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
----------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------
function DuongMon()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 2 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("tangmen")
		SetLastFactionNumber(2)
		SetTask(2,10*256) rollback_prop()
		SetCamp(3) SetCurCamp(3)
		SetRank(76) SetSeries(1)
		del_all_skill() add_tm(150)
		SetTask(TinVatMonPhai,0)
		addskill() PhanThuong()
		KickOutSelf() 
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDoc()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 3 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("wudu")
		SetLastFactionNumber(3)
		SetTask(10,10*256) rollback_prop()
		SetCamp(2) SetCurCamp(2)
		SetRank(80) SetSeries(1)
		del_all_skill() add_wu(150)
		SetTask(TinVatMonPhai,0)
		addskill() PhanThuong()
		KickOutSelf() 
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMy()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 4 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (GetSex() == 1) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			SetFaction("emei")
			SetLastFactionNumber(4)
			SetTask(1,10*256) rollback_prop()
			SetCamp(1) SetCurCamp(1)
			SetRank(64) SetSeries(2)
			del_all_skill() add_em(150)
			SetTask(TinVatMonPhai,0)
			addskill() PhanThuong()
			KickOutSelf() 
		else
			Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
		end
	else
		Talk(1,"","Ph¸i Nga My Tõ X­a §Õn Nay ChØ Thu NhËn N÷ §Ö Tö Kh«ng Bao Giê Thu NhËn Nam §Ö Tö")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYen()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 5 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (GetSex() == 1) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			SetFaction("cuiyan")
			SetLastFactionNumber(5)
			SetTask(6,10*256) rollback_prop()
			SetCamp(3) SetCurCamp(3)
			SetRank(67) SetSeries(2)
			del_all_skill() add_cy(150)
			SetTask(TinVatMonPhai,0)
			 addskill() PhanThuong()
			 KickOutSelf()
		else
			Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
		end
	else
		Talk(1,"","Ph¸i Thóy Yªn YÓu §iÖu Thôc N÷ Tõ X­a §Õn Nay ChØ Thu NhËn N÷ §Ö Tö Kh«ng Bao Giê Thu NhËn Nam §Ö Tö")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBang()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 6 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("gaibang")
		SetLastFactionNumber(6)
		SetTask(8,10*256) rollback_prop()
		SetCamp(1) SetCurCamp(1)
		SetRank(78) SetSeries(3)
		del_all_skill() add_gb(150)
		SetTask(TinVatMonPhai,0)
		addskill() PhanThuong()
		KickOutSelf() 
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhan()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 7 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("tianren")
		SetLastFactionNumber(7)
		SetTask(4,10*256) rollback_prop()
		SetCamp(2) SetCurCamp(2)
		SetRank(81) SetSeries(3)
		del_all_skill() add_tr(150)
		SetTask(TinVatMonPhai,0)
		 addskill() PhanThuong()
		 KickOutSelf()
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDang()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 8 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("wudang")
		SetLastFactionNumber(8)
		SetTask(5,10*256) rollback_prop()
		SetCamp(1) SetCurCamp(1)
		SetRank(73) SetSeries(4)
		del_all_skill() add_wd(150)
		SetTask(TinVatMonPhai,0)
		 addskill() PhanThuong()
		 KickOutSelf()
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLon()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 9 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("kunlun")
		SetLastFactionNumber(9)
		SetTask(9,10*256) rollback_prop()
		SetCamp(3) SetCurCamp(3)
		SetRank(5) SetSeries(4)
		del_all_skill() add_kl(150)
		SetTask(TinVatMonPhai,0)
		addskill() PhanThuong()
		KickOutSelf() 
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSon()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1) ;
	if(nSilverCount < 300) then -- gia xu
Say("<color=white>ThËt xin lçi hoa s¬n ta lµ 1 ph¸i Èn chøa nhiÒu tuyÖt kü bÝ mËt cã uy lùc m¹nh mÏ triÖt tiªu c¸c ph¸i trong chèn giang hå.VÞ ®¹i hiÖp ®©y muèn gia nhËp ph¸i ta cÇn ®ãng lÖ phÝ 100 KNB..")
	return 
	end
		if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetLastFactionNumber() == 10 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(10,10*256) rollback_prop()
		SetCamp(3) SetCurCamp(3)
		SetRank(89) SetSeries(2)
		del_all_skill() add_hs(150)
		SetTask(TinVatMonPhai,0)
		addskill() PhanThuong()
		KickOutSelf() 
               ConsumeEquiproomItem(300,4,1496,1,1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> Gia nhËp thµnh c«ng <color=yellow>Hoa S¬n!!!")
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
	
---------------------------------------------------------------------------------------------------------------------
function VuHon()
local nSilverCount = CalcEquiproomItemCount(4,1496, 1, 1) ;
	if(nSilverCount < 300) then -- gia xu
Say("<color=white>ThËt xin lçi Vò Hån §­êng ta lµ 1 ph¸i Èn chøa nhiÒu tuyÖt kü bÝ mËt cã uy lùc m¹nh mÏ triÖt tiªu c¸c ph¸i trong chèn giang hå.VÞ ®¹i hiÖp ®©y muèn gia nhËp ph¸i ta cÇn ®ãng lÖ phÝ 100  KNB..")
	return 
	end
	if GetLastFactionNumber() == 11 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if GetLastFactionNumber() == 11 then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if (CalcItemCount(2,0,-1,-1,-1) == 0) then
		SetFaction("wuhun")
		SetLastFactionNumber(11)
		SetTask(11,11*256) rollback_prop()
		SetCamp(1) SetCurCamp(1)
		SetRank(97) SetSeries(3)
		del_all_skill() add_wumen(150)
		SetTask(TinVatMonPhai,0)
		addskill() PhanThuong()
		KickOutSelf() 
               ConsumeEquiproomItem(300,4,1496,1,1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> Gia nhËp thµnh c«ng <color=yellow>Vò Hån!!!")
	else
		Talk(1,"","Muèn Gia NhËp Bæn Ph¸i CÇn Ph¶i Cëi HÕt Trang BÞ Trªn Ng­êi Xuèng")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuong()
	-- if GetTask(NhanLinhDuoc) <= 15 then
		
		-- SetTask(NhanLinhDuoc,GetTask(NhanLinhDuoc)+1) SetTask(TSK_ZHENPAILINGDAN_USECNT,1)
	-- end
	-- SetTask(2463,0)-- set lai task skill 120
	-- SetTask(1881,1)-- tran phai linh don ok
	--SetTak(3000,0)
	logplayer("dulieu/Chuyen_Mon_Phai.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] §· Chuyen Mon Phai ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function logplayer(zFile,szMsg)
local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function addskill()
local faction = GetLastFactionNumber(); 
	if GetTask(KyNangThatTruyen) == 2 then
		if faction == 0 then
			AddMagic(1220,20)
		elseif faction == 1 then
			AddMagic(1221,20)
		elseif faction == 2 then
			AddMagic(1223,20)
		elseif faction == 3 then
			AddMagic(1222,20)
		elseif faction == 4 then
			AddMagic(1224,20)
		elseif faction == 5 then
			AddMagic(1225,20)
		elseif faction == 6 then
			AddMagic(1227,20)
		elseif faction == 7 then
			AddMagic(1226,20)
		elseif faction == 8 then
			AddMagic(1228,20)
		elseif faction == 9 then
			AddMagic(1229,20)
		elseif faction == 10 then
			AddMagic(1370,20)
		end
	end
	if GetTask(KyNangThatTruyen) == 1 then
		if faction == 0 then
			AddMagic(1220,1)
		elseif faction == 1 then
			AddMagic(1221,1)
		elseif faction == 2 then
			AddMagic(1223,1)
		elseif faction == 3 then
			AddMagic(1222,1)
		elseif faction == 4 then
			AddMagic(1224,1)
		elseif faction == 5 then
			AddMagic(1225,1)
		elseif faction == 6 then
			AddMagic(1227,1)
		elseif faction == 7 then
			AddMagic(1226,1)
		elseif faction == 8 then
			AddMagic(1228,1)
		elseif faction == 9 then
			AddMagic(1229,1)
		elseif faction == 10 then
			AddMagic(1370,1)
		end
	end
	if GetTask(skill21) == 2 or GetTask(skill21) == 3 then
		if faction == 0 then
			AddMagic(1055,21)  
			AddMagic(1056,21)  
			AddMagic(1057,21) 
 
		elseif faction == 1 then
			AddMagic(1058,21)  
			AddMagic(1059,21)  
			AddMagic(1060,21)

		elseif faction == 2 then
			AddMagic(1069,21)  
			AddMagic(1070,21)  
			AddMagic(1071,21)

		elseif faction == 3 then
			AddMagic(1066,21)  
			AddMagic(1067,21)

		elseif faction == 4 then
			AddMagic(1061,21)  
			AddMagic(1062,21)  
			AddMagic(1114,21)

		elseif faction == 5 then
			AddMagic(1063,21)  
			AddMagic(1065,21)  
			
		elseif faction == 6 then
			AddMagic(1073,21)  
			AddMagic(1074,21)

		elseif faction == 7 then
			AddMagic(1075,21)  
			AddMagic(1076,21)

		elseif faction == 8 then
			AddMagic(1078,21)  
			AddMagic(1079,21)

		elseif faction == 9 then
			AddMagic(1080,21)  
			AddMagic(1081,21)

		elseif faction == 10 then
			AddMagic(1384,21)  
			AddMagic(1369,21)

                elseif faction == 11 then
			AddMagic(1969,21)  
			AddMagic(1985,21)
		end
	end
	
	if GetTask(skill21) == 4 or GetTask(skill21) == 5 then
		if faction == 0 then
			AddMagic(1055,22)  
			AddMagic(1056,22)  
			AddMagic(1057,22) 
 
		elseif faction == 1 then
			AddMagic(1058,22)  
			AddMagic(1059,22)  
			AddMagic(1060,22)

		elseif faction == 2 then
			AddMagic(1069,22)  
			AddMagic(1070,22)  
			AddMagic(1071,22)

		elseif faction == 3 then
			AddMagic(1066,22)  
			AddMagic(1067,22)

		elseif faction == 4 then
			AddMagic(1061,22)  
			AddMagic(1062,22)  
			AddMagic(1114,22)

		elseif faction == 5 then
			AddMagic(1063,22)  
			AddMagic(1065,22)  
			
		elseif faction == 6 then
			AddMagic(1073,22)  
			AddMagic(1074,22)

		elseif faction == 7 then
			AddMagic(1075,22)  
			AddMagic(1076,22)

		elseif faction == 8 then
			AddMagic(1078,22)  
			AddMagic(1079,22)

		elseif faction == 9 then
			AddMagic(1080,22)  
			AddMagic(1081,22)

		elseif faction == 10 then
			AddMagic(1384,22)  
			AddMagic(1369,22)

               elseif faction == 11 then
			AddMagic(1969,22)  
			AddMagic(1985,22)
		end
	end

	if GetTask(skill21) == 6 or GetTask(skill21) == 7 then
		if faction == 0 then
			AddMagic(1055,23)  
			AddMagic(1056,23)  
			AddMagic(1057,23) 
 
		elseif faction == 1 then
			AddMagic(1058,23)  
			AddMagic(1059,23)  
			AddMagic(1060,23)

		elseif faction == 2 then
			AddMagic(1069,23)  
			AddMagic(1070,23)  
			AddMagic(1071,23)

		elseif faction == 3 then
			AddMagic(1066,23)  
			AddMagic(1067,23)

		elseif faction == 4 then
			AddMagic(1061,23)  
			AddMagic(1062,23)  
			AddMagic(1114,23)

		elseif faction == 5 then
			AddMagic(1063,23)  
			AddMagic(1065,23)  
			
		elseif faction == 6 then
			AddMagic(1073,23)  
			AddMagic(1074,23)

		elseif faction == 7 then
			AddMagic(1075,23)  
			AddMagic(1076,23)

		elseif faction == 8 then
			AddMagic(1078,23)  
			AddMagic(1079,23)

		elseif faction == 9 then
			AddMagic(1080,23)  
			AddMagic(1081,23)

		elseif faction == 10 then
			AddMagic(1384,23)  
			AddMagic(1369,23)

               elseif faction == 11 then
			AddMagic(1969,23)  
			AddMagic(1985,23)
		end
	end

	if GetTask(skill21) == 8 or GetTask(skill21) == 9 then
		if faction == 0 then
			AddMagic(1055,24)  
			AddMagic(1056,24)  
			AddMagic(1057,24) 
 
		elseif faction == 1 then
			AddMagic(1058,24)  
			AddMagic(1059,24)  
			AddMagic(1060,24)

		elseif faction == 2 then
			AddMagic(1069,24)  
			AddMagic(1070,24)  
			AddMagic(1071,24)

		elseif faction == 3 then
			AddMagic(1066,24)  
			AddMagic(1067,24)

		elseif faction == 4 then
			AddMagic(1061,24)  
			AddMagic(1062,24)  
			AddMagic(1114,24)

		elseif faction == 5 then
			AddMagic(1063,24)  
			AddMagic(1065,24)  
			
		elseif faction == 6 then
			AddMagic(1073,24)  
			AddMagic(1074,24)

		elseif faction == 7 then
			AddMagic(1075,24)  
			AddMagic(1076,24)

		elseif faction == 8 then
			AddMagic(1078,24)  
			AddMagic(1079,24)

		elseif faction == 9 then
			AddMagic(1080,24)  
			AddMagic(1081,24)

		elseif faction == 10 then
			AddMagic(1384,24)  
			AddMagic(1369,24)
               elseif faction == 11 then
			AddMagic(1969,24)  
			AddMagic(1985,24)
		end
	end
         if GetTask(skill21) == 10 or GetTask(skill21) == 11 then
		if faction == 0 then
			AddMagic(1055,25)  
			AddMagic(1056,25)  
			AddMagic(1057,25) 
 
		elseif faction == 1 then
			AddMagic(1058,25)  
			AddMagic(1059,25)  
			AddMagic(1060,25)

		elseif faction == 2 then
			AddMagic(1069,25)  
			AddMagic(1070,25)  
			AddMagic(1071,25)

		elseif faction == 3 then
			AddMagic(1066,25)  
			AddMagic(1067,25)

		elseif faction == 4 then
			AddMagic(1061,25)  
			AddMagic(1062,25)  
			AddMagic(1114,25)

		elseif faction == 5 then
			AddMagic(1063,25)  
			AddMagic(1065,25)  
			
		elseif faction == 6 then
			AddMagic(1073,25)  
			AddMagic(1074,25)

		elseif faction == 7 then
			AddMagic(1075,25)  
			AddMagic(1076,25)

		elseif faction == 8 then
			AddMagic(1078,25)  
			AddMagic(1079,25)

		elseif faction == 9 then
			AddMagic(1080,25)  
			AddMagic(1081,25)

		elseif faction == 10 then
			AddMagic(1384,25)  
			AddMagic(1369,25)
               elseif faction == 11 then
			AddMagic(1969,25)  
			AddMagic(1985,25)
		end
	end

end
----------------------------------------------------------------------------------
function add_sach()

end

sbook_150skill_list = {
		[0] = {318 ,319 ,321, 1055, 1056, 1057},
		[1] = {322 ,323 ,325, 1058, 1059, 1060},
		[2] = {339 ,302 ,342, 1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
		[10] = {1369, 1384},
                [11] = {1969, 1985},
}

SKILL_180 = {
		[0] = {1220},
		[1] = {1221},
		[2] = {1223},
		[3] = {1222},
		[4] = {1224},
		[5] = {1225},
		[6] = {1227},
		[7] = {1226},
		[8] = {1228},
		[9] = {1229},
}


sbook_factstep_list = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
		[10] = 5,
                [11] = 5,
	}


function fixskill150()
	
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>§¼ng cÊp cña ng­¬i thÊp h¬n 150, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	local tb150Skill = sbook_150skill_list[nFact]
	
	for i = 1, getn(tb150Skill) do
		local nSkillId = tb150Skill[i]
		if (HaveMagic(nSkillId) == 21) then
			SetTask(3000,2)
		end
		if (HaveMagic(nSkillId) == 22) then
			SetTask(3000,4)
		end
		if (HaveMagic(nSkillId) == 23) then
			SetTask(3000,6)
		end
		if (HaveMagic(nSkillId) == 24) then
			SetTask(3000,8)
		end
                if (HaveMagic(nSkillId) == 25) then
			SetTask(3000,10)
		end


	end
end

function fixskill180()
	
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng­¬i vÉn ch­a gia nhËp m«n ph¸i nµo, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	if GetLevel() < 180 then
		Msg2Player("<color=yellow>§¼ng cÊp cña ng­¬i thÊp h¬n 150, kh«ng thÓ häc yÕu quyÕt nµy! <color>");
		return 1
	end
	
	local tb180Skill = SKILL_180[nFact]
	
	for i = 1, getn(tb180Skill) do
		local nSkillId = tb180Skill[i]
		if (HaveMagic(nSkillId) == 1) then
			SetTask(5988,1)
		end
		if (HaveMagic(nSkillId) == 20) then
			SetTask(5988,2)
		end
		
	end
end
-----------------------------------------------------------------------------------------------------------
function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My hoÆc Thóy Yªn <color=Green>N÷ <color> => ThiÕu L©m hoÆc Thiªn V­¬ng<enter> Sau khi gia nhËp m«n ph¸i cã thÓ ®Õn gÆp ta ®Ó ®æi giíi tÝnh "
	local tbOpt =
	{
		{"ChuyÓn Nam Thµnh N÷", NamNu},
		{"ChuyÓn N÷ Thµnh Nam", NuNam},
		{"Tho¸t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
local nFaction = GetLastFactionNumber()
if nFaction == 0 then
Talk(1,"no","<color=red>M«n Ph¸i ThiÕu L©m Kh«ng ThÓ ChuyÓn Giíi.")
				return 			
			end
		if CalcEquiproomItemCount(4,417,1,-1)<1000 then 
			Talk(1,"no","<color=red>B¹n kh«ng ®ñ 1000 Xu.")
				return 			
			end
	
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
SetSex(1) ---nu 1
ConsumeEquiproomItem(1000,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh N÷ Giai Nh©n T¹i NPC ChuyÓn Ph¸i")
end
end

function NuNam()
local nFaction = GetLastFactionNumber()
if nFaction == 4 then
Talk(1,"no","<color=red>M«n Ph¸i - Nga My Kh«ng ThÓ ChuyÓn Giíi.")
return 			
end
if nFaction == 5 then
Talk(1,"no","<color=red>M«n Ph¸i - THuy yen Kh«ng ThÓ ChuyÓn Giíi.")
return 			
end
	
		if CalcEquiproomItemCount(4,417,1,-1)<1000 then 
			Talk(1,"no","<color=red>B¹n kh«ng ®ñ 1000 Xu.")
				return 			
			end
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
SetSex(0)---nam 0
ConsumeEquiproomItem(1000,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh Nam Mü Nh©n T¹i NPC ChuyÓn Ph¸i")
end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
