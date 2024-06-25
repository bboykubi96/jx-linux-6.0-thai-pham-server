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
			Say("H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",4,"Gia NhËp Ph¸i ThiÕu L©m/ThieuLamPhai","Gia NhËp Ph¸i Thiªn V­¬ng/ThienVuongBang","Th«i §Ó Ta Suy NghÜ L¹i/No")
		else
			Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KĞm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
		end
	elseif (nSeries == 1) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",4,"Gia NhËp Ph¸i §­êng M«n/DuongMonPhai","Gia NhËp Ph¸i Ngò §éc/NguDocGiao","Th«i §Ó Ta Suy NghÜ L¹i/No")
		else
			Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KĞm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
		end
	elseif (nSeries == 2) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",4,"Gia NhËp Ph¸i Nga My/NgaMyPhai","Gia NhËp Ph¸i Thóy Yªn/ThuyYenMon","Th«i §Ó Ta Suy NghÜ L¹i/No")
		else
			Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KĞm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
		end
	elseif (nSeries == 3) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",4,"Gia NhËp Ph¸i C¸i Bang/CaiBangPhai","Gia NhËp Ph¸i Thiªn NhÉn/ThienNhanGiao","Th«i §Ó Ta Suy NghÜ L¹i/No")
		else
			Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KĞm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
		end
	elseif (nSeries == 4) and (nCamp == 0) then
		if (nLevel >= 10) then
			Say("H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",4,"Gia NhËp Ph¸i Vâ §ang/VoDangPhai","Gia NhËp Ph¸i C«n L«n/ConLonPhai","Th«i §Ó Ta Suy NghÜ L¹i/No")
		else
			Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KĞm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
		end
	else
		Say("T×m Ta Cã ViÖc G×",3,"§¸i NghÖ §Çu S­ - ChuyÓn M«n Ph¸i/ChuyenPhai","Ta Muèn VÒ Ph¸i Cã Chót ViÖc/MoveVePhai","Th«i Ta Kh«ng Lµm PhiÒn Ng­¬i N÷a/No")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i ThiÕu L©m §­îc Phong Lµ T¶o §Şa T¨ng §Ó Tö")
	else
		Talk(1,"","Th¸i S¬n B¾c §Èu Tõ X­a §Õn Nay ThiÕu L©m Ta ChØ Thu NhËn Nam §Ó Tö")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thiªn V­¬ng §­îc Trë Thµnh ThŞ VÖ")
	else
		Talk(1,"","Bang Chñ D­¬ng Anh Tõ X­a §Õn Nay ChØ Thu NhËn Nam §Ó Tö")
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
Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i §­êng M«n §­îc Trë Thµnh Lµng D")
end

function NguDocGiao()
SetFaction("wudu")
SetLastFactionNumber(3)
SetTask(2,10*256);
SetCamp(2) SetCurCamp(2)
add_wu(nAddSkill) SetRank(80)
SetRevPos(183,70)
--NewWorld(183, 1746, 2673)
Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Ngò §éc §­îc Trë Thµnh Ngò §éc §ång Tö")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Nga My §­îc Trë Thµnh Bè Y Ni")
	else
		Talk(1,"","Ph¸i Nga My Tõ X­a §Õn Nay ChØ Lµ N÷ Nhi Kh«ng TiÕp Xóc Víi Nam Giíi Bao Giê")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thóy Yªn §­îc Trë Thµnh Hoa Tú")
	else
		Talk(1,"","Ph¸i Thóy Yªn Tõ X­a §Õn Nay ChØ Lµ N÷ Nhi YÕu §uèi Kh«ng Thu NhËn §Ö Tö Nam")
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
Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i C¸i Bang §­îc Trë Thµnh §Ó Tö 0 Tói")
end

function ThienNhanGiao()
SetFaction("tianren")
SetLastFactionNumber(7)
SetTask(4,10*256);
SetCamp(2) SetCurCamp(2)
add_tr(nAddSkill) SetRank(81)
SetRevPos(49,28)
--NewWorld(49, 1644, 3215)
Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thiªn NhÉn §­îc Trë Thµnh S¸t Thñ")
end

function VoDangPhai()
SetFaction("wudang")
SetLastFactionNumber(8)
SetTask(5,10*256);
SetCamp(1) SetCurCamp(1)
add_wd(nAddSkill) SetRank(73)
SetRevPos(81,40)
--NewWorld(81, 1574, 3224)
Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vâ §ang §­îc Trë Thµnh §¹o §ång")
end

