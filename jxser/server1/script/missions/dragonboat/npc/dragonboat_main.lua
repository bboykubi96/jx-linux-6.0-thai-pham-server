Include("\\script\\missions\\dragonboat\\include.lua")
Include("\\script\\missions\\dragonboat\\npc\\duanwu_convert.lua")
IncludeLib("RELAYLADDER") 

DWGOLDENLASTDATE = tonumber(date("%d")) -- script viet hoa By http://tranhba.com  lÇn tr­íc dïng d¸ng vãc to long chu ®æi lÊy hoµng kim trang bŞ ®İch nhËt kú chØ ghi chĞp ngµy 
DWGOLDENMAXCOUNT = 2 -- script viet hoa By http://tranhba.com  ®oan ngä dïng d¸ng vãc to long chu ®æi ®Şnh quèc an bang # hiÖp cèt nhu t×nh , mçi ngµy mçi thai phôc vô khİ cã thÓ ®æi lÊy sè l­îng , mçi thai gameserver ®İch th­îng h¹n , céng 16 c¸ 
DWGOLDENNOWCOUNT = 0 -- script viet hoa By http://tranhba.com  tr­íc mÆt dïng d¸ng vãc to long chu ®æi lÊy hoµng kim trang bŞ ®Õm 

DWORELASTDATE = tonumber(date("%d")) -- script viet hoa By http://tranhba.com  lÇn tr­íc dïng thó h×nh long chu ®æi lÊy huyÒn tinh # thÇn bİ qu¸ng th¹ch ®İch nhËt kú chØ ghi chĞp ngµy 
DWOREMAXCOUNT = 12 -- script viet hoa By http://tranhba.com  ®oan ngä dïng thó h×nh long chu ®æi huyÒn tinh # thÇn bİ qu¸ng th¹ch , mçi ngµy mçi thai phôc vô khİ cã thÓ ®æi lÊy sè l­îng , mçi thai gameserver ®İch th­îng h¹n , céng 96 c¸ 
DWORENOWCOUNT = 0 -- script viet hoa By http://tranhba.com  tr­íc mÆt dïng thó h×nh long chu ®æi lÊy huyÒn tinh # thÇn bİ qu¸ng th¹ch ®Õm 

AWARD_BIRDBOAT = { 
{"Tiªn th¶o lé ",{6,1,71,1,0,0},30}, 
{"Tö thñy tinh ",{239},15}, 
{" lam thñy tinh ",{238},15}, 
{"N­íc biÕc tinh ",{240},15}, 
{"Tinh hång b¶o th¹ch ",{353},15}, 
{"Thiªn S¬n b¶o lé ",{6,1,72,1,0,0},10}, 
} 

AWARD_BEASTBOAT = { 
{"HuyÒn tinh 5 cÊp ",{6,1,147,5,0,0},20}, 
{"HuyÒn tinh 6 cÊp ",{6,1,147,6,0,0},43}, 
{"HuyÒn tinh 7 cÊp ",{6,1,147,7,0,0},30}, 
{"HuyÒn tinh 8 cÊp ",{6,1,147,8,0,0},3}, 
{"ThÇn bİ qu¸ng th¹ch ",{6,1,398,1,0,0},4}, 
} 

AWARD_HUGEBOAT = { 
{"§Şnh quèc chi lôa máng xanh tr­êng sam ",{159},100}, 
{"§Şnh quèc chi « sa ph¸t quan ",{160},51}, 
{"§Şnh quèc chi xİch quyªn mÒm ngoa ",{161},70}, 
{"§Şnh quèc chi tö ®»ng hé cæ tay ",{162},70}, 
{"§Şnh quèc chi ng©n tµm ®ai l­ng ",{163},70}, 
{"An bang chi b¨ng tinh th¹ch gi©y chuyÒn ",{164},51}, 
{"An bang chi hoa cóc th¹ch chiÕc nhÉn ",{165},51}, 
{"An bang chi ®iÒn hoµng th¹ch ngäc béi ",{166},51}, 
{"An bang chi m¸u gµ th¹ch chiÕc nhÉn ",{167},51}, 
{"HiÖp cèt chi thiÕt huyÕt sam ",{186},70}, 
{"HiÖp cèt nhiÒu t×nh hoµn ",{187},70}, 
{"HiÖp cèt chi ®an t©m giíi ",{188},70}, 
{"HiÖp cèt t×nh ı kÕt ",{189},20}, 
{"Nhu t×nh chi c©n qu¾c nghª th­êng ",{190},14}, 
{"Nhu t×nh chi thôc n÷ gi©y chuyÒn ",{191},60}, 
{"Nhu t×nh chi ph­îng nghi chiÕc nhÉn ",{192},80}, 
{"Nhu t×nh chi tuÖ t©m ngäc béi ",{193},51}, 
} 

