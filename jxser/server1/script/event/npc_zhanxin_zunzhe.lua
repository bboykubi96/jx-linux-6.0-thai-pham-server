Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\spreader\\spreader.lua")
szNpcName = "<color=green>Hç trî Thö nghiÖm<color>: Phiªn b¶n C«ng Thµnh ChiÕn Tõ V¨n S¬n "
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
	 -- tinsert(tbSay,"Ta muèn mua ngùa/buyHorse")
	 tinsert(tbSay,"Ta muèn thay tªn ®æi hä/about_rename_role")
	 tinsert(tbSay,"Hñy vËt phÈm/DisposeItem")
	  tinsert(tbSay,"NhËn hç trî skill 9x/Get90Skill")
	tinsert(tbSay,"NhËn cÊp 80/level80")
	tinsert(tbSay, "Chøc n¨ng ®å tÝm/yellowitem")
	 tinsert(tbSay,"Ta muèn nhËn hç trî vò khÝ xanh/hotrotest")
	tinsert(tbSay,"NhËn set ®å HKMP khñng khiÕp/GetYoloHKMP")
	 tinsert(tbSay,"Ta muèn ®æi tr¹ng th¸i s¸t thñ/LeaveFaction")
	  tinsert(tbSay,"§æi tr¹ng th¸i trung lËp /#ChangeCamp(3)")
	   tinsert(tbSay,"§æi tr¹ng th¸i chÝnh ph¸i /#ChangeCamp(1)")
	    tinsert(tbSay,"§æi tr¹ng th¸i tµ ph¸i /#ChangeCamp(2)")
		tinsert(tbSay,"Hç trî 500 danh väng/bonusrepute")
		-- if GetTask(3023) ~=0 then
		-- end
		-- tinsert(tbSay,"NhËn skill bïa ngò ®éc/getwuduskill")
		-- tinsert(tbSay,"NhËn skill buff nga my/getemeiskill")
	  -- tinsert(tbSay,"NhËn skill c¸i bang/getgaibangskill")
	  
	 tinsert(tbSay,"KÕt thóc ®èi tho¹i/Quit")
	 -- Say("Hç trî xö lý c¸c hµnh ®éng", getn(tbSay), tbSay)
	-- ----dofile("script/event/birthday_jieri/200905/npc/npc_zhanxin_zunzhe.lua")
	hotrotest()