function ConLonPhai()
SetFaction("kunlun")
SetLastFactionNumber(9)
SetTask(9,10*256);
SetCamp(3) SetCurCamp(3)
add_kl(nAddSkill) SetRank(75)
SetRevPos(131,57)
--NewWorld(131, 1582, 3175)
Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i C«n L«n §­îc Trë Thµnh PhÊt TrÇn §Ö Tö")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Hoa S¬n §­îc Trë Thµnh Hoa S¬n NhËp M«n §Ö Tö")
	else
		if (GetSeries() == 2) then
			SetFaction("huashan")
			SetLastFactionNumber(10)
			SetTask(11,10*256)
			SetCamp(3) SetCurCamp(3)
			add_hs(nAddSkill) SetRank(89)
			SetRevPos(333,333); KickOutSelf()
			--NewWorld(333, 1344, 3120) 
			Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Hoa S¬n §­îc Trë Thµnh Hoa S¬n NhËp M«n §Ö Tö")
		else
			Talk(1,"","Nh©n VËt N÷ HÖ Thñy - Míi Gia NhËp §­îc Ph¸i Hoa S¬n")
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
		Talk(1,"","Ng­¬i Kh«ng Thuéc M«n Ph¸i Nµo, Ta Kh«ng BiÕt §­a Ng­¬i §i §©u")
	end
end
---------------------------------------------------------------------------Doi Thoai Npc Mon Phai-----------------------------------------------------------------------------------------------------------------------
function ThieuLam_select()
	if (GetSeries() == 0) and (GetCamp() == 0) then
		if ((GetLevel() >= 10) and (HaveMagic(29) == -1)) then
			Say("ThiÕu L©m kh«ng hæ danh lµ danh m«n chİnh ph¸i! Huynh ®Ö cã muèn gia nhËp kh«ng", 3, "Gia nhËp ThiÕu L©m ph¸i/ThieuLamPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function ThienVuong_select()
	if (GetCamp() == 0) and (GetSeries() == 0) then
		if (GetLevel() >= 10) then
			Say("Gia nhËp bæn bang, chóng ta sÏ lµ huynh ®Ö mét nhµ, häa phóc cïng h­ëng!", 3, "Gia nhËp Thiªn V­¬ng Bang/ThienVuongBang", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function DuongMon_select()
	if (GetSeries() == 1) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Bæn m«n ¸m khİ ®· lõng danh thiªn h¹. C¹m bÉy thuËt còng khiÕn vâ l©m nhiÒu phen khiÕp vİa. Ng­¬i cã muèn t×m hiÓu mét vµi së tr­êng kh«ng?", 3, "Gia nhËp §­êng M«n/DuongMonPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function NguDoc_select()
	if (GetSeries() == 1) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Sao h¶? Cã muèn gia nhËp bæn gi¸o kh«ng?", 3, "Gia nhËp Ngò §éc Gi¸o/NguDocGiao", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function NgaMy_select()
	if (GetSeries() == 2) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Gia nhËp Nga My ph¸i, chóng ta sÏ lµ tû muéi 1 nhµ!  Häa phóc cïng h­ëng! ", 3, "Gia nhËp Nga Mi ph¸i/NgaMyPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","Tr­íc tiªn muéi h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn cÊp <color=red>10<color> chóng ta sÏ lµ tû muéi 1 nhµ!")		
		end
	end
end;

function thuyyen_select()
	if (GetSeries() == 2) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Muéi cã muèn gia nhËp Thóy Yªn m«n cña chóng ta kh«ng", 3, "Gia nhËp Thóy Yªn M«n/ThuyYenMon", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","Tr­íc tiªn muéi h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn cÊp <color=red>10<color> chóng ta sÏ lµ tû muéi 1 nhµ!")
		end
	end
end;

function CaiBang_select()
	if (GetSeries() == 3) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Cã høng thó gia nhËp C¸i bang kh«ng? Mäi ng­êi cã c¬m cïng ¨n, cã r­îu cïng uèng!", 3, "Gia NhËp C¸i bang/CaiBangPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function ThienNhan_select()
	if (GetSeries() == 3) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Cã muèn gia nhËp bæn gi¸o kh«ng?", 3, "Gia nhËp Thiªn NhÉn gi¸o/ThienNhanGiao", "Kh«ng gia nhËp/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function VoDang_select()
	if (GetSeries() == 4) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("NÕu muèn gia nhËp bæn ph¸i ph¶i thay ®æi t©m tİnh, chuyÓn t©m tu hµnh, t­¬ng lai cã rÊt nhiÒu c¬ héi chê ®ãn ng­¬i!", 3, "Gia nhËp Vâ §ang/VoDangPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function ConLon_select()
	if (GetSeries() == 4) and (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Bæn m«n tinh th«ng ®¹o chó kiÕm thuËt. Bän Vâ §ang  lµ c¸i thø g× chø!  Cã muèn gia nhËp bæn ph¸i kh«ng?", 3, "Gia nhËp C«n L«n/ConLonPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;

function HoaSon_select()
	if (GetCamp() == 0) then
		if (GetLevel() >= 10) then
			Say("Ph¸i <color=cyan>Hoa S¬n<color> ta ®· kh«ng tham gia giang hå h¬n 10 n¨m nay, lÇn nµy t¸i xuÊt ¾t sÏ khiÕn bän giang hå tµ ph¸i ph¶i khiÕp sî!", 3, "Gia nhËp Hoa S¬n/HoaSonPhai", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm qu¸!  H·y luyÖn ®Õn cÊp <color=red>10<color> ®i råi ®Õn t×m ta!")
		end
	end
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