function dragonboat_main() 
Say("TiÕt ®oan ngä ho¹t ®éng ®· kÕt thóc , nh­ng lµ mäi ng­êi cßn cã thÓ dïng cßn sãt l¹i vËt phÈm hîp thµnh long chu cïng ®æi lÊy lÔ phÈm . ®øng hµng tr­íc m­êi nhµ ch¬i mau tíi ta ®©y ®æi hoµng kim trang bŞ . .", 5,"ChÕ t¹o long chu /duanwu_convert","Dïng long chu ®æi lÊy dÉn t­ëng /dragon_award","§øng hµng tr­íc m­êi nhËn lÊy hoµng kim trang bŞ ./dragon_golden","T­¬ng quan ho¹t ®éng /aboutboat","Kh«ng cÇn /OnCancel"); 
end 

function want_playboat() 
OldSubWorld = SubWorld 
OldPlayer = PlayerIndex 
local totalboat = 0 
local freeboat = 0 
local startboat = 0 
local blevel = 0 
if (IsCaptain() ~= 1) then 
Say("ThËt xin lçi ! cÇn ®éi tr­ëng ghi danh tham gia cuéc so tµi long chu ho¹t ®éng míi ®­îc .",0) 
return 
end 
if (GetTeamSize() < 4) then 
Say("ThËt xin lçi ! tham gia cuéc so tµi long chu ho¹t ®éng ®éi ngò İt nhÊt cÇn <color=red>4<color> ng­êi . tr­íc m¾t ngµi ®İch ®éi kh«ng ®ñ ng­êi ! nhanh ®i t×m nh÷ng ng­êi nµy ®Õn ®©y ®i ",0) 
return 
end 
if (GetLevel() >= 90) then 
blevel = 1 
end 

for i = 1, GetTeamSize() do 
PlayerIndex = GetTeamMember(i) 
local bmbrlevel = 0 
if (GetLevel() >= 90) then 
bmbrlevel = 1 
end 

if (blevel ~= bmbrlevel) then 
if (blevel == 0) then 
Say("ThËt xin lçi ! ë ng­¬i trong ®éi ngò cã ng­êi cÊp bËc <color=red> v­ît qua 90 cÊp <color>, kh«ng thÓ tham gia tranh tµi ! kiÓm tra sau trë l¹i tham gia ghi danh ! ",0) 
return 
else 
Say("ThËt xin lçi ! ë ng­¬i trong ®éi ngò cã ng­êi cÊp bËc <color=red> ch­a ®ñ 90 cÊp <color>, kh«ng thÓ tham gia tranh tµi ! kiÓm tra sau trë l¹i tham gia ghi danh ! ",0) 
return 
end 
end 
end 

PlayerIndex = OldPlayer 
for i = 1, getn(map_map) do 
sub = SubWorldID2Idx(map_map[i]) 
if (sub >= 0) then 
print("have "..map_map[i]) 
			totalboat = totalboat + 1
SubWorld = sub 
local state = GetMissionV(VARV_STATE) 
if (state > 0) then 
startboat = 1 
end 
if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and map_isadvanced[map_map[i]] == blevel) then 
				freeboat = freeboat + 1
end 
end 
end 
print("total"..totalboat.."free"..freeboat) 
local strlevel =""; 
if (blevel == 0) then 
strlevel = " s¬ cÊp long chu cuéc so tµi " 
else 
strlevel = " cao cÊp long chu cuéc so tµi " 
end 

