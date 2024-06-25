------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\g7vn\\chuyenmonphai.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include([[\script\event\mid_autumn06\head.lua]]);
local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717},
	},
	[11] =
	{
		szShowName = "Hoa s¬n",
		szFaction = "huashan",
		nShortFaction = "hs",
		tbSkill = {1364, 1382, 1365, 1369, 1384},
	},
	[12] =
	{
		szShowName = "Vò Hån",
		szFaction = "wuhun",
		nShortFaction = "wh",
		tbSkill = {1984, },
	},
	[13] =
	{
		szShowName = "Tiªu Dao",
		szFaction = "xiaoyao",
		nShortFaction = "xy",
		tbSkill = {1894, },
	},
}
local tbFactionSeries =
{
	[1] = {1, 2},
	[2] = {3, 4},
	[3] = {5, 6, 11},
	[4] = {7, 8, 12},
	[5] = {9, 10, 13},
}





------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
	
function main()
--Msg2SubWorld("<color=cyan>Ngay b©y giê anh em ®· cã thÓ t¶i patch míi 22/8 hoµn chØnh t¹i trang chñ www.volamtaithien.com ®Ó ch¾c ch¾n kh«ng bÞ bÊt cø lçi nhÑ nµo n÷a.")
--dofile("script/global/quanlygame/npctanthu.lua")
local szTitle = "PhÇn quµ t©n thñ giµnh cho ng­¬i rÊt phong phó, h·y tr¶i nghiÖm nh÷ng tÝnh n¨ng hÊp dÉn, ®¾m m×nh vµo mét thÕ giíi vâ l©m hoµn toµn míi l¹ cïng c¸c game thñ b¹n nhÐ!";
local tbOpt = 
{
{"NhËp Code Vip NhËn HKMP Vip Server",CODEVIP},

--{"Ta ®Õn nhËp Ngò Hoa Ngäc Lé Hoµn",nhanmau},
--{"NhËn §¼ng CÊp 199 vµ Vµo C¸c Ph¸i",HoTroTanThuMoi},
{"NhËn §å NghÒ Cho Ng­êi Míi Ch¬i",nhanhotro},
{"C¸c Chøc N¨ng Phô Cña Game", MenuFree},
{"Më Réng R­¬ng Chøa §å", MoRuongFree1},
{"NhËn Mèt Sè LÖnh Bµi", nhandalenhbai},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function nhanhotro()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4384,1}, nCount=1, nBindState=-2}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,438,1}, nCount=1, nBindState=-2}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1266,1}, nCount=1, nBindState=-2}, "test", 1);
Earn(50000000)
end

function nhanmau()
	local otrong = CalcFreeItemCellCount();
	for i=1,otrong do	
	nItemIndex= AddStackItem(0,1,2,0,5,0,0,0);--0,1,8,0,4,0,0,0
	SetItemBindState(nItemIndex,-2)
	end
	Msg2Player("NhËn ®­îc "..otrong.." Ngò Hoa Ngäc Lé Hoµn")		
end

function MenuFree()		
local szTitle = "§©y lµ giao diÖn c¸c chøc n¨ng trî gióp cho c¸c ®ång ®¹o";
local tbOpt = 
{
--{"ChuyÓn M«n Ph¸i NhËn L¹i Skill", ChuyenPhaiFree},
{"TÈy Tñy + §æi Mµu + Gi¶m PK",TayTuyFree},
{"LËp Bang Héi.", dmcreattongtest_c},
{"§çi Tªn Nh©n VËt Game", DoiTenNV},
{"Thay §æi Mµu PK.", trangthai1},
{"Thay §æi Giíi TÝnh", chuyen_gt},
{"§æi Stype Phong C¸ch", DoiNgoaiTrang},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end


function ChuyenPhaiFree()
	local tbOpt =
	{
                                            {"ChuyÓn M«n Ph¸i T¹i §©y", MenuChuyen},
                                            {"NhËn L¹i Skill Khi BÞ ThiÕu", addskill},
                                            {"NhËn Skill Bug + Bïa + BÉy.", bkall},
                                            {"NhËn L¹i Skill Khinh C«ng.", skillKC},
                                            {"T¨ng ®iÓm tiÒm n¨ng.", add_prop},
		{"KÕt thóc ®èi tho¹i ",thonghonafk},
	}
	CreateNewSayEx("<npc>Muèn chuyÓn ph¸i ph¶i cã TÝn VËt M«n Ph¸i giao nép ch­ëng m«n<enter>ChuyÓn ph¸i nÕu mÊt skill th× cø ®Õn gÆp ta mµ nhËn l¹i.", tbOpt)
end


function TayTuyFree()
	local tbOpt =
	{
		{"TÈy ®iÓm kü n¨ng", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng", clear_prop},
           {"Gi¶m §iÓm PK", sachgiampk},
		{"KÕt thóc ®èi tho¹i."},
	}
	CreateNewSayEx("<npc>Ng­¬i quyÕt muèn tÈy tñy?", tbOpt)
end


function trangthai1()
	local tbOpt =
	{
		{"ChÝnh ph¸i - Mµu Vµng", mauvang},
		{"Trung lËp - Mµu Xanh", mauxanh},
		{"Tµ ph¸i - Mµu TÝm", mautim},
		{"S¸t Thñ - Mµu ®á xuÊt x­", maudo},
		{"Tho¸t/0"},
	}
	CreateNewSayEx("<npc>Xin Chän Mµu", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)		
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)		
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)		
end

