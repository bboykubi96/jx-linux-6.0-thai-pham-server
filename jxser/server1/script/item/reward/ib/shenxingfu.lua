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
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		return 1
	end
	local nMap,_,_ = GetWorldPos();
	local listmapband = {1002,867,527,535,337,338,339,378,379,380,323,324,325,464,465,466,467,468,469,470,471,342,336,595,900}
	for k=1,getn(listmapband) do 
		if nMap == listmapband[k] then 
			Msg2Player("Khu V�c ��t Bi�t Kh�ng Th� S� D�ng Th�n H�nh Ph� T�i N�i ��y.");
			return 1;
		end
	end

	if (GetLevel() < 5) then
		Say("��ng C�p 5 Tr� L�n M�i C� Th� S� D�ng Th�n H�nh Ph�")
		return 1
	end;
	if GetTask(5859)> 0  then
		Say("V�n Ti�u �i R�i H�y SD Th�n H�nh Ph�")
		return 1
	end;
   WriteLogPro("dulieu/thanhanhphu/dichuyen"..date("%d_%m_%Y")..".txt",format("[Th�i gian : %s  - T�i kho�n [ %s]  - Nh�n v�t : [%s ] --Cap Do  ["..exp.." ]--phan tram  ["..phantram.." ]--tinh_ngoc  ["..tinhngoc.." ]-- Di Chuyen Den Map :  ["..nMapChuyen.."]   \n",GetLocalDate("%H:%M:%S"),GetAccount(),GetName(),exp,phantram,tinhngoc))	     
      if KNB>0 or tiendong>0 or SoXuCon>0  then
      WriteLogPro("dulieu/thanhanhphu/BaoHiemXu"..date("%d_%m_%Y")..".txt",format("[Th�i gian : %s  - T�i kho�n [ %s]  - Nh�n v�t : [%s ] - KNB : [%s ] -- Xu : [%s ]-- Ti�n Trang ["..SoXuCon.." KNB]-- Di Chuyen Den Map :  ["..nMapChuyen.."]  \n",GetLocalDate("%H:%M:%S"),GetAccount(),GetName(),KNB,tiendong))	     
	end	
	Say("Th�n H�nh Ph� C� Th� ��t �i�m H�i Sinh, V� C�ng C�\nTh� �i ��n N�i Th�nh Th� Tr�n N�o ��", 6, 
		"R�i Kh�i/no",
		--"Thi�t ��t �i�m Quay L�i/set_backpos",
                "V�o Map Ho�t ��ng Bang H�i/gotomapepdo", 
		"Ch�n N�i Mu�n ��n/gototown",
		"Chi�n Tr��ng Th�t Th�nh ��i Chi�n/gopos_sevencityfield",
		"T�nh N�ng/vitri_khac")
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
		{"Th�nh �� ��ng", 6, 11},{"Th�nh �� t�y", 7, 11},{"Th�nh �� nam", 8, 11},{"Th�nh �� b�c", 9, 11},{"Th�nh �� trung t�m", 5, 11}
	},
	[2] = {	
		{"T��ng D��ng ��ng", 30, 78},{"T��ng D��ng t�y", 32 , 78},{"T��ng D��ng nam", 31, 78},{"T��ng D��ng b�c", 33, 78},{"T��ng D��ng trung t�m", 29, 78}
	},
	[3] = {	
		{"Ph��ng T��ng ��ng", 1, 1},{"Ph��ng T��ng t�y", 2, 1},{"Ph��ng T��ng nam", 3, 1},{"Ph��ng T��ng b�c", 4, 1},{"Ph��ng T��ng trung t�m", 0, 1}
	},
	[4] = {	
		{"��i l� b�c", 64, 162},{"��i l� trung t�m", 63, 162}
	},
	[5] = {	
		{"Bi�n Kinh ��ng", 24, 37},{"Bi�n Kinh t�y", 25, 37},{"Bi�n Kinh nam", 24, 37},{"Bi�n Kinh b�c", 26, 37},{"Bi�n Kinh trung t�m", 23, 37}
	},
	[6] = {	
		{"D��ng Ch�u ��ng", 35, 80},{"D��ng Ch�u t�y", 38, 80},{"D��ng Ch�u nam", 37, 80},{"D��ng Ch�u b�c", 36, 80},{"D��ng Ch�u trung t�m", 34, 80}
	},
	[7] = {	
		{"L�m An ��ng", 68, 176},{"L�m An nam", 67, 176},{"L�m An b�c", 69, 176}
	},
	[8] = {	
		{"Ba L�ng huy�n", 19, 53},{"Giang T�n Th�n", 10, 20},{"V�nh L�c tr�n", 43, 99},{"Chu Ti�n tr�n", 45, 100},{"��o H��ng th�n", 47, 101},{"Long M�n tr�n", 55, 121},{"Th�ch C� tr�n", 59, 153},{"Long Tuy�n th�n", 65, 174},{"T�y S�n th�n", 1, 175}
	},
	[9] = {	
		{"Thi�n V��ng Bang", 21, 59},{"Thi�u L�m ph�i", 52, 103},{"���ng M�n", 15, 25},{"Ng� ��c Gi�o", 71, 183},{"Nga My ph�i", 13, 13},{"Th�y Y�n m�n", 61, 154},{"Thi�n Nh�n gi�o", 28, 49},{"C�i Bang", 53, 115},{"V� �ang ph�i", 40, 81},{"C�n L�n ph�i", 58, 131},{"Hoa S�n ph�i", 333, 333},{"V� H�n ph�i", 989, 989}
	},
};

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("L�c n�y b�n kh�ng th� s� d�ng v�t ph�m n�y");
			return 1;
		end
	end	
	
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#setpos_step2(1)",
		"T��ng D��ng/#setpos_step2(2)",
		"Ph��ng T��ng/#setpos_step2(3)",
		"��i L�/#setpos_step2(4)",
		"Bi�n Kinh/#setpos_step2(5)",
		"D��ng Ch�u/#setpos_step2(6)",
		"L�m An/#setpos_step2(7)",
		"Th�n trang/#setpos_step2(8)",
		"m�n ph�i/#setpos_step2(9)"
	}
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

