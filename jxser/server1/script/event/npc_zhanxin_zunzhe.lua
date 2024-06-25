Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\spreader\\spreader.lua")
szNpcName = "<color=green>H� tr� Th� nghi�m<color>: Phi�n b�n C�ng Th�nh Chi�n T� V�n S�n "
tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[9] = {318,319,321,709},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[9] = {322,323,325,708},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[9] = {302,339,342,351,710},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[9] = {353,355,390,711},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[9] = {328,332,380,712},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[9] = {336,337,713},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[9] = {357,359,714},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[9] = {361,362,391,715},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[9] = {365,368,716},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[9] = {372,375,394,717},
	},
}

function main()
	-- do return end
	-- dofile("script/event/birthday_jieri/200905/npc/npc_zhanxin_zunzhe.lua")
	 local tbSay={}
	 -- tinsert(tbSay,"Ta mu�n mua ng�a/buyHorse")
	 tinsert(tbSay,"Ta mu�n thay t�n ��i h�/about_rename_role")
	 tinsert(tbSay,"H�y v�t ph�m/DisposeItem")
	  tinsert(tbSay,"Nh�n h� tr� skill 9x/Get90Skill")
	tinsert(tbSay,"Nh�n c�p 80/level80")
	tinsert(tbSay, "Ch�c n�ng �� t�m/yellowitem")
	 tinsert(tbSay,"Ta mu�n nh�n h� tr� v� kh� xanh/hotrotest")
	tinsert(tbSay,"Nh�n set �� HKMP kh�ng khi�p/GetYoloHKMP")
	 tinsert(tbSay,"Ta mu�n ��i tr�ng th�i s�t th�/LeaveFaction")
	  tinsert(tbSay,"��i tr�ng th�i trung l�p /#ChangeCamp(3)")
	   tinsert(tbSay,"��i tr�ng th�i ch�nh ph�i /#ChangeCamp(1)")
	    tinsert(tbSay,"��i tr�ng th�i t� ph�i /#ChangeCamp(2)")
		tinsert(tbSay,"H� tr� 500 danh v�ng/bonusrepute")
		-- if GetTask(3023) ~=0 then
		-- end
		-- tinsert(tbSay,"Nh�n skill b�a ng� ��c/getwuduskill")
		-- tinsert(tbSay,"Nh�n skill buff nga my/getemeiskill")
	  -- tinsert(tbSay,"Nh�n skill c�i bang/getgaibangskill")
	  
	 tinsert(tbSay,"K�t th�c ��i tho�i/Quit")
	 -- Say("H� tr� x� l� c�c h�nh ��ng", getn(tbSay), tbSay)
	-- ----dofile("script/event/birthday_jieri/200905/npc/npc_zhanxin_zunzhe.lua")
	hotrotest()
