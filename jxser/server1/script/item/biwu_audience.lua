-- script viet hoa By http://tranhba.com Include("\\script\\missions\\finalmatch\\wl_watchmatch.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\missions\\finalmatch\\head.lua")
-- script viet hoa By http://tranhba.com GetExtPoint(1) == date(%y%m%d) -- script viet hoa By http://tranhba.com 050704 
-- script viet hoa By http://tranhba.com PayExtPoint(extpoint, count); 
GUANFANGRENYUAN = 5555 
ZHANDIJIZHE = 4444 
function main( nItemIdx ) 
SetLogoutRV(1); -- script viet hoa By http://tranhba.com  ®o¹n tuyÕn cïng tö vong lµm mét c¸ sèng l¹i ®iÓm 
local extpoint = GetExtPoint(1) 
if ( extpoint == 0 ) then 
Say("Ng­¬i thÕ nµo cÇm ng­êi kh¸c ng­êi xem t¹p dïng siÕt #", 0) 
return 
end 

local matchtype = GetGlbValue( GLB_CURMATCHTYPE ) 
local matchphase = GetGlbValue( GLB_MATCHPHASE ) 
if ( matchtype == 0 ) then 
Say("Tr­íc mÆt tranh tµi cßn ch­a tiÕn hµnh , muèn xem cuéc chiÕn cÇn ®îi ®Õn tranh tµi b¾t ®Çu . tr­íc mæ ng­êi xem t¹p ®Ých sö dông sao ? ", 3,"Nh­ thÕ nµo sö dông ng­êi xem t¹p /#wl_onaudiencehelp(1)","TuÇn tra ng­êi xem t¹p ®Ých sö dông kú h¹n /wl_getdeadline","KÕt thóc ®èi tho¹i /OnCancel") 
return 1 
end 

local messages = { 
" tiÕn vµo ng­êi xem tÞch /#want2audience("..matchtype..")", 
" chØ ®Þnh vai trß tªn /watch_role", 
" chØ ®Þnh chiÕn ®éi tªn /watch_league", 
" theo nh­ khu dïng/uèng ph©n chia tra t×m chiÕn ®éi /watch_zone", 
" nh­ thÕ nµo sö dông ng­êi xem t¹p /#wl_onaudiencehelp(1)", 
" tuÇn tra ng­êi xem t¹p ®Ých sö dông kú h¹n /wl_getdeadline", 
" c¸i g× còng kh«ng lµm /OnCancel" 
}; 
local curmapid = SubWorldIdx2ID( SubWorld ) 
local flag = wl_mapid2watchnum( curmapid ) 
if ( flag ) then 
tinsert( messages, 1,"NgÉu nhiªn tra t×m ®ang so tµi tuyÓn thñ /watch_rand_currently" ) 
end 
Say("Ng­¬i cã thÓ c¨n cø trë xuèng mÊy lo¹i ph­¬ng thøc tuÇn tra tranh tµi còng tiÕn hµnh xem cuéc chiÕn . ", getn( messages ), messages ) 
return 1 
end 

-- script viet hoa By http://tranhba.com  quan s¸t mét vai trß tranh tµi 
function watch_role() 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ®· ë xem cuéc chiÕn m« thøc 
if (IsSpectator() == 0) then 
AskClientForString("on_watch_role", "", 1, 20,"Xin/mêi ®­a vµo nhµ ch¬i vai trß tªn "); 
end 
end 


function wl_sure2watch_role(rolename,position,matchtype) 
oldSubWorld = SubWorld 
local tab_matchmap = {} 
tab_matchmap = wl_matchtype2allmapin( matchtype, position ) 
if ( getn(tab_matchmap) == 0 ) then 
print("matchtype="..matchtype..",position="..position..", cannot find matchmap") 
return 
end 

local bpassed = 0 
bpassed = wl_findroleinmatchmap( rolename,tab_matchmap ) 
if ( bpassed == 0 ) then 
Say("Ng­¬i tuÇn tra ®Ých vai trß ®­îc ®Æt tªn lµ “"..rolename.."” ®Ých tuyÓn thñ , tr­íc mÆt kh«ng cã ë ®©y bªn trong ®Êu tr­êng , xin/mêi lùa chän nh÷ng tuyÓn thñ kh¸c quan s¸t tranh tµi . ", 0) 
return 
end 
AttachActor(rolename); 
SubWorld = oldSubWorld 
end 