-------------------------------------------------------------------------------------------------------------------------------------------------------
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

------------------------------------------------------------------------------------------------------------
function gototown()
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh th� /gopos_step2town",
		"Th�n trang/#gopos_step2(8)",
		"M�n ph�i/#gopos_step2(9)",
		"B�n �� C� b�n 10 => 80/bandoluyencong1",
		"B�n �� c�p 90/MapBanDo90",
		--"�i ��n Map B�n �� M�i/MapDacBiet",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;
function gotomapepdo()
	local tab_Content = {
		"Map Hoang M�c SaHaRa/goto_kiemgia",
                "Map Th�nh C� Tr��ng An /goto_kiemgia1",
		"V�o ��u Tr��ng Ki�m T� Huy�t/vaodautruong",
                 "R�i Kh�i/no"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;
function vaodautruong()
-- if GetFaction() == "cuiyan" then
-- Say("Th�y y�n Kh�ng ��c tham gia Chi�n Long ��ng")
-- return
-- end
	Say("H�y ch�n c�ng m� b�n mu�n!", 4, "C�ng V� Di S�n/cong1","C�ng T�ng V�n ��ng/cong2","C�ng La Ti�u S�n/cong3", "��i m�t l�t �i!/OnCancel")
end

function cong1()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1670, 2959);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
         --BienHinh()
end

function cong2()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1548, 2995);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
--BienHinh()
end

function cong3()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1701, 3152);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
        -- BienHinh()
end