end
function Get90Skill()
local szFaction = GetFaction()
-- local szFaction = GetFaction()
local tbSkillBook = {}
if szFaction == "shaolin" then
if (HaveMagic(318) <= 0) then AddMagic(318,1) end -- script viet hoa By http://tranhba.com  ��t Ma �� giang [318] 
if (HaveMagic(319) <= 0) then AddMagic(319,1) end -- script viet hoa By http://tranhba.com  ho�nh t�o thi�n qu�n [319]#90 c�p # 
if (HaveMagic(321) <= 0) then AddMagic(321,1) end -- script viet hoa By http://tranhba.com  v� t��ng ch�m [321]#90 c�p # 
-- tbSkillBook ={56,57,58}
elseif szFaction == "tianwang" then
if (HaveMagic(322) <= 0) then AddMagic(322,1) end -- script viet hoa By http://tranhba.com  x� tr�i ch�m [322]#90 c�p # 
if (HaveMagic(323) <= 0) then AddMagic(323,1) end -- script viet hoa By http://tranhba.com  �u�i tinh tr�c th�ng [323]#90 c�p # 
if (HaveMagic(325) <= 0) then AddMagic(325,1) end -- script viet hoa By http://tranhba.com  �u�i phong quy�t [325]#90 c�p # 
-- tbSkillBook ={37,38,39}
elseif szFaction == "tangmen" then
if (HaveMagic(339) <= 0) then AddMagic(339,1) end -- script viet hoa By http://tranhba.com  nhi�p h�n b�ng tr�ng [339]#90 c�p # 
if (HaveMagic(302) <= 0) then AddMagic(302,1) end -- script viet hoa By http://tranhba.com  m�a sa l� hoa [302]#90 c�p # 
if (HaveMagic(342) <= 0) then AddMagic(342,1) end -- script viet hoa By http://tranhba.com  c�u cung bay tinh [342]#90 c�p # 
if (HaveMagic(351) <= 0) then AddMagic(351) end -- script viet hoa By http://tranhba.com  c�u cung bay tinh [342]#90 c�p # 
-- tbSkillBook ={27,28,45,46}
elseif szFaction == "wudu" then
if (HaveMagic(353) <= 0) then AddMagic(353,1) end -- script viet hoa By http://tranhba.com  �m phong th�c c�t [353]#90 c�p # 
if (HaveMagic(355) <= 0) then AddMagic(355,1) end -- script viet hoa By http://tranhba.com  huy�n �m ch�m [355]#90 c�p # 
if (HaveMagic(390) <= 0) then AddMagic(390) end
-- tbSkillBook ={47,48,49}
elseif szFaction == "emei" then
if (HaveMagic(328) <= 0) then AddMagic(328,1) end -- script viet hoa By http://tranhba.com  ba nga t� tuy�t [328]#90 c�p # 
if (HaveMagic(380) <= 0) then AddMagic(380,1) end -- script viet hoa By http://tranhba.com  phong s��ng b� �nh [380]#90 c�p # '
if (HaveMagic(332) <= 0) then AddMagic(332) end
-- tbSkillBook ={42,43}
elseif szFaction == "cuiyan" then
if (HaveMagic(336) <= 0) then AddMagic(336,1) end -- script viet hoa By http://tranhba.com  b�ng tung v� �nh [336]#90 c�p # 
if (HaveMagic(337) <= 0) then AddMagic(337,1) end -- script viet hoa By http://tranhba.com  b�ng t�m ti�n t� [337]#90 c�p # 
-- tbSkillBook ={40,41}
elseif szFaction == "gaibang" then
if (HaveMagic(357) <= 0) then AddMagic(357,1) end -- script viet hoa By http://tranhba.com  phi long � tr�n tr�i [357]#90 c�p # 
if (HaveMagic(359) <= 0) then AddMagic(359,1) end -- script viet hoa By http://tranhba.com  thi�n h� v� ch� [359]#90 c�p # 
-- tbSkillBook ={54,55}
elseif szFaction == "tianren" then
if (HaveMagic(361) <= 0) then AddMagic(361,1) end -- script viet hoa By http://tranhba.com  v�n long k�ch [361]#90 c�p # 
if (HaveMagic(362) <= 0) then AddMagic(362,1) end -- script viet hoa By http://tranhba.com  Thi�n Ngo�i L�u Tinh [362]#90 c�p # 
if (HaveMagic(391) <= 0) then AddMagic(391) end -- script viet hoa By http://tranhba.com   [362]#90 c�p # 
-- tbSkillBook ={35,36}
elseif szFaction == "wudang" then
if (HaveMagic(365) <= 0) then AddMagic(365,1) end -- script viet hoa By http://tranhba.com  Thi�n ��a V� C�c [365]#90 c�p # 
if (HaveMagic(368) <= 0) then AddMagic(368,1) end -- script viet hoa By http://tranhba.com  ng��i ki�m h�p nh�t [368]#90 c�p # 
-- tbSkillBook ={33,34}
elseif szFaction == "kunlun" then
if (HaveMagic(372) <= 0) then AddMagic(372,1) end -- script viet hoa By http://tranhba.com  ng�o tuy�t khi�u phong [372]#90 c�p # 
if (HaveMagic(375) <= 0) then AddMagic(375,1) end -- script viet hoa By http://tranhba.com  l�i ��ng c�u thi�n [375]#90 c�p # 
-- tbSkillBook ={50,51,52}
else
Talk(1,"","Ng��i kh�ng ph�i l� �� t� c�a th�p ��i m�n ph�i")
return
end
end
function buyHorse()
Sale(49); 
end
function bonusrepute()
local nRepute = GetRepute()
if  nRepute >= 500 then--giay
Say("Danh v�ng ng��i �� qu� 500 kh�ng c�n h� tr� n�a.",0)
return
end
AddRepute(500 - nRepute)
end
function GetYoloHKMP()
if GetTask(2998) ~= 1 then
Say("Ch� nh�ng ng��i k�ch ho�t code � fanpage m�i c� th� nh�n v� kh�. Vui l�ng share b�i vi�t tr�n www.facebook.com/volamduky2014 �� nh�n th��ng.")
return
end
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
local nDate = tonumber(GetLocalDate("%y%m%d"));
if nDate >150805 then--giay
Say("Ch�c n�ng n�y t�m th�i ��ng",0)
return
end
-- end
-- local nNowTime = tonumber(date( "%H%M ")) 
-- if nNowTime >2300 then
-- return
-- end
Say("Ng��i mu�n ch�n b� n�o? L�u � n�n nh�n ��ng m�n ph�i c�a m�nh.",6,"B� HKMP t�p 1/#PreHKMP(1)","B� HKMP t�p 2/#PreHKMP(2)","B� HKMP t�p 3/#PreHKMP(3)","�� HKMP th�t truy�n 1/#PreHKMP(4)","�� HKMP th�t truy�n 2/#PreHKMP(5)","M�y c�i m�n �� n�y ta coi nh� c� r�c")
end
function PreHKMP(nChoice)
local tbHKMP = {}
if nChoice == 1 then
tbHKMP ={
"M�ng Long/#GetFinalItem(1)",
"Ph�c Ma/#GetFinalItem(2)",
"T� Kh�ng/#GetFinalItem(3)",
"H�m Thi�n/#GetFinalItem(4)",
"K� Nghi�p/#GetFinalItem(5)",
"Ng� Long/#GetFinalItem(6)",
"V� Gian/#GetFinalItem(7)",
"V� Ma/#GetFinalItem(8)",
"V� Tr�n/#GetFinalItem(9)",
"T� Ho�ng/#GetFinalItem(10)",
"To�n m�n v� v�n/no"
}
elseif nChoice == 2 then
tbHKMP ={
"B�ch H�i/#GetFinalItem(11)",
"U Lung/#GetFinalItem(12)",
"Minh �o/#GetFinalItem(13)",
"Ch� Ph��c/#GetFinalItem(14)",
"B�ng H�n/#GetFinalItem(15)",
"Thi�n Quang/#GetFinalItem(16)",
"S�m Hoang/#GetFinalItem(17)",
"��a Ph�ch/#GetFinalItem(18)",
"��ng C�u/#GetFinalItem(19)",
"��ch Kh�i/#GetFinalItem(20)",
"To�n m�n v� v�n/no"
}
elseif nChoice == 3 then
tbHKMP ={
"Ma S�t/#GetFinalItem(21)",
"Ma Ho�ng/#GetFinalItem(22)",
"Ma Th�/#GetFinalItem(23)",
"L�ng Nh�c/#GetFinalItem(24)",
"C�p Phong/#GetFinalItem(25)",
"S��ng Tinh/#GetFinalItem(26)",
"L�i Khung/#GetFinalItem(27)",
"V� �o/#GetFinalItem(28)",
"To�n m�n v� v�n/no"
}
elseif nChoice == 4 then
tbHKMP ={
"M�ng Long/#GetFinalItem(770)",
"Ph�c Ma/#GetFinalItem(772)",
"T� Kh�ng/#GetFinalItem(777)",
"Ng� Long/#GetFinalItem(794)",
"V� Gian/#GetFinalItem(797)",
"V� Y�m /#GetFinalItem(802)",
"V� tr�n/#GetFinalItem(809)",
"Th� Ho�ng/#GetFinalItem(812)",
"B�ch H�i/#GetFinalItem(817)",
"Minh Hoan/#GetFinalItem(830)",
"L�i Khung/#GetFinalItem(899)",
"M�y m�n n�y ta v�t ng��i l��m v� l�i �?/no"
}
elseif nChoice == 5 then
tbHKMP ={
"Ch� Ph��c/#GetFinalItem(835)",
"Thi�n Quang/#GetFinalItem(844)",
"��a Ph�ch/#GetFinalItem(855)",
"��ng C�u/#GetFinalItem(856)",
"Ma S�t/#GetFinalItem(869)",
"Ma Ho�ng /#GetFinalItem(875)",
"Ma Th�/#GetFinalItem(877)",
"L�ng Nh�c/#GetFinalItem(882)",
"C�p Phong/#GetFinalItem(889)",
"S��ng Tinh/#GetFinalItem(892)",
"V� Hoan/#GetFinalItem(902)",
"M�y m�n n�y ta v�t ng��i l��m v� l�i �?/no"
}
end

