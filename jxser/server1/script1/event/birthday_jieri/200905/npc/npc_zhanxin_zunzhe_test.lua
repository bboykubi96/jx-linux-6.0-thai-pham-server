IncludeLib("SETTING")
IncludeLib("TONG")
IncludeLib("RELAYLADDER");
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
szNpcName = "<color=green>Hç trî Test<color>: "
tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[9] = {318,319,321,709,1055, 1056, 1057},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[9] = {322,323,325,708,1058, 1059, 1060},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[9] = {302,339,342,351,710,1069, 1070, 1071, 1110},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[9] = {353,355,390,711,1066, 1067},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[9] = {328,332,380,712,1061, 1062, 1114},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[9] = {336,337,713,1063, 1065},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[9] = {357,359,714,1073, 1074},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[9] = {361,362,391,715,1075, 1076},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[9] = {365,368,716,1078, 1079},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[9] = {372,375,394,717,1080, 1081},
	},
}

function main()
	--dofile("script/event/birthday_jieri/200905/npc/npc_zhanxin_zunzhe.lua")
	hotrotest()
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
	local tbSay = {}
	tinsert(tbSay,"Ta muèn vËt phÈm hæ trî /vpht")
	tinsert(tbSay,"Ta muèn nhËn trang bÞ /hoangkim")
	tinsert(tbSay,"Ta muèn th¨ng cÊp/HoTroLevel180")
	--tinsert(tbSay,"Ta muèn t¹o bang héi/BuildTong")
	tinsert(tbSay,"Ta muèn häc vâ c«ng/HoTroSkill")
	tinsert(tbSay,"Ta muèn chÕ t¹o trang bÞ HuyÒn Tinh/chetao")
	tinsert(tbSay,"NhËn ph«i trang bÞ HuyÒn Tinh./dotim")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i/Quit")
	Say(szNpcName, getn(tbSay), tbSay)
end

function vpht()
local tbSay = {}
tinsert(tbSay,"Ta muèn QuÕ hoa Töu (May M¾n)/quehoatuu")
tinsert(tbSay,"Ta muèn HuyÒn tinh/huytin")
tinsert(tbSay,"Ta muèn Phóc Duyªn Lé /Phucduyen")
tinsert(tbSay,"Ta muèn kho¸ng th¹ch/kdb")
tinsert(tbSay,"Ta muèn ThÇn Hµnh Phï/HoTroThanHanh")
tinsert(tbSay,"Ta muèn 6 Tinh Hång B¶o Th¹ch/HoTroTinhHong")
tinsert(tbSay,"Ta muèn 3 Lo¹i Thñy Tinh/HoTroThuyTinh")
tinsert(tbSay,"Ta muèn ng©n l­îng/HoTroNganLuong")
tinsert(tbSay,"Ta muèn tiÒn ®ång/TienDong")
tinsert(tbSay,"LÖnh Bµi Boss Hoµng Kim/LBBoss")
tinsert(tbSay,"KÕt thóc ®èi tho¹i/Quit")
Say(szNpcName, getn(tbSay), tbSay)
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
	local nLevel = GetLevel()
	if nLevel < 199 then
		ST_LevelUp(199 - nLevel)
		if random(1,2)==1 then
			AddItem(0,10,random(14,18),5,0,0);
		else
			AddItem(0,10,random(6,8),5,0,0);
		end
		AddItem(6,1,1266,1,0,0);
	end
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
AddItem(6,1,147,10,0,0,0) 	
AddItem(6,1,147,10,0,0,0) 	
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end