end
function Get90Skill()
local szFaction = GetFaction()
-- local szFaction = GetFaction()
local tbSkillBook = {}
if szFaction == "shaolin" then
if (HaveMagic(318) <= 0) then AddMagic(318,1) end -- script viet hoa By http://tranhba.com  §¹t Ma ®é giang [318] 
if (HaveMagic(319) <= 0) then AddMagic(319,1) end -- script viet hoa By http://tranhba.com  hoµnh t¶o thiªn qu©n [319]#90 cÊp # 
if (HaveMagic(321) <= 0) then AddMagic(321,1) end -- script viet hoa By http://tranhba.com  v« t­íng chÐm [321]#90 cÊp # 
-- tbSkillBook ={56,57,58}
elseif szFaction == "tianwang" then
if (HaveMagic(322) <= 0) then AddMagic(322,1) end -- script viet hoa By http://tranhba.com  xÐ trêi chÐm [322]#90 cÊp # 
if (HaveMagic(323) <= 0) then AddMagic(323,1) end -- script viet hoa By http://tranhba.com  ®uæi tinh trôc th¸ng [323]#90 cÊp # 
if (HaveMagic(325) <= 0) then AddMagic(325,1) end -- script viet hoa By http://tranhba.com  ®uæi phong quyÕt [325]#90 cÊp # 
-- tbSkillBook ={37,38,39}
elseif szFaction == "tangmen" then
if (HaveMagic(339) <= 0) then AddMagic(339,1) end -- script viet hoa By http://tranhba.com  nhiÕp hån bãng tr¨ng [339]#90 cÊp # 
if (HaveMagic(302) <= 0) then AddMagic(302,1) end -- script viet hoa By http://tranhba.com  m­a sa lª hoa [302]#90 cÊp # 
if (HaveMagic(342) <= 0) then AddMagic(342,1) end -- script viet hoa By http://tranhba.com  cöu cung bay tinh [342]#90 cÊp # 
if (HaveMagic(351) <= 0) then AddMagic(351) end -- script viet hoa By http://tranhba.com  cöu cung bay tinh [342]#90 cÊp # 
-- tbSkillBook ={27,28,45,46}
elseif szFaction == "wudu" then
if (HaveMagic(353) <= 0) then AddMagic(353,1) end -- script viet hoa By http://tranhba.com  ©m phong thùc cèt [353]#90 cÊp # 
if (HaveMagic(355) <= 0) then AddMagic(355,1) end -- script viet hoa By http://tranhba.com  huyÒn ©m chÐm [355]#90 cÊp # 
if (HaveMagic(390) <= 0) then AddMagic(390) end
-- tbSkillBook ={47,48,49}
elseif szFaction == "emei" then
if (HaveMagic(328) <= 0) then AddMagic(328,1) end -- script viet hoa By http://tranhba.com  ba nga tÔ tuyÕt [328]#90 cÊp # 
if (HaveMagic(380) <= 0) then AddMagic(380,1) end -- script viet hoa By http://tranhba.com  phong s­¬ng bÓ ¶nh [380]#90 cÊp # '
if (HaveMagic(332) <= 0) then AddMagic(332) end
-- tbSkillBook ={42,43}
elseif szFaction == "cuiyan" then
if (HaveMagic(336) <= 0) then AddMagic(336,1) end -- script viet hoa By http://tranhba.com  b¨ng tung v« ¶nh [336]#90 cÊp # 
if (HaveMagic(337) <= 0) then AddMagic(337,1) end -- script viet hoa By http://tranhba.com  b¨ng t©m tiªn tö [337]#90 cÊp # 
-- tbSkillBook ={40,41}
elseif szFaction == "gaibang" then
if (HaveMagic(357) <= 0) then AddMagic(357,1) end -- script viet hoa By http://tranhba.com  phi long ë trªn trêi [357]#90 cÊp # 
if (HaveMagic(359) <= 0) then AddMagic(359,1) end -- script viet hoa By http://tranhba.com  thiªn h¹ v« chã [359]#90 cÊp # 
-- tbSkillBook ={54,55}
elseif szFaction == "tianren" then
if (HaveMagic(361) <= 0) then AddMagic(361,1) end -- script viet hoa By http://tranhba.com  v©n long kÝch [361]#90 cÊp # 
if (HaveMagic(362) <= 0) then AddMagic(362,1) end -- script viet hoa By http://tranhba.com  Thiªn Ngo¹i L­u Tinh [362]#90 cÊp # 
if (HaveMagic(391) <= 0) then AddMagic(391) end -- script viet hoa By http://tranhba.com   [362]#90 cÊp # 
-- tbSkillBook ={35,36}
elseif szFaction == "wudang" then
if (HaveMagic(365) <= 0) then AddMagic(365,1) end -- script viet hoa By http://tranhba.com  Thiªn §Þa V« Cùc [365]#90 cÊp # 
if (HaveMagic(368) <= 0) then AddMagic(368,1) end -- script viet hoa By http://tranhba.com  ng­êi kiÕm hîp nhÊt [368]#90 cÊp # 
-- tbSkillBook ={33,34}
elseif szFaction == "kunlun" then
if (HaveMagic(372) <= 0) then AddMagic(372,1) end -- script viet hoa By http://tranhba.com  ng¹o tuyÕt khiÕu phong [372]#90 cÊp # 
if (HaveMagic(375) <= 0) then AddMagic(375,1) end -- script viet hoa By http://tranhba.com  l«i ®éng cöu thiªn [375]#90 cÊp # 
-- tbSkillBook ={50,51,52}
else
Talk(1,"","Ng­¬i kh«ng ph¶i lµ ®Ö tö cña thËp ®¹i m«n ph¸i")
return
end
end
function buyHorse()
Sale(49); 
end
function bonusrepute()
local nRepute = GetRepute()
if  nRepute >= 500 then--giay
Say("Danh väng ng­¬i ®· qu¸ 500 kh«ng cÇn hç trî n÷a.",0)
return
end
AddRepute(500 - nRepute)
end
function GetYoloHKMP()
if GetTask(2998) ~= 1 then
Say("ChØ nh÷ng ng­êi kÝch ho¹t code ë fanpage míi cã thÓ nhËn vò khÝ. Vui lßng share bµi viÕt trªn www.facebook.com/volamduky2014 ®Ó nhËn th­ëng.")
return
end
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
local nDate = tonumber(GetLocalDate("%y%m%d"));
if nDate >150805 then--giay
Say("Chøc n¨ng nµy t¹m thêi ®ãng",0)
return
end
-- end
-- local nNowTime = tonumber(date( "%H%M ")) 
-- if nNowTime >2300 then
-- return
-- end
Say("Ng­êi muèn chän bé nµo? L­u ý nªn nhËn ®óng m«n ph¸i cña m×nh.",6,"Bé HKMP tËp 1/#PreHKMP(1)","Bé HKMP tËp 2/#PreHKMP(2)","Bé HKMP tËp 3/#PreHKMP(3)","§å HKMP thÊt truyÒn 1/#PreHKMP(4)","§å HKMP thÊt truyÒn 2/#PreHKMP(5)","MÊy c¸i mãn ®å nµy ta coi nh­ cá r¸c")
end
function PreHKMP(nChoice)
local tbHKMP = {}
if nChoice == 1 then
tbHKMP ={
"Méng Long/#GetFinalItem(1)",
"Phôc Ma/#GetFinalItem(2)",
"Tø Kh«ng/#GetFinalItem(3)",
"H¸m Thiªn/#GetFinalItem(4)",
"KÕ NghiÖp/#GetFinalItem(5)",
"Ngù Long/#GetFinalItem(6)",
"V« Gian/#GetFinalItem(7)",
"V« Ma/#GetFinalItem(8)",
"V« TrÇn/#GetFinalItem(9)",
"Tª Hoµng/#GetFinalItem(10)",
"Toµn mãn ví vÈn/no"
}
elseif nChoice == 2 then
tbHKMP ={
"BÝch H¶i/#GetFinalItem(11)",
"U Lung/#GetFinalItem(12)",
"Minh ¶o/#GetFinalItem(13)",
"Chó Ph­îc/#GetFinalItem(14)",
"B¨ng Hµn/#GetFinalItem(15)",
"Thiªn Quang/#GetFinalItem(16)",
"S©m Hoang/#GetFinalItem(17)",
"§Þa Ph¸ch/#GetFinalItem(18)",
"§ång Cõu/#GetFinalItem(19)",
"§Þch Kh¸i/#GetFinalItem(20)",
"Toµn mãn ví vÈn/no"
}
elseif nChoice == 3 then
tbHKMP ={
"Ma S¸t/#GetFinalItem(21)",
"Ma Hoµng/#GetFinalItem(22)",
"Ma ThÞ/#GetFinalItem(23)",
"L¨ng Nh¹c/#GetFinalItem(24)",
"CËp Phong/#GetFinalItem(25)",
"S­¬ng Tinh/#GetFinalItem(26)",
"L«i Khung/#GetFinalItem(27)",
"Vô ¶o/#GetFinalItem(28)",
"Toµn mãn ví vÈn/no"
}
elseif nChoice == 4 then
tbHKMP ={
"Méng Long/#GetFinalItem(770)",
"Phôc Ma/#GetFinalItem(772)",
"Tø Kh«ng/#GetFinalItem(777)",
"Ngù Long/#GetFinalItem(794)",
"V« Gian/#GetFinalItem(797)",
"V« YÓm /#GetFinalItem(802)",
"V« trÇn/#GetFinalItem(809)",
"Thª Hoµng/#GetFinalItem(812)",
"BÝch H¶i/#GetFinalItem(817)",
"Minh Hoan/#GetFinalItem(830)",
"L«i Khung/#GetFinalItem(899)",
"MÊy mãn nµy ta vøt ng­¬i l­îm vÒ l¹i µ?/no"
}
elseif nChoice == 5 then
tbHKMP ={
"Chó Ph­îc/#GetFinalItem(835)",
"Thiªn Quang/#GetFinalItem(844)",
"§Þa Ph¸ch/#GetFinalItem(855)",
"§ång Cõu/#GetFinalItem(856)",
"Ma S¸t/#GetFinalItem(869)",
"Ma Hoµng /#GetFinalItem(875)",
"Ma ThÞ/#GetFinalItem(877)",
"L¨ng Nh¹c/#GetFinalItem(882)",
"CËp Phong/#GetFinalItem(889)",
"S­¬ng Tinh/#GetFinalItem(892)",
"Vô Hoan/#GetFinalItem(902)",
"MÊy mãn nµy ta vøt ng­¬i l­îm vÒ l¹i µ?/no"
}
end