Say("To�n nh�ng m�n �� ta s�u t�p ���c t� th�p ��i cao th� th� gi�i",getn(tbHKMP),tbHKMP)
end
function GetFinalItem(nId)
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
if nId < 770 then
nId = (nId-1)*5+1
local nIdx = nId+ 4
for i=nId,nIdx do
local ItemIndex = AddGoldItem(0,i)
ITEM_SetExpiredTime(ItemIndex, 20150806);
SyncItem(ItemIndex);
SetItemBindState(ItemIndex,-2)
end
else
local ItemIndex = AddGoldItem(0,nId -1)
ITEM_SetExpiredTime(ItemIndex, 20150806);
SyncItem(ItemIndex);
SetItemBindState(ItemIndex,-2)

end
end
function getwuduskill()
if GetFaction()~="wudu" then
Say("H� tr� ch� cho c�c nh�n s� c�i bang",0)
return
end
if GetLevel()< 80 then
Say("C�y l�n c�p 80 r�i ��n t�m ta.",0)
return
end
if (HaveMagic(390) <= 0) then AddMagic(390) end
Say("Th�nh th�t xin l�i anh em c�i bang. Mong c�c b�n v�n �ng h� server",0)
end
function getemeiskill()
if GetFaction()~="emei" then
Say("H� tr� ch� cho c�c nh�n s� c�i bang",0)
return
end
if GetLevel()< 80 then
Say("C�y l�n c�p 80 r�i ��n t�m ta.",0)
return
end
if (HaveMagic(332) <= 0) then AddMagic(332) end
Say("Th�nh th�t xin l�i anh em c�i bang. Mong c�c b�n v�n �ng h� server",0)
end
tbPlayer ={

}
function ChangeCamp(nCamp)
if GetCamp()==0 or GetCurCamp()==0 then
Say("T�n th� kh�ng th� nh�n h� tr� n�y")
return
end
local szName = GetName()
if not tbPlayer[szName] then--giay
tbPlayer[szName] = {}
tbPlayer[szName].nTime = GetCurServerTime()
if GetCash() < 20000 then--giay
Say("Xin l�i c�n 2 v�n m�i c� th� ��i tr�ng th�i",0)
return
end
SetCurCamp(nCamp)
SetCamp(nCamp)
Pay(20000)
return
end
if abs(tbPlayer[szName].nTime - GetCurServerTime()) < 1800 then--giay
Say("Xin l�i sau 30 ph�t m�i ���c ��i tr�ng th�i 1 l�n",0)
return
end
if GetCash() < 20000 then--giay
Say("Xin l�i c�n 2 v�n m�i c� th� ��i tr�ng th�i",0)
return
end
Pay(20000)
SetCurCamp(nCamp)
SetCamp(nCamp)
tbPlayer[szName].nTime = GetCurServerTime()
Say("Chuy�n tr�ng th�i th�nh c�ng",0)
end
function getgaibangskill()
if GetFaction()~="gaibang" then
Say("H� tr� ch� cho c�c nh�n s� c�i bang",0)
return
end
if GetLevel()< 80 then
Say("C�y l�n c�p 80 r�i ��n t�m ta.",0)
return
end
if (HaveMagic(357) <= 0) then AddMagic(357,1) end -- script viet hoa By http://tranhba.com  phi long � tr�n tr�i [357]#90 c�p # 
if (HaveMagic(359) <= 0) then AddMagic(359,1) end -- script viet hoa By http://tranhba.com  thi�n h� v� ch� [359]#90 c�p # 
Say("Th�nh th�t xin l�i anh em c�i bang. Mong c�c b�n v�n �ng h� server",0)
end
function LeaveFaction()
if GetCamp()==0 or GetCurCamp()==0 then
Say("T�n th� kh�ng th� nh�n h� tr� n�y")
return
end
-- if GetCash() < 20000 then 
-- Say("Xu�t s� c�n 2 v�n l��ng ti�n h�i l�.")
-- return
-- end
-- Pay(20000)
SetCamp(4)
SetCurCamp(4)
Msg2Player("Xu�t s� th�nh c�ng, c� th� xu�ng n�i th� luy�n")
end
function hotrotanthu()
	if GetLevel()<50 then
		AddSkillState(512,20,1,60*60*18)--40����
		AddSkillState(527,5,1,60*60*18)--500Ѫ
		AddSkillState(313,5,1,60*60*18)--20ȫ��
		AddSkillState(314,12,1,60*60*18)--7�ظ�Ѫ��5�ظ���
		AddSkillState(546,1,1,60*60*18)--���͹⻷
	end
