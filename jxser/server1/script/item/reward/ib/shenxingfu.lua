----------------------Script*By*Heart*Doldly***-------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
---------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
------------------------------------------------------
function main(sel)
       local CheckXu = GetExtPoint(1)
       local SoXuCon = CheckXu *1
       local nMapChuyen = GetWorldPos();
       local KNB =CalcItemCount(3,4,1496,1,1) +  CalcItemCount(4,4,1496,1,1) + CalcItemCount(9,4,1496,1,1) + CalcItemCount(10,4,1496,1,1)	
       local tiendong =CalcItemCount(3,4,417,1,1) +  CalcItemCount(4,4,417,1,1) + CalcItemCount(9,4,417,1,1) + CalcItemCount(10,4,417,1,1)
       local tinhngoc =CalcItemCount(3,6,1,4807,1) +  CalcItemCount(4,6,1,4807,1) + CalcItemCount(9,6,1,4807,1) + CalcItemCount(10,6,1,4807,1)
 local exp = GetLevel()
local phantram =GetExpPercent()
       local nFaction = GetLastFactionNumber()
  local nDate = tonumber(date("%Y%m%d%H%M"))
		if nDate <= ThoiGianHetHanDiemTP then
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		return 1
	end
	local nMap,_,_ = GetWorldPos();
	local listmapband = {1002,867,527,535,337,338,339,378,379,380,323,324,325,464,465,466,467,468,469,470,471,342,336,595,900}
	for k=1,getn(listmapband) do 
		if nMap == listmapband[k] then 
			Msg2Player("Khu Vùc §Æt BiÖt Kh«ng ThÓ Sö Dông ThÇn Hµnh Phï T¹i N¬i §©y.");
			return 1;
		end
	end

	if (GetLevel() < 5) then
		Say("§¼ng CÊp 5 Trë Lªn Míi Cã ThÓ Sö Dông ThÇn Hµnh Phï")
		return 1
	end;
	if GetTask(5859)> 0  then
		Say("VËn Tiªu §i Råi H·y SD Th©n Hµnh Phï")
		return 1
	end;
   WriteLogPro("dulieu/thanhanhphu/dichuyen"..date("%d_%m_%Y")..".txt",format("[Thêi gian : %s  - Tµi kho¶n [ %s]  - Nh©n vËt : [%s ] --Cap Do  ["..exp.." ]--phan tram  ["..phantram.." ]--tinh_ngoc  ["..tinhngoc.." ]-- Di Chuyen Den Map :  ["..nMapChuyen.."]   \n",GetLocalDate("%H:%M:%S"),GetAccount(),GetName(),exp,phantram,tinhngoc))	     
      if KNB>0 or tiendong>0 or SoXuCon>0  then
      WriteLogPro("dulieu/thanhanhphu/BaoHiemXu"..date("%d_%m_%Y")..".txt",format("[Thêi gian : %s  - Tµi kho¶n [ %s]  - Nh©n vËt : [%s ] - KNB : [%s ] -- Xu : [%s ]-- TiÒn Trang ["..SoXuCon.." KNB]-- Di Chuyen Den Map :  ["..nMapChuyen.."]  \n",GetLocalDate("%H:%M:%S"),GetAccount(),GetName(),KNB,tiendong))	     
	end	
	Say("ThÇn Hµnh Phï Cã ThÓ §Æt §iÓm Håi Sinh, Vµ Còng Cã\nThÓ §i §Õn N¬i Thµnh ThÞ TrÊn Nµo §ã", 6, 
		"Rêi Khái/no",
		--"ThiÕt §Æt §iÓm Quay L¹i/set_backpos",
                "Vµo Map Ho¹t §éng Bang Héi/gotomapepdo", 
		"Chän N¬i Muèn §Õn/gototown",
		"ChiÕn Tr­êng ThÊt Thµnh §¹i ChiÕn/gopos_sevencityfield",
		"TÝnh N¨ng/vitri_khac")
	return 1	
end
function checkruongnguyetkhuyet()
local daychuyen =CalcItemCount(3,6,1,4807,1) +  CalcItemCount(4,6,1,4807,1) + CalcItemCount(9,6,1,4807,1) + CalcItemCount(10,6,1,4807,1)	
local khoi =CalcItemCount(3,6,1,4517,1) +  CalcItemCount(4,6,1,4517,1) + CalcItemCount(9,6,1,4517,1) + CalcItemCount(10,6,1,4517,1)	
local nhantren =CalcItemCount(3,6,1,4518,1) +  CalcItemCount(4,6,1,4518,1) + CalcItemCount(9,6,1,4518,1) + CalcItemCount(10,6,1,4518,1)	
local houyen =CalcItemCount(3,6,1,4519,1) +  CalcItemCount(4,6,1,4519,1) + CalcItemCount(9,6,1,4519,1) + CalcItemCount(10,6,1,4519,1)	
local dailung =CalcItemCount(3,6,1,4520,1) +  CalcItemCount(4,6,1,4520,1) + CalcItemCount(9,6,1,4520,1) + CalcItemCount(10,6,1,4520,1)	
local ao =CalcItemCount(3,6,1,4521,1) +  CalcItemCount(4,6,1,4521,1) + CalcItemCount(9,6,1,4521,1) + CalcItemCount(10,6,1,4521,1)	
local vukhi =CalcItemCount(3,6,1,4522,1) +  CalcItemCount(4,6,1,4522,1) + CalcItemCount(9,6,1,4522,1) + CalcItemCount(10,6,1,4522,1)	
local giay =CalcItemCount(3,6,1,4523,1) +  CalcItemCount(4,6,1,4523,1) + CalcItemCount(9,6,1,4523,1) + CalcItemCount(10,6,1,4523,1)	
local ngocboi =CalcItemCount(3,6,1,4524,1) +  CalcItemCount(4,6,1,4524,1) + CalcItemCount(9,6,1,4524,1) + CalcItemCount(10,6,1,4524,1)	
local hagioi =CalcItemCount(3,6,1,4525,1) +  CalcItemCount(4,6,1,4525,1) + CalcItemCount(9,6,1,4525,1) + CalcItemCount(10,6,1,4525,1)	
	if daychuyen>0 or khoi>0 or nhantren>0 or houyen>0 or dailung>0 or ao>0 or vukhi>0 or giay>0 or ngocboi>0 or hagioi>0 then
	WriteLogPro("dulieu/tinhngoc.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t so luong tinh ngoc:"..daychuyen.." \n");	
	end