Say("Toµn nh÷ng mãn ®å ta s­u tËp ®­îc tõ thËp ®¹i cao thñ thÕ giíi",getn(tbHKMP),tbHKMP)
end
function GetFinalItem(nId)
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
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
Say("Hç trî chØ cho c¸c nhËn sÜ c¸i bang",0)
return
end
if GetLevel()< 80 then
Say("Cµy lªn cÊp 80 råi ®Õn t×m ta.",0)
return
end
if (HaveMagic(390) <= 0) then AddMagic(390) end
Say("Thµnh thËt xin lçi anh em c¸i bang. Mong c¸c b¹n vÉn ñng hé server",0)
end
function getemeiskill()
if GetFaction()~="emei" then
Say("Hç trî chØ cho c¸c nhËn sÜ c¸i bang",0)
return
end
if GetLevel()< 80 then
Say("Cµy lªn cÊp 80 råi ®Õn t×m ta.",0)
return
end
if (HaveMagic(332) <= 0) then AddMagic(332) end
Say("Thµnh thËt xin lçi anh em c¸i bang. Mong c¸c b¹n vÉn ñng hé server",0)
end
tbPlayer ={

}
function ChangeCamp(nCamp)
if GetCamp()==0 or GetCurCamp()==0 then
Say("T©n thñ kh«ng thÓ nhËn hç trî nµy")
return
end
local szName = GetName()
if not tbPlayer[szName] then--giay
tbPlayer[szName] = {}
tbPlayer[szName].nTime = GetCurServerTime()
if GetCash() < 20000 then--giay
Say("Xin lçi cÇn 2 v¹n míi cã thÓ ®æi tr¹ng th¸i",0)
return
end
SetCurCamp(nCamp)
SetCamp(nCamp)
Pay(20000)
return
end
if abs(tbPlayer[szName].nTime - GetCurServerTime()) < 1800 then--giay
Say("Xin lçi sau 30 phót míi ®­îc ®æi tr¹ng th¸i 1 lÇn",0)
return
end
if GetCash() < 20000 then--giay
Say("Xin lçi cÇn 2 v¹n míi cã thÓ ®æi tr¹ng th¸i",0)
return
end
Pay(20000)
SetCurCamp(nCamp)
SetCamp(nCamp)
tbPlayer[szName].nTime = GetCurServerTime()
Say("ChuyÓn tr¹ng th¸i thµnh c«ng",0)
end
function getgaibangskill()
if GetFaction()~="gaibang" then
Say("Hç trî chØ cho c¸c nhËn sÜ c¸i bang",0)
return
end
if GetLevel()< 80 then
Say("Cµy lªn cÊp 80 råi ®Õn t×m ta.",0)
return
end
if (HaveMagic(357) <= 0) then AddMagic(357,1) end -- script viet hoa By http://tranhba.com  phi long ë trªn trêi [357]#90 cÊp # 
if (HaveMagic(359) <= 0) then AddMagic(359,1) end -- script viet hoa By http://tranhba.com  thiªn h¹ v« chã [359]#90 cÊp # 
Say("Thµnh thËt xin lçi anh em c¸i bang. Mong c¸c b¹n vÉn ñng hé server",0)
end
function LeaveFaction()
if GetCamp()==0 or GetCurCamp()==0 then
Say("T©n thñ kh«ng thÓ nhËn hç trî nµy")
return
end
-- if GetCash() < 20000 then 
-- Say("Xu©t s­ cÇn 2 v¹n l­îng tiÒn hèi lé.")
-- return
-- end
-- Pay(20000)
SetCamp(4)
SetCurCamp(4)
Msg2Player("XuÊt s­ thµnh c«ng, cã thÓ xuèng nói thÝ luyÖn")
end
function hotrotanthu()
	if GetLevel()<50 then
		AddSkillState(512,20,1,60*60*18)--40ÅÜËÙ
		AddSkillState(527,5,1,60*60*18)--500Ñª
		AddSkillState(313,5,1,60*60*18)--20È«¿¹
		AddSkillState(314,12,1,60*60*18)--7»Ø¸´Ñª£¬5»Ø¸´ÄÚ
		AddSkillState(546,1,1,60*60*18)--Óù´Í¹â»·
	end