if (startboat == 1) then 
if (freeboat == 0) then 
Say("Nªn khu vùc ®ang "..strlevel.."# b¾t ®Çu . kh«ng cã chç liÔu ",0) 
return 
else 
Say("Nªn khu vùc ®ang "..strlevel.." cuéc so tµi long chu ghi danh giai ®o¹n , cßn cã <color=red>"..freeboat.."<color> long chu cßn v« İch ®İch . tham gia tranh tµi cÇn ®ãng <color=red>5 v¹n <color> hai , ng­¬i nghÜ tham gia sao ?",2,"§óng vËy ! ta muèn mang ta ®éi tham gia ./dragon_join","Kh«ng cÇn /OnCancel") 
return 
end 
else 
Say("ThËt xin lçi ! nªn khu vùc "..strlevel.." tr­íc m¾t kh«ng cã cuéc so tµi long chu tranh tµi . ghi danh <color=red> theo nh­ lóc <color> b¾t ®Çu . ghi danh thêi gian lµ 5 phót . xin chó ı hÖ thèng th«ng b¸o !",0) 
return 
end 

end 

function dragon_join() 
local blevel = 0 
if (GetLevel() >= 90) then 
blevel = 1 
end 
if (IsCaptain() ~= 1) then 
Say("ThËt xin lçi ! cÇn ®éi tr­ëng ghi danh tham gia cuéc so tµi long chu ho¹t ®éng míi ®­îc .",0) 
return 
end 
if (GetTeamSize() < 1) then 
Say("ThËt xin lçi ! tham gia cuéc so tµi long chu ho¹t ®éng ®éi ngò İt nhÊt cÇn <color=red>4<color> ng­êi . tr­íc m¾t ngµi ®İch ®éi kh«ng ®ñ ng­êi ! nhanh ®i t×m nh÷ng ng­êi nµy ®Õn ®©y ®i ",0) 
return 
end 
local bhaveboat = 0 
local boatstr = " tiÓu Long chu " 
if (blevel > 0) then 
boatstr = " truyÒn thèng long chu " 
end 

if (blevel == 0) then 
bhaveboat = CalcEquiproomItemCount( 6, 1, 422, 1 ) 
else 
bhaveboat = CalcEquiproomItemCount( 6, 1, 423, 1 ) 
end 

if (GetCash() < 50000 or bhaveboat == 0 and blevel == 0) then 
Say("ThËt xin lçi ! tham gia cuéc so tµi long chu tranh tµi cÇn ®ãng <color=red> 5 v¹n l­îng cïng "..boatstr.."<color> míi ®­îc , tiÒn cña ng­¬i kh«ng ®ñ hoÆc lµ kh«ng cã mang tiÓu Long chu . chuÈn bŞ xong trë l¹i !.", 0) 
return 
end 
if (GetCash() < 50000 or bhaveboat == 0 and blevel == 1) then 
Say("ThËt xin lçi ! tham gia cuéc so tµi long chu tranh tµi cÇn ®ãng <color=red> 5 v¹n l­îng cïng "..boatstr.."<color=red> míi ®­îc , tiÒn cña ng­¬i kh«ng ®ñ hoÆc lµ kh«ng cã mang truyÒn thèng long chu ! chuÈn bŞ xong trë l¹i !", 0) 
return 
end 

local OldPlayer = PlayerIndex 

for i = 1, GetTeamSize() do 
PlayerIndex = GetTeamMember(i) 
local bmbrlevel = 0 
if (GetLevel() >= 90) then 
bmbrlevel = 1 
end 

if (blevel ~= bmbrlevel) then 
if (blevel == 0) then 
Say("ThËt xin lçi ! ë ng­¬i trong ®éi ngò cã ng­êi cÊp bËc <color=red> v­ît qua 90 cÊp <color>, kh«ng thÓ tham gia tranh tµi ! kiÓm tra sau trë l¹i tham gia ghi danh ! ",0) 
return 
else 
Say("ThËt xin lçi ! ë ng­¬i trong ®éi ngò cã ng­êi cÊp bËc <color=red> ch­a ®ñ 90 cÊp <color>, kh«ng thÓ tham gia tranh tµi ! kiÓm tra sau trë l¹i tham gia ghi danh ! ",0) 
return 
end 
end 
end 

PlayerIndex = OldPlayer 

OldSubWorld = SubWorld 

for i = 1, getn(map_map) do 
sub = SubWorldID2Idx(map_map[i]) 
if (sub >= 0) then 
SubWorld = sub 
local state = GetMissionV(VARV_STATE) 
if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and blevel == map_isadvanced[map_map[i]] ) then 
local tabplayer = {} 
for i = 1, GetTeamSize() do 
tabplayer[i] = GetTeamMember(i) 
print("plal"..tabplayer[i]) 
end 
PlayerIndex = tabplayer[1] 
w,x,y = GetWorldPos() 
SetMissionV(VARV_SIGNUP_WORLD, w) 
SetMissionV(VARV_SIGNUP_POSX, x) 
SetMissionV(VARV_SIGNUP_POSY, y) 
SetMissionS(VARS_TEAM_NAME,GetName()) 