-----------------------------------------------------------------------------------------------------
function gopos_step2town()
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#gopos_step2(1)",
		"T��ng D��ng/#gopos_step2(2)",
		"Ph��ng T��ng/#gopos_step2(3)",
		"��i L�/#gopos_step2(4)",
		"Bi�n Kinh/#gopos_step2(5)",
		"D��ng Ch�u/#gopos_step2(6)",
		"L�m An/#gopos_step2(7)",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

----------------------------------------------------------------------------------------------------
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
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
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i "..tab_RevivePos[nIdx][nSubIdx][1].." n�o");
end;
------------------------------Map Mon Phai-------------------------------------------------------------------
function MoveFac()
Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n",
12,
	"Thi�u L�m Ph�i/ThieuLamPhai",
        "Vu Hon Ph�i/ThieuLamPhai1",
	"Thi�n V��ng Bang/ThienVuongBang",
	"���ng M�n/DuongMon",
	"Ng� ��c Gi�o/NguDocGiao",
	"Nga My Ph�i/NgaMyPhai",
	"Th�y Y�n M�n/ThuyYenMon",
	"Thi�n Nh�n Gi�o/ThienNhanGiao",
	"C�i Bang/CaiBang",
	"V� �ang Ph�i/VoDangPhai",
	"C�n L�n Ph�i/ConLonPhai",
	"Hoa S�n Ph�i/HoaSonPhai",
	"R�i Kh�i/No")
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
		"H�c Sa ��ng/HacSaDong",
		"Tr��ng B�ch B�c/TruongBachBac",
		"Tr��ng B�ch Nam/TruongBachNam",
		"Kh�a Lang ��ng/KhoaLangDong",
		"Sa M�c 1/SaMac1",
		"Sa M�c 2/SaMac2",
		"Sa M�c 3/SaMac3",
		"Phong L�ng ��/PhongLangDo",
		"M�c Cao Qu�t/MacCaoQuat",
		"���c V��ng ��ng T�ng 4/DuocVuongDong",
		"Ti�n C�c ��ng/TienCucDong",
		"C�n Vi�n ��ng/CanVienDong",
		"Tuy�t B�o ��ng/TuyetBaoDong",
		"R�i Kh�i/No",
	}
	Say("Th�n h�nh ph�, �i �On n�i ng��i mu�n.", getn(tab_Content), tab_Content);
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
		"V�n Ti�u /goto_vantieu",
		"T�n S�/goto_tinsu",	
		"Chi�n Tr��ng T�ng Kim/gopos_step2battle",
		"Vi�m �� B�o T�ng/goto_viemde",
		"Phong L�ng ��/goto_phonglangdo",	
		"S�t Th� - V��t �i/goto_satthu",		
		"Thi�n Tr� M�t C�nh/goto_thientri",
		"K�t Th�c..!/Cancel",
	}
	Say("Th�n h�nh ph�, �i �On n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------
function goto_phonglangdo()
local tab_Content = {
		"B�n 1/goto_PLD_Ben1",	
		"B�n 2/goto_PLD_Ben2",
		"B�n 3/goto_PLD_Ben3",
		"K�t Th�c..!/Cancel",
	}
	Say("Th�n h�nh ph�, �i �On n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
-----------------------------------------------------------------------------------------------------------
function gopos_sevencityfield()
	if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
		Talk(1,"","<bclr=violet>Ch� Nh�ng "..myplayersex().." C�p 150 Tr� L�n Tr�ng Sinh Th�\nKh�ng Gi�i H�n ��ng C�p M�i C� Th� Tham Gia Ho�t ��ngN�y")
		return 1;
	end
	Say("Ng��i mu�n �i chi�n tr��ng n�o c�a Th�t Th�nh ��i Chi�n?", 8,
		"Chi�n tr��ng Th�nh ��/#goto_sevencityfield(1)",
		"Chi�n tr��ng Bi�n Kinh/#goto_sevencityfield(2)",
		"Chi�n tr��ng ��i L�/#goto_sevencityfield(3)",
		"Chi�n tr��ng Ph��ng T��ng/#goto_sevencityfield(4)",
		"Chi�n tr��ng L�m An/#goto_sevencityfield(5)",
		"Chi�n tr��ng T��ng D��ng/#goto_sevencityfield(6)",
		"Chi�n tr��ng D��ng Ch�u/#goto_sevencityfield(7)",
		"�� ta suy ngh� l�i/Cancel")
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
		Talk( 1, "", "Phong V�n Lu�n Ki�m gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 120 h�y v� luy�n th�m r�i h�y t�nh." );
	else
		Say ( "Trong Phong V�n Lu�n Ki�m, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o", 3, "V�o �i�m b�o danh phe V�ng (T)/#DoRescriptFunc(1)", "V�o �i�m b�o danh phe T�m (K)/#DoRescriptFunc(2)","�� ta suy ngh� l�i./no" );
	end;
end



function DoRescriptFunc(nSel)
	local tbsongjin_pos = {1541,3178};
	local szstr = "Phe V�ng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1570,3085};
		szstr = "Phe T�m (K)";
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
	Say("Th�n h�nh ph� c� th� ��t �i�m h�i sinh, v� c�ng c� th� �i ��n n�i th�nh th� tr�n n�o ��.", 10, 
		"B�n �� luy�n c�ng 10 tr� l�n/luyencong1",
		"B�n �� luy�n c�ng 20 tr� l�n/luyencong2",
		"B�n �� luy�n c�ng 30 tr� l�n/luyencong3",
		"B�n �� luy�n c�ng 40 tr� l�n/luyencong4",
		"B�n �� luy�n c�ng 50 tr� l�n/luyencong5",
		"B�n �� luy�n c�ng 60 tr� l�n/luyencong6",
		"B�n �� luy�n c�ng 70 tr� l�n/luyencong7",
		"B�n �� luy�n c�ng 80 tr� l�n/luyencong8",
		"Tho�t/no")

end

---------------------------------------Luyen cong 1x--------------------------------------
function luyencong1()
	local tbOpt =
	{
		"Hoa S�n C�nh K� Tr��ng/hoason",
		"C�c b�n �� quanh th�nh th�/thongbaophu",
		"Tho�t/no"
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt);
end

function thongbaophu()
Talk(1, "", "<color=yellow>D�ng <Th�n Th�nh Ph�>�i l�n !")
end
function hoason()
if GetLevel() < 10 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 10 ,nh�n h� tr� �� !")
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
		"T�y Nam Ki�m C�c/taynamkiemcac",
		"T�y B�c Ki�m C�c/taybackiemcac",
		"Ki�m C�c trung nguy�n/kiemcactrungnguyen",
		"La Ti�u S�n/latieuson",
		"L�ng T�n Th�y Ho�ng/tanthuyhoang",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt); 
end

function taynamkiemcac()
if GetLevel() < 20 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 20 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 20 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 20 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 20 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 20 ,kh�ng th� l�n b�n �� !")
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
		"Th� Ph� ��ng/thophi",
		"B�ch V�n ��ng/bachvan",
		"Kim Quang ��ng/kimquang",
		"T�a V�n ��ng/toavan",
		"Th�c C��ng S�n/thuccuongson",
		"T�n L�ng T�ng 1/tanlangt1",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt); 