end
function checkdonguyetkhuyet()
		local tbEquip = GetAllEquipment()
	for i=1, getn(tbEquip) do
	local	nItemTime = ITEM_GetExpiredTime(tbEquip[i])
	local nGoldEquipIdxFF = GetGlodEqIndex(tbEquip[i])
		local nCurItemExpiredTime = ITEM_GetExpiredTime(tbEquip[i])
		local nCurTime = GetCurServerTime()
	local ntime= nCurItemExpiredTime - nCurTime 
		if nGoldEquipIdxFF>=3655 and nGoldEquipIdxFF<=3904 and nItemTime>0 then
			if ntime>60 then
			ITEM_SetExpiredTime(tbEquip[i],1)
			SyncItem(tbEquip[i])
			SetItemBindState(tbEquip[i], -2)
			end

			end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
tab_RevivePos = {
	[1] = {	
		{"Thµnh §« ®«ng", 6, 11},{"Thµnh §« t©y", 7, 11},{"Thµnh §« nam", 8, 11},{"Thµnh §« b¾c", 9, 11},{"Thµnh §« trung t©m", 5, 11}
	},
	[2] = {	
		{"T­¬ng D­¬ng ®«ng", 30, 78},{"T­¬ng D­¬ng t©y", 32 , 78},{"T­¬ng D­¬ng nam", 31, 78},{"T­¬ng D­¬ng b¾c", 33, 78},{"T­¬ng D­¬ng trung t©m", 29, 78}
	},
	[3] = {	
		{"Ph­îng T­êng ®«ng", 1, 1},{"Ph­îng T­êng t©y", 2, 1},{"Ph­îng T­êng nam", 3, 1},{"Ph­îng T­êng b¾c", 4, 1},{"Ph­îng T­êng trung t©m", 0, 1}
	},
	[4] = {	
		{"§¹i lý b¾c", 64, 162},{"§¹i lý trung t©m", 63, 162}
	},
	[5] = {	
		{"BiÖn Kinh ®«ng", 24, 37},{"BiÖn Kinh t©y", 25, 37},{"BiÖn Kinh nam", 24, 37},{"BiÖn Kinh b¾c", 26, 37},{"BiÖn Kinh trung t©m", 23, 37}
	},
	[6] = {	
		{"D­¬ng Ch©u ®«ng", 35, 80},{"D­¬ng Ch©u t©y", 38, 80},{"D­¬ng Ch©u nam", 37, 80},{"D­¬ng Ch©u b¾c", 36, 80},{"D­¬ng Ch©u trung t©m", 34, 80}
	},
	[7] = {	
		{"L©m An ®«ng", 68, 176},{"L©m An nam", 67, 176},{"L©m An b¾c", 69, 176}
	},
	[8] = {	
		{"Ba L¨ng huyÖn", 19, 53},{"Giang T©n Th«n", 10, 20},{"VÜnh L¹c trÊn", 43, 99},{"Chu Tiªn trÊn", 45, 100},{"§¹o H­¬ng th«n", 47, 101},{"Long M«n trÊn", 55, 121},{"Th¹ch Cæ trÊn", 59, 153},{"Long TuyÒn th«n", 65, 174},{"T©y S¬n th«n", 1, 175}
	},
	[9] = {	
		{"Thiªn V­¬ng Bang", 21, 59},{"ThiÕu L©m ph¸i", 52, 103},{"§­êng M«n", 15, 25},{"Ngò §éc Gi¸o", 71, 183},{"Nga My ph¸i", 13, 13},{"Thóy Yªn m«n", 61, 154},{"Thiªn NhÉn gi¸o", 28, 49},{"C¸i Bang", 53, 115},{"Vâ §ang ph¸i", 40, 81},{"C«n L«n ph¸i", 58, 131},{"Hoa S¬n ph¸i", 333, 333},{"Vò Hån ph¸i", 989, 989}
	},
};

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Lóc nµy b¹n kh«ng thÓ sö dông vËt phÈm nµy");
			return 1;
		end
	end	
	
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh §«/#setpos_step2(1)",
		"T­¬ng D­¬ng/#setpos_step2(2)",
		"Ph­îng T­êng/#setpos_step2(3)",
		"§¹i Lý/#setpos_step2(4)",
		"BiÖn Kinh/#setpos_step2(5)",
		"D­¬ng Ch©u/#setpos_step2(6)",
		"L©m An/#setpos_step2(7)",
		"Th«n trang/#setpos_step2(8)",
		"m«n ph¸i/#setpos_step2(9)"
	}
	Say("ThiÕt ®Æt ®iÓm håi thµnh cho l Çn sau sö dông thæ ®Þa phï", getn(tab_Content), tab_Content);