function watch_league() 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ®· ë xem cuéc chiÕn m« thøc 
if (IsSpectator() == 0) then 
AskClientForString("on_watch_league", "", 1, 20,"Xin/mêi ®­a vµo chiÕn ®éi tªn "); 
end 
end 

function wl_sure2watch_lgname(leaguename,position,leaguetype) 
oldSubWorld = SubWorld 
local matchtype = leaguetype - 10 
local tab_matchmap = {} 
tab_matchmap = wl_matchtype2allmapin( matchtype, position ) 
if ( getn(tab_matchmap) == 0 ) then 
print("matchtype="..matchtype..",position="..position..", cannot find matchmap") 
return 
end 
local lid = LG_GetLeagueObj( leaguetype, leaguename ) 
local lgcount = LG_GetMemberCount(lid) 
local lgmem = {} 
local rolename = "" 
local bpassed = 0 
for i = 0, lgcount - 1 do 
		lgmem[ getn(lgmem)+1 ] = LG_GetMemberInfo( lid, i )
end 
for i = 1, getn( lgmem ) do 
bpassed = wl_findroleinmatchmap( lgmem[i],tab_matchmap ) 
if ( bpassed == 1 ) then 
rolename = lgmem[i] 
break 
end 
end 
if ( bpassed == 0 ) then 
Say("Ng­¬i tuÇn tra ®Ých chiÕn ®éi ®­îc ®Æt tªn lµ “"..leaguename.."” ®Ých chiÕn ®éi tr­íc mÆt kh«ng cã ë n¬i so tµi bªn trong , kh«ng thÓ ®èi víi nªn chiÕn ®éi tiÕn hµnh xem cuéc chiÕn , xin/mêi lùa chän nh÷ng chiÕn ®éi kh¸c xem cuéc chiÕn . ", 0) 
return 
end 
AttachActor(rolename); 
SubWorld = oldSubWorld 
end 


function watch_zone() 
local opp = {} 
opp = get_zone(0) 
Say("Ng­¬i muèn tra t×m c¸i nµo khu dïng/uèng ®Ých vèn ngµy so tµi chiÕn ®éi ? ", getn(opp), opp) 
end 

function wl_sure2go_seat(rolesignmap, name, flag) 
local str = "" 
local position = wl_getwatchmap( rolesignmap ) 
if( not position ) then 
print("the signmap of role who the play want to watch is not exist!!!!mapid =="..rolesignmap) 
return 
end 
local num = random(1, 2) 
local watchmap = WL_TABWATCHMAPS[position][num] 
x,y,z = GetWorldPos(); 
SetTask(WL_TASKID_FROMMAP, x); 
SetTask(WL_TASKID_FROM_X, y); 
SetTask(WL_TASKID_FROM_Y, z); 
if ( flag == 1 ) then 
str = " ng­¬i míi võa tra t×m ®Ých chiÕn ®éi ®­îc ®Æt tªn lµ "..name.." , xin/mêi sö dông ng­êi xem t¹p hoÆc h­íng ng­êi xem tÞch quan viªn lÇn n÷a tuÇn tra . " 
else 
str = " ng­¬i míi võa tra t×m ®Ých tuyÓn thñ ®­îc ®Æt tªn lµ "..name.." , xin/mêi sö dông ng­êi xem t¹p hoÆc h­íng ng­êi xem tÞch quan viªn lÇn n÷a tuÇn tra . " 
end 
NewWorld(watchmap, WL_MAPPOS_OUT[1], WL_MAPPOS_OUT[2]) 
Msg2Player(str) 
Say(str, 0) 
end 