end

function hotrotest()
	-- for i=10277,10287 do
		-- Ladder_ClearLadder(i)
	-- end
	-- Ladder_ClearLadder(10119)
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	if not tbPlayer[GetName()] then--giay
	tbPlayer[GetName()]={}
	tbPlayer[GetName()].nSex = GetSex()
	tbPlayer[GetName()].nTime=0--anti spam
	tbPlayer[GetName()].nSeries=0--lua chon he 
	end
	local tbSay = {}
	-- tinsert(tbSay,"H�y v�t ph�m/DisposeItem")
	tinsert(tbSay,"Ta mu�n l�n c�p 150/level80")
	tinsert(tbSay,"Ta mu�n v�t ph�m h� tr� /vpht")
	tinsert(tbSay, "Ch�c n�ng �� t�m/yellowitem")
	tinsert(tbSay,"Ta mu�n nh�n trang b� ho�ng kim /hoangkim")
	tinsert(tbSay,"Ta mu�n th�ng c�p/HoTroLevel180")
	tinsert(tbSay,"Ta muon nhan set kim phong/addkimphong")
	tinsert(tbSay,"Ta mu�n t�o bang h�i/BuildTong")
	tinsert(tbSay,"Ta mu�n h�c v� c�ng/HoTroSkill")
	tinsert(tbSay,"Ta mu�n nh�n �� xanh/SelectSeries")
	tinsert(tbSay,"Ta mu�n ch� t�o trang b� Huy�n Tinh/chetao")
	tinsert(tbSay,"Nh�n ph�i trang b� Huy�n Tinh./dotim")
	tinsert(tbSay,"H�y v�t ph�m/DisposeItem")
	tinsert(tbSay,"K�t th�c ��i tho�i/Quit")
	-- tinsert(tbSay,"Thong bao bao tri toan server/thongbao")
	Say(szNpcName, getn(tbSay), tbSay)