end
function thophi()
if GetLevel() < 30 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 30 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 30 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 30 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 30 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 30 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 30 ,kh�ng th� l�n b�n �� !")
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
		"�i�m Th��ng ��ng t�ng 1/diemthuongdong1",
		"�i�m Th��ng ��ng t�ng 2/diemthuongdong2",
		"�i�m Th��ng ��ng t�ng 3/diemthuongdong3",
		"Kinh Ho�ng ��ng/kinhhoangdong",
		"Th�n Ti�n ��ng/thantiendong",
		"Ph�c Ng�uu S�n/phucnguuson",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt);
end

----------------------------------------------
function phucnguuson()
if GetLevel() < 40 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 40 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 40 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 40 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 40 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 40 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 40 ,kh�ng th� l�n b�n �� !")
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
		"Thi�n t�ng th�p t�ng 1/thientangthap1",
		"Thi�n t�ng th�p t�ng 2/thientangthap2",
		"H��ng Th�y ��ng/huongthuydong",
		"Thi�n T�m ��ng/thientamdong",
		"Thi�t Th�p M� Cung/thiepthapbk",
		"Nghi�t Long ��ng/nghietlongdong",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt);
end

------------------------------------------------------------------
function thientamdong()
if GetLevel() < 50 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 50 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 50 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 50 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 50 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 50 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 50 ,kh�ng th� l�n b�n �� !")
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
		"Thi�n T�ng Th�p t�ng 3/thientangthap3",
		"Nha M�n M�t ��o/matdao",
		"D��ng Gi�c ��ng/duonggiacdong",
		"Linh C�c ��ng/linhcucdong",
		"108 La H�n Tr�n/lahantran",
		"Thanh Loa ��ng/thanhloadong",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt);