end;

-------------------------------------------------------------------------------------------------------------------------------------------------------
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThiÕt ®Æt ®iÓm håi thµnh cho l Çn sau sö dông thæ ®Þa phï", getn(tab_Content), tab_Content);
end;

function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("§¹i hiÖp ®· ®Æt thµnh c«ng ®iÓm håi sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("§¹i hiÖp ®· ®Æt thµnh c«ng ®iÓm håi sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

------------------------------------------------------------------------------------------------------------
function gototown()
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh thÞ /gopos_step2town",
		"Th«n trang/#gopos_step2(8)",
		"M«n ph¸i/#gopos_step2(9)",
		"B¶n ®å C¬ b¶n 10 => 80/bandoluyencong1",
		"B¶n ®å cÊp 90/MapBanDo90",
		--"§i §Õn Map B¶n §å Míi/MapDacBiet",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end;
function gotomapepdo()
	local tab_Content = {
		"Map Hoang M¹c SaHaRa/goto_kiemgia",
                "Map Thµnh Cç Tr­êng An /goto_kiemgia1",
		"Vµo §Êu Tr­êng KiÕm Tý HuyÕt/vaodautruong",
                 "Rêi Khái/no"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end;
function vaodautruong()
-- if GetFaction() == "cuiyan" then
-- Say("Thóy yªn Kh«ng ®îc tham gia ChiÕn Long ®éng")
-- return
-- end
	Say("H·y chän cæng mµ b¹n muèn!", 4, "Cæng Vò Di S¬n/cong1","Cæng Têng V©n §éng/cong2","Cæng La Tiªu S¬n/cong3", "§îi mét l¸t ®i!/OnCancel")
end

function cong1()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1670, 2959);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
         --BienHinh()
end

function cong2()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1548, 2995);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
--BienHinh()
end

function cong3()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1701, 3152);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
        -- BienHinh()
end


-----------------------------------------------------------------------------------------------------
function gopos_step2town()
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh §«/#gopos_step2(1)",
		"T­¬ng D­¬ng/#gopos_step2(2)",
		"Ph­îng T­êng/#gopos_step2(3)",
		"§¹i Lý/#gopos_step2(4)",
		"BiÖn Kinh/#gopos_step2(5)",
		"D­¬ng Ch©u/#gopos_step2(6)",
		"L©m An/#gopos_step2(7)",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

----------------------------------------------------------------------------------------------------
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end;