end
-- tinsert(tbSay,"Ta mu�n Qu� hoa T�u (May M�n)/quehoatuu")
-- tinsert(tbSay,"Ta mu�n Huy�n tinh/huytin")
-- tinsert(tbSay,"Ta mu�n Ph�c Duy�n L� /Phucduyen")
-- tinsert(tbSay,"Ta mu�n kho�ng th�ch/kdb")
-- tinsert(tbSay,"Ta mu�n Th�n H�nh Ph�/HoTroThanHanh")
-- tinsert(tbSay,"Ta mu�n 6 Tinh H�ng B�o Th�ch/HoTroTinhHong")
-- tinsert(tbSay,"Ta mu�n 3 Lo�i Th�y Tinh/HoTroThuyTinh")
-- tinsert(tbSay,"Ta mu�n ng�n l��ng/HoTroNganLuong")
-- tinsert(tbSay,"Ta mu�n ti�n ��ng/TienDong")
-- tinsert(tbSay,"Ta mu�n nh�n c�c lo�i ng�a/addhorse")
function yellowitem()
local szTitle = "<npc>Cu�c chi�n l�y B�n ti�u v�n ch�a bao gi� ngu�i ngoai. Ta nghe ng�ng tin t�c ���c danh s�ch top ng��i c� th� tham kh�o"
local tbOpt ={
}
tinsert(tbOpt, 1, {"Tho�t",no})
tinsert(tbOpt, 1, {"Nh�n ph�i trang b� Huy�n Tinh",dotim})
tinsert(tbOpt, 1, {"Ta mu�n Huy�n tinh",huytin})
tinsert(tbOpt, 1, {"Ta mu�n kho�ng th�ch",kdb})
tinsert(tbOpt, 1, {"Ta mu�n 3 Lo�i Th�y Tinh",HoTroThuyTinh})
tinsert(tbOpt, 1, {"Ta mu�n Ph�c Duy�n L�",Phucduyen})
tinsert(tbOpt, 1, {"Ta mu�n ch� t�o trang b� Huy�n Tinh",chetao})
tinsert(tbOpt, 1, {"Ta mu�n l�y m�nh thi�n th�ch",getblackstone})
tinsert(tbOpt, 1, {"Ta mu�n l�y b� �� ph� 1",getdopho,{1}})
tinsert(tbOpt, 1, {"Ta mu�n l�y b� �� ph� 2",getdopho,{2}})
CreateNewSayEx(szTitle, tbOpt)
end
function getdopho(nChoice)
local szTitle = "<npc>Ng��i mu�n l�y b� ph� n�o?"
local tbOpt ={
}
Msg2Player("nChoice"..nChoice)
-- do return end
tinsert(tbOpt, 1, {"Tho�t",no})
if nChoice ==1 then
tinsert(tbOpt, 1, {"Nh�n b� ph� M�ng Long",getpho,{239}})
tinsert(tbOpt, 1, {"Nh�n b� ph� Ph�c Ma",getpho,{244}})
tinsert(tbOpt, 1, {"Nh�n b� ph� T� Kh�ng",getpho,{249}})
tinsert(tbOpt, 1, {"Nh�n b� ph� H�m Thi�n",getpho,{254}})
tinsert(tbOpt, 1, {"Nh�n b� ph� K� Nghi�p",getpho,{259}})
tinsert(tbOpt, 1, {"Nh�n b� ph� Ng� Long",getpho,{264}})
tinsert(tbOpt, 1, {"Nh�n b� ph�  V� Gian",getpho,{269}})
tinsert(tbOpt, 1, {"Nh�n b� ph� V� Ma",getpho,{274}})
tinsert(tbOpt, 1, {"Nh�n b� ph� V� Tr�n",getpho,{279}})
tinsert(tbOpt, 1, {"Nh�n b� ph� T� Ho�ng",getpho,{284}})
tinsert(tbOpt, 1, {"Nh�n b� ph� B�ch H�i",getpho,{289}})
tinsert(tbOpt, 1, {"Nh�n b� ph� U Lung",getpho,{294}})
tinsert(tbOpt, 1, {"Nh�n b� ph� Minh �o",getpho,{299}})
else
tinsert(tbOpt, 1, {"Nh�n b� ph� Ch� Ph��c",getpho,{304}})
tinsert(tbOpt, 1, {"Nh�n b� ph�  B�ng H�n",getpho,{309}})
tinsert(tbOpt, 1, {"Nh�n b� ph� Thi�n Quang",getpho,{314}})
tinsert(tbOpt, 1, {"Nh�n b� ph� S�m Hoang",getpho,{319}})
tinsert(tbOpt, 1, {"Nh�n b� ph� ��a Ph�ch",getpho,{324}})
tinsert(tbOpt, 1, {"Nh�n b� ph� ��ng C�u",getpho,{329}})
tinsert(tbOpt, 1, {"Nh�n b� ph� ��ch Kh�i",getpho,{334}})
tinsert(tbOpt, 1, {"Nh�n b� ph�  Ma S�t",getpho,{339}})
tinsert(tbOpt, 1, {"Nh�n b� ph� Ma Th� ",getpho,{344}})
tinsert(tbOpt, 1, {"Nh�n b� ph� Ma Ho�ng ",getpho,{349}})
tinsert(tbOpt, 1, {"Nh�n b� ph�  L�ng Nh�c ",getpho,{354}})
tinsert(tbOpt, 1, {"Nh�n b� ph� C�p Phong ",getpho,{359}})
tinsert(tbOpt, 1, {"Nh�n b� ph� S��ng Tinh ",getpho,{364}})
tinsert(tbOpt, 1, {"Nh�n b� ph� L�i Khung ",getpho,{369}})
tinsert(tbOpt, 1, {"Nh�n b� ph� V� �o ",getpho,{374}})
end
CreateNewSayEx(szTitle, tbOpt)
-- tinsert(tbOpt, 1, {"Nh�n b� ph� S��ng Tinh ",getpho,{1}})

-- for i=329,338 do
-- AddItem(6,1,i,1,0,0)
-- end
end
function getpho(nId)
for i=nId,nId+4 do
AddItem(6,1,i,1,0,0)
end
end
function getblackstone()
for i=1317,1325 do 
AddItem(4,i,1,1,0,0)
end
end
function level80()
local nLevel = GetLevel()
if nLevel >=150 then--giay
return
end
for i=1,(150-nLevel) do
AddOwnExp(1000000000)
end
end
function SelectSeries()
-- local nDate = tonumber(GetLocalDate("%y%m%d"));
-- if nDate >=150523 then--giay
-- Say("Ch�c n�ng n�y t�m th�i ��ng",0)
-- return
-- end
Say("B�n mu�n h� n�o?",6,"H� kim/#nhantrangbi(0)","H� m�c/#nhantrangbi(1)","H� th�y/#nhantrangbi(2)","H� h�a/#nhantrangbi(3)",
"H� th�/#nhantrangbi(4)","Ta quay l�i sau/no")
end
tbPlayer=tbPlayer or {}
function nhantrangbi(nSeries)
-- Msg2Player(""..nSeries)
tbPlayer[GetName()].nSeries=tonumber(nSeries) 
Say("Ng��i mu�n g�",10,
"Nh�n V� Kh�/vukhi",--1
-- "Nh�n V� Kh� t�m xa/vukhi",--2
-- "Nh�n c�c lo�i �o/nhando",--3
-- "Nh�n c�c lo�i nh�n/nhando",--4
-- "Nh�n D�y chuy�n/nhando",--5
-- "Nh�n gi�y/nhando",--6
-- "Nh�n th�t l�ng/nhando",--7
-- "Nh�n M�/nhando",--8
-- "Nh�n Bao tay/nhando",--9
-- "Nh�n Ng�c b�i/nhando",--10
"Tho�t/no")
end;
function vukhi()
Say("Xin m�i ch�n lo�i v� kh� ?",10,"Ki�m/kiem1","�ao/dao1","B�ng/bong1","Th��ng/thuong1","Ch�y/chuy1","Song �ao/songdao1","Phi ti�u/pt1","Phi �ao/pd1",
"T� ti�n/tt1","Tho�t/no")
end
function kiem1()
-- a = 3
-- Msg2Player("Gia tri he"..tbPlayer[GetName()].nSeries)
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 0, 0, 9, a, 0, 10)
ITEM_SetExpiredTime(ItemIndex, 1440);
 SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 0, 0, 10, a, 200, 10)