function wl_mapideqmapid( mapid1, mapid2 ) 
local flag = 0 
for i = 1, getn( WL_TABWATCHMAPS ) do 
for j = 1, getn( WL_TABWATCHMAPS[i] ) do 
if ( WL_TABWATCHMAPS[i][j] == mapid1 ) then 
flag = i 
break 
end 
end 
end 
if ( flag == 0 ) then 
return 
end 
for i = 1, getn( WL_TABWATCHMAPS[ flag ] ) do 
if( WL_TABWATCHMAPS[ flag ][ i ] == mapid2 ) then 
return i 
end 
end 
return nil 
end 


OnAudience = { 
" sö dông ng­êi xem t¹p sau , ng­êi xem cã thÓ dïng trë xuèng bèn lo¹i ph­¬ng thøc tuÇn tra tranh tµi còng tiÕn hµnh quan s¸t #1# chØ ®Þnh vai trß tªn #2# chØ ®Þnh chiÕn ®éi tªn #3# c¨n cø khu dïng/uèng ph©n chia tra t×m chiÕn ®éi #4# ngÉu nhiªn tuÇn tra ®ang so tµi tuyÓn thñ . tuÇn tra ®Ých vai trß hoÆc lµ chiÕn ®éi nhÊt ®Þnh ph¶i v× ngµy ®ã so tµi chiÕn ®éi , h¬n n÷a nªn chiÕn ®éi tr­íc mÆt ®ang tranh tµi trung . ", 
" ë ng­êi xem m« thøc trung , nÕu nh­ tuÇn tra ®Ých vai trß hoÆc chiÕn ®éi tr­íc mÆt cho phÐp bÞ xem cuéc chiÕn , tøc nªn vai trß hoÆc chiÕn ®éi tr­íc mÆt ®ang tranh tµi trung , lµ ®­îc tiÕn vµo xem cuéc chiÕn m« thøc . khi xem cuéc chiÕn vai trß thèi lui ra tranh tµi , h¹ tuyÕn hoÆc tö vong , lµ thèi lui ra xem cuéc chiÕn m« thøc # nhµ ch¬i còng cã thÓ m×nh lùa chän thèi lui ra xem cuéc chiÕn m« thøc . thèi lui ra sau , nhµ ch¬i nh­ng tra t×m nh÷ng kh¸c vai trß hoÆc chiÕn ®éi tiÕn hµnh xem cuéc chiÕn . ", 
" ë xem cuéc chiÕn m« thøc trung , nÕu nh­ muèn xem cuéc chiÕn vai trß hoÆc chiÕn ®éi kh«ng ph¶i lµ tr­íc mÆt b¶n ®å cã thÓ quan s¸t , lµ sÏ tr­íc ®em nhµ ch¬i truyÒn tèng ®Õn t­¬ng øng ng­êi xem tÞch , sau ®ã nhµ ch¬i cÇn l¹i mét lÇn n÷a tra t×m mét lÇn nªn vai trß hoÆc chiÕn ®éi , ®Ó x¸c ®Þnh lµ cho phÐp bÞ xem cuéc chiÕn vai trß hoÆc chiÕn ®éi , míi cã thÓ ®i vµo xem cuéc chiÕn m« thøc . ", 
} 
function wl_onaudiencehelp(count) 
if ( count >= getn( OnAudience ) ) then 
Say(OnAudience[getn( OnAudience )], 1,"T¾t /OnCancel") 
else 
		local ncount = count + 1
Say(OnAudience[count], 2,"Trang kÕ tiÕp /#wl_onaudiencehelp("..ncount..")","T¾t /OnCancel") 
end 
end 


function wl_getdeadline() 
local extpoint = GetExtPoint(1) 
if ( extpoint == 0 ) then 
Say("Ng­¬i thÕ nµo cÇm ng­êi kh¸c ng­êi xem t¹p dïng siÕt #", 0) 
return 1 
end 

