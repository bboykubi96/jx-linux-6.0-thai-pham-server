Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
IncludeLib("ITEM")
Include("\\script\\global\\g7vn\\g7configall.lua")
nAddSkill = 70
----------------------------------------------
function main()
--	dofile("script/global/g7vn/npc_monphai.lua")
	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ thùc hiÖn thao t¸c nµy")
		return
	end

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
		Say("T×m Ta Cã ViÖc G×",3,"Giao Nép Tİn VËt ChuyÓn Ph¸i./NopTinVat","§¸i NghÖ §Çu S­ - ChuyÓn M«n Ph¸i./chonphaimoi","Th«i Ta Kh«ng Lµm PhiÒn Ng­¬i N÷a/No")
	end
end

function bikip120()
	local szTitle = "<npc><color=yellow>§¹i hiÖp lùa chän chøc n¨ng nµo? "
	local tbOpt =
	{
		{"Mua Thiªn Tinh Bİ Kİp (350 xu)", thientinhbikiep},
		{"Mua Thiªn Tinh Th¹ch (3000 v¹n l­îng)", thientinhthach},
		{"§æi Bİ Kİp 120.", doibikip120},
		{"Tho¸t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function thientinhbikiep()
	if CalcFreeItemCellCount() < 5 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 5 « trèng!")
		return 1;
	end
	if CalcEquiproomItemCount(4,417,1,1)>=350 then
		ConsumeEquiproomItem(350,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Thiªn Tinh Bİ Kİp",tbProp={6,1,1987,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 350 Xu.")
		return
	end
end

function thientinhthach()
	if CalcFreeItemCellCount() < 5 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 5 « trèng!")
		return 1;
	end
	if GetCash()>=30000000 then
		Pay(30000000)
		tbAwardTemplet:GiveAwardByList({{szName = "Thiªn Tinh Th¹ch",tbProp={6,1,1988,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 3000 v¹n l­îng.")
		return
	end
end
function doibikip120()
		if CalcFreeItemCellCount() < 5 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 5 « trèng!")
		return 1;
		end
	if CalcEquiproomItemCount(4,417,1,1)>=350 then
	ConsumeEquiproomItem(350,4,417,1,1)
			tbAwardTemplet:GiveAwardByList({{szName = "Bİ kİp 120",tbProp={6,1,1125,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng ®ñ 350 Xu.")
		return
	end
end

function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My hoÆc Thóy Yªn <color=Green>N÷ <color> => ThiÕu L©m hoÆc Thiªn V­¬ng<enter> Sau khi gia nhËp m«n ph¸i cã thÓ ®Õn gÆp ta ®Ó ®æi giíi tİnh "
	local tbOpt =
	{
		{"ChuyÓn Nam Thµnh N÷", NamNu},
		{"ChuyÓn N÷ Thµnh Nam", NuNam},
		{"Tho¸t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tİnh cÇn ph¶i c­ëi bá hÕt trang bŞ trªn ng­êi .",0);

		end
		if GetSeries()==0 and GetFaction()=="shaolin"  then
		Talk(1, "", "<color=green>ThiÕu L©m kh«ng thÓ chuyÓn thµnh n÷ ®­îc?")
return 
		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<400 then
	Say("ChuyÓn giíi tİnh cÇn 400 xu trong hµnh trang.")
	return
end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
ConsumeEquiproomItem(400,4,417,1,1)
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tİnh thµnh c«ng thµnh N÷ Giai Nh©n")
end
end

function NuNam()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tİnh cÇn ph¶i c­ëi bá hÕt trang bŞ trªn ng­êi .",0);

		end
		if GetSeries()==2 then
		Talk(1, "", "<color=green>Nga My, Thóy Yªn kh«ng thÓ chuyÓn thµnh nam ®­îc?")
return 
		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<400 then
	Say("ChuyÓn giíi tİnh cÇn 400 xu trong hµnh trang.")
	return
end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
ConsumeEquiproomItem(400,4,417,1,1)
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tİnh thµnh c«ng thµnh Nam Mü Nh©n")
end
end
function clear_skill()
	if CalcEquiproomItemCount(4,238,1,1)>=1 and CalcEquiproomItemCount(4,239,1,1)>=1 and CalcEquiproomItemCount(4,240,1,1)>=1  then

	local tbOpt =
	{
		{"X¸c nhËn", do_clear_skill},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt muèn tÈy tñy?", tbOpt)
	else
		Say("TÈy ®iÓm tiÒm n¨ng cÇn cã 1 bé Thñy Tinh")
		return
	end
end

function do_clear_skill()
ConsumeEquiproomItem(1,4,238,1,1)
ConsumeEquiproomItem(1,4,239,1,1)
ConsumeEquiproomItem(1,4,240,1,1)
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	KickOutSelf()
end

function clear_prop()
if CalcEquiproomItemCount(4,353,1,1)<6 then
	Say("TÈy ®iÓm tiÒm n¨ng cÇn cã 6 Tinh Hång B¶o Th¹ch")
	return
end
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
	ConsumeEquiproomItem(6,4,353,1,1)
	local base_str = {35,20,25,30,20}			
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
function nop_tinvat()
if GetSkillState(1505) >= 1 or GetSkillState(1506) >= 1 or GetSkillState(1507) >= 1 or GetSkillState(1508) >= 1 or GetSkillState(1509) >= 1 then
Say("ChØ cho phĞp chuyÓn sang ph¸i kh¸c khi nh©n vËt ch­a sö dông huyÕt ngäc.b¹n cÇn ph¶i hñy huyÕt ngäc hiÖu øng lùc tay huyÕt ngäc míi cã thÓ chuyÓn ph¸i kh¸c ®Ó tr¸nh x2 x3 lùc tay khi chuyÓn.",0);
return 
end
	if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>§¹i hiÖp vÉn ch­a gia nhËp m«n ph¸i ?")
	else if GetLastFactionNumber() == 0 and (GetSeries() == 0) then  ------thieu lam
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt ThiÕu L©m/#daiyitoushi_main(0)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 1 and (GetSeries() == 0) then --------thien vuong vuong
			local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thiªn V­¬ng/#daiyitoushi_main(1)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog) 
	else if GetLastFactionNumber() == 2 and (GetSeries() == 1) then  ---------duong mon
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt §­êng M«n/#daiyitoushi_main(2)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 3 and (GetSeries() == 1) then  ----------ngu doc
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Ngò §éc/#daiyitoushi_main(3)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if  GetFaction() == "emei" and (GetSeries() == 2) then  -------nga my		
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Nga my/#daiyitoushi_main(4)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if  GetLastFactionNumber() == 5 and (GetSeries() == 2)  then -----thuy yen
	DelMagic(1223)
	DelMagic(1224)
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thóy Yªn/#daiyitoushi_main(5)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 6 and (GetSeries() == 3) then -----gaibang
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt C¸i Bang/#daiyitoushi_main(6)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 7 and (GetSeries() == 3) then -----thien nhan
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Thiªn NhÉn/#daiyitoushi_main(7)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 8 and (GetSeries() == 4) then -------vo dang
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Vâ §ang/#daiyitoushi_main(8)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)	
	else if GetLastFactionNumber() == 9 and (GetSeries() == 4) then ------con luon
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt C«n L«n/#daiyitoushi_main(9)", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 10 and (GetSeries() == 2) then ------hoa son
		local tbDialog = 
			{	"<dec><npc>Muèn chuyÓn ph¸i ph¶i giao nép cho ta <color=red>Tİn VËt M«n Ph¸i<color> ..!", 
				" Giao nép tİn vËt Hoa S¬n/dieukiengianhaphs", 
				" Ta quªn mang theo råi, lÇn sau nhĞ /0", 
			} 
			CreateTaskSay(tbDialog)
	
end
end
end
end
end
end
end
end
end
end
end
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