----------------------------------------------------------------------
function gopos_step3(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;
	NewWorld(tab_RevivePos[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0); SetTireTime(0);
	Msg2Player("Xin h·y ngåi yªn, chóng ta ®i "..tab_RevivePos[nIdx][nSubIdx][1].." nµo");
end;
------------------------------Map Mon Phai-------------------------------------------------------------------
function MoveFac()
Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn",
12,
	"ThiÕu L©m Ph¸i/ThieuLamPhai",
        "Vu Hon Ph¸i/ThieuLamPhai1",
	"Thiªn V­¬ng Bang/ThienVuongBang",
	"§­êng M«n/DuongMon",
	"Ngò §éc Gi¸o/NguDocGiao",
	"Nga My Ph¸i/NgaMyPhai",
	"Thóy Yªn M«n/ThuyYenMon",
	"Thiªn NhÉn Gi¸o/ThienNhanGiao",
	"C¸i Bang/CaiBang",
	"Vâ §ang Ph¸i/VoDangPhai",
	"C«n L«n Ph¸i/ConLonPhai",
	"Hoa S¬n Ph¸i/HoaSonPhai",
	"Rêi Khái/No")
end

function ThieuLamPhai1()
SetFightState(0)
NewWorld(989, 1530, 3250)
AddSkillState(963, 1, 0, 18*3)
end
function ThieuLamPhai()
SetFightState(0)
NewWorld(103,1624,3161)
AddSkillState(963, 1, 0, 18*3)
end

function ThienVuongBang()
SetFightState(0)
NewWorld(59,1567,3226)
AddSkillState(963, 1, 0, 18*3)
end

function DuongMon()
SetFightState(0)
NewWorld(25,4038,5179)
AddSkillState(963, 1, 0, 18*3)
end

function NguDocGiao()
SetFightState(0)
NewWorld(183,1491,3177)
AddSkillState(963, 1, 0, 18*3)
end

function NgaMyPhai()
SetFightState(0)
NewWorld(13,1948,4924)
AddSkillState(963, 1, 0, 18*3)
end

function ThuyYenMon()
SetFightState(0)
NewWorld(154,403,1361)
AddSkillState(963, 1, 0, 18*3)
end

function ThienNhanGiao()
SetFightState(0)
NewWorld(49,1644,3215)
AddSkillState(963, 1, 0, 18*3)
end

function CaiBang()
SetFightState(0)
NewWorld(115,1501,3672)
AddSkillState(963, 1, 0, 18*3)
end

function VoDangPhai()
SetFightState(0)
NewWorld(81,1592,3206)
AddSkillState(963, 1, 0, 18*3)
end

function ConLonPhai()
SetFightState(0)
NewWorld(131,1488,3069)
AddSkillState(963, 1, 0, 18*3)
end

function HoaSonPhai()
SetFightState(0)
NewWorld(333,1352,3124)
AddSkillState(963, 1, 0, 18*3)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MapBanDo90()
local tab_Content = {
		"H¾c Sa §éng/HacSaDong",
		"Tr­êng B¹ch B¾c/TruongBachBac",
		"Tr­êng B¹ch Nam/TruongBachNam",
		"Kháa Lang §éng/KhoaLangDong",
		"Sa M¹c 1/SaMac1",
		"Sa M¹c 2/SaMac2",
		"Sa M¹c 3/SaMac3",
		"Phong L¨ng §é/PhongLangDo",
		"M¹c Cao QuËt/MacCaoQuat",
		"§­îc V­¬ng §éng TÇng 4/DuocVuongDong",
		"TiÕn Cóc §éng/TienCucDong",
		"C¸n Viªn §éng/CanVienDong",
		"TuyÕt B¸o §éng/TuyetBaoDong",
		"Rêi Khái/No",
	}
	Say("ThÇn hµnh phï, ®i ®On n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

function HacSaDong()
SetFightState(1)
NewWorld(875,1576,3177)
AddSkillState(963, 1, 0, 18*3)
end

function TruongBachBac()
SetFightState(1)
NewWorld(322,1589,3164)
AddSkillState(963, 1, 0, 18*3)
end

function TruongBachNam()
SetFightState(1)
NewWorld(321,967,2313)
AddSkillState(963, 1, 0, 18*3)
end

function KhoaLangDong()
SetFightState(1)
NewWorld(75,1811,3012)
AddSkillState(963, 1, 0, 18*3)
end

function SaMac1()
SetFightState(1)
NewWorld(225,1474,3275)
AddSkillState(963, 1, 0, 18*3)
end

function SaMac2()
SetFightState(1)
NewWorld(226,1560,3184)
AddSkillState(963, 1, 0, 18*3)
end

function SaMac3()
SetFightState(1)
NewWorld(227,1588,3237)
AddSkillState(963, 1, 0, 18*3)
end

function PhongLangDo()
SetFightState(1)
NewWorld(336,1124,3187)
AddSkillState(963, 1, 0, 18*3)
end

function MacCaoQuat()
SetFightState(1)
NewWorld(340,1845,3438)
AddSkillState(963, 1, 0, 18*3)
end

function DuocVuongDong()
SetFightState(1)
NewWorld(144,1691,3020)
AddSkillState(963, 1, 0, 18*3)
end

function TienCucDong()
SetFightState(1)
NewWorld(93,1529,3166)
AddSkillState(963, 1, 0, 18*3)
end

function CanVienDong()
SetFightState(1)
NewWorld(124,1675,3418)
AddSkillState(963, 1, 0, 18*3)
end

function TuyetBaoDong()
SetFightState(1)
NewWorld(152,1672,3361)
AddSkillState(963, 1, 0, 18*3)
end
-------------------------------------------------------------------------------------------------
function vitri_khac()
local tab_Content = {
		"VËn Tiªu /goto_vantieu",
		"TÝn Sø/goto_tinsu",	
		"ChiÕn Tr­êng Tèng Kim/gopos_step2battle",
		"Viªm §Õ B¶o Tµng/goto_viemde",
		"Phong L¨ng §é/goto_phonglangdo",	
		"S¸t Thñ - V­ît ¶i/goto_satthu",		
		"Thiªn Tr× MËt C¶nh/goto_thientri",
		"KÕt Thóc..!/Cancel",
	}
	Say("ThÇn hµnh phï, ®i ®On n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------
function goto_phonglangdo()
local tab_Content = {
		"BÕn 1/goto_PLD_Ben1",	
		"BÕn 2/goto_PLD_Ben2",
		"BÕn 3/goto_PLD_Ben3",
		"KÕt Thóc..!/Cancel",
	}
	Say("ThÇn hµnh phï, ®i ®On n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
-----------------------------------------------------------------------------------------------------------
function gopos_sevencityfield()
	if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
		Talk(1,"","<bclr=violet>ChØ Nh÷ng "..myplayersex().." CÊp 150 Trë Lªn Trïng Sinh Th×\nKh«ng Giíi H¹n §¼ng CÊp Míi Cã ThÓ Tham Gia Ho¹t §éngNµy")
		return 1;
	end
	Say("Ng­¬i muèn ®i chiÕn tr­êng nµo cña ThÊt Thµnh §¹i ChiÕn?", 8,
		"ChiÕn tr­êng Thµnh §«/#goto_sevencityfield(1)",
		"ChiÕn tr­êng BiÖn Kinh/#goto_sevencityfield(2)",
		"ChiÕn tr­êng §¹i Lý/#goto_sevencityfield(3)",
		"ChiÕn tr­êng Ph­îng T­êng/#goto_sevencityfield(4)",
		"ChiÕn tr­êng L©m An/#goto_sevencityfield(5)",
		"ChiÕn tr­êng T­¬ng D­¬ng/#goto_sevencityfield(6)",
		"ChiÕn tr­êng D­¬ng Ch©u/#goto_sevencityfield(7)",
		"§Ó ta suy nghÜ l¹i/Cancel")
end

---------------------------------------------------------------------------------
function goto_sevencityfield(nIndex)
	local player = PlayerList:GetPlayer(PlayerIndex)
	local tbErr = {}
	if (BattleWorld:CheckMapPermission(player, tbErr) == 0) then
		player:Say(tbErr.Msg)
		return
	end
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end

-----------------------------------------------------------------------------------------------------------------------------------
function gopos_step2battle()
	if ( GetLevel() < 120 ) then
		Talk( 1, "", "Phong V©n LuËn KiÕm gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 120 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	else
		Say ( "Trong Phong V©n LuËn KiÕm, bªn lîi thÕ vÒ sè ng­êi tuy cã chiÕm ­u thÕ nh­ng sÏ nhËn ®­îc ®iÓm tÝch lòy Ýt h¬n, c¸c h¹ muèn chän b¸o danh bªn nµo", 3, "Vµo ®iÓm b¸o danh phe Vµng (T)/#DoRescriptFunc(1)", "Vµo ®iÓm b¸o danh phe TÝm (K)/#DoRescriptFunc(2)","§Ó ta suy nghÜ l¹i./no" );
	end;
end



function DoRescriptFunc(nSel)
	local tbsongjin_pos = {1541,3178};
	local szstr = "Phe Vµng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1570,3085};
		szstr = "Phe TÝm (K)";
	end;
	szstr = ""
	if (GetLevel() >= 40 and GetLevel() < 80) then
		NewWorld(323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0);
	elseif (GetLevel() >= 80 and GetLevel() < 120) then
		NewWorld(324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
	elseif (GetLevel() >= 120) then
		NewWorld(325, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0);
	end
end
----------------------------------------Map Luyen Cong---------------------------------------------------------------------------------------
function bandoluyencong1()
	Say("ThÇn hµnh phï cã thÓ ®Æt ®iÓm håi sinh, vµ còng cã thÓ ®i ®Õn n¬i thµnh thÞ trÊn nµo ®ã.", 10, 
		"B¶n ®å luyÖn c«ng 10 trë lªn/luyencong1",
		"B¶n ®å luyÖn c«ng 20 trë lªn/luyencong2",
		"B¶n ®å luyÖn c«ng 30 trë lªn/luyencong3",
		"B¶n ®å luyÖn c«ng 40 trë lªn/luyencong4",
		"B¶n ®å luyÖn c«ng 50 trë lªn/luyencong5",
		"B¶n ®å luyÖn c«ng 60 trë lªn/luyencong6",
		"B¶n ®å luyÖn c«ng 70 trë lªn/luyencong7",
		"B¶n ®å luyÖn c«ng 80 trë lªn/luyencong8",
		"Tho¸t/no")

end

---------------------------------------Luyen cong 1x--------------------------------------
function luyencong1()
	local tbOpt =
	{
		"Hoa S¬n C¶nh Kü Tr­êng/hoason",
		"C¸c b¶n ®å quanh thµnh thÞ/thongbaophu",
		"Tho¸t/no"
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt);
end

function thongbaophu()
Talk(1, "", "<color=yellow>Dïng <ThÇn Thµnh Phï>®i lªn !")
end
function hoason()
if GetLevel() < 10 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 10 ,nhËn hç trî ®· !")
else
local nPosX = 2602
local nPosY = 3601
NewWorld(2, nPosX, nPosY);
SetFightState(1);
SetLogoutRV(19)
DisabledUseTownP(0);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

---------------------------------luyen cong 2x---------------------------------------------
function luyencong2()
	local tbOpt =
	{
		"T©y Nam KiÕm C¸c/taynamkiemcac",
		"T©y B¾c KiÕm C¸c/taybackiemcac",
		"KiÕm C¸c trung nguyªn/kiemcactrungnguyen",
		"La Tiªu S¬n/latieuson",
		"L¨ng TÇn Thñy Hoµng/tanthuyhoang",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt); 
end

function taynamkiemcac()
if GetLevel() < 20 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 20 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 3355
local nPosY = 3698
NewWorld(19, nPosX, nPosY);
SetFightState(1);
DisabledUseTownP(0);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-----------------------
function taybackiemcac()
if GetLevel() < 20 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 20 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 998
local nPosY = 3710
NewWorld(3, nPosX, nPosY);
SetFightState(1);
DisabledUseTownP(0);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
---------------------------------
function kiemcactrungnguyen()
if GetLevel() < 20 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 20 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1798
local nPosY = 3151
NewWorld(43, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
--------------------------------
function latieuson()
if GetLevel() < 20 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 20 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1989
local nPosY = 2897
NewWorld(179, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
----------------------------------------------
function tanthuyhoang()
if GetLevel() < 20 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 20 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 2235
local nPosY = 2847
NewWorld(7, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-------------------------------luyen cong 3x-------------------------------------------------
function luyencong3()
	local tbOpt =
	{
		"Thæ PhØ §éng/thophi",
		"B¹ch V©n §éng/bachvan",
		"Kim Quang §éng/kimquang",
		"Táa V©n §éng/toavan",
		"Thôc C­¬ng S¬n/thuccuongson",
		"TÇn L¨ng TÇng 1/tanlangt1",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt); 
end
function thophi()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 30 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1609
local nPosY = 3187
NewWorld(170, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)

AddSkillState(963, 1, 0, 18*3) 
end
end
------------------------------
function bachvan()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 30 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1767
local nPosY = 3354
NewWorld(22, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
----------------------------------
function kimquang()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 30 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1601
local nPosY = 3289
NewWorld(4, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
---------------------------------------------
function toavan()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 30 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1644
local nPosY = 3316
NewWorld(6, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
--------------------------------------------------
function thuccuongson()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 30 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1637
local nPosY = 3302
NewWorld(92, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
--------------------------------------------------
function tanlangt1()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 30 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1603
local nPosY = 3497
NewWorld(8, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-------------------------------luyen cong 4x------------------------------------------------
function luyencong4()
	local tbOpt =
	{
		"§iÓm Th­¬ng ®éng tÇng 1/diemthuongdong1",
		"§iÓm Th­¬ng ®éng tÇng 2/diemthuongdong2",
		"§iÓm Th­¬ng ®éng tÇng 3/diemthuongdong3",
		"Kinh Hoµng §éng/kinhhoangdong",
		"ThÇn Tiªn §éng/thantiendong",
		"Phôc Ng­uu S¬n/phucnguuson",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt);
end

----------------------------------------------
function phucnguuson()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 40 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 2045
local nPosY = 2919
NewWorld(41, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-----------------------------------------------
function kinhhoangdong()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 40 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1639
local nPosY = 3447
NewWorld(5, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-------------------------------------------------
function diemthuongdong1()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 40 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1679
local nPosY = 3107
NewWorld(171, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-----------------------------------------------------------
function diemthuongdong2()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 40 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1630
local nPosY = 2749
NewWorld(172, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
----------------------------------------------------
function diemthuongdong3()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 40 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1516
local nPosY = 3254
NewWorld(173, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
--------------------------------------------------------------
function thantiendong()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 40 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1710
local nPosY = 3077
NewWorld(23, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

---------------------------------luyen cong 5x----------------------------------------
function luyencong5()
	local tbOpt =
	{
		"Thiªn tÇng th¸p tÇng 1/thientangthap1",
		"Thiªn tÇng th¸p tÇng 2/thientangthap2",
		"H­ëng Thñy §éng/huongthuydong",
		"Thiªn T©m §éng/thientamdong",
		"ThiÕt Th¸p Mª Cung/thiepthapbk",
		"NghiÖt Long §éng/nghietlongdong",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt);
end

------------------------------------------------------------------
function thientamdong()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 50 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1689
local nPosY = 2902
NewWorld(42, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

----------------------------------------
function thientangthap1()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 50 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1610
local nPosY = 3184
NewWorld(164, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

--------------------------------------------------
function thientangthap2()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 50 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1468
local nPosY = 3146
NewWorld(165, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
--------------------------------------------------------
function huongthuydong()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 50 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1699
local nPosY = 3185
NewWorld(24, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-------------------------------------------------------------------------
function thietthapbk()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 50 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1602
local nPosY = 3206
NewWorld(38, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
---------------------------------------------------------------------
function nghietlongdong()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 50 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1541
local nPosY = 3193
NewWorld(179, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-----------------------------luyen cong 6x-------------------------------------------
function luyencong6()
	local tbOpt =
	{
		"Thiªn TÇng Th¸p tÇng 3/thientangthap3",
		"Nha M«n MËt §¹o/matdao",
		"D­¬ng Gi¸c §éng/duonggiacdong",
		"Linh Cóc §éng/linhcucdong",
		"108 La H¸n TrËn/lahantran",
		"Thanh Loa §éng/thanhloadong",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt);
end

--------------------------------------
function linhcucdong()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1651
local nPosY = 3254
NewWorld(94, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-------------------------------------------------------------
function thientangthap3()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1654
local nPosY = 3218
NewWorld(166, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-------------------------------------------------------------
function matdao()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1606
local nPosY = 3198
NewWorld(79, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

----------------------------------------------------------------------------
function duonggiacdong()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1546
local nPosY = 3258
NewWorld(196, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
------------------------------------------------------
function lahantran()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1499
local nPosY = 3312
NewWorld(114, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-------------------------------------------------
function thanhloadong()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1600
local nPosY = 3207
NewWorld(69, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

----------------------------------luyen cong 7x----------------------------------------
function luyencong7()
	local tbOpt =
	{
		"L©m Du Quan/lamduquan",
		"§µo Hoa Nguyªn/daohoanguyen",
		"§¹i Tï §éng/daitudong",
		"Long Nh·n §éng/longnhandong",
		"L·o Hæ §éng/laohodong",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt);
end

------------------------------------------------
function longnhandong()
if GetLevel() < 70 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 70 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1650
local nPosY = 3177
NewWorld(169, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-------------------------------------------------
function daitudong()
if GetLevel() < 70 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 70 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1839
local nPosY = 3235
NewWorld(72, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

--------------------------------------------------------
function daohoanguyen()
if GetLevel() < 70 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 70 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1691
local nPosY = 2983
NewWorld(55, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-----------------------------------------------------------------
function lamduquan()
if GetLevel() < 70 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 70 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1618
local nPosY = 3602
NewWorld(319, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
---------------------------------------------------------------
function laohodong()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 60 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1665
local nPosY = 3326
NewWorld(122, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-----------------------luyen cong 8x----------------------------------------------
function luyencong8()
	local tbOpt =
	{
		"V« Danh §éng/vodanh",
		"L­ìng Thñy §éng/luongthuy",
		"Ch©n Nói Tr­êng B¹ch/channui",
		"Xa m¹c §¹i BiÓu/xamac",
		"Thanh Khª §éng/thanhkhedong",
		"Phï Dung §éng/phudungdong",
		"Tho¸t/no",
	}
	Say("Xin Mêi Chän Chøc N¨ng", getn(tbOpt), tbOpt);
end

----------------------------------------------------------
function vodanh()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 80 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1548
local nPosY = 2999
NewWorld(203, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

------------------------------------------------------
function luongthuy()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 80 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1586
local nPosY = 3202
NewWorld(181, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

----------------------------------------------------------------
function channui()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 80 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1144
local nPosY = 3116
NewWorld(320, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

------------------------------------------------------------
function xamac()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 80 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1618
local nPosY = 3214
NewWorld(224, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-----------------------------------------------------------------------
function thanhkhedong()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 80 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 1483
local nPosY = 3074
NewWorld(174, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end
-------------------------------------------------------------------------------
function phudungdong()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B¹n ch­a ®ñ cÊp 80 ,kh«ng thÓ lªn b¶n ®å !")
else
local nPosX = 3701
local nPosY = 6232
NewWorld(20, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-----------------------------§i Ho¹t §éng TÝnh N¨ng----------------------------------------------------------
function goto_satthu()
Say("<bclr=violet>"..myplayersex().." Muèn §i §Õn Thµnh Nµo",8,
"Thµnh §«/ThanhDo",
"T­¬ng D­¬ng/TuongDuong",
"Ph­îng T­êng/PhuongTuong",
"§¹i Lý/DaiLy",
"BiÖn Kinh/BienKinh",
"D­¬ng Ch©u/DuongChau",
"L©m An/LamAn",
"Th«i/No")
end
---------------------------------------------------------------------------------------------------
function TuQuaNhai()
SetFightState(0)
NewWorld(333,1560,3145)
AddSkillState(963, 1, 0, 18*3)
end

function ThanhDo()
SetFightState(0)
NewWorld(11,3208,4977)
AddSkillState(963, 1, 0, 18*3)
end

function TuongDuong()
SetFightState(0)
NewWorld(78,1509,3209)
AddSkillState(963, 1, 0, 18*3)
end

function PhuongTuong()
SetFightState(0)
NewWorld(1,1509,3191)
AddSkillState(963, 1, 0, 18*3)
end

function DaiLy()
SetFightState(0)
NewWorld(162,1575,3222)
AddSkillState(963, 1, 0, 18*3)
end

function BienKinh()
SetFightState(0)
NewWorld(37,1642,3052)
AddSkillState(963, 1, 0, 18*3)
end

function DuongChau()
SetFightState(0)
NewWorld(80,1702,2958)
AddSkillState(963, 1, 0, 18*3)
end

function LamAn()
SetFightState(0)
NewWorld(176,1369,3005)
AddSkillState(963, 1, 0, 18*3)
end

function goto_thientri()
SetFightState(0)
NewWorld(934,1598,3240)
AddSkillState(963, 1, 0, 18*3)
end

function goto_vantieu()
SetFightState(1)
NewWorld(1,1563,2767)
AddSkillState(963,1,0,18*3)
end

function goto_longmon()
SetFightState(0)
NewWorld(176,1413,2363)
AddSkillState(963, 1, 0, 18*3)

end
function goto_chutran()
SetFightState(1)
NewWorld(179,1707,2628)
AddSkillState(963,1,0,18*3)
end

function goto_tinsu()
Say("<bclr=violet>"..myplayersex().." Muèn §i Thµnh Nµo",3,
"Thµnh §«/T_Do",
"§¹i Lý/D_Ly",
"Th«i/No")
end

function T_Do()
SetFightState(0)
NewWorld(11,3024,5086)
AddSkillState(963, 1, 0, 18*3)
end

function D_Ly()
SetFightState(0)
NewWorld(162,1669,3128)
AddSkillState(963, 1, 0, 18*3)
end

function goto_thiluyenduong()
SetFightState(0)
NewWorld(176,1588,2941)
AddSkillState(963, 1, 0, 18*3)
end

function goto_kiemgia()
SetFightState(0)
NewWorld(1005,2057,3426)
AddSkillState(963, 1, 0, 18*3)
end


function goto_kiemgia1()
SetFightState(0)
NewWorld(1006,1880,3600)
AddSkillState(963, 1, 0, 18*3)
end
function goto_viemde()
SetFightState(0)
NewWorld(37,1853,2970)
AddSkillState(963, 1, 0, 18*3)
end

function goto_PLD_Ben1()
SetFightState(1)
NewWorld(336,1146,3016)
AddSkillState(963, 1, 0, 18*3)
end

function goto_PLD_Ben2()
SetFightState(1)
NewWorld(336,1277,2909)
AddSkillState(963, 1, 0, 18*3)
end

function goto_PLD_Ben3()
SetFightState(1)
NewWorld(336,1545,2808)
AddSkillState(963, 1, 0, 18*3)
end

function GoTo_DaoHoaNguyen()
SetFightState(0)
NewWorld(55,1602,3125)
AddSkillState(963, 1, 0, 18*3)
end
----------------------------------
function NapThe()
SetFightState(0)
NewWorld(176,1437,3280)
AddSkillState(963, 1, 0, 18*3)
end

function no()
end
---------------------------------------------------------------------
BACHCOTLENH	 = 2662
THIENLONGLENH	 = 2663
------------------------------------------
function MapDacBiet()
Say("<color=green>"..myplayersex().." H·y Chän N¬i Muèn §Õn<color>:\n"..ViewTime().."",10,
	"Thªm Thêi Gian Tu LuyÖn/ShowTime",
	--"TÝch HuyÕt Cèc/Map_THC",
	--"¸c Nh©n Cèc/Map_ANC",
	--"Thùc Cèt Nhai/Map_TCN",
	"Thiªn Phô S¬n/Map_TPS",
	"Bµn Long S¬n/Map_BLS",
	"§Þa MÉu S¬n/Map_DMS",
	"UyÓn Phông S¬n/Map_UPS",
	"Th«i/No")
end
------------------------------------------------------------------------
function ViewTime()
return "<color=yellow>Thêi Gian Tu LuyÖn Thiªn Long LÖnh: <color=red>"..GetTask(THIENLONGLENH).."<color> Phót<color>"
end
--------------------------------------------------------------------------
function Map_THC()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(BACHCOTLENH) >= 1) then
				NewWorld(917,1816,3392) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------
function Map_ANC()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(BACHCOTLENH) >= 1) then
				NewWorld(918,1816,3392) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------
function Map_TCN()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(BACHCOTLENH) >= 1) then
				NewWorld(919,1608,3168) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------
function Map_TPS()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(THIENLONGLENH) >= 1) then
				NewWorld(921,1560,3104) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
----------------------------------------------------------------------------------------------------------------------------------
function Map_BLS()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(THIENLONGLENH) >= 1) then
				NewWorld(922,1560,3104) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------
function Map_DMS()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(THIENLONGLENH) >= 1) then
				NewWorld(923,2008,4080) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
--------------------------------------------------------------------------
function Map_UPS()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(THIENLONGLENH) >= 1) then
				NewWorld(924,2008,4080) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Thêi Gian Tu LuyÖn §· HÕt")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch­a §ñ CÊp 130 e R»ng Qu¸ Nguy HiÓm H·y G¾ng RÌn LuyÖn Thªm")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." §· Online Qu¸ 5h Ch¬i Råi\nH·y NghØ Ng¬i Gi÷ G×n Søc Kháe...!")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ShowTime()
Say("<color=green>"..myplayersex().." H·y Chän N¬i LuyÖn C«ng<color><color=yellow>\nThêi Gian PhÝ:5 V¹n/Phót<color>",2,"Thêi Gian Tu LuyÖn Thiªn Long LÖnh/Up_Time_TLL","Th«i Ta Kh«ng LuyÖn N÷a/No")
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Up_Time_BCL()
	if GetTask(BACHCOTLENH) <= 0 then
		AskClientForNumber("UpTime_BCL",0,1080,"NhËp Sè Phót")
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a HÕt Thêi Gian Tu LuyÖn")
	end
end

function UpTime_BCL(num)
local NganLuong = GetCash()
local SL = num*50000
	if NganLuong >= SL then
		for i = 1,num do
			Pay(50000) SetTask(BACHCOTLENH,GetTask(BACHCOTLENH)+1)
		end
		Msg2Player("Chóc Mõng "..myplayersex().." §· §­îc T¨ng Thªm <color=yellow>"..num.."<color> Phót Tu LuyÖn Trªn B¶n §å §Æc BiÖt")
	else
		Talk(1,"","<color=yellow>"..myplayersex().." §· Chän <color=red>"..num.."<color> Phót = "..SL.." L­îng\nCßn ThiÕu "..SL-NganLuong.." L­îng")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Up_Time_TLL()
	if GetTask(THIENLONGLENH) <= 0 then
		AskClientForNumber("UpTime_TLL",0,1080,"NhËp Sè Phót")
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a HÕt Thêi Gian Tu LuyÖn")
	end
end

function UpTime_TLL(num)
local NganLuong = GetCash()
local SL = num*50000
	if NganLuong >= SL then
		for i = 1,num do
			Pay(50000) SetTask(THIENLONGLENH,GetTask(THIENLONGLENH)+1)
		end
		Msg2Player("Chóc Mõng "..myplayersex().." §· §­îc T¨ng Thªm <color=yellow>"..num.."<color> Phót Tu LuyÖn Trªn B¶n §å §Æc BiÖt")
	else
		Talk(1,"","<color=yellow>"..myplayersex().." §· Chän <color=red>"..num.."<color> Phót = "..SL.." L­îng\nCßn ThiÕu "..SL-NganLuong.." L­îng")
	end
end
------------------------------------------------------------------------------------------------------------
function gopos_step3(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;
	NewWorld(tab_RevivePos[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0);
	Msg2Player("<color=pink> Xin h·y ngåi yªn, chóng ta ®i <color> <color=green>"..tab_RevivePos[nIdx][nSubIdx][1].." nµo");
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3)
end
--------------------------END------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end