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
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
		-- {"Mua T�n v�t D��ng Anh (50 Xu)",MuaTinVatDuongAnh},
		{"Giao N�p T�n V�t Chuy�n Ph�i",NopTinVat},
		{"��i Ngh� ��u S� Gia Nh�p M�n Ph�i",ChonMonPhai},
		{"Thay ��i Gi�i T�nh(1000xu)", chuyen_gt},
		{"Th�i �� Ta Suy Ngh� Th�m",No},
	}
	CreateNewSayEx("<bclr=violet>Xin Ch�o C�c H� T�m Ta C� Vi�c G�<bclr>", tbOpt)
end
------------------------------------------------------------------------Mua Tin V�t D��ng Anh-----------------------------------------------------------------------------------------------------
function MuaTinVatDuongAnh()
local tbItem = {
	{szName="T�n v�t D��ng Anh",tbProp={6,1,1671,1,0,0},nCount=1},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Mua Th�nh C�ng T�n v�t D��ng Anh")

				WriteLogPro("dulieu/muabanlinhtinh.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Mua Tin V�t D��ng Anh 50xu\n");
	else
		Say("Kh�ng �� 50 Xu, Xin Xem L�i")
	end

end
------------------------------------------------------------------------Giao N�p T�n V�t-----------------------------------------------------------------------------------------------------
function NhanTinVatFree()
	local tbAwar1 ={

		{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=3,nExpiredTime=60*24*3,nBindState = -2},
		
		}
		if (CountFreeRoomByWH(3,3,1) < 1) then
		Say("H�nh trang kh�ng �� 3 � d�c + 3 � ngang li�n nhau!")
		return
	end
		
		tbAwardTemplet:GiveAwardByList(tbAwar1,"Ph�n Th��ng")

end

function NhanTinVatFree1Day()

	if (CountFreeRoomByWH(3,3,1) < 1) then
		Say("H�nh trang kh�ng �� 3 � d�c + 3 � ngang li�n nhau!")
		return
	end


local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));

	tbAwardTemplet:GiveAwardByList({{szName = "T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nExpiredTime=nRestMin,nBindState = -2}}, "test", 1);
end
------------------------------------------------------------------------Giao N�p T�n V�t-----------------------------------------------------------------------------------------------------
function NopTinVat()
	--Thi�u L�m
	if GetLastFactionNumber() == 0 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Thi�u L�m/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--Thi�n V��ng
	elseif GetLastFactionNumber() == 1 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Thi�n V��ng/TrinhTinVatMonPhai","Ta Quay L�i Sau/No") 
	--���ng M�n
	elseif GetLastFactionNumber() == 2 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i ���ng M�n/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--Ng� ��c
	elseif GetLastFactionNumber() == 3 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Ng� ��c/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--Nga My
	elseif GetLastFactionNumber() == 4 then	
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Nga My/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--Th�y Y�n
	elseif GetLastFactionNumber() == 5 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Th�y Y�n/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--C�i Bang
	elseif GetLastFactionNumber() == 6 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i C�i Bang/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--Thi�n Nh�n
	elseif GetLastFactionNumber() == 7 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Thi�n Nh�n/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--V� �ang
	elseif GetLastFactionNumber() == 8 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i V� �ang/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--C�n L�n
	elseif GetLastFactionNumber() == 9 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i C�n L�n/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")
	--Hoa S�n
	elseif GetLastFactionNumber() == 10 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i Hoa S�n/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")	

    elseif GetLastFactionNumber() == 11 then
		Say("Mu�n Chuy�n M�n Ph�i C�n Giao N�p T�n V�t M�n Ph�i",3,"N�p T�n V�t Ph�i V� H�n/TrinhTinVatMonPhai","Ta Quay L�i Sau/No")	
	else
		Talk(1,"","<bclr=violet>C�c H� Ch�a Gia Nh�p M�n Ph�i")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TrinhTinVatMonPhai()
	if (GetTask(TinVatMonPhai) == 0) then
		GiveItemUI("Tr�nh T�n V�t M�n Ph�i","B� T�n V�t M�n Ph�i V�o � B�n\nD��i","KiemTra","onCancel",1)
	else
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
	end
end

function KiemTra(nCount)
local nItemIdx = GetGiveItemUnit(nCount);
local nG, nD, nP = GetItemProp(nItemIdx);
local szKey = join({nG, nD, nP});
	if (nCount ~= 1) then
		Say("T�n V�t M�n Ph�i Kh�ng Ph�i L� M�n �� Ch�i Tr� Con\nKh�ng L� Ng��i L�m M� M�t Ta Hay Sao",3,"Tr�nh L�i T�n V�t M�n Ph�i/TrinhTinVatMonPhai","Ta S� Quay L�i Sau/No")
		return
	end
	if (szKey ~= join({6,1,1670})) then
		Say("T�n V�t M�n Ph�i Kh�ng Ph�i L� M�n �� Ch�i Tr� Con\nKh�ng L� Ng��i L�m M� M�t Ta Hay Sao",3,"Tr�nh L�i T�n V�t M�n Ph�i/TrinhTinVatMonPhai","Ta S� Quay L�i Sau/No")
		return
	end
	fixskill150()
	fixskill180()
	SetTask(TinVatMonPhai,1) RemoveItemByIndex(nItemIdx) Talk(1,"","Ch�c M�ng "..myplayersex().." �� Ra M�n Ph�i T�n V�t, Y�u C�u\nChuy�n M�n Ph�i Th�nh C�ng")
end
----------------------------------------------------------Ch�n M�n Ph�i Gia Nh�p------------------------------------------------------------------------------------------------------------------------------
function ChonMonPhai()
Say(""..myplayersex().." H�y L�a Ch�n M�n Ph�i Mu�n Gia Nh�p",
12,
	"Thi�u L�m/ThieuLam",
	"Thi�n V��ng/ThienVuong",
	"���ng M�n/DuongMon",
	"Ng� ��c/NguDoc",
	"Nga My/NgaMy",
	"Th�y Y�n/ThuyYen",
	"C�i Bang/CaiBang",
	"Thi�n Nh�n/ThienNhan",
	"V� �ang/VoDang",
	"C�n L�n/ConLon",
	--"Hoa S�n(300 KNB)/HoaSon",
        --"V� H�n(300 KNB)/VuHon",
	"Th�i �� Ta Suy Ngh�/No")
end
----------------------------------------------------------Ph�i Thi�u L�m----------------------------------------------------------------------------------------------------------------------------
function ThieuLam()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 0 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
			Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
		end
	else
		Talk(1,"","Ph�i Thi�u L�m T� X�a ��n Nay Ch� Thu Nh�n Nam �� T� Kh�ng Bao Gi� Thu Nh�n N� �� T�")
	end
end
---------------------------------------------------------Ph�i Thi�n V��ng--------------------------------------------------------------------------------------------------------------------	
function ThienVuong()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 1 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
			Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
		end
	elseif (GetSex() == 1) then
		GiveItemUI("Tr�nh T�n V�t D��ng Anh","B� T�n V�t D��ng Anh V�o � B�n\nD��i","TrinhTinVatDuongAnh","onCancel",1)
	end
end
function TrinhTinVatDuongAnh(nCount)
local nItemIdx = GetGiveItemUnit(nCount);
local nG, nD, nP = GetItemProp(nItemIdx);
local szKey = join({nG, nD, nP});
	if (nCount ~= 1) then
		Say("T�n V�t D��ng Anh Kh�ng Ph�i L� M�n �� Ch�i Tr� Con\nKh�ng L� Ng��i L�m M� M�t Ta Hay Sao",3,"Tr�nh L�i T�n V�t D��ng Anh/TrinhTinVatMonPhai","Ta S� Quay L�i Sau/No")
		return
	end
	if (szKey ~= join({6,1,1671})) then
		Say("T�n V�t D��ng Anh Kh�ng Ph�i L� M�n �� Ch�i Tr� Con\nKh�ng L� Ng��i L�m M� M�t Ta Hay Sao",3,"Tr�nh L�i T�n V�t D��ng Anh/TrinhTinVatMonPhai","Ta S� Quay L�i Sau/No")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
----------------------------------------------------------------Ph�i ���ng M�n------------------------------------------------------------------------------------------------------------------------------
function DuongMon()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 2 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDoc()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 3 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMy()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 4 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
			Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
		end
	else
		Talk(1,"","Ph�i Nga My T� X�a ��n Nay Ch� Thu Nh�n N� �� T� Kh�ng Bao Gi� Thu Nh�n Nam �� T�")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYen()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 5 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
			Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
		end
	else
		Talk(1,"","Ph�i Th�y Y�n Y�u �i�u Th�c N� T� X�a ��n Nay Ch� Thu Nh�n N� �� T� Kh�ng Bao Gi� Thu Nh�n Nam �� T�")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBang()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 6 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhan()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 7 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDang()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 8 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLon()
	if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 9 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HoaSon()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1) ;
	if(nSilverCount < 300) then -- gia xu
Say("<color=white>Th�t xin l�i hoa s�n ta l� 1 ph�i �n ch�a nhi�u tuy�t k� b� m�t c� uy l�c m�nh m� tri�t ti�u c�c ph�i trong ch�n giang h�.V� ��i hi�p ��y mu�n gia nh�p ph�i ta c�n ��ng l� ph� 100 KNB..")
	return 
	end
		if (GetTask(TinVatMonPhai) == 0) then
		Talk(1,"main",""..myplayersex().." Mu�n Chuy�n M�n Ph�i Ch��ng M�n C�a Ng��i �� ��ng � Ch�a")
		return
	end
	if (GetLevel() < 150) then
		Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 H�y C� G�ng R�n Luy�n Th�m �i")
		return
	end
	if GetLastFactionNumber() == 10 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> Gia nh�p th�nh c�ng <color=yellow>Hoa S�n!!!")
	else
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
	end
end
	
---------------------------------------------------------------------------------------------------------------------
function VuHon()
local nSilverCount = CalcEquiproomItemCount(4,1496, 1, 1) ;
	if(nSilverCount < 300) then -- gia xu
Say("<color=white>Th�t xin l�i V� H�n ���ng ta l� 1 ph�i �n ch�a nhi�u tuy�t k� b� m�t c� uy l�c m�nh m� tri�t ti�u c�c ph�i trong ch�n giang h�.V� ��i hi�p ��y mu�n gia nh�p ph�i ta c�n ��ng l� ph� 100  KNB..")
	return 
	end
	if GetLastFactionNumber() == 11 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
		return 0;
	end
	if GetLastFactionNumber() == 11 then
		Talk(1,"","Ta Cho Ph�p Ng��i Xu�ng N�i T�m ���ng H�c Ngh� M�i\nKhi N�o Mu�n Quay L�i B�n M�n Th� L�i T�m Ta..!")
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
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> Gia nh�p th�nh c�ng <color=yellow>V� H�n!!!")
	else
		Talk(1,"","Mu�n Gia Nh�p B�n Ph�i C�n Ph�i C�i H�t Trang B� Tr�n Ng��i Xu�ng")
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
	logplayer("dulieu/Chuyen_Mon_Phai.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� Chuyen Mon Phai ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>��ng c�p c�a ng��i th�p h�n 150, kh�ng th� h�c y�u quy�t n�y! <color>");
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
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	if GetLevel() < 180 then
		Msg2Player("<color=yellow>��ng c�p c�a ng��i th�p h�n 150, kh�ng th� h�c y�u quy�t n�y! <color>");
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
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My ho�c Th�y Y�n <color=Green>N� <color> => Thi�u L�m ho�c Thi�n V��ng<enter> Sau khi gia nh�p m�n ph�i c� th� ��n g�p ta �� ��i gi�i t�nh "
	local tbOpt =
	{
		{"Chuy�n Nam Th�nh N�", NamNu},
		{"Chuy�n N� Th�nh Nam", NuNam},
		{"Tho�t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
local nFaction = GetLastFactionNumber()
if nFaction == 0 then
Talk(1,"no","<color=red>M�n Ph�i Thi�u L�m Kh�ng Th� Chuy�n Gi�i.")
				return 			
			end
		if CalcEquiproomItemCount(4,417,1,-1)<1000 then 
			Talk(1,"no","<color=red>B�n kh�ng �� 1000 Xu.")
				return 			
			end
	
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>G�i ��p<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
SetSex(1) ---nu 1
ConsumeEquiproomItem(1000,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng nam ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh N� Giai Nh�n T�i NPC Chuy�n Ph�i")
end
end

function NuNam()
local nFaction = GetLastFactionNumber()
if nFaction == 4 then
Talk(1,"no","<color=red>M�n Ph�i - Nga My Kh�ng Th� Chuy�n Gi�i.")
return 			
end
if nFaction == 5 then
Talk(1,"no","<color=red>M�n Ph�i - THuy yen Kh�ng Th� Chuy�n Gi�i.")
return 			
end
	
		if CalcEquiproomItemCount(4,417,1,-1)<1000 then 
			Talk(1,"no","<color=red>B�n kh�ng �� 1000 Xu.")
				return 			
			end
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>Trai Xinh<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
SetSex(0)---nam 0
ConsumeEquiproomItem(1000,4,417,1,-1);
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng n� ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh Nam M� Nh�n T�i NPC Chuy�n Ph�i")
end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