-- script viet hoa By http://tranhba.com  DEBUG 
print(format("%s tõ (%d, %d, %d) cïng vŞ trİ tiÕn vµo long chu ", GetName(), w, x, y)); 

Pay(50000) 
if (blevel == 0) then 
ConsumeEquiproomItem( 1, 6, 1, 422, 1) 
else 
ConsumeEquiproomItem( 1, 6, 1, 423, 1) 
end 

for i = 1 , getn(tabplayer) do 
PlayerIndex = tabplayer[i] 
print("player"..PlayerIndex) 
JoinMission(MISSION_MATCH, 1) 
end 
return 
end 
end 
end 
SubWorld = OldSubWorld 
PlayerIndex = OldPlayer 
local strlevel =""; 
if (blevel == 0) then 
strlevel = " s¬ cÊp long chu cuéc so tµi " 
else 
strlevel = " s¬ cÊp long chu cuéc so tµi " 
end 
Say("ThËt xin lçi ! tr­íc m¾t <color=red>"..strlevel.."<color> # ®· kh«ng cã chç ngåi . xin chê chót mét vßng !",0) 
end 

function dragon_award() 
Say("Cuéc so tµi long chu tranh tµi ®ang nh­ löa nh­ ®å ®Şa tiÕn hµnh , l·o phu ®ang thu long chu . ng­¬i nghÜ dïng lo¹i nµo long chu ®æi lÊy t­ëng th­ëng ?",7,"TiÓu Long chu ®æi lÊy ®Ëu sa tèng tö /dousha","TruyÒn thèng long chu ®æi lÊy h­¬ng c« tèng tö /xianggu","M· ®Çu long chu ®æi lÊy ®¶n hoµng tèng tö /danhuang","§iÓu ®Çu long chu ngÉu nhiªn ®æi lÊy tiªn th¶o lé , thñy tinh , b¶o th¹ch , Thiªn S¬n b¶o lé /birdboat_award","Thó vËt long chu ngÉu nhiªn ®æi lÊy thÇn bİ qu¸ng th¹ch , 5- huyÒn tinh qu¸ng th¹ch 8 cÊp /beastboat_award","§¹i long chu ngÉu nhiªn ®æi lÊy ®Şnh quèc an bang , mét bé nhu t×nh hiÖp cèt hoµng kim trang bŞ /hugeboat_award","Kh«ng cÇn !/OnCancel"); 
end 

function dragon_golden() 
-- script viet hoa By http://tranhba.com Say(" lÔ quan # long chu cuéc so tµi ®ang nh­ löa nh­ ®å ®İch tiÕn hµnh trung , ph¶i chê tíi <color=red> ho¹t ®éng kÕt thóc <color> sau míi cã thÓ tíi dÉn t­ëng nga . ",0); 
Say("Ng­¬i nghÜ nhËn lÊy c¸i g× tranh tµi t­ëng th­ëng ?", 3,"S¬ cÊp long chu cuéc so tµi /dragon_golden_low","#a cao cÊp long chu cuéc so tµi /dragon_golden_high","Kh«ng cÇn !/OnCancel"); 
end 

function dragon_golden_low() 
for i = 1, 10 do 
RoleName, Data = Ladder_GetLadderInfo(10141, i); 
if( GetName() == RoleName) then 
if(GetTask(1507) ~= 0) then 
Say("Ng­¬i ®· nhËn lÊy s¬ cÊp long chu cuéc so tµi ®øng hµng tr­íc m­êi t­ëng th­ëng !",0); 
return 0 
end 
if(CalcFreeItemCellCount() < 6) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 0 
end 
dragon_givegolden(); 
SetTask(1507,1); 
return 1 
end 
end 
Say("Ng­¬i kh«ng cã ë ®©y s¬ cÊp long chu cuéc so tµi ®øng hµng tr­íc m­êi hµng ngò , kh«ng thÓ dÉn t­ëng .",0); 
end 