end

--------------------------------------
function linhcucdong()
if GetLevel() < 60 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
		"L�m Du Quan/lamduquan",
		"��o Hoa Nguy�n/daohoanguyen",
		"��i T� ��ng/daitudong",
		"Long Nh�n ��ng/longnhandong",
		"L�o H� ��ng/laohodong",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt);
end

------------------------------------------------
function longnhandong()
if GetLevel() < 70 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 70 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 70 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 70 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 70 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 60 ,kh�ng th� l�n b�n �� !")
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
		"V� Danh ��ng/vodanh",
		"L��ng Th�y ��ng/luongthuy",
		"Ch�n N�i Tr��ng B�ch/channui",
		"Xa m�c ��i Bi�u/xamac",
		"Thanh Kh� ��ng/thanhkhedong",
		"Ph� Dung ��ng/phudungdong",
		"Tho�t/no",
	}
	Say("Xin M�i Ch�n Ch�c N�ng", getn(tbOpt), tbOpt);
end

----------------------------------------------------------
function vodanh()
if GetLevel() < 80 then
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 80 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 80 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 80 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 80 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 80 ,kh�ng th� l�n b�n �� !")
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
Talk(1, "", "<color=yellow>B�n ch�a �� c�p 80 ,kh�ng th� l�n b�n �� !")
else
local nPosX = 3701
local nPosY = 6232
NewWorld(20, nPosX, nPosY);
SetFightState(1);
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end
end

-----------------------------�i Ho�t ��ng T�nh N�ng----------------------------------------------------------
function goto_satthu()
Say("<bclr=violet>"..myplayersex().." Mu�n �i ��n Th�nh N�o",8,
"Th�nh ��/ThanhDo",
"T��ng D��ng/TuongDuong",
"Ph��ng T��ng/PhuongTuong",
"��i L�/DaiLy",
"Bi�n Kinh/BienKinh",
"D��ng Ch�u/DuongChau",
"L�m An/LamAn",
"Th�i/No")
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
Say("<bclr=violet>"..myplayersex().." Mu�n �i Th�nh N�o",3,
"Th�nh ��/T_Do",
"��i L�/D_Ly",
"Th�i/No")
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
Say("<color=green>"..myplayersex().." H�y Ch�n N�i Mu�n ��n<color>:\n"..ViewTime().."",10,
	"Th�m Th�i Gian Tu Luy�n/ShowTime",
	--"T�ch Huy�t C�c/Map_THC",
	--"�c Nh�n C�c/Map_ANC",
	--"Th�c C�t Nhai/Map_TCN",
	"Thi�n Ph� S�n/Map_TPS",
	"B�n Long S�n/Map_BLS",
	"��a M�u S�n/Map_DMS",
	"Uy�n Ph�ng S�n/Map_UPS",
	"Th�i/No")