-- AddItem( 0, 0, 0, 10, a, 200, 10)	
-- AddItem( 0, 0, 0, 10, a, 200, 10)	
-- AddItem( 0, 0, 0, 10, a, 200, 10)	
-- AddItem( 0, 0, 0, 10, a, 200, 10)	
end

function dao1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 0, 1, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 0, 1, 10, a, 200, 10)	
-- AddItem( 0, 0, 1, 10, a, 200, 10)	
-- AddItem( 0, 0, 1, 10, a, 200, 10)	
-- AddItem( 0, 0, 1, 10, a, 200, 10)	
-- AddItem( 0, 0, 1, 10, a, 200, 10)	

end

function bong1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 0, 2, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 0, 2, 10, a, 200, 10)	
-- AddItem( 0, 0, 2, 10, a, 200, 10)
-- AddItem( 0, 0, 2, 10, a, 200, 10)
-- AddItem( 0, 0, 2, 10, a, 200, 10)
-- AddItem( 0, 0, 2, 10, a, 200, 10)
-- AddItem( 0, 0, 2, 10, a, 200, 10)
end

function thuong1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 0, 3, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 0, 3, 10, a, 200, 10)	
-- AddItem( 0, 0, 3, 10, a, 200, 10)	
-- AddItem( 0, 0, 3, 10, a, 200, 10)	
-- AddItem( 0, 0, 3, 10, a, 200, 10)	
-- AddItem( 0, 0, 3, 10, a, 200, 10)	

end

function chuy1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 0, 4, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 0, 4, 10, a, 200, 10)
-- AddItem( 0, 0, 4, 10, a, 200, 10)
-- AddItem( 0, 0, 4, 10, a, 200, 10)
-- AddItem( 0, 0, 4, 10, a, 200, 10)
-- AddItem( 0, 0, 4, 10, a, 200, 10)
end

function songdao1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 0, 5, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 0, 5, 10, a, 200, 10)	
-- AddItem( 0, 0, 5, 10, a, 200, 10)	
-- AddItem( 0, 0, 5, 10, a, 200, 10)	
-- AddItem( 0, 0, 5, 10, a, 200, 10)	
-- AddItem( 0, 0, 5, 10, a, 200, 10)	
end

function pt1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 1, 0, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 1, 0, 10, a, 200, 10)
-- AddItem( 0, 1, 0, 10, a, 200, 10)
-- AddItem( 0, 1, 0, 10, a, 200, 10)
-- AddItem( 0, 1, 0, 10, a, 200, 10)
-- AddItem( 0, 1, 0, 10, a, 200, 10)
end

function pd1()
local a = tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 1, 1, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
-- AddItem( 0, 1, 1, 10, a, 200, 10)
-- AddItem( 0, 1, 1, 10, a, 200, 10)
-- AddItem( 0, 1, 1, 10, a, 200, 10)
-- AddItem( 0, 1, 1, 10, a, 200, 10)
-- AddItem( 0, 1, 1, 10, a, 200, 10)
end

function tt1()
a =tbPlayer[GetName()].nSeries
local ItemIndex  = AddItem( 0, 1, 2, 9, a, 0, 10)	
ITEM_SetExpiredTime(ItemIndex, 1440);
SetItemBindState(ItemIndex,-2)
SyncItem(ItemIndex);
 -- AddItem( 0, 1, 2, 10, a, 200, 10)	
  -- AddItem( 0, 1, 2, 10, a, 200, 10)	
   -- AddItem( 0, 1, 2, 10, a, 200, 10)	
    -- AddItem( 0, 1, 2, 10, a, 200, 10)	
	 -- AddItem( 0, 1, 2, 10, a, 200, 10)	

end
function nhando(a)	
-- "Nh�n c�c lo�i �o/nhando",--2
-- "Nh�n c�c lo�i nh�n/nhando",--3
-- "Nh�n D�y chuy�n/nhando",--4
-- "Nh�n gi�y/nhando",--5
-- "Nh�n th�t l�ng/nhando",--6
-- "Nh�n M�/nhando",--7
-- "Nh�n Bao tay/nhando",--8
-- "Nh�n Ng�c b�i/nhando",--9
-- Msg2Player("Gia tri lua chon"..a)	