function sachgiampk()
AddItem(6,1,1375,1,1,0,0)
end

function clear_skill()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_skill},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt muèn tÈy tñy?", tbOpt)
end

function do_clear_skill()
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
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
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

function write_info()
	tbInputDialog:InputServer()
end


function addskill()
if check_faction() == 1 then
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
	return
end
mp = GetFaction()
if GetLevel() >= 120 then	
if GetTask(5007) == 0 then
if GetLastFactionNumber() == 0 then
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
elseif GetLastFactionNumber() == 2 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña §­êng M«n. ")
elseif GetLastFactionNumber() == 3 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
elseif GetLastFactionNumber() == 4 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
elseif GetLastFactionNumber() == 5 then
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
elseif GetLastFactionNumber() == 7 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
elseif GetLastFactionNumber() == 9 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C«n L«n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Hoa S¬n.")
elseif GetLastFactionNumber() == 11 then
AddMagic(1963,20)
AddMagic(1987,20)
AddMagic(1984,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vò Hån.")
elseif GetLastFactionNumber() == 12 then
AddMagic(1891,20)
AddMagic(1911,20)
AddMagic(1894,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Tiªu Dao.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end

function bkall()
if check_faction() == 1 then
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
	return
end
mp = GetFaction()
if GetLevel() >= 120 then	
if GetTask(5007) == 0 then
if GetLastFactionNumber() == 0 then
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
elseif GetLastFactionNumber() == 2 and HaveMagic(351) <= 0 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(351,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü §­êng M«n. ")
elseif GetLastFactionNumber() == 3 and HaveMagic(390) <= 0 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(390,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
elseif GetLastFactionNumber() == 4 and HaveMagic(332) <= 0 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
elseif GetLastFactionNumber() == 5 then
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
elseif GetLastFactionNumber() == 7 and HaveMagic(391) <= 0 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(391,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
elseif GetLastFactionNumber() == 9 and HaveMagic(394) <= 0 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(394,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C«n L«n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Hoa S¬n.")
elseif GetLastFactionNumber() == 11 then
AddMagic(1963,20)
AddMagic(1987,20)
AddMagic(1984,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vò Hån.")
elseif GetLastFactionNumber() == 12 then
AddMagic(1891,20)
AddMagic(1911,20)
AddMagic(1894,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Tiªu Dao.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end



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
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<1000 then
Talk(1, "", "<color=green>"..myplayersex().."<color> kh«ng cã ®ñ 1000 Xu.")
return
end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
ConsumeEquiproomItem(1000,4,417,1,1)
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh N÷ Giai Nh©n")
end
end

function NuNam()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<1000 then
Talk(1, "", "<color=green>"..myplayersex().."<color> kh«ng cã ®ñ 1000 Xu.")
return
end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
ConsumeEquiproomItem(1000,4,417,1,1)
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh Nam Mü Nh©n")
end
end

function MenuChuyen()
AddItem(6,1,1670,1,1,0,0)
ChuyenPhaiMenu()
end

-------------------------------------- KET THUC -------------------------------------------
function OnCancel()
end

--------------------------------------NGUYEN KHAI-------------------------------------------

function HoTroTanThuMoi()
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
		if GetLevel() >= 199 then
			return Say("<color=cyan><pic=65>ChØ nh÷ng ng­êi ch¬i míi t¹o míi nhËn cÊp ®­îc tõ ta !")
		end
		if GetLevel() < 199 then
		level_up_199()
		end

end

function level_up_199()
	local nCurLevel = GetLevel()
	if nCurLevel >= 199 then
			Talk(1, "", "Ng­¬i ®· ®¹t v­ît cÊp 199 råi.")
	return
	end

	local nAddLevel = 199 - nCurLevel
	ST_LevelUp(nAddLevel)
AddRepute(100000)
AddLeadExp(20000000)
choose_faction()
Msg2SubWorld("Chµo mõng ®¹i hiÖp <color=green>"..GetName().."<color=pink> võa míi gia nhËp Server.")
end





function MoRuongFree()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng­¬i ®· më hÕt r­¬ng")
return
end
OpenStoreBox(1)
OpenStoreBox(2)
OpenStoreBox(3)
SaveNow()
Talk(1,"","Më thµnh c«ng tÊt c¶ r­¬ng chøa ®å.") 
end



function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	CreateNewSayEx("<npc>Xin mêi lùa chän ph¸i.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("§¹i hiÖp cã ph¶i lµ muèn vµo m«n ph¸i <color=pink>%s<color>", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"Ok ®óng vËy ta xin gia nhËp", do_set_faction, {nIndex}},
		{"Cho ta chän mét ph¸i kh¸c",  choose_faction},

	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1)
		SetCurCamp(4)
		SetCamp(4)
	Talk(1, "KickOutSelf", format(" <color=green>Chóc Mõng b¹n ®· gia nhËp<color=pink> %s", %tbFaction[nIndex].szShowName))
end

function show_faction()
	if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi ca thÓ nhËn trang bÞ")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Xin mêi lùa chän ph¸i.", tbOpt)
end




function dmcreattongtest_c()
local strTongName = GetTongName()
local tszTitle = "Chµo mõng ®¹i hiÖp ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T¹o bang héi/dmcreateit","KÕt thóc ®èi tho¹i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("TiÕp tôc t¹o bang." ,2,"T¹o Bang/Direct_CreateTong","§Ó ta suy nghÜ l¹it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("§¹i hiÖp: Ng­¬i cã muèn lËp bang?." ,2,"Kh«ng thµnh vÊn ®Ò ta muèn lËp bang ngay! /create_pay_yes","§Ó ta suy nghÜ l¹i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng­êi lËp bang hái ph¶i cã nh¹c v­¬ng kiÕm chõng nµo ®ñ h·y quay l¹i gÆp ta.")
		else
			Talk(6,"", "Ng­êi lËp bang hái ph¶i cã nh¹c v­¬ng kiÕm chõng nµo ®ñ h·y quay l¹i gÆp ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- ÊÕ·Ñ
		DelItem(195)			-- É¾³ýÏµ¹Øµµ¾ß
		SetTask(99,1)				-- ²¢´òÉÏ±ê¼Ç£¨Ý¬Ê±¶¨ÒåÎª°ïÅÉÖÐµÄµóÒ»¸öÈË£¨¼´°ïÖ÷±¾ÈË£©£©
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Muèn lËp bang th× ph¶i cã tiÒn ng­¬i mau mang tiÒn l¹i ®©y råi h·y nãi chuyÖn. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("Ta ®©y lµ trïm bang chñ <color=green>"..GetName().." <color=pink>muèn thèng trÞ server nµy anh em nµo muèn theo ta xin mêi vµo bang")				
end


----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng­¬i t×m ta cã viÖc g×?",3,
		"Mua 1 lÇn ®æi tªn nh©n vËt/dangkydoiten",
		"§Æt tªn cho nh©n vËt/about_rename_role",
		"Nh©n tiÖn ghÐ qua th«i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B¹n vÉn cßn 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	Say("Ng­êi chuÈn bÞ xong ch­a?",
		2,
		"Ta ®· chuÈn bÞ xong/#buy_addibox_yes(10)",
		"Khi nµo ®ñ tiÒn ta sÏ quay l¹i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 100) then
		Say("<color=yellow>Kh¸ch quan ch­a ®ñ 100 Xu! Khi nµo cã ®ñ tiÒn h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(100, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt");
end
function about_rename_role()
	local strInfo = "Chµo b¹n! V× tªn nh©n vËt cña b¹n vµ ng­êi ch¬i kh¸c gièng nhau, cho nªn hÖ thèng ®· gióp b¹n ®æi tªn, b¹n cã thÓ söa tªn nh©n vËt cña b¹n tr­íc ®©y, cã thÓ kiÓm tra xem tªn ®ã cã dïng ®­îc kh«ng. Chó ý! B¹n chØ cã 1 c¬ héi duy nhÊt ®Ó ®æi tªn, xin h·y cÈn thËn tõng b­íc.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta muèn kiÓm tra xem tªn nh©n vËt dïng ®­îc kh«ng/query_rolename",
			"TiÕn hµnh thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
			"§Ó lÇn sau ta thay ®æi vËy/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt míi vµo");
end
function on_change_rolename(new_name)
Msg2SubWorld( "§¹i hiÖp <color=yellow>"..GetName().."<color> ®· ®æi tªn thµnh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B¹n muèn ®æi tªn g×?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin lçi! B¹n ph¶i mua lÇn ®æi tªn nh©n vËt råi h·y chän chøc n¨ng nµy!<color>",
		1,
		"BiÕt råi!/cancel")
end



function datanggiamdoxanh()
AddEventItem(415)
AddEventItem(416)
AddItem(6,1,15,1,0,0)
Say("<color=green>h·y ®Õn thî rÌn ®Ó thay ®æi ngo¹i h×nh ®i ®¹i hiÖp..",0)
end

function nhandalenhbai()
	local tbOpt =
	{
                                                                                   {"§¸ thay ®æi ngo¹i h×nh", datanggiamdoxanh},
                                                                                   {"S¸t Thñ Gi¶n", SatThuGian},  
                                                                                   {"NhËn Khiªu ChiÕn LÖnh", khieuchienlenh},  
	{"Viªm §Õ LÖnh", lbviemde},
	{"Phong L¨ng §é - Thñy TÆc ", lbphonglangdo},
                                                                                --  {"Vi S¬n ®¶o ", lbvisondao},
                                                                                --  {"Thiªn C¬ LÖnh", lbthienco},
                                                                                --{"M¹c B¾c Th¶o Nguyªn ", lbmanbac},
                                                                              --    {"LÖnh bµi c«ng thµnh ", congthanhlenh},
                                                                                 --  {"LÖnh Bµi T©n Thñ", lbtanthuok},       
	{"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i hiÖp cÇn g× ?", tbOpt)
end


function khieuchienlenh()
AddItem(6,1,2006,1,0,0)
Say("<color=green>NhËn thµnh khiªu chiÕn lÖnh vËt phÈm ®Ó b¸o danh c«ng thµnh..",0)
end

function lbviemde()
AddItem(6,1,1617,1,0,0,0)
AddItem(6,1,1604,1,0,0,0)
end

function lbmanbac()
AddItem(6,1,1448,1,0,0,0)
end

function lbvisondao()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,2432,1,0,0,0}, nCount=1, nExpiredTime=1440,}, "test", 1);
end

function congthanhlenh()
AddItem(6,1,2395,1,0,0,0)
end

function lbthienco()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1091,1,0,0,0}, nCount=1, nExpiredTime=1440, nBindState=-2}, "test", 1);
end

function lbphonglangdo()
AddItem(6,1,2745,1,0,0,0)
AddEventItem(489)
end

function SatThuGian()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 		
end

function lbtanthuok()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4360,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
end



function CODEVIP()
local szTitle =  "<npc>NhËp code vÝp khi like chia sÎ Vâ L©m T¹i Thiªn ®iÒu kiÖn b¹n ph¶i like trang vµ chia sÎ bµi viÕt cïng viÖc tab 3 b¹n bÌ liªn hÖ admin nhËp code !"
		local tbOpt =
	{
                                          {"NhËp Code NhËn HKMP Vip",Nhapcode},
	              {"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function Nhapcode()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËp",0);
		return
end
	if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi ca thÓ nhËn trang bÞ")
		return
	end
	local nCurLevel = GetLevel()
	if nCurLevel < 199 then
			Talk(1, "", "Ng­¬i chua ®¹t cÊp 199")
	return
	end
AskClientForString("checkpasscode", "", 1, 50, "NhËp Code");
end

function checkpasscode(strings)	
	if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
	end

	if strings=="volamtaithien248" then ---------------Ma code open sv opensv
NhanFullHKMP1()
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=yellow> §· nhËn ®­îc phÇn th­ëng HKMP tù chän 15 ngµy qu¸ vip khi like chia sÏ bµi viÕt cïng tag b¹n bÌ trªn Fanpage.<color=blue> (T¹i NPC Hç Trî Ng­êi Míi)")

		else
		Say("b¹n nhËp code kh«ng chÝnh x¸c nhËp sai nhiÒu lÇn hÖ thèng sÏ tù xãa nh©n vËt vµ chÆn ip ngay lËp tøc.",0);

	end
end

function NhanFullHKMP1() 
Say("Xin mêi chän trang bÞ",7,"Nga Mi/FullHKNM1","Thóy Yªn/FullHKTY1","§­êng M«n/FullHKDM1","Ngò §éc/FullHKND1","Thiªn V­¬ng/FullHKTV1","Trang Sau/NhanFullHKMP2","KÕt thóc ®èi tho¹i/no") 
end

function NhanFullHKMP2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/FullHKTL1","Vâ §ang/FullHKVD1","C«n L«n/FullHKCL1","Thiªn NhÉn/FullHKTN1","C¸i Bang/FullHKCB1","Trang Tr­íc/NhanFullHKMP1","KÕt thóc ®èi tho¹i/no") 
end

function FullHKNM1() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
           local tbOpt= 
               { 
        --        {"V« Gian Thanh Phong Truy Y", NM1}, 
        --        {"V« Gian PhÊt V©n Ti ®¸i", NM2}, 
                {"V« Gian B¹ch Ngäc Bµn ChØ", NM3},
        --        {"V« Ma Ma Ni qu¸n", NM4}, 
        --        {"V« Ma Tö Kh©m Cµ Sa", NM5}, 
        --        {"V« Ma B¨ng Tinh ChØ Hoµn", NM6}, 
        --         {"Trang KÕ", FullHKNM2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKNM2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("HÖ thèng kiÓm tra IP m¸y tÝnh cïng ID game cña §¹i hiÖp ®· nhËn råi kh«ng thÓ nhËn n÷a",0);
return
end
        local tbOpt= 
               { 
                {"V« TrÇn Ngäc N÷ Tè T©m qu¸n", NM7}, 
                {"V« TrÇn H­íng ThiÖn Ch©u", NM8}, 
                {"V« TrÇn Tõ Bi Ngäc Ban ChØ", NM9},
               -- {"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi", NM10}, 
                {"V« TrÇn PhËt Quang ChØ Hoµn", NM11}, 
                 {"Trang tr­íc", FullHKNM1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 

function NM1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« Gian B¹ch Ngäc Bµn ChØ",tbProp={0,35},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« Ma Ma Ni qu¸n",tbProp={0,36},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« Ma Tö Kh©m Cµ Sa",tbProp={0,37},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« Ma B¨ng Tinh ChØ Hoµn",tbProp={0,38},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn Ngäc N÷ Tè T©m qu¸n",tbProp={0,41},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn H­íng ThiÖn Ch©u",tbProp={0,42},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
AddExtPoint(7,1)
SetTask(3030,1)
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn Tõ Bi Ngäc Ban ChØ",tbProp={0,43},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM10()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",tbProp={0,44},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM11()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn PhËt Quang ChØ Hoµn",tbProp={0,45},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

--===============THUY YEN


function FullHKTY1() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
              --  {"Tª Hoµng TuÖ T©m Khinh Sa Y", TY1}, 
                {"Tª Hoµng Thóy Ngäc ChØ Hoµn", TY2}, 
              --  {"BÝch H¶i Hoµn Ch©u Vò Liªn", TY3},
              --  {"BÝch H¶i Hång Linh Kim Ti ®¸i", TY4}, 
             --   {"BÝch H¶i Hång L¨ng Ba", TY5}, 
             --   {"BÝch H¶i Khiªn TÕ ChØ hoµn", TY6}, 
             --    {"Trang KÕ", FullHKTY2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKTY2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("HÖ thèng kiÓm tra IP m¸y tÝnh cïng ID game cña §¹i hiÖp ®· nhËn råi kh«ng thÓ nhËn n÷a",0);
return
end
        local tbOpt= 
               { 
                {"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i", TY7}, 
                 {"Trang tr­íc", FullHKTY1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 

function TY1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng TuÖ T©m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Thóy Ngäc ChØ Hoµn",tbProp={0,50},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={0,52},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={0,53},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hång L¨ng Ba",tbProp={0,54},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Khiªn TÕ ChØ hoµn",tbProp={0,55},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

--====================DUONG MON

function FullHKDM1() 
        local tbOpt= 
               { 
              {"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn", DM7}, 
              --  {"B¨ng Hµn T©m TiÔn Yªu KhÊu", DM2}, 
              --  {"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi", DM3},
                --{"B¨ng Hµn NguyÖt ¶nh Ngoa", DM4}, 
              --  {"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï", DM5}, 
              --  {"Thiªn Quang S©m La Thóc §¸i", DM6}, 
             --    {"Trang KÕ", FullHKDM2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKDM2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("HÖ thèng kiÓm tra IP m¸y tÝnh cïng ID game cña §¹i hiÖp ®· nhËn råi kh«ng thÓ nhËn n÷a",0);
return
end
        local tbOpt= 
               { 
                {"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn", DM7}, 
                {"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p", DM8}, 
                {"S©m Hoang Hån Gi¶o Yªu Thóc", DM9},
                {"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi", DM10}, 
              --  {"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n", DM11}, 
                {"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn", DM12}, 
                 {"Trang tr­íc", FullHKDM3}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 

function FullHKDM3() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("HÖ thèng kiÓm tra IP m¸y tÝnh cïng ID game cña §¹i hiÖp ®· nhËn råi kh«ng thÓ nhËn n÷a",0);
return
end
        local tbOpt= 
               { 
                {"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi", DM13}, 
                {"§Þa Ph¸ch KhÊu T©m tr¹c", DM14}, 
                {"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa", DM15},
                 {"Trang tr­íc", FullHKDM1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 

function DM1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn HuyÒn Y Thóc Gi¸p",tbProp={0,72},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={0,73},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={0,74},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn NguyÖt ¶nh Ngoa",tbProp={0,75},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",tbProp={0,77},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang S©m La Thóc §¸i",tbProp={0,78},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",tbProp={0,80},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={0,82},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM10()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",tbProp={0,84},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM11()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={0,86},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM12()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",tbProp={0,87},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM13()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",tbProp={0,88},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM14()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch KhÊu T©m tr¹c",tbProp={0,89},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM15()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={0,90},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================NGU DOC

function FullHKND1() 
        local tbOpt= 
               { 
                --{"U Lung XÝch YÕt MËt trang", ND1}, 
           --     {"U Lung Ng©n ThÒm Hé UyÓn", ND2}, 
           --     {"U Lung MÆc Thï NhuyÔn Lý", ND3},
                --{"Minh ¶o U §éc ¸m Y", ND4}, 
                {"Minh ¶o §éc YÕt ChØ Hoµn", ND5}, 
               -- {"Minh ¶o Song Hoµn Xµ Hµi", ND6}, 
            --     {"Trang KÕ", FullHKND2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKND2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("HÖ thèng kiÓm tra IP m¸y tÝnh cïng ID game cña §¹i hiÖp ®· nhËn råi kh«ng thÓ nhËn n÷a",0);
return
end
        local tbOpt= 
               { 
                {"U Lung Thanh Ng« TriÒn yªu", ND12}, 
               -- {"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn", ND7}, 
                {"Chó Ph­îc DiÖt L«i C¶nh Phï", ND8}, 
                {"Chó Ph­îc U ¶o ChØ Hoµn", ND9},
                {"Chó Ph­îc Xuyªn T©m §éc UyÓn", ND10}, 
                {"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa", ND11}, 
                 {"Trang tr­íc", FullHKDM1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 



function ND1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="U Lung XÝch YÕt MËt trang",tbProp={0,57},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="U Lung Ng©n ThÒm Hé UyÓn",tbProp={0,59},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="U Lung MÆc Thï NhuyÔn Lý",tbProp={0,60},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o U §éc ¸m Y",tbProp={0,62},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o §éc YÕt ChØ Hoµn",tbProp={0,63},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Song Hoµn Xµ Hµi",tbProp={0,65},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",tbProp={0,66},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={0,67},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc U ¶o ChØ Hoµn",tbProp={0,68},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND10()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc Xuyªn T©m §éc UyÓn",tbProp={0,69},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND11()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={0,70},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND12()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={0,58},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end





--====================THIEN VUONG

function FullHKTV1() 
 
        local tbOpt= 
               { 
            --    {"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p", TV1}, 
            --    {"H¸m Thiªn Uy Vò Thóc yªu ®¸i", TV2}, 
           --     {"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn", TV3},
            {"Ngù Long TuyÖt MÖnh ChØ hoµn", TV11}, 
            --    {"KÕ NghiÖp B¹ch Hæ V« Song khÊu", TV5}, 
            --    {"KÕ NghiÖp HáaV©n Kú L©n Thñ", TV6}, 
            --     {"Trang KÕ", FullHKTV2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKTV2() 
 
        local tbOpt= 
               { 
                {"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p", TV7}, 
                {"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa", TV8}, 
                {"Ngù Long Thiªn M«n Thóc Yªu hoµn", TV9},
                {"Ngù Long TÊn Phong Hé yÓn", TV10}, 
                {"Ngù Long TuyÖt MÖnh ChØ hoµn", TV11}, 
                 {"Trang tr­íc", FullHKTV1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 



function TV1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",tbProp={0,17},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={0,18},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",tbProp={0,19},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp B¹ch Hæ V« Song khÊu",tbProp={0,23},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp HáaV©n Kú L©n Thñ",tbProp={0,24},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",tbProp={0,27},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={0,25},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={0,28},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV10()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long TÊn Phong Hé yÓn",tbProp={0,29},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV11()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long TuyÖt MÖnh ChØ hoµn",tbProp={0,30},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================THIEU LAM

function FullHKTL1() 
 
        local tbOpt= 
               { 
            --    {"Méng Long HuyÒn Ti Ph¸t ®¸i", TL1}, 
            --    {"Méng Long PhËt Ph¸p HuyÒn Béi", TL2}, 
            --    {"Méng Long §¹t Ma T¨ng hµi", TL3},
            --    {"Phôc Ma HuyÒn Hoµng Cµ Sa", TL4}, 
            --    {"Phôc Ma ¤ Kim NhuyÔn §iÒu", TL5}, 
            --    {"Phôc Ma PhËt T©m NhuyÔn KhÊu", TL6}, 
                  {"Tø Kh«ng Giíi LuËt Ph¸p giíi", TL9}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKTL2() 
 
        local tbOpt= 
               { 
                {"Tø Kh«ng Tö Kim Cµ Sa", TL7}, 
                {"Tø Kh«ng Hé ph¸p Yªu ®¸i", TL8}, 
                {"Tø Kh«ng Giíi LuËt Ph¸p giíi", TL9},
                 {"Trang tr­íc", FullHKTL1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 



function TL1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Méng Long HuyÒn Ti Ph¸t ®¸i",tbProp={0,3},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Méng Long PhËt Ph¸p HuyÒn Béi",tbProp={0,4},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Méng Long §¹t Ma T¨ng hµi",tbProp={0,5},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={0,7},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma ¤ Kim NhuyÔn §iÒu",tbProp={0,8},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma PhËt T©m NhuyÔn KhÊu",tbProp={0,9},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Tö Kim Cµ Sa",tbProp={0,12},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Giíi LuËt Ph¸p giíi",tbProp={0,15},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end




--====================VO DANG

function FullHKVD1() 
 
        local tbOpt= 
               { 
            --    {"L¨ng Nh¹c V« Ng· ®¹o bµo", VD1}, 
            --    {"L¨ng Nh¹c Né L«i Giíi", VD2}, 
                {"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi", VD3},
            --    {"CËp Phong Tam Thanh Phï", VD4}, 
            --    {"CËp Phong HuyÒn Ti Tam §o¹n cÈm", VD5}, 
            --    {"CËp Phong Thanh Tïng Ph¸p giíi", VD6}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 




function VD1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={0,117},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Né L«i Giíi",tbProp={0,118},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",tbProp={0,120},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Tam Thanh Phï",tbProp={0,122},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong HuyÒn Ti Tam §o¹n cÈm",tbProp={0,123},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Thanh Tïng Ph¸p giíi",tbProp={0,125},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end





--====================CON LON

function FullHKCL1() 
 
        local tbOpt= 
               { 
            --    {"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo", CL1}, 
            --    {"S­¬ng Tinh Thanh Phong Lò ®¸i", CL2}, 
                {"S­¬ng Tinh Phong B¹o chØ hoµn", CL3},
            --    {"L«i Khung Thiªn §Þa Hé phï", CL4}, 
            --    {"L«i Khung Phong L«i Thanh CÈm ®¸i", CL5}, 
            --    {"L«i Khung Cöu Thiªn DÉn L«i giíi", CL6}, 
            --     {"Trang KÕ", FullHKCL2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKCL2() 
 
        local tbOpt= 
               { 
                {"Vô ¶o B¾c Minh §¹o qu¸n", CL7}, 
                {"Vô ¶o Ki B¸n phï chó", CL8}, 
                {"Vô ¶o Thóc T©m chØ hoµn", CL9},
                {"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi", CL10},
                {"Vô ¶o Tung Phong TuyÕt ¶nh ngoa", CL11},
                 {"Trang tr­íc", FullHKCL1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 



function CL1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",tbProp={0,127},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Thanh Phong Lò ®¸i",tbProp={0,128},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Phong B¹o chØ hoµn",tbProp={0,130},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Thiªn §Þa Hé phï",tbProp={0,132},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={0,133},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Cöu Thiªn DÉn L«i giíi",tbProp={0,135},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o B¾c Minh §¹o qu¸n",tbProp={0,136},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Ki B¸n phï chó",tbProp={0,137},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Thóc T©m chØ hoµn",tbProp={0,138},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL10()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",tbProp={0,139},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL11()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={0,140},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================THIEN NHAN

function FullHKTN1() 
 
        local tbOpt= 
               { 
                {"Ma ThÞ NghiÖp Háa U Minh Giíi", TN10}, 
                --{"Ma S¸t XÝch Ký Táa Yªu KhÊu", TN2}, 
              --  {"Ma S¸t V©n Long Thæ Ch©u giíi", TN3},
              --  {"Ma Hoµng Kim Gi¸p Kh«i", TN4}, 
             --   {"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn", TN5}, 
              --  {"Ma Hoµng Khª Cèc Thóc yªu ®¸i", TN6}, 
             --    {"Trang KÕ", FullHKTN2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKTN2() 
 
        local tbOpt= 
               { 
                {"Ma Hoµng HuyÕt Y Thó Tr¹c", TN7}, 
                {"Ma Hoµng §¨ng §¹p Ngoa", TN8}, 
                {"Ma ThÞ LÖ Ma PhÖ T©m Liªn", TN9},
                {"Ma ThÞ NghiÖp Háa U Minh Giíi", TN10},
                {"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi", TN11},
                {"Ma ThÞ s¬n  H¶i Phi Hång Lý", TN12},
                 {"Trang tr­íc", FullHKTN1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 



function TN1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={0,102},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t XÝch Ký Táa Yªu KhÊu",tbProp={0,103},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t V©n Long Thæ Ch©u giíi",tbProp={0,105},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng Kim Gi¸p Kh«i",tbProp={0,106},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={0,107},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={0,108},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng HuyÕt Y Thó Tr¹c",tbProp={0,109},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN8()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng §¨ng §¹p Ngoa",tbProp={0,110},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN9()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={0,112},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN10()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ NghiÖp Háa U Minh Giíi",tbProp={0,113},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN11()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN12()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ s¬n  H¶i Phi Hång Lý",tbProp={0,115},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================CAI BANG

function FullHKCB1() 
 
        local tbOpt= 
               { 
                {"§Þch Kh¸i Th¶o Gian Th¹ch giíi", CB7}, 
              --  {"§ång Cõu TiÒm Long Yªu §¸i", CB2}, 
                {"§ång Cõu KiÕn Long Ban ChØ", CB3},
            --    {"§Þch Kh¸i Cöu §¹i C¸i Y", CB4}, 
              --  {"§Þch Kh¸i TriÒn M·ng yªu ®¸i", CB5}, 
           --     {"§Þch Kh¸i CÈu TÝch B× Hé uyÓn", CB6}, 
            --     {"Trang KÕ", FullHKCB2}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 


function FullHKCB2() 
 
        local tbOpt= 
               { 
                {"§Þch Kh¸i Th¶o Gian Th¹ch giíi", CB7}, 
                 {"Trang tr­íc", FullHKCB1}, 
                {"Trë vÒ menu ph¸i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>®¹i hiÖp cÇn mãn g× nhÜ ?", tbOpt)
        return 1 
end 



function CB1()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Gi¸ng Long C¸i Y",tbProp={0,92},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB2()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu TiÒm Long Yªu §¸i",tbProp={0,93},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB3()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ",tbProp={0,95},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB4()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Cöu §¹i C¸i Y",tbProp={0,97},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB5()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i TriÒn M·ng yªu ®¸i",tbProp={0,98},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB6()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={0,99},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB7()
if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËp",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Th¶o Gian Th¹ch giíi",tbProp={0,100},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