function dragon_golden_high() 
for i = 1, 10 do 
RoleName, Data = Ladder_GetLadderInfo(10142, i); 
if( GetName() == RoleName) then 
if(GetTask(1508) ~= 0) then 
Say("Ng­¬i ®· nhËn lÊy cÊp long chu cuéc so tµi ®øng hµng tr­íc m­êi t­ëng th­ëng !",0); 
return 0 
end 
if(CalcFreeItemCellCount() < 6) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 0 
end 
dragon_givegolden(); 
SetTask(1508,1); 
return 1 
end 
end 
Say("Kh«ng cã ë ®©y cao cÊp long chu cuéc so tµi ®øng hµng tr­íc m­êi hµng ngò , kh«ng thÓ dÉn t­ëng .",0); 
end 

function aboutboat() 
Say("Ng­¬i nghÜ hiÓu râ kia h¹ng nhÊt ?", 5,"Hîp thµnh long chu ®İch c«ng thøc /aboutmaking"," long chu cuéc so tµi lŞch sö /abouthistory","T­¬ng quan ghi danh /aboutjoin","Chó ı bé m«n /aboutnotice","Ta biÕt !/OnCancel"); 
end 

function aboutmaking() 
	local a = "Ğ¡ÁúÖÛ= 1 ÁúÍ· + 1 ÁúÎ² + 1 ÁúÉí + 1 Áú¹Ç + 4 ½°+ 1 ·½ÏòÅÌ + 1 ¹Ä";
	local b = "<enter>´«Í³ÁúÖÛ = 1 Ğ¡ÁúÖÛ+ 4 ½°";
	local c = "<enter>ÂíÍ·ÁúÖÛ= 1 Ğ¡ÁúÖÛ+ 1 ´«Í³ÁúÖÛ + 1 ÁúÍ·";
	local d = " ÄñÍ·ÁúÖÛ = 1 ÂíÍ·ÁúÖÛ + 1 ´«Í³ÁúÖÛ + 1 ÁúÍ·";
	local e = "<enter>ÊŞÍ·ÁúÖÛ= 1 ÄñÍ·ÁúÖÛ + 1 ÂíÍ·ÁúÖÛ + 1 ÁúÍ·";
	local f = "<enter>´óÁúÖÛ = 1 ÊŞÍ·ÁúÖÛ+ 1 ÄñÍ·ÁúÖÛ + 1 ÂíÍ·ÁúÖÛ";
Talk(2,"",a..b..c,d..e..f); 
end 

function abouthistory() 
Talk(1,"","TruyÒn thuyÕt , khuÊt nguyªn nh¶y s«ng sau , d©n b¶n xø cöa m¬ thÊy khuÊt nguyªn th©n h×nh gÇy gß , sÏ dïng l¸ tróc tói c¬m thµnh tèng tö , ®Ó th­îng long chu sau ®Èy h­íng Hµ Néi , d­íi n­íc ®İch thñy téc l¸i ®Õn lµ long , liÒn cho r»ng lµ Long v­¬ng ®İch ®å , còng kh«ng d¸m ¨n , cho nªn , cã thÓ tÕ b¸i cho khuÊt nguyªn dïng . ®©y chİnh lµ long chu cuéc so tµi cïng ¨n tèng tö ®İch nguyªn do . "); 
end 

function aboutjoin() 
Talk(2,"","Nhµ ch¬i dïng <color=red> tiÓu Long chu cïng truyÒn thèng long chu <color> lµm <color=red> ®éi tr­ëng <color>, dÉn c¸c vŞ ®éi h÷u ®Õn <color=red> lÔ quan chç <color> ghi danh tham gia s¬ cÊp cïng cao cÊp long chu cuéc so tµi , kh«ng cã giê cö hµnh mét lÇn ,<color=red> ®Õn lóc ®ã <color> th«ng b¸o b¾t ®Çu tiÕp nhËn ghi danh . ghi danh thêi gian lµ n¨m phót .","S¬ cÊp tranh tµi nhiÒu nhÊt cho phĞp <color=red>8<color> ®éi ngò tham gia , ®èi øng lµ 8 tr­¬ng long chu b¶n ®å ; cao cÊp tranh tµi nhiÒu nhÊt cho phĞp <color=red>16<color> ®éi tham gia , ®èi øng lµ 16 tr­¬ng long chu b¶n ®å . nÕu nh­ ë lÔ quan chç ghi danh sè l­îng ®ñ råi , xin/mêi nhµ ch¬i ®Õn nh÷ng thµnh thŞ kh¸c ®İch lÔ quan chç ghi danh . "); 
end 