local szName = GetName()
local nValue = abs(tbPlayer[szName].nSex-1)
-- local nSeries = abs(tbPlayer[szName].nSeries-1)
-- a=a+1
if (a==2) then --ao
	-- local temp = tbPlayer[szName].nSex*
	
		if tbPlayer[szName].nSex==0 then--nu
		for b=0,6 do
		AddItem(0,a,random(0,7),10,tbPlayer[szName].nSeries,200, 10)
		end
		else
		for b=0,6 do
		AddItem(0,a,random(8,15),10,tbPlayer[szName].nSeries,200, 10)
		end
		end

elseif (a==3) then 
	for b=0,6 do	
		AddItem(0,3,0,10,tbPlayer[szName].nSeries,200, 10)
	end
elseif (a==4) then --day chuyen 
	for b=0,6 do	
		AddItem(0,4,nValue,10,tbPlayer[szName].nSeries,200, 10)
	end	
elseif a==5 then--giay
	if tbPlayer[szName].nSex==0 then--nu
	for b=0,6 do
	AddItem(0,5,random(0,1),10,tbPlayer[szName].nSeries,200, 10)
	end
	else
		for b=0,6 do
		AddItem(0,5,random(2,3),10,tbPlayer[szName].nSeries,200, 10)
		end
	end
elseif (a==6) then -- that lung

	for b=0,6 do
	AddItem(0,6,random(0,1),10,tbPlayer[szName].nSeries,200, 10)
	end
-- elseif (a==0) then 
	-- for b=0,6 do
		-- AddItem(0,a,b,10,tbPlayer[szName].nSeries,200, 10)
	-- end
elseif a==7 then--giay
	if tbPlayer[szName].nSex==0 then--nam
	for b=0,6 do
	AddItem(0,7,random(0,7),10,tbPlayer[szName].nSeries,200, 10)
	end
	else
		for b=0,6 do
		AddItem(0,7,random(8,13),10,tbPlayer[szName].nSeries,200, 10)
		end
	end
elseif a==8 then--giay
	if tbPlayer[szName].nSex==0 then--nam
	for b=0,6 do
	AddItem(0,8,1,10,tbPlayer[szName].nSeries,200, 10)
	end
	else
		for b=0,6 do
		AddItem(0,8,0,10,tbPlayer[szName].nSeries,200, 10)
		end
	end
elseif (a==9) then -- ngoc boi
	for b=0,6 do
		AddItem(0,9,nValue,10,tbPlayer[szName].nSeries,200, 10)
	end
else 
return 

end;
end
-------------------------------------------endddddddddddd�----------------------------------------
function thongbao()
AddGlobalNews("Rat tiec phai bao tri")
end
function addkimphong()
for i=177,185 do
local nItemIndex = AddGoldItem(0,i)
SetItemBindState(nItemIndex,-2)
end
end
function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end
function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end
function vpht()
local tbSay = {}
tinsert(tbSay,"Ta mu�n Qu� hoa T�u (May M�n)/quehoatuu")
-- tinsert(tbSay,"Ta mu�n Huy�n tinh/huytin")
-- tinsert(tbSay,"Ta mu�n Ph�c Duy�n L� /Phucduyen")
-- tinsert(tbSay,"Ta mu�n kho�ng th�ch/kdb")
tinsert(tbSay,"Ta mu�n Th�n H�nh Ph�/HoTroThanHanh")
tinsert(tbSay,"Ta mu�n 6 Tinh H�ng B�o Th�ch/HoTroTinhHong")
-- tinsert(tbSay,"Ta mu�n 3 Lo�i Th�y Tinh/HoTroThuyTinh")
tinsert(tbSay,"Ta mu�n ng�n l��ng/HoTroNganLuong")
tinsert(tbSay,"Ta mu�n ti�n ��ng/TienDong")
tinsert(tbSay,"Ta mu�n nh�n c�c lo�i ng�a/addhorse")
-- tinsert(tbSay,"L�nh B�i Boss Ho�ng Kim/LBBoss")
tinsert(tbSay,"K�t th�c ��i tho�i/Quit")
Say(szNpcName, getn(tbSay), tbSay)
end
function addhorse()
for i=2328,2334 do
AddItem(6,1,i,1,0,0)
end
end
function chetao()
Say( "N�u ��i hi�p mu�n c� m�t m�n �� v�a � th� �em ��y �� nguy�n li�u t�i ��y. Ta s� ��c luy�n m�t v�t ph�m ng��i th�ch nh�t!", 4, "B�t ��u ch� t�o/onFoundryItem", "Li�n quan ch� t�o/onAbout", "T�m hi�u m�nh Ho�ng Kim./onQueryPiece","�� ta suy ngh� k� l�i xem/onCancel");
end
function hoangkimmp()
	local strFaction = GetFaction()
	if (tbItemHK[strFaction] == nil) then
		Talk(1, "", "C�c h� v�n ch�a gia nh�p m�n ph�i!");
		return
	end
	local tbOpp = {}
	local str = "<#> Ta cho ph�p ��i hi�p ch�n 1 trong nh�ng trang b� Ho�ng Kim M�n Ph�i ";
	for i=1, getn(tbItemHK[strFaction]) do
		local strItemName = tbItemHK[strFaction][i].szName
		local nID =  tbItemHK[strFaction][i].nID
		tinsert(tbOpp,"Ta mu�n nh�n".. strItemName.." /#GetBonusHK(" .. nID .. ")");
	end
	tinsert(tbOpp, "<#>Tho�t/OnCancel")
	if ( getn( tbOpp ) == 0 ) then
		Say(str, 0);
		return
	end;
	Say( str, getn( tbOpp ), tbOpp )
