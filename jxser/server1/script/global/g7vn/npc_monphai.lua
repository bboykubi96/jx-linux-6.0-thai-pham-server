Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
nAddSkill = 150
----------------------------------------------
function main()
	dofile("script/global/g7vn/npc_monphai.lua")
local nSeries = GetSeries()
local nCamp = GetCamp()
local nLevel = GetLevel()
	if (nSeries == 0) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H�y L�a Ch�n M�n Ph�i Mu�n Gia Nh�p",4,"Gia Nh�p Ph�i Thi�u L�m/ThieuLamPhai","Gia Nh�p Ph�i Thi�n V��ng/ThienVuongBang","Th�i �� Ta Suy Ngh� L�i/No")
		else
			Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
		end
	elseif (nSeries == 1) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H�y L�a Ch�n M�n Ph�i Mu�n Gia Nh�p",4,"Gia Nh�p Ph�i ���ng M�n/DuongMonPhai","Gia Nh�p Ph�i Ng� ��c/NguDocGiao","Th�i �� Ta Suy Ngh� L�i/No")
		else
			Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
		end
	elseif (nSeries == 2) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H�y L�a Ch�n M�n Ph�i Mu�n Gia Nh�p",4,"Gia Nh�p Ph�i Nga My/NgaMyPhai","Gia Nh�p Ph�i Th�y Y�n/ThuyYenMon","Th�i �� Ta Suy Ngh� L�i/No")
		else
			Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
		end
	elseif (nSeries == 3) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H�y L�a Ch�n M�n Ph�i Mu�n Gia Nh�p",4,"Gia Nh�p Ph�i C�i Bang/CaiBangPhai","Gia Nh�p Ph�i Thi�n Nh�n/ThienNhanGiao","Th�i �� Ta Suy Ngh� L�i/No")
		else
			Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
		end
	elseif (nSeries == 4) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H�y L�a Ch�n M�n Ph�i Mu�n Gia Nh�p",4,"Gia Nh�p Ph�i V� �ang/VoDangPhai","Gia Nh�p Ph�i C�n L�n/ConLonPhai","Th�i �� Ta Suy Ngh� L�i/No")
		else
			Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
		end
	else
		Say("T�m Ta C� Vi�c G�",3,"��i Ngh� ��u S� - Chuy�n M�n Ph�i/ChuyenPhai","Ta Mu�n V� Ph�i C� Ch�t Vi�c/MoveVePhai","Th�i Ta Kh�ng L�m Phi�n Ng��i N�a/No")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamPhai()
	if (GetSex() == 0) then
		SetFaction("shaolin")
		SetLastFactionNumber(0)
		SetTask(7,10*256)
		SetCamp(1) SetCurCamp(1)
		add_sl(nAddSkill) SetRank(72)
		SetRevPos(103,51);
		--NewWorld(103, 1845, 2983)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�u L�m ���c Phong L� T�o ��a T�ng �� T�")
	else
		Talk(1,"","Th�i S�n B�c ��u T� X�a ��n Nay Thi�u L�m Ta Ch� Thu Nh�n Nam �� T�")
	end
end

function ThienVuongBang()
	if (GetSex() == 0) then
		SetFaction("tianwang")
		SetLastFactionNumber(1)
		SetTask(3,10*256);
		SetCamp(3) SetCurCamp(3)
		add_tw(nAddSkill) SetRank(69)
		SetRevPos(59,21)
		--NewWorld(59,1552,3188)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�n V��ng ���c Tr� Th�nh Th� V�")
	else
		Talk(1,"","Bang Ch� D��ng Anh T� X�a ��n Nay Ch� Thu Nh�n Nam �� T�")
	end
end

function DuongMonPhai()
SetFaction("tangmen")
SetLastFactionNumber(2)
SetTask(2,10*256);
SetCamp(3) SetCurCamp(3)
add_tm(nAddSkill) SetRank(76)
SetRevPos(25,15)
--NewWorld(25, 3982, 5235)
Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i ���ng M�n ���c Tr� Th�nh L�ng D")
end

function NguDocGiao()
SetFaction("wudu")
SetLastFactionNumber(3)
SetTask(2,10*256);
SetCamp(2) SetCurCamp(2)
add_wu(nAddSkill) SetRank(80)
SetRevPos(183,70)
--NewWorld(183, 1746, 2673)
Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Ng� ��c ���c Tr� Th�nh Ng� ��c ��ng T�")
end