function aboutnotice() 
Talk(3,"","Ghi danh sau khi thµnh c«ng , tÊt c¶ ®éi ngò bŞ dêi ®i ®Õn long chu b¶n ®å . ®ang ®îi tranh tµi thêi gian lóc b¾t ®Çu , nhµ ch¬i <color=red> tö vong <color> còng sÏ bŞ ph¸n ®Şnh v× mÊt ®i t­ c¸ch tranh tµi . nÕu nh­ ®éi tr­ëng tö vong , cßn sãt l¹i thµnh viªn nh­ cò cã thÓ tiÕp tôc tranh tµi cïng dÉn t­ëng , nh­ng lµ thµnh tİch kh«ng thÓ kÕ vµo b¶ng xÕp h¹ng . ."," ë <color=red>2 chu sau <color> long chu cuéc so tµi ho¹t ®éng kÕt thóc <color=red> s¬ cÊp cïng cao cÊp tranh tµi ®øng hµng tr­íc m­êi ®éi ngò <color> cã thÓ ®Õn lÔ quan chç nhËn lÊy ®Şnh quèc an bang , 1 bé/vá nhu t×nh hiÖp cèt ngÉu nhiªn hoµng kim trang bŞ .","Muèn biÕt cÆn kÏ tin tøc , mêi xem trang chİnh # www.volam.com.vn"); 
end 

function dousha() 
Say("¡n ®Ëu sa tèng tö ngÉu nhiªn ®¹t ®­îc <color=red>1 v¹n , 2 v¹n , 5 v¹n kinh nghiÖm trŞ gi¸ <color> hoÆc lµ tham gia <color=red> s¬ cÊp long chu cuéc so tµi <color>, ng­¬i thËt muèn ®æi sao ?",2,"Ta muèn ®æi /dousha_yes","Kh«ng cÇn !/OnCancel"); 
end 