end

function GetBonusHK(nID)
	local nIndex = AddGoldItem(0, nID)
	local strItemName = GetItemName(nIndex)
	Msg2Player("B�n nh�n ���c "..strItemName)
end

function hoangkim()
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	local TabSayPotion = {
		"Nh�n An Bang./item",
		"Nh�n ��nh Qu�c./item",
		"Nh�n Nhu T�nh./item",
		"Nh�n Hi�p C�t./item",
		"Nh�n ��ng S�t./item",
		"Nh�n HKMP./hoangkimmp",
		"K�t th�c ��i tho�i./Quit",
	}
	Say("H� tr�",getn(TabSayPotion),TabSayPotion)
end
function item(sel)
if sel==0 then
	for i=164,167 do
		local ItemIdx=AddGoldItem(0, i);
	end
elseif sel==1 then
	for i=159,163 do
		local ItemIdx=AddGoldItem(0, i);
	end
elseif sel==2 then
	for i=190,193 do
		local ItemIdx=AddGoldItem(0, i);
	end
elseif sel==3 then
	for i=186,189 do
		local ItemIdx=AddGoldItem(0, i);
	end
elseif sel==4 then
	for i=143,146 do
		local ItemIdx=AddGoldItem(0, i);
	end
end
print(GetName()..sel)
end

function BuildTong()			-- ��ɽ����׼������
if GetLevel()<5 then
	return
end
local szTongName, nTongID = GetTongName();	
	if szTongName == nil or szTongName == "" then
		SetCurCamp(4)
		SetCamp(4)
		Earn(10^9)
		AddLeadExp(10011100)
		AddRepute(500)
		AddEventItem(195)
		NewWorld(2,2350,3493)
	end
end;
function HoTroThuyTinh()
	for i=238,240 do
		AddItem(4, i, 1, 1, 0, 0)
	end
	
end

function TienDong()
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
end
function Phucduyen()
	for i=1,5 do
		AddItem(6,1,124,1,0,0)
	end
end
function HoTroTinhHong()
	for i=1,6 do
		AddItem(4, 353, 1, 1, 0, 0)
	end
end

function quehoatuu()
AddItem(6, 1, 125, 1, 0, 0)
end

function HoTroNganLuong()
	Earn(10000000)
end


function HoTroLevel180()
	local nCurLevel = GetLevel()
	if nCurLevel >= 150 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 120 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 150 - nCurLevel
end

function HoTroThanHanh()
	AddItem(6,1,1266,1,0,0);
end


function HoTroBiKip90()
	local nFact = GetLastFactionNumber()
	if nFact == nil or nFact < 0 or  nFact > 9 then
		return
	end
	local szFaction = GetFaction()
	if tbSkillBook90[szFaction] == nil then
		return
	end
	for i=1, getn(tbSkillBook90[szFaction]) do
		AddItem(6,1,tbSkillBook90[szFaction][i],1,0,0)
	end
end
function LBBoss()
	if GetLevel()>=199 then
			AddItem(6,1,1478,1,0,0);
	end
end
function HoTroSkill()
	local nIndex = floor(GetLevel()/10)
	local szFaction = GetFaction()
	if tbAllSkill[szFaction] == nil then
		return
	end
	if nIndex >= 1 then
		for i=1, min(9,nIndex) do
			if tbAllSkill[szFaction][i] ~= nil then
				for j=1, getn(tbAllSkill[szFaction][i]) do
					if i ==9 then
						if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill[szFaction][i][j],20)
						end
					else
						if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill[szFaction][i][j])
						end
					end
				end
			end
		end
	end
end
function dotim()	
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huytin()
for i=1,10 do
AddStackItem(10,6,1,147,i,0,0,0)
end
-- AddItem(6,1,147,10,0,0,0) 	
-- AddItem(6,1,147,10,0,0,0) 	
-- AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
-- for i=1,10 do
AddStackItem(10,6,1,149,1,0,0,0)
AddStackItem(10,6,1,151,1,0,0,0)
AddStackItem(10,6,1,153,1,0,0,0)
-- end
for i=0,4 do
AddStackItem(10,6,1,150,1,i,0,0)
AddStackItem(10,6,1,152,1,i,0,0)
AddStackItem(10,6,1,154,1,i,0,0)
end
-- AddItem(6,1,149,1,0,0,0) 
-- AddItem(6,1,149,1,1,0,0) 
-- AddItem(6,1,150,1,2,0,0) 
-- AddItem(6,1,150,1,3,0,0) 
-- AddItem(6,1,150,1,4,0,0) 

-- AddItem(6,1,151,1,0,0,0) 
-- AddItem(6,1,152,1,1,0,0) 
-- AddItem(6,1,152,1,2,0,0)
-- AddItem(6,1,152,1,3,0,0)
-- AddItem(6,1,152,1,4,0,0)

-- AddItem(6,1,153,1,0,0,0) 
-- AddItem(6,1,154,1,1,0,0) 	
-- AddItem(6,1,154,1,2,0,0) 	
-- AddItem(6,1,154,1,3,0,0) 	
-- AddItem(6,1,154,1,4,0,0) 	
end