end
------------------------------------------------------------------------
function ViewTime()
return "<color=yellow>Th�i Gian Tu Luy�n Thi�n Long L�nh: <color=red>"..GetTask(THIENLONGLENH).."<color> Ph�t<color>"
end
--------------------------------------------------------------------------
function Map_THC()
	if (GetTireTime() < 18000) then
		if (GetLevel() >= 130) then
			if (GetTask(BACHCOTLENH) >= 1) then
				NewWorld(917,1816,3392) SetFightState(1)
				AddSkillState(963, 1, 0, 18*3)
			else
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
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
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
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
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
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
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
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
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
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
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
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
				Talk(1,"","<color=red>Th�i Gian Tu Luy�n �� H�t")
			end
		else
			Talk(1,"","<color=green>"..myplayersex().." Ch�a �� C�p 130 e R�ng Qu� Nguy Hi�m H�y G�ng R�n Luy�n Th�m")
		end
	else
		Talk(1,"","<color=pink>"..myplayersex().." �� Online Qu� 5h Ch�i R�i\nH�y Ngh� Ng�i Gi� G�n S�c Kh�e...!")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ShowTime()
Say("<color=green>"..myplayersex().." H�y Ch�n N�i Luy�n C�ng<color><color=yellow>\nTh�i Gian Ph�:5 V�n/Ph�t<color>",2,"Th�i Gian Tu Luy�n Thi�n Long L�nh/Up_Time_TLL","Th�i Ta Kh�ng Luy�n N�a/No")
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Up_Time_BCL()
	if GetTask(BACHCOTLENH) <= 0 then
		AskClientForNumber("UpTime_BCL",0,1080,"Nh�p S� Ph�t")
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a H�t Th�i Gian Tu Luy�n")
	end
end

function UpTime_BCL(num)
local NganLuong = GetCash()
local SL = num*50000
	if NganLuong >= SL then
		for i = 1,num do
			Pay(50000) SetTask(BACHCOTLENH,GetTask(BACHCOTLENH)+1)
		end
		Msg2Player("Ch�c M�ng "..myplayersex().." �� ���c T�ng Th�m <color=yellow>"..num.."<color> Ph�t Tu Luy�n Tr�n B�n �� ��c Bi�t")
	else
		Talk(1,"","<color=yellow>"..myplayersex().." �� Ch�n <color=red>"..num.."<color> Ph�t = "..SL.." L��ng\nC�n Thi�u "..SL-NganLuong.." L��ng")
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Up_Time_TLL()
	if GetTask(THIENLONGLENH) <= 0 then
		AskClientForNumber("UpTime_TLL",0,1080,"Nh�p S� Ph�t")
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a H�t Th�i Gian Tu Luy�n")
	end
end

function UpTime_TLL(num)
local NganLuong = GetCash()
local SL = num*50000
	if NganLuong >= SL then
		for i = 1,num do
			Pay(50000) SetTask(THIENLONGLENH,GetTask(THIENLONGLENH)+1)
		end
		Msg2Player("Ch�c M�ng "..myplayersex().." �� ���c T�ng Th�m <color=yellow>"..num.."<color> Ph�t Tu Luy�n Tr�n B�n �� ��c Bi�t")
	else
		Talk(1,"","<color=yellow>"..myplayersex().." �� Ch�n <color=red>"..num.."<color> Ph�t = "..SL.." L��ng\nC�n Thi�u "..SL-NganLuong.." L��ng")
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
	Msg2Player("<color=pink> Xin h�y ng�i y�n, ch�ng ta �i <color> <color=green>"..tab_RevivePos[nIdx][nSubIdx][1].." n�o");
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3)
end
--------------------------END------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end