function dousha_yes() 
if(CalcEquiproomItemCount(6,1,422,1) <= 0) then 
Say("Ng­¬i kh«ng cã tiÓu Long chu kh«ng thÓ ®æi t­ëng th­ëng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 
end 
DelCommonItem(6,1,422); 
AddItem(6,1,435,1,0,0); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: dÉn mét ®Ëu sa tèng tö "); 
Say("Ng­¬i ®¹t ®­îc ®Ëu sa tèng tö .",0); 
end 

function xianggu() 
Say(" # cËt h­¬ng c« tèng tö ngÉu nhiªn ®¹t ®­îc <color=red>5 v¹n , 10 v¹n , 25 v¹n kinh nghiÖm trŞ gi¸ <color> hoÆc lµ tham gia <color=red> cao cÊp long chu cuéc so tµi <color>, ng­¬i thËt muèn ®æi sao ?",2,"Ta muèn ®æi /xianggu_yes","Kh«ng cÇn !/OnCancel"); 
end 

function xianggu_yes() 
if(CalcEquiproomItemCount(6,1,423,1) <= 0) then 
Say("Ng­¬i kh«ng cã <color=red> truyÒn thèng long chu <color>, kh«ng thÓ ®æi t­ëng th­ëng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 
end 
DelCommonItem(6,1,423); 
AddItem(6,1,436,1,0,0); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: dÉn mét h­¬ng c« tèng tö "); 
Say("Ng­¬i ®¹t ®­îc 1 c¸ h­¬ng c« tèng tö .",0); 
end 

function danhuang() 
Say("¡n ®¶n hoµng tèng tö ngÉu nhiªn ®¹t ®­îc <color=red>15 v¹n , 30 v¹n , 75 v¹n kinh nghiÖm trŞ gi¸ <color>, ng­¬i thËt muèn ®æi sao ?",2,"Ta muèn ®æi /danhuang_yes","Kh«ng cÇn !/OnCancel"); 
end 

function danhuang_yes() 
if(CalcEquiproomItemCount(6,1,424,1) <= 0) then 
Say("Ng­¬i kh«ng cã <color=red> m· ®Çu long chu <color>, kh«ng thÓ ®æi t­ëng th­ëng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 
end 
DelCommonItem(6,1,424); 
AddItem(6,1,437,1,0,0); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: dÉn mét ®¶n hoµng tèng tö "); 
Say("Ng­¬i ®¹t ®­îc 1 c¸ ®¶n hoµng tèng tö .",0); 
end 

function birdboat_award() 
local awardpro = {} 
if(CalcEquiproomItemCount(6,1,425,1) <= 0) then 
Say("Ng­¬i kh«ng cã <color=red> ®iÓu ®Çu long chu <color>, kh«ng thÓ ®æi t­ëng th­ëng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 
end 
for i = 1, getn(AWARD_BIRDBOAT) do 
awardpro[i] = AWARD_BIRDBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
if( getn(AWARD_BIRDBOAT[numth][2]) == 6 ) then 
AddItem(AWARD_BIRDBOAT[numth][2][1],AWARD_BIRDBOAT[numth][2][2],AWARD_BIRDBOAT[numth][2][3],AWARD_BIRDBOAT[numth][2][4],AWARD_BIRDBOAT[numth][2][6],AWARD_BIRDBOAT[numth][2][6]); 
else 
AddEventItem(AWARD_BIRDBOAT[numth][2][1]) 
end 
DelCommonItem(6,1,425); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: dÉn mét "..AWARD_BIRDBOAT[numth][1]); 
Say("Ng­¬i ®¹t ®­îc 1 c¸ "..AWARD_BIRDBOAT[numth][1]..".",0); 
end 

function beastboat_award() 
local awardpro = {}; 
if(CalcEquiproomItemCount(6,1,426,1) <= 0) then 
Say("Ng­¬i kh«ng cã <color=red> thó vËt long chu color>, kh«ng thÓ ®æi t­ëng th­ëng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 
end 

local nNowDate = tonumber(date("%d")); 
if ( nNowDate == DWORELASTDATE ) then -- script viet hoa By http://tranhba.com  nÕu nh­ lÇn tr­íc dïng h×nh thó long chu ®æi lÊy huyÒn tinh # thÇn bİ qu¸ng th¹ch lµ ngµy ®ã lêi cña 
if ( DWORENOWCOUNT >= DWOREMAXCOUNT ) then -- script viet hoa By http://tranhba.com  ®¹t tíi dïng h×nh thó long chu ®æi lÊy huyÒn tinh # thÇn bİ qu¸ng th¹ch lín nhÊt ®Õm kh«ng thÓ ®æi l¹i 
print("H«m nay dïng thó vËt long chu ®æi lÊy huyÒn tinh cïng thÇn bİ qu¸ng th¹ch ®· v­ît qua sè l­îng .") 
Say("H«m nay dïng thó vËt long chu ®æi lÊy huyÒn tinh cïng thÇn bİ qu¸ng th¹ch qu¸ nhiÒu . l·o phu kh«ng cã hµng . ®i nh÷ng thµnh thŞ kh¸c ®i , ngµy mai trë l¹i !",0); 
return 
end 
else -- script viet hoa By http://tranhba.com  nÕu nh­ dïng h×nh thó long chu ®æi lÊy huyÒn tinh # thÇn bİ qu¸ng th¹ch mÊy ngµy kú cïng tr­íc mÆt kh«ng ph¶i lµ cïng mét ngµy 
DWORELASTDATE = nNowDate; -- script viet hoa By http://tranhba.com  ®æi míi gÇn nhÊt ®İch nhËt kú 
DWORENOWCOUNT = 0; -- script viet hoa By http://tranhba.com  tr­íc mÆt dïng h×nh thó long chu ®æi lÊy huyÒn tinh # thÇn bİ qu¸ng th¹ch ®Õm ®­a 0 
end 

for i = 1, getn(AWARD_BEASTBOAT) do 
awardpro[i] = AWARD_BEASTBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
if( getn(AWARD_BEASTBOAT[numth][2]) == 6 ) then 
AddItem(AWARD_BEASTBOAT[numth][2][1],AWARD_BEASTBOAT[numth][2][2],AWARD_BEASTBOAT[numth][2][3],AWARD_BEASTBOAT[numth][2][4],AWARD_BEASTBOAT[numth][2][6],AWARD_BEASTBOAT[numth][2][6]); 
else 
AddEventItem(AWARD_BEASTBOAT[numth][2][1]) 
end 
	DWORENOWCOUNT = DWORENOWCOUNT + 1;
DelCommonItem(6,1,426); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: dÉn mét "..AWARD_BEASTBOAT[numth][1]); 
Say("Ng­¬i ®¹t ®­îc 1 c¸ "..AWARD_BEASTBOAT[numth][1]..".",0); 
end 

function hugeboat_award() 
local awardpro = {}; 
if(CalcEquiproomItemCount(6,1,427,1) <= 0) then 
Say("Ng­¬i kh«ng cã <color=red> ®¹i long chu <color>, kh«ng thÓ ®æi t­ëng th­ëng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 6) then 
Say("Trang bŞ cña ng­¬i chç trèng kh«ng ®ñ . söa sang l¹i h¶o sau trë l¹i ®æi ®i ",0); 
return 
end 

local nNowDate = tonumber(date("%d")); 
if ( nNowDate == DWGOLDENLASTDATE ) then -- script viet hoa By http://tranhba.com  nÕu nh­ lÇn tr­íc dïng d¸ng vãc to long chu ®æi lÊy hoµng kim trang bŞ lµ ngµy ®ã lêi cña 
if ( DWGOLDENNOWCOUNT >= DWGOLDENMAXCOUNT ) then -- script viet hoa By http://tranhba.com  ®¹t tíi dïng d¸ng vãc to long chu ®æi lÊy hoµng kim trang bŞ lín nhÊt ®Õm kh«ng thÓ ®æi l¹i 
print("H«m nay dïng ®¹i long chu ®æi lÊy hoµng kim trang bŞ qu¸ nhiÒu .") 
Say("H«m nay dïng ®¹i long chu ®æi lÊy hoµng kim trang bŞ qu¸ nhiÒu . ®i nh÷ng thµnh thŞ kh¸c ®i , ngµy mai trë l¹i !",0); 
return 
end 
else -- script viet hoa By http://tranhba.com  nÕu nh­ dïng d¸ng vãc to long chu ®æi lÊy hoµng kim trang bŞ nhËt kú cïng tr­íc mÆt kh«ng ph¶i lµ cïng mét ngµy 
DWGOLDENLASTDATE = nNowDate; -- script viet hoa By http://tranhba.com  ®æi míi gÇn nhÊt ®İch nhËt kú 
DWGOLDENNOWCOUNT = 0; -- script viet hoa By http://tranhba.com  tr­íc mÆt dïng d¸ng vãc to long chu ®æi lÊy hoµng kim trang bŞ ®Õm ®­a 0 
end 

for i = 1, getn(AWARD_HUGEBOAT) do 
awardpro[i] = AWARD_HUGEBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
if( getn(AWARD_HUGEBOAT[numth][2]) == 6 ) then 
AddItem(AWARD_HUGEBOAT[numth][2][1],AWARD_HUGEBOAT[numth][2][2],AWARD_HUGEBOAT[numth][2][3],AWARD_HUGEBOAT[numth][2][4],AWARD_HUGEBOAT[numth][2][6],AWARD_HUGEBOAT[numth][2][6]); 
else 
AddGoldItem(0,AWARD_HUGEBOAT[numth][2][1]) 
end 
	DWGOLDENNOWCOUNT = DWGOLDENNOWCOUNT + 1;
DelCommonItem(6,1,427); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: dÉn mét "..AWARD_HUGEBOAT[numth][1]); 
Say("Ng­¬i ®¹t ®­îc 1 c¸ "..AWARD_HUGEBOAT[numth][1]..".",0); 
end 

function randomaward(aryProbability) 
local nRandNum; 
local nSum = 0; 
local nArgCount = getn( aryProbability ); 
local nCompareSum = 0; 
for i = 1, nArgCount do 
		nSum = nSum + aryProbability[i];
end 
nRandNum = random(1,nSum); 
for i = 1,nArgCount do 
		nCompareSum = nCompareSum + aryProbability[i]
if( nRandNum <= nCompareSum) then 
return i; 
end 
end 
end 

function dragon_givegolden() 
local awardpro = {}; 
for i = 1, getn(AWARD_HUGEBOAT) do 
awardpro[i] = AWARD_HUGEBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
AddGoldItem(0,AWARD_HUGEBOAT[numth][2][1]) 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: ®øng hµng tr­íc m­êi ®¹t ®­îc 1 c¸ "..AWARD_HUGEBOAT[numth][1]); 
Say("Ng­¬i ®¹t ®­îc 1 c¸ "..AWARD_HUGEBOAT[numth][1]..".",0); 
end