end

function hotrotest()
	-- for i=10277,10287 do
		-- Ladder_ClearLadder(i)
	-- end
	-- Ladder_ClearLadder(10119)
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
	if not tbPlayer[GetName()] then--giay
	tbPlayer[GetName()]={}
	tbPlayer[GetName()].nSex = GetSex()
	tbPlayer[GetName()].nTime=0--anti spam
	tbPlayer[GetName()].nSeries=0--lua chon he 
	end
	local tbSay = {}
	-- tinsert(tbSay,"Hñy vËt phÈm/DisposeItem")
	tinsert(tbSay,"Ta muèn lªn cÊp 150/level80")
	tinsert(tbSay,"Ta muèn vËt phÈm hæ trî /vpht")
	tinsert(tbSay, "Chøc n¨ng ®å tÝm/yellowitem")
	tinsert(tbSay,"Ta muèn nhËn trang bÞ hoµng kim /hoangkim")
	tinsert(tbSay,"Ta muèn th¨ng cÊp/HoTroLevel180")
	tinsert(tbSay,"Ta muon nhan set kim phong/addkimphong")
	tinsert(tbSay,"Ta muèn t¹o bang héi/BuildTong")
	tinsert(tbSay,"Ta muèn häc vâ c«ng/HoTroSkill")
	tinsert(tbSay,"Ta muèn nhËn ®å xanh/SelectSeries")
	tinsert(tbSay,"Ta muèn chÕ t¹o trang bÞ HuyÒn Tinh/chetao")
	tinsert(tbSay,"NhËn ph«i trang bÞ HuyÒn Tinh./dotim")
	tinsert(tbSay,"Hñy vËt phÈm/DisposeItem")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i/Quit")
	-- tinsert(tbSay,"Thong bao bao tri toan server/thongbao")
	Say(szNpcName, getn(tbSay), tbSay)
end
-- tinsert(tbSay,"Ta muèn QuÕ hoa Töu (May M¾n)/quehoatuu")
-- tinsert(tbSay,"Ta muèn HuyÒn tinh/huytin")
-- tinsert(tbSay,"Ta muèn Phóc Duyªn Lé /Phucduyen")
-- tinsert(tbSay,"Ta muèn kho¸ng th¹ch/kdb")
-- tinsert(tbSay,"Ta muèn ThÇn Hµnh Phï/HoTroThanHanh")
-- tinsert(tbSay,"Ta muèn 6 Tinh Hång B¶o Th¹ch/HoTroTinhHong")
-- tinsert(tbSay,"Ta muèn 3 Lo¹i Thñy Tinh/HoTroThuyTinh")
-- tinsert(tbSay,"Ta muèn ng©n l­îng/HoTroNganLuong")
-- tinsert(tbSay,"Ta muèn tiÒn ®ång/TienDong")
-- tinsert(tbSay,"Ta muèn nhËn c¸c lo¹i ngùa/addhorse")
function yellowitem()
local szTitle = "<npc>Cuéc chiÕn lÊy B«n tiªu vÉn ch­a bao giê ngu«i ngoai. Ta nghe ngãng tin tøc ®­îc danh s¸ch top ng­¬i cã thÓ tham kh¶o"
local tbOpt ={
}
tinsert(tbOpt, 1, {"Tho¸t",no})
tinsert(tbOpt, 1, {"NhËn ph«i trang bÞ HuyÒn Tinh",dotim})
tinsert(tbOpt, 1, {"Ta muèn HuyÒn tinh",huytin})
tinsert(tbOpt, 1, {"Ta muèn kho¸ng th¹ch",kdb})
tinsert(tbOpt, 1, {"Ta muèn 3 Lo¹i Thñy Tinh",HoTroThuyTinh})
tinsert(tbOpt, 1, {"Ta muèn Phóc Duyªn Lé",Phucduyen})
tinsert(tbOpt, 1, {"Ta muèn chÕ t¹o trang bÞ HuyÒn Tinh",chetao})
tinsert(tbOpt, 1, {"Ta muèn lÊy m¶nh thiªn th¹ch",getblackstone})
tinsert(tbOpt, 1, {"Ta muèn lÊy bé ®å phæ 1",getdopho,{1}})
tinsert(tbOpt, 1, {"Ta muèn lÊy bé ®å phæ 2",getdopho,{2}})
CreateNewSayEx(szTitle, tbOpt)
end
function getdopho(nChoice)
local szTitle = "<npc>Ng­¬i muèn lÊy bé phæ nµo?"
local tbOpt ={
}
Msg2Player("nChoice"..nChoice)
-- do return end
tinsert(tbOpt, 1, {"Tho¸t",no})
if nChoice ==1 then
tinsert(tbOpt, 1, {"NhËn bé phæ Méng Long",getpho,{239}})
tinsert(tbOpt, 1, {"NhËn bé phæ Phôc Ma",getpho,{244}})
tinsert(tbOpt, 1, {"NhËn bé phæ Tø Kh«ng",getpho,{249}})
tinsert(tbOpt, 1, {"NhËn bé phæ H¸m Thiªn",getpho,{254}})
tinsert(tbOpt, 1, {"NhËn bé phæ KÕ NghiÖp",getpho,{259}})
tinsert(tbOpt, 1, {"NhËn bé phæ Ngù Long",getpho,{264}})
tinsert(tbOpt, 1, {"NhËn bé phæ  V« Gian",getpho,{269}})
tinsert(tbOpt, 1, {"NhËn bé phæ V« Ma",getpho,{274}})
tinsert(tbOpt, 1, {"NhËn bé phæ V« TrÇn",getpho,{279}})
tinsert(tbOpt, 1, {"NhËn bé phæ Tª Hoµng",getpho,{284}})
tinsert(tbOpt, 1, {"NhËn bé phæ BÝch H¶i",getpho,{289}})
tinsert(tbOpt, 1, {"NhËn bé phæ U Lung",getpho,{294}})
tinsert(tbOpt, 1, {"NhËn bé phæ Minh ¶o",getpho,{299}})
else
tinsert(tbOpt, 1, {"NhËn bé phæ Chó Ph­îc",getpho,{304}})
tinsert(tbOpt, 1, {"NhËn bé phæ  B¨ng Hµn",getpho,{309}})
tinsert(tbOpt, 1, {"NhËn bé phæ Thiªn Quang",getpho,{314}})
tinsert(tbOpt, 1, {"NhËn bé phæ S©m Hoang",getpho,{319}})
tinsert(tbOpt, 1, {"NhËn bé phæ §Þa Ph¸ch",getpho,{324}})
tinsert(tbOpt, 1, {"NhËn bé phæ §ång Cõu",getpho,{329}})
tinsert(tbOpt, 1, {"NhËn bé phæ §Þch Kh¸i",getpho,{334}})
tinsert(tbOpt, 1, {"NhËn bé phæ  Ma S¸t",getpho,{339}})
tinsert(tbOpt, 1, {"NhËn bé phæ Ma ThÞ ",getpho,{344}})
tinsert(tbOpt, 1, {"NhËn bé phæ Ma Hoµng ",getpho,{349}})
tinsert(tbOpt, 1, {"NhËn bé phæ  L¨ng Nh¹c ",getpho,{354}})
tinsert(tbOpt, 1, {"NhËn bé phæ CËp Phong ",getpho,{359}})
tinsert(tbOpt, 1, {"NhËn bé phæ S­¬ng Tinh ",getpho,{364}})
tinsert(tbOpt, 1, {"NhËn bé phæ L«i Khung ",getpho,{369}})
tinsert(tbOpt, 1, {"NhËn bé phæ Vô ¶o ",getpho,{374}})
end
CreateNewSayEx(szTitle, tbOpt)
-- tinsert(tbOpt, 1, {"NhËn bé phæ S­¬ng Tinh ",getpho,{1}})

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
-- Say("Chøc n¨ng nµy t¹m thêi ®ãng",0)
-- return
-- end
Say("B¹n muèn hÖ nµo?",6,"HÖ kim/#nhantrangbi(0)","HÖ méc/#nhantrangbi(1)","HÖ thñy/#nhantrangbi(2)","HÖ háa/#nhantrangbi(3)",
"HÖ thæ/#nhantrangbi(4)","Ta quay l¹i sau/no")
end
tbPlayer=tbPlayer or {}
function nhantrangbi(nSeries)
-- Msg2Player(""..nSeries)
tbPlayer[GetName()].nSeries=tonumber(nSeries) 
Say("Ng­¬i muèn g×",10,
"NhËn Vò KhÝ/vukhi",--1
-- "NhËn Vò KhÝ tÇm xa/vukhi",--2
-- "NhËn c¸c lo¹i ¸o/nhando",--3
-- "NhËn c¸c lo¹i nhÉn/nhando",--4
-- "NhËn D©y chuyÒn/nhando",--5
-- "NhËn giµy/nhando",--6
-- "NhËn th¾t l­ng/nhando",--7
-- "NhËn Mò/nhando",--8
-- "NhËn Bao tay/nhando",--9
-- "NhËn Ngäc béi/nhando",--10
"Tho¸t/no")
end;
function vukhi()
Say("Xin mêi chän lo¹i vò khÝ ?",10,"KiÕm/kiem1","§ao/dao1","Bæng/bong1","Th­¬ng/thuong1","Chïy/chuy1","Song ®ao/songdao1","Phi tiªu/pt1","Phi ®ao/pd1",
"Tô tiÔn/tt1","Tho¸t/no")
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
-- "NhËn c¸c lo¹i ¸o/nhando",--2
-- "NhËn c¸c lo¹i nhÉn/nhando",--3
-- "NhËn D©y chuyÒn/nhando",--4
-- "NhËn giµy/nhando",--5
-- "NhËn th¾t l­ng/nhando",--6
-- "NhËn Mò/nhando",--7
-- "NhËn Bao tay/nhando",--8
-- "NhËn Ngäc béi/nhando",--9
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
-------------------------------------------endddddddddddd®----------------------------------------
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
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end
function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end--for
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end
function vpht()
local tbSay = {}
tinsert(tbSay,"Ta muèn QuÕ hoa Töu (May M¾n)/quehoatuu")
-- tinsert(tbSay,"Ta muèn HuyÒn tinh/huytin")
-- tinsert(tbSay,"Ta muèn Phóc Duyªn Lé /Phucduyen")
-- tinsert(tbSay,"Ta muèn kho¸ng th¹ch/kdb")
tinsert(tbSay,"Ta muèn ThÇn Hµnh Phï/HoTroThanHanh")
tinsert(tbSay,"Ta muèn 6 Tinh Hång B¶o Th¹ch/HoTroTinhHong")
-- tinsert(tbSay,"Ta muèn 3 Lo¹i Thñy Tinh/HoTroThuyTinh")
tinsert(tbSay,"Ta muèn ng©n l­îng/HoTroNganLuong")
tinsert(tbSay,"Ta muèn tiÒn ®ång/TienDong")
tinsert(tbSay,"Ta muèn nhËn c¸c lo¹i ngùa/addhorse")
-- tinsert(tbSay,"LÖnh Bµi Boss Hoµng Kim/LBBoss")
tinsert(tbSay,"KÕt thóc ®èi tho¹i/Quit")
Say(szNpcName, getn(tbSay), tbSay)
end
function addhorse()
for i=2328,2334 do
AddItem(6,1,i,1,0,0)
end
end
function chetao()
Say( "NÕu ®¹i hiÖp muèn cã mét mãn ®å võa ý th× ®em ®Çy ®ñ nguyªn liÖu tíi ®©y. Ta sÏ ®óc luyÖn mét vËt phÈm ng­¬i thÝch nhÊt!", 4, "B¾t ®Çu chÕ t¹o/onFoundryItem", "Liªn quan chÕ t¹o/onAbout", "T×m hiÓu m¶nh Hoµng Kim./onQueryPiece","§Ó ta suy nghÜ kü l¹i xem/onCancel");
end
function hoangkimmp()
	local strFaction = GetFaction()
	if (tbItemHK[strFaction] == nil) then
		Talk(1, "", "C¸c h¹ vÉn ch­a gia nhËp m«n ph¸i!");
		return
	end
	local tbOpp = {}
	local str = "<#> Ta cho phÐp ®¹i hiÖp chän 1 trong nh÷ng trang bÞ Hoµng Kim M«n Ph¸i ";
	for i=1, getn(tbItemHK[strFaction]) do
		local strItemName = tbItemHK[strFaction][i].szName
		local nID =  tbItemHK[strFaction][i].nID
		tinsert(tbOpp,"Ta muèn nhËn".. strItemName.." /#GetBonusHK(" .. nID .. ")");
	end
	tinsert(tbOpp, "<#>Tho¸t/OnCancel")
	if ( getn( tbOpp ) == 0 ) then
		Say(str, 0);
		return
	end;
	Say( str, getn( tbOpp ), tbOpp )
end

function GetBonusHK(nID)
	local nIndex = AddGoldItem(0, nID)
	local strItemName = GetItemName(nIndex)
	Msg2Player("B¹n nhËn ®­îc "..strItemName)
end

function hoangkim()
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
	local TabSayPotion = {
		"NhËn An Bang./item",
		"NhËn §Þnh Quèc./item",
		"NhËn Nhu T×nh./item",
		"NhËn HiÕp Cèt./item",
		"NhËn §éng S¸t./item",
		"NhËn HKMP./hoangkimmp",
		"KÕt thóc ®èi tho¹i./Quit",
	}
	Say("Hæ trî",getn(TabSayPotion),TabSayPotion)
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

function BuildTong()			-- Íê³É½¨°ïµÄ×¼±¸¹¤×÷
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
			Talk(1, "", "Ng­¬i ®· ®¹t cÊp 120 råi.")
		else
			Talk(1, "", "§i chuyÓn sinh tr­íc ®i råi trë l¹i th¨ng cÊp.")
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
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
	local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