Say("B©y giê ng­êi xem cã thÓ ë ®¹i héi vâ l©m trong lóc ®Ých tïy ý thêi gian tiÕn vµo ®¹i héi vâ l©m phôc vô khÝ , kh«ng chÞu ng­êi xem vµo trµng kho¸n sö dông kú h¹n ®Ých h¹n chÕ . ", 0) 
end 
function want2audience( matchtype ) 
if ( matchtype == 9999 ) then 
Say("Vèn ngµy ®Ých tranh tµi lµ m«n ph¸i ®an h¹ng cuéc so tµi , ng­êi xem tÞch cïng ®èi øng m«n ph¸i tranh tµi v× #", 6,"Ng­êi xem tÞch 1# ThiÕu L©m # Thiªn v­¬ng #/#want2watchseat(1)","Ng­êi xem tÞch 2# §­êng m«n # n¨m ®éc #/#want2watchseat(2)","Ng­êi xem tÞch 3# thóy khãi # Nga Mi #/#want2watchseat(3)","Ng­êi xem tÞch 4# C¸i Bang # ngµy nhÉn #/#want2watchseat(4)","Ng­êi xem tÞch 5# Vâ §­¬ng # C«n L«n #/#want2watchseat(5)","Kh«ng cÇn /OnCancel") 
elseif( matchtype == 11 ) then 
Say("Vèn ngµy ®Ých tranh tµi lµ hai ng­êi cuéc so tµi , më ra trë xuèng ba ng­êi xem tÞch , ng­¬i muèn ®i #", 4,"Ng­êi xem tÞch 1/#want2watchseat(1)","Ng­êi xem tÞch 2/#want2watchseat(2)","Ng­êi xem tÞch 3/#want2watchseat(3)","Kh«ng cÇn /OnCancel") 
elseif( matchtype == 12 ) then 
Say("Vèn ngµy ®Ých tranh tµi lµ ngò hµnh ®oµn ®éi cuéc so tµi , më ra trë xuèng s¸u ng­êi xem tÞch , ng­¬i muèn ®i #", 7,"Ng­êi xem tÞch 1/#want2watchseat(1)","Ng­êi xem tÞch 2/#want2watchseat(2)","Ng­êi xem tÞch 3/#want2watchseat(3)","Ng­êi xem tÞch 4/#want2watchseat(4)","Ng­êi xem tÞch 5/#want2watchseat(5)","Ng­êi xem tÞch 6/#want2watchseat(6)","Kh«ng cÇn /OnCancel") 
elseif( matchtype == 13 or matchtype == 14 ) then 
Say("Vèn ngµy ®Ých tranh tµi lµ ®oµn ®éi cuéc so tµi , më ra trë xuèng bèn ng­êi xem tÞch , ng­¬i muèn ®i #", 5,"Ng­êi xem tÞch 1/#want2watchseat(1)","Ng­êi xem tÞch 2/#want2watchseat(2)","Ng­êi xem tÞch 4/#want2watchseat(4)","Ng­êi xem tÞch 5/#want2watchseat(5)","Kh«ng cÇn /OnCancel") 
elseif( matchtype == 15 ) then 
Say("Vèn ngµy ®Ých tranh tµi lµ khu dïng/uèng ®oµn thÓ cuéc so tµi , më ra mét c¸i s¸u ng­êi xem tÞch , ng­¬i muèn ®i #", 7,"Ng­êi xem tÞch 1/#want2watchseat(1)","Ng­êi xem tÞch 2/#want2watchseat(2)","Ng­êi xem tÞch 3/#want2watchseat(3)","Ng­êi xem tÞch 4/#want2watchseat(4)","Ng­êi xem tÞch 5/#want2watchseat(5)","Ng­êi xem tÞch 6/#want2watchseat(6)","Kh«ng cÇn /OnCancel") 
else 
Say("Ng­êi xem tÞch b©y giê t¾t c¶ söa , xin hËu n÷a tiÕn vµo . ", 0) 
end 
end 
function want2watchseat(position) 
local watchmap = WL_TABWATCHMAPS[position][1] 
x,y,z = GetWorldPos(); 
SetTask(WL_TASKID_FROMMAP, x); 
SetTask(WL_TASKID_FROM_X, y); 
SetTask(WL_TASKID_FROM_Y, z); 
NewWorld(watchmap, WL_MAPPOS_OUT[1], WL_MAPPOS_OUT[2]) 
Msg2Player("Ng­¬i ®¹t tíi ng­êi xem tÞch , xin/mêi sö dông ng­êi xem t¹p hoÆc h­íng ng­êi xem tÞch quan viªn tuÇn tra tranh tµi ") 
end
