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
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
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
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717},
	},
	[11] =
	{
		szShowName = "Hoa s�n",
		szFaction = "huashan",
		nShortFaction = "hs",
		tbSkill = {1364, 1382, 1365, 1369, 1384},
	},
	[12] =
	{
		szShowName = "V� H�n",
		szFaction = "wuhun",
		nShortFaction = "wh",
		tbSkill = {1984, },
	},
	[13] =
	{
		szShowName = "Ti�u Dao",
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
--Msg2SubWorld("<color=cyan>Ngay b�y gi� anh em �� c� th� t�i patch m�i 22/8 ho�n ch�nh t�i trang ch� www.volamtaithien.com �� ch�c ch�n kh�ng b� b�t c� l�i nh� n�o n�a.")
--dofile("script/global/quanlygame/npctanthu.lua")
local szTitle = "Ph�n qu� t�n th� gi�nh cho ng��i r�t phong ph�, h�y tr�i nghi�m nh�ng t�nh n�ng h�p d�n, ��m m�nh v�o m�t th� gi�i v� l�m ho�n to�n m�i l� c�ng c�c game th� b�n nh�!";
local tbOpt = 
{
{"Nh�p Code Vip Nh�n HKMP Vip Server",CODEVIP},

--{"Ta ��n nh�p Ng� Hoa Ng�c L� Ho�n",nhanmau},
--{"Nh�n ��ng C�p 199 v� V�o C�c Ph�i",HoTroTanThuMoi},
{"Nh�n �� Ngh� Cho Ng��i M�i Ch�i",nhanhotro},
{"C�c Ch�c N�ng Ph� C�a Game", MenuFree},
{"M� R�ng R��ng Ch�a ��", MoRuongFree1},
{"Nh�n M�t S� L�nh B�i", nhandalenhbai},
{"Tho�t",OnCancel},
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
	Msg2Player("Nh�n ���c "..otrong.." Ng� Hoa Ng�c L� Ho�n")		
end

function MenuFree()		
local szTitle = "��y l� giao di�n c�c ch�c n�ng tr� gi�p cho c�c ��ng ��o";
local tbOpt = 
{
--{"Chuy�n M�n Ph�i Nh�n L�i Skill", ChuyenPhaiFree},
{"T�y T�y + ��i M�u + Gi�m PK",TayTuyFree},
{"L�p Bang H�i.", dmcreattongtest_c},
{"��i T�n Nh�n V�t Game", DoiTenNV},
{"Thay ��i M�u PK.", trangthai1},
{"Thay ��i Gi�i T�nh", chuyen_gt},
{"��i Stype Phong C�ch", DoiNgoaiTrang},
{"Tho�t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end


function ChuyenPhaiFree()
	local tbOpt =
	{
                                            {"Chuy�n M�n Ph�i T�i ��y", MenuChuyen},
                                            {"Nh�n L�i Skill Khi B� Thi�u", addskill},
                                            {"Nh�n Skill Bug + B�a + B�y.", bkall},
                                            {"Nh�n L�i Skill Khinh C�ng.", skillKC},
                                            {"T�ng �i�m ti�m n�ng.", add_prop},
		{"K�t th�c ��i tho�i ",thonghonafk},
	}
	CreateNewSayEx("<npc>Mu�n chuy�n ph�i ph�i c� T�n V�t M�n Ph�i giao n�p ch��ng m�n<enter>Chuy�n ph�i n�u m�t skill th� c� ��n g�p ta m� nh�n l�i.", tbOpt)
end


function TayTuyFree()
	local tbOpt =
	{
		{"T�y �i�m k� n�ng", clear_skill},
		{"T�y �i�m ti�m n�ng", clear_prop},
           {"Gi�m �i�m PK", sachgiampk},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx("<npc>Ng��i quy�t mu�n t�y t�y?", tbOpt)
end


function trangthai1()
	local tbOpt =
	{
		{"Ch�nh ph�i - M�u V�ng", mauvang},
		{"Trung l�p - M�u Xanh", mauxanh},
		{"T� ph�i - M�u T�m", mautim},
		{"S�t Th� - M�u �� xu�t x�", maudo},
		{"Tho�t/0"},
	}
	CreateNewSayEx("<npc>Xin Ch�n M�u", tbOpt)
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
		{"X�c nh�n", do_clear_skill},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t mu�n t�y t�y?", tbOpt)
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
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t mu�n t�y t�y?", tbOpt)
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
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
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
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�u L�m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n V��ng. ")
elseif GetLastFactionNumber() == 2 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a ���ng M�n. ")
elseif GetLastFactionNumber() == 3 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ng� ��c.")
elseif GetLastFactionNumber() == 4 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Nga My.")
elseif GetLastFactionNumber() == 5 then
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Th�y Y�n.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�i Bang.")
elseif GetLastFactionNumber() == 7 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n Nh�n.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� �ang.")
elseif GetLastFactionNumber() == 9 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�n L�n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Hoa S�n.")
elseif GetLastFactionNumber() == 11 then
AddMagic(1963,20)
AddMagic(1987,20)
AddMagic(1984,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� H�n.")
elseif GetLastFactionNumber() == 12 then
AddMagic(1891,20)
AddMagic(1911,20)
AddMagic(1894,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ti�u Dao.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end

function bkall()
if check_faction() == 1 then
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
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
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�u L�m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n V��ng. ")
elseif GetLastFactionNumber() == 2 and HaveMagic(351) <= 0 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(351,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� ���ng M�n. ")
elseif GetLastFactionNumber() == 3 and HaveMagic(390) <= 0 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(390,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ng� ��c.")
elseif GetLastFactionNumber() == 4 and HaveMagic(332) <= 0 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Nga My.")
elseif GetLastFactionNumber() == 5 then
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Th�y Y�n.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�i Bang.")
elseif GetLastFactionNumber() == 7 and HaveMagic(391) <= 0 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(391,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n Nh�n.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� �ang.")
elseif GetLastFactionNumber() == 9 and HaveMagic(394) <= 0 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(394,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�n L�n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Hoa S�n.")
elseif GetLastFactionNumber() == 11 then
AddMagic(1963,20)
AddMagic(1987,20)
AddMagic(1984,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� H�n.")
elseif GetLastFactionNumber() == 12 then
AddMagic(1891,20)
AddMagic(1911,20)
AddMagic(1894,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ti�u Dao.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end



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
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<1000 then
Talk(1, "", "<color=green>"..myplayersex().."<color> kh�ng c� �� 1000 Xu.")
return
end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>G�i ��p<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
ConsumeEquiproomItem(1000,4,417,1,1)
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng nam ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh N� Giai Nh�n")
end
end

function NuNam()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<1000 then
Talk(1, "", "<color=green>"..myplayersex().."<color> kh�ng c� �� 1000 Xu.")
return
end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>Trai Xinh<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
ConsumeEquiproomItem(1000,4,417,1,1)
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng n� ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh Nam M� Nh�n")
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
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
		if GetLevel() >= 199 then
			return Say("<color=cyan><pic=65>Ch� nh�ng ng��i ch�i m�i t�o m�i nh�n c�p ���c t� ta !")
		end
		if GetLevel() < 199 then
		level_up_199()
		end

end

function level_up_199()
	local nCurLevel = GetLevel()
	if nCurLevel >= 199 then
			Talk(1, "", "Ng��i �� ��t v��t c�p 199 r�i.")
	return
	end

	local nAddLevel = 199 - nCurLevel
	ST_LevelUp(nAddLevel)
AddRepute(100000)
AddLeadExp(20000000)
choose_faction()
Msg2SubWorld("Ch�o m�ng ��i hi�p <color=green>"..GetName().."<color=pink> v�a m�i gia nh�p Server.")
end





function MoRuongFree()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng��i �� m� h�t r��ng")
return
end
OpenStoreBox(1)
OpenStoreBox(2)
OpenStoreBox(3)
SaveNow()
Talk(1,"","M� th�nh c�ng t�t c� r��ng ch�a ��.") 
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
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	CreateNewSayEx("<npc>Xin m�i l�a ch�n ph�i.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("��i hi�p c� ph�i l� mu�n v�o m�n ph�i <color=pink>%s<color>", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"Ok ��ng v�y ta xin gia nh�p", do_set_faction, {nIndex}},
		{"Cho ta ch�n m�t ph�i kh�c",  choose_faction},

	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
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
	Talk(1, "KickOutSelf", format(" <color=green>Ch�c M�ng b�n �� gia nh�p<color=pink> %s", %tbFaction[nIndex].szShowName))
end

function show_faction()
	if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i ca th� nh�n trang b�")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n ph�i.", tbOpt)
end




function dmcreattongtest_c()
local strTongName = GetTongName()
local tszTitle = "Ch�o m�ng ��i hi�p �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o Bang/Direct_CreateTong","�� ta suy ngh� l�it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("��i hi�p: Ng��i c� mu�n l�p bang?." ,2,"Kh�ng th�nh v�n �� ta mu�n l�p bang ngay! /create_pay_yes","�� ta suy ngh� l�i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		else
			Talk(6,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- �շ�
		DelItem(195)			-- ɾ��ϵ�ص���
		SetTask(99,1)				-- �����ϱ�ǣ�ݬʱ����Ϊ�����еĵ�һ���ˣ����������ˣ���
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Mu�n l�p bang th� ph�i c� ti�n ng��i mau mang ti�n l�i ��y r�i h�y n�i chuy�n. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("Ta ��y l� tr�m bang ch� <color=green>"..GetName().." <color=pink>mu�n th�ng tr� server n�y anh em n�o mu�n theo ta xin m�i v�o bang")				
end


----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng��i t�m ta c� vi�c g�?",3,
		"Mua 1 l�n ��i t�n nh�n v�t/dangkydoiten",
		"��t t�n cho nh�n v�t/about_rename_role",
		"Nh�n ti�n gh� qua th�i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B�n v�n c�n 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end

	Say("Ng��i chu�n b� xong ch�a?",
		2,
		"Ta �� chu�n b� xong/#buy_addibox_yes(10)",
		"Khi n�o �� ti�n ta s� quay l�i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 100) then
		Say("<color=yellow>Kh�ch quan ch�a �� 100 Xu! Khi n�o c� �� ti�n h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(100, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B�n nh�n ���c 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t");
end
function about_rename_role()
	local strInfo = "Ch�o b�n! V� t�n nh�n v�t c�a b�n v� ng��i ch�i kh�c gi�ng nhau, cho n�n h� th�ng �� gi�p b�n ��i t�n, b�n c� th� s�a t�n nh�n v�t c�a b�n tr��c ��y, c� th� ki�m tra xem t�n �� c� d�ng ���c kh�ng. Ch� �! B�n ch� c� 1 c� h�i duy nh�t �� ��i t�n, xin h�y c�n th�n t�ng b��c.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta mu�n ki�m tra xem t�n nh�n v�t d�ng ���c kh�ng/query_rolename",
			"Ti�n h�nh thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
			"�� l�n sau ta thay ��i v�y/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t m�i v�o");
end
function on_change_rolename(new_name)
Msg2SubWorld( "��i hi�p <color=yellow>"..GetName().."<color> �� ��i t�n th�nh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B�n mu�n ��i t�n g�?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin l�i! B�n ph�i mua l�n ��i t�n nh�n v�t r�i h�y ch�n ch�c n�ng n�y!<color>",
		1,
		"Bi�t r�i!/cancel")
end



function datanggiamdoxanh()
AddEventItem(415)
AddEventItem(416)
AddItem(6,1,15,1,0,0)
Say("<color=green>h�y ��n th� r�n �� thay ��i ngo�i h�nh �i ��i hi�p..",0)
end

function nhandalenhbai()
	local tbOpt =
	{
                                                                                   {"�� thay ��i ngo�i h�nh", datanggiamdoxanh},
                                                                                   {"S�t Th� Gi�n", SatThuGian},  
                                                                                   {"Nh�n Khi�u Chi�n L�nh", khieuchienlenh},  
	{"Vi�m �� L�nh", lbviemde},
	{"Phong L�ng �� - Th�y T�c ", lbphonglangdo},
                                                                                --  {"Vi S�n ��o ", lbvisondao},
                                                                                --  {"Thi�n C� L�nh", lbthienco},
                                                                                --{"M�c B�c Th�o Nguy�n ", lbmanbac},
                                                                              --    {"L�nh b�i c�ng th�nh ", congthanhlenh},
                                                                                 --  {"L�nh B�i T�n Th�", lbtanthuok},       
	{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i hi�p c�n g� ?", tbOpt)
end


function khieuchienlenh()
AddItem(6,1,2006,1,0,0)
Say("<color=green>Nh�n th�nh khi�u chi�n l�nh v�t ph�m �� b�o danh c�ng th�nh..",0)
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
local szTitle =  "<npc>Nh�p code v�p khi like chia s� V� L�m T�i Thi�n �i�u ki�n b�n ph�i like trang v� chia s� b�i vi�t c�ng vi�c tab 3 b�n b� li�n h� admin nh�p code !"
		local tbOpt =
	{
                                          {"Nh�p Code Nh�n HKMP Vip",Nhapcode},
	              {"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function Nhapcode()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�p",0);
		return
end
	if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i ca th� nh�n trang b�")
		return
	end
	local nCurLevel = GetLevel()
	if nCurLevel < 199 then
			Talk(1, "", "Ng��i chua ��t c�p 199")
	return
	end
AskClientForString("checkpasscode", "", 1, 50, "Nh�p Code");
end

function checkpasscode(strings)	
	if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	if strings=="volamtaithien248" then ---------------Ma code open sv opensv
NhanFullHKMP1()
Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=yellow> �� nh�n ���c ph�n th��ng HKMP t� ch�n 15 ng�y qu� vip khi like chia s� b�i vi�t c�ng tag b�n b� tr�n Fanpage.<color=blue> (T�i NPC H� Tr� Ng��i M�i)")

		else
		Say("b�n nh�p code kh�ng ch�nh x�c nh�p sai nhi�u l�n h� th�ng s� t� x�a nh�n v�t v� ch�n ip ngay l�p t�c.",0);

	end
end

function NhanFullHKMP1() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/FullHKNM1","Th�y Y�n/FullHKTY1","���ng M�n/FullHKDM1","Ng� ��c/FullHKND1","Thi�n V��ng/FullHKTV1","Trang Sau/NhanFullHKMP2","K�t th�c ��i tho�i/no") 
end

function NhanFullHKMP2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/FullHKTL1","V� �ang/FullHKVD1","C�n L�n/FullHKCL1","Thi�n Nh�n/FullHKTN1","C�i Bang/FullHKCB1","Trang Tr��c/NhanFullHKMP1","K�t th�c ��i tho�i/no") 
end

function FullHKNM1() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
           local tbOpt= 
               { 
        --        {"V� Gian Thanh Phong Truy Y", NM1}, 
        --        {"V� Gian Ph�t V�n Ti ��i", NM2}, 
                {"V� Gian B�ch Ng�c B�n Ch�", NM3},
        --        {"V� Ma Ma Ni qu�n", NM4}, 
        --        {"V� Ma T� Kh�m C� Sa", NM5}, 
        --        {"V� Ma B�ng Tinh Ch� Ho�n", NM6}, 
        --         {"Trang K�", FullHKNM2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKNM2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("H� th�ng ki�m tra IP m�y t�nh c�ng ID game c�a ��i hi�p �� nh�n r�i kh�ng th� nh�n n�a",0);
return
end
        local tbOpt= 
               { 
                {"V� Tr�n Ng�c N� T� T�m qu�n", NM7}, 
                {"V� Tr�n H��ng Thi�n Ch�u", NM8}, 
                {"V� Tr�n T� Bi Ng�c Ban Ch�", NM9},
               -- {"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i", NM10}, 
                {"V� Tr�n Ph�t Quang Ch� Ho�n", NM11}, 
                 {"Trang tr��c", FullHKNM1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 

function NM1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Gian B�ch Ng�c B�n Ch�",tbProp={0,35},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Ma Ma Ni qu�n",tbProp={0,36},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Ma B�ng Tinh Ch� Ho�n",tbProp={0,38},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ng�c N� T� T�m qu�n",tbProp={0,41},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n H��ng Thi�n Ch�u",tbProp={0,42},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
AddExtPoint(7,1)
SetTask(3030,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n T� Bi Ng�c Ban Ch�",tbProp={0,43},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM10()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",tbProp={0,44},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function NM11()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ph�t Quang Ch� Ho�n",tbProp={0,45},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

--===============THUY YEN


function FullHKTY1() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
              --  {"T� Ho�ng Tu� T�m Khinh Sa Y", TY1}, 
                {"T� Ho�ng Th�y Ng�c Ch� Ho�n", TY2}, 
              --  {"B�ch H�i Ho�n Ch�u V� Li�n", TY3},
              --  {"B�ch H�i H�ng Linh Kim Ti ��i", TY4}, 
             --   {"B�ch H�i H�ng L�ng Ba", TY5}, 
             --   {"B�ch H�i Khi�n T� Ch� ho�n", TY6}, 
             --    {"Trang K�", FullHKTY2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKTY2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("H� th�ng ki�m tra IP m�y t�nh c�ng ID game c�a ��i hi�p �� nh�n r�i kh�ng th� nh�n n�a",0);
return
end
        local tbOpt= 
               { 
                {"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i", TY7}, 
                 {"Trang tr��c", FullHKTY1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 

function TY1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Tu� T�m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={0,50},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Ho�n Ch�u V� Li�n",tbProp={0,52},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng Linh Kim Ti ��i",tbProp={0,53},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Khi�n T� Ch� ho�n",tbProp={0,55},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TY7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

--====================DUONG MON

function FullHKDM1() 
        local tbOpt= 
               { 
              {"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n", DM7}, 
              --  {"B�ng H�n T�m Ti�n Y�u Kh�u", DM2}, 
              --  {"B�ng H�n Huy�n Thi�n B�ng H�a B�i", DM3},
                --{"B�ng H�n Nguy�t �nh Ngoa", DM4}, 
              --  {"Thi�n Quang ��nh T�m Ng�ng Th�n Ph�", DM5}, 
              --  {"Thi�n Quang S�m La Th�c ��i", DM6}, 
             --    {"Trang K�", FullHKDM2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKDM2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("H� th�ng ki�m tra IP m�y t�nh c�ng ID game c�a ��i hi�p �� nh�n r�i kh�ng th� nh�n n�a",0);
return
end
        local tbOpt= 
               { 
                {"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n", DM7}, 
                {"S�m Hoang KimTi�n Li�n Ho�n Gi�p", DM8}, 
                {"S�m Hoang H�n Gi�o Y�u Th�c", DM9},
                {"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i", DM10}, 
              --  {"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n", DM11}, 
                {"��a Ph�ch H�c Di�m Xung Thi�n Li�n", DM12}, 
                 {"Trang tr��c", FullHKDM3}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 

function FullHKDM3() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("H� th�ng ki�m tra IP m�y t�nh c�ng ID game c�a ��i hi�p �� nh�n r�i kh�ng th� nh�n n�a",0);
return
end
        local tbOpt= 
               { 
                {"��a Ph�ch T�ch L�ch L�i H�a Gi�i", DM13}, 
                {"��a Ph�ch Kh�u T�m tr�c", DM14}, 
                {"��a Ph�ch ��a H�nh Thi�n L� Ngoa", DM15},
                 {"Trang tr��c", FullHKDM1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 

function DM1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Y Th�c Gi�p",tbProp={0,72},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Nguy�t �nh Ngoa",tbProp={0,75},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang S�m La Th�c ��i",tbProp={0,78},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",tbProp={0,80},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM10()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={0,84},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM11()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={0,86},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM12()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM13()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch T�ch L�ch L�i H�a Gi�i",tbProp={0,88},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM14()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch Kh�u T�m tr�c",tbProp={0,89},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function DM15()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={0,90},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================NGU DOC

function FullHKND1() 
        local tbOpt= 
               { 
                --{"U Lung X�ch Y�t M�t trang", ND1}, 
           --     {"U Lung Ng�n Th�m H� Uy�n", ND2}, 
           --     {"U Lung M�c Th� Nhuy�n L�", ND3},
                --{"Minh �o U ��c �m Y", ND4}, 
                {"Minh �o ��c Y�t Ch� Ho�n", ND5}, 
               -- {"Minh �o Song Ho�n X� H�i", ND6}, 
            --     {"Trang K�", FullHKND2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKND2() 
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("H� th�ng ki�m tra IP m�y t�nh c�ng ID game c�a ��i hi�p �� nh�n r�i kh�ng th� nh�n n�a",0);
return
end
        local tbOpt= 
               { 
                {"U Lung Thanh Ng� Tri�n y�u", ND12}, 
               -- {"Ch� Ph��c Ph� gi�p ��u ho�n", ND7}, 
                {"Ch� Ph��c Di�t L�i C�nh Ph�", ND8}, 
                {"Ch� Ph��c U �o Ch� Ho�n", ND9},
                {"Ch� Ph��c Xuy�n T�m ��c Uy�n", ND10}, 
                {"Ch� Ph��c B�ng H�a Th�c C�t Ngoa", ND11}, 
                 {"Trang tr��c", FullHKDM1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 



function ND1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="U Lung X�ch Y�t M�t trang",tbProp={0,57},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="U Lung Ng�n Th�m H� Uy�n",tbProp={0,59},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,60},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Minh �o U ��c �m Y",tbProp={0,62},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Minh �o ��c Y�t Ch� Ho�n",tbProp={0,63},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Ph� gi�p ��u ho�n",tbProp={0,66},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c U �o Ch� Ho�n",tbProp={0,68},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND10()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={0,69},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND11()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,70},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function ND12()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,58},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end





--====================THIEN VUONG

function FullHKTV1() 
 
        local tbOpt= 
               { 
            --    {"H�m Thi�n V� Th�n T��ng Kim Gi�p", TV1}, 
            --    {"H�m Thi�n Uy V� Th�c y�u ��i", TV2}, 
           --     {"H�m Thi�n H� ��u Kh�n Th�c Uy�n", TV3},
            {"Ng� Long Tuy�t M�nh Ch� ho�n", TV11}, 
            --    {"K� Nghi�p B�ch H� V� Song kh�u", TV5}, 
            --    {"K� Nghi�p H�aV�n K� L�n Th�", TV6}, 
            --     {"Trang K�", FullHKTV2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKTV2() 
 
        local tbOpt= 
               { 
                {"Ng� Long Chi�n Th�n Phi Qu�i gi�p", TV7}, 
                {"K� Nghi�p Chu T��c L�ng V�n Ngoa", TV8}, 
                {"Ng� Long Thi�n M�n Th�c Y�u ho�n", TV9},
                {"Ng� Long T�n Phong H� y�n", TV10}, 
                {"Ng� Long Tuy�t M�nh Ch� ho�n", TV11}, 
                 {"Trang tr��c", FullHKTV1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 



function TV1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={0,19},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p H�aV�n K� L�n Th�",tbProp={0,24},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV10()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long T�n Phong H� y�n",tbProp={0,29},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TV11()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Tuy�t M�nh Ch� ho�n",tbProp={0,30},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================THIEU LAM

function FullHKTL1() 
 
        local tbOpt= 
               { 
            --    {"M�ng Long Huy�n Ti Ph�t ��i", TL1}, 
            --    {"M�ng Long Ph�t Ph�p Huy�n B�i", TL2}, 
            --    {"M�ng Long ��t Ma T�ng h�i", TL3},
            --    {"Ph�c Ma Huy�n Ho�ng C� Sa", TL4}, 
            --    {"Ph�c Ma � Kim Nhuy�n �i�u", TL5}, 
            --    {"Ph�c Ma Ph�t T�m Nhuy�n Kh�u", TL6}, 
                  {"T� Kh�ng Gi�i Lu�t Ph�p gi�i", TL9}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKTL2() 
 
        local tbOpt= 
               { 
                {"T� Kh�ng T� Kim C� Sa", TL7}, 
                {"T� Kh�ng H� ph�p Y�u ��i", TL8}, 
                {"T� Kh�ng Gi�i Lu�t Ph�p gi�i", TL9},
                 {"Trang tr��c", FullHKTL1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 



function TL1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Ph�t Ph�p Huy�n B�i",tbProp={0,4},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={0,9},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng T� Kim C� Sa",tbProp={0,12},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TL9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�i Lu�t Ph�p gi�i",tbProp={0,15},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end




--====================VO DANG

function FullHKVD1() 
 
        local tbOpt= 
               { 
            --    {"L�ng Nh�c V� Ng� ��o b�o", VD1}, 
            --    {"L�ng Nh�c N� L�i Gi�i", VD2}, 
                {"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i", VD3},
            --    {"C�p Phong Tam Thanh Ph�", VD4}, 
            --    {"C�p Phong Huy�n Ti Tam �o�n c�m", VD5}, 
            --    {"C�p Phong Thanh T�ng Ph�p gi�i", VD6}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 




function VD1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={0,120},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Tam Thanh Ph�",tbProp={0,122},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function VD6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Thanh T�ng Ph�p gi�i",tbProp={0,125},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end





--====================CON LON

function FullHKCL1() 
 
        local tbOpt= 
               { 
            --    {"S��ng Tinh Ng�o S��ng ��o b�o", CL1}, 
            --    {"S��ng Tinh Thanh Phong L� ��i", CL2}, 
                {"S��ng Tinh Phong B�o ch� ho�n", CL3},
            --    {"L�i Khung Thi�n ��a H� ph�", CL4}, 
            --    {"L�i Khung Phong L�i Thanh C�m ��i", CL5}, 
            --    {"L�i Khung C�u Thi�n D�n L�i gi�i", CL6}, 
            --     {"Trang K�", FullHKCL2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKCL2() 
 
        local tbOpt= 
               { 
                {"V� �o B�c Minh ��o qu�n", CL7}, 
                {"V� �o Ki B�n ph� ch�", CL8}, 
                {"V� �o Th�c T�m ch� ho�n", CL9},
                {"V� �o Thanh �nh Huy�n Ng�c B�i", CL10},
                {"V� �o Tung Phong Tuy�t �nh ngoa", CL11},
                 {"Trang tr��c", FullHKCL1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 



function CL1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Ng�o S��ng ��o b�o",tbProp={0,127},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thanh Phong L� ��i",tbProp={0,128},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Phong B�o ch� ho�n",tbProp={0,130},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Thi�n ��a H� ph�",tbProp={0,132},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={0,135},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� �o B�c Minh ��o qu�n",tbProp={0,136},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� �o Ki B�n ph� ch�",tbProp={0,137},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� �o Th�c T�m ch� ho�n",tbProp={0,138},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL10()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={0,139},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CL11()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="V� �o Tung Phong Tuy�t �nh ngoa",tbProp={0,140},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================THIEN NHAN

function FullHKTN1() 
 
        local tbOpt= 
               { 
                {"Ma Th� Nghi�p H�a U Minh Gi�i", TN10}, 
                --{"Ma S�t X�ch K� T�a Y�u Kh�u", TN2}, 
              --  {"Ma S�t V�n Long Th� Ch�u gi�i", TN3},
              --  {"Ma Ho�ng Kim Gi�p Kh�i", TN4}, 
             --   {"Ma Ho�ng �n Xu�t H� H�ng Khuy�n", TN5}, 
              --  {"Ma Ho�ng Kh� C�c Th�c y�u ��i", TN6}, 
             --    {"Trang K�", FullHKTN2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKTN2() 
 
        local tbOpt= 
               { 
                {"Ma Ho�ng Huy�t Y Th� Tr�c", TN7}, 
                {"Ma Ho�ng ��ng ��p Ngoa", TN8}, 
                {"Ma Th� L� Ma Ph� T�m Li�n", TN9},
                {"Ma Th� Nghi�p H�a U Minh Gi�i", TN10},
                {"Ma Th� Huy�t Ng�c Th�t S�t B�i", TN11},
                {"Ma Th� s�n  H�i Phi H�ng L�", TN12},
                 {"Trang tr��c", FullHKTN1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 



function TN1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={0,103},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t V�n Long Th� Ch�u gi�i",tbProp={0,105},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kim Gi�p Kh�i",tbProp={0,106},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={0,108},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Huy�t Y Th� Tr�c",tbProp={0,109},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN8()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng ��ng ��p Ngoa",tbProp={0,110},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN9()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN10()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={0,113},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN11()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function TN12()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� s�n  H�i Phi H�ng L�",tbProp={0,115},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end



--====================CAI BANG

function FullHKCB1() 
 
        local tbOpt= 
               { 
                {"��ch Kh�i Th�o Gian Th�ch gi�i", CB7}, 
              --  {"��ng C�u Ti�m Long Y�u ��i", CB2}, 
                {"��ng C�u Ki�n Long Ban Ch�", CB3},
            --    {"��ch Kh�i C�u ��i C�i Y", CB4}, 
              --  {"��ch Kh�i Tri�n M�ng y�u ��i", CB5}, 
           --     {"��ch Kh�i C�u T�ch B� H� uy�n", CB6}, 
            --     {"Trang K�", FullHKCB2}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 


function FullHKCB2() 
 
        local tbOpt= 
               { 
                {"��ch Kh�i Th�o Gian Th�ch gi�i", CB7}, 
                 {"Trang tr��c", FullHKCB1}, 
                {"Tr� v� menu ph�i", NhanFullHKMP1}, 
               } 
                CreateNewSayEx("<npc>��i hi�p c�n m�n g� nh� ?", tbOpt)
        return 1 
end 



function CB1()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB2()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB3()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch�",tbProp={0,95},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB4()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB5()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,98},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB6()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,99},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

function CB7()
if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�p",0);
		return
end
if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang");
		return
	end
SetTask(3030,1)
AddExtPoint(7,1)
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Th�o Gian Th�ch gi�i",tbProp={0,100},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
end