function NgaMyPhai()
	if (GetSex() == 1) then
		SetFaction("emei")
		SetLastFactionNumber(4)
		SetTask(1,10*256);
		SetCamp(1) SetCurCamp(1)
		add_em(nAddSkill) SetRank(64)
		SetRevPos(13,13)
		--NewWorld(13, 1898, 4978)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Nga My ���c Tr� Th�nh B� Y Ni")
	else
		Talk(1,"","Ph�i Nga My T� X�a ��n Nay Ch� L� N� Nhi Kh�ng Ti�p X�c V�i Nam Gi�i Bao Gi�")
	end
end

function ThuyYenMon()
	if (GetSex() == 1) then
		SetFaction("cuiyan")
		SetLastFactionNumber(5)
		SetTask(6,10*256);
		SetCamp(3) SetCurCamp(3)
		add_cy(nAddSkill) SetRank(67)
		SetRevPos(154,61)
		--NewWorld(154, 403, 1361)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Th�y Y�n ���c Tr� Th�nh Hoa T�")
	else
		Talk(1,"","Ph�i Th�y Y�n T� X�a ��n Nay Ch� L� N� Nhi Y�u �u�i Kh�ng Thu Nh�n �� T� Nam")
	end
end

function CaiBangPhai()
SetFaction("gaibang")
SetLastFactionNumber(6)
SetTask(8,10*256);
SetCamp(1) SetCurCamp(1)
add_gb(nAddSkill) SetRank(78)
SetRevPos(115,53)
--NewWorld(115, 1501, 3672)
Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i C�i Bang ���c Tr� Th�nh �� T� 0 T�i")
end

function ThienNhanGiao()
SetFaction("tianren")
SetLastFactionNumber(7)
SetTask(4,10*256);
SetCamp(2) SetCurCamp(2)
add_tr(nAddSkill) SetRank(81)
SetRevPos(49,28)
--NewWorld(49, 1644, 3215)
Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�n Nh�n ���c Tr� Th�nh S�t Th�")
end

function VoDangPhai()
SetFaction("wudang")
SetLastFactionNumber(8)
SetTask(5,10*256);
SetCamp(1) SetCurCamp(1)
add_wd(nAddSkill) SetRank(73)
SetRevPos(81,40)
--NewWorld(81, 1574, 3224)
Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i V� �ang ���c Tr� Th�nh ��o ��ng")
end

function ConLonPhai()
SetFaction("kunlun")
SetLastFactionNumber(9)
SetTask(9,10*256);
SetCamp(3) SetCurCamp(3)
add_kl(nAddSkill) SetRank(75)
SetRevPos(131,57)
--NewWorld(131, 1582, 3175)
Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i C�n L�n ���c Tr� Th�nh Ph�t Tr�n �� T�")
end
function HoaSonPhai()


end
function HoaSonPhai1()
	if (GetSex() == 0) then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256) SetSeries(2)
		SetCamp(3) SetCurCamp(3)
		add_hs(nAddSkill) SetRank(89)
		SetRevPos(333,333); KickOutSelf()
		--NewWorld(333, 1344, 3120) 
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Hoa S�n ���c Tr� Th�nh Hoa S�n Nh�p M�n �� T�")
	else
		if (GetSeries() == 2) then
			SetFaction("huashan")
			SetLastFactionNumber(10)
			SetTask(11,10*256)
			SetCamp(3) SetCurCamp(3)
			add_hs(nAddSkill) SetRank(89)
			SetRevPos(333,333); KickOutSelf()
			--NewWorld(333, 1344, 3120) 
			Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Hoa S�n ���c Tr� Th�nh Hoa S�n Nh�p M�n �� T�")
		else
			Talk(1,"","Nh�n V�t N� H� Th�y - M�i Gia Nh�p ���c Ph�i Hoa S�n")
		end
	end
end

function MoveVePhai()
local nNum = GetLastFactionNumber()
	if (nNum == 0) then
		NewWorld(103, 1845, 2983)
	elseif (nNum == 1) then
		NewWorld(59,1552,3188)
	elseif (nNum == 2) then
		NewWorld(25, 3982, 5235)
	elseif (nNum == 3) then
		NewWorld(183, 1746, 2673)
	elseif (nNum == 4) then
		NewWorld(13, 1898, 4978)
	elseif (nNum == 5) then
		NewWorld(154, 403, 1361)
	elseif (nNum == 6) then
		NewWorld(115, 1501, 3672)
	elseif (nNum == 7) then
		NewWorld(49, 1644, 3215)
	elseif (nNum == 8) then
		NewWorld(81, 1574, 3224)
	elseif (nNum == 9) then
		NewWorld(131, 1582, 3175)
	elseif (nNum == 10) then
		NewWorld(333, 1344, 3120)
	else
		Talk(1,"","Ng��i Kh�ng Thu�c M�n Ph�i N�o, Ta Kh�ng Bi�t ��a Ng��i �i ��u")
	end
end
---------------------------------------------------------------------------Doi Thoai Npc Mon Phai-----------------------------------------------------------------------------------------------------------------------
function ThieuLam_select()
	if (GetSeries() == 0) and (GetCamp() == 0) then
		if ((GetLevel() >= 10) and (HaveMagic(29) == -1)) then
			Say("Thi�u L�m kh�ng h� danh l� danh m�n ch�nh ph�i! Huynh �� c� mu�n gia nh�p kh�ng", 3, "Gia nh�p Thi�u L�m ph�i/ThieuLamPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function ThienVuong_select()
	if (GetCamp() == 0) and (GetSeries() == 0) then
		if (GetLevel() >= 10) then
			Say("Gia nh�p b�n bang, ch�ng ta s� l� huynh �� m�t nh�, h�a ph�c c�ng h��ng!", 3, "Gia nh�p Thi�n V��ng Bang/ThienVuongBang", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function DuongMon_select()
	if (GetSeries() == 1) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("B�n m�n �m kh� �� l�ng danh thi�n h�. C�m b�y thu�t c�ng khi�n v� l�m nhi�u phen khi�p v�a. Ng��i c� mu�n t�m hi�u m�t v�i s� tr��ng kh�ng?", 3, "Gia nh�p ���ng M�n/DuongMonPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function NguDoc_select()
	if (GetSeries() == 1) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Sao h�? C� mu�n gia nh�p b�n gi�o kh�ng?", 3, "Gia nh�p Ng� ��c Gi�o/NguDocGiao", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function NgaMy_select()
	if (GetSeries() == 2) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Gia nh�p Nga My ph�i, ch�ng ta s� l� t� mu�i 1 nh�!  H�a ph�c c�ng h��ng! ", 3, "Gia nh�p Nga Mi ph�i/NgaMyPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","Tr��c ti�n mu�i h�y luy�n t�p l�i c�n b�n, ��t ��n c�p <color=red>10<color> ch�ng ta s� l� t� mu�i 1 nh�!")		
		end
	end
end;

function thuyyen_select()
	if (GetSeries() == 2) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Mu�i c� mu�n gia nh�p Th�y Y�n m�n c�a ch�ng ta kh�ng", 3, "Gia nh�p Th�y Y�n M�n/ThuyYenMon", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","Tr��c ti�n mu�i h�y luy�n t�p l�i c�n b�n, ��t ��n c�p <color=red>10<color> ch�ng ta s� l� t� mu�i 1 nh�!")
		end
	end
end;

function CaiBang_select()
	if (GetSeries() == 3) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("C� h�ng th� gia nh�p C�i bang kh�ng? M�i ng��i c� c�m c�ng �n, c� r��u c�ng u�ng!", 3, "Gia Nh�p C�i bang/CaiBangPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function ThienNhan_select()
	if (GetSeries() == 3) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("C� mu�n gia nh�p b�n gi�o kh�ng?", 3, "Gia nh�p Thi�n Nh�n gi�o/ThienNhanGiao", "Kh�ng gia nh�p/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function VoDang_select()
	if (GetSeries() == 4) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("N�u mu�n gia nh�p b�n ph�i ph�i thay ��i t�m t�nh, chuy�n t�m tu h�nh, t��ng lai c� r�t nhi�u c� h�i ch� ��n ng��i!", 3, "Gia nh�p V� �ang/VoDangPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function ConLon_select()
	if (GetSeries() == 4) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("B�n m�n tinh th�ng ��o ch� ki�m thu�t. B�n V� �ang  l� c�i th� g� ch�!  C� mu�n gia nh�p b�n ph�i kh�ng?", 3, "Gia nh�p C�n L�n/ConLonPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;

function HoaSon_select()
	if (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Ph�i <color=cyan>Hoa S�n<color> ta �� kh�ng tham gia giang h� h�n 10 n�m nay, l�n n�y t�i xu�t �t s� khi�n b�n giang h� t� ph�i ph�i khi�p s�!", 3, "Gia nh�p Hoa S�n/HoaSonPhai", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m qu�!  H�y luy�n ��n c�p <color=red>10<color> �i r�i ��n t�m ta!")
		end
	end
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
