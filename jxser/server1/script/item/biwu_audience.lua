-- script viet hoa By http://tranhba.com Include("\\script\\missions\\finalmatch\\wl_watchmatch.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\missions\\finalmatch\\head.lua")
-- script viet hoa By http://tranhba.com GetExtPoint(1) == date(%y%m%d) -- script viet hoa By http://tranhba.com 050704 
-- script viet hoa By http://tranhba.com PayExtPoint(extpoint, count); 
GUANFANGRENYUAN = 5555 
ZHANDIJIZHE = 4444 
function main( nItemIdx ) 
SetLogoutRV(1); -- script viet hoa By http://tranhba.com  �o�n tuy�n c�ng t� vong l�m m�t c� s�ng l�i �i�m 
local extpoint = GetExtPoint(1) 
if ( extpoint == 0 ) then 
Say("Ng��i th� n�o c�m ng��i kh�c ng��i xem t�p d�ng si�t #", 0) 
return 
end 

local matchtype = GetGlbValue( GLB_CURMATCHTYPE ) 
local matchphase = GetGlbValue( GLB_MATCHPHASE ) 
if ( matchtype == 0 ) then 
Say("Tr��c m�t tranh t�i c�n ch�a ti�n h�nh , mu�n xem cu�c chi�n c�n ��i ��n tranh t�i b�t ��u . tr��c m� ng��i xem t�p ��ch s� d�ng sao ? ", 3,"Nh� th� n�o s� d�ng ng��i xem t�p /#wl_onaudiencehelp(1)","Tu�n tra ng��i xem t�p ��ch s� d�ng k� h�n /wl_getdeadline","K�t th�c ��i tho�i /OnCancel") 
return 1 
end 

local messages = { 
" ti�n v�o ng��i xem t�ch /#want2audience("..matchtype..")", 
" ch� ��nh vai tr� t�n /watch_role", 
" ch� ��nh chi�n ��i t�n /watch_league", 
" theo nh� khu d�ng/u�ng ph�n chia tra t�m chi�n ��i /watch_zone", 
" nh� th� n�o s� d�ng ng��i xem t�p /#wl_onaudiencehelp(1)", 
" tu�n tra ng��i xem t�p ��ch s� d�ng k� h�n /wl_getdeadline", 
" c�i g� c�ng kh�ng l�m /OnCancel" 
}; 
local curmapid = SubWorldIdx2ID( SubWorld ) 
local flag = wl_mapid2watchnum( curmapid ) 
if ( flag ) then 
tinsert( messages, 1,"Ng�u nhi�n tra t�m �ang so t�i tuy�n th� /watch_rand_currently" ) 
end 
Say("Ng��i c� th� c�n c� tr� xu�ng m�y lo�i ph��ng th�c tu�n tra tranh t�i c�ng ti�n h�nh xem cu�c chi�n . ", getn( messages ), messages ) 
return 1 
end 

-- script viet hoa By http://tranhba.com  quan s�t m�t vai tr� tranh t�i 
function watch_role() 
-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng �� � xem cu�c chi�n m� th�c 
if (IsSpectator() == 0) then 
AskClientForString("on_watch_role", "", 1, 20,"Xin/m�i ��a v�o nh� ch�i vai tr� t�n "); 
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
Say("Ng��i tu�n tra ��ch vai tr� ���c ��t t�n l� �"..rolename.."� ��ch tuy�n th� , tr��c m�t kh�ng c� � ��y b�n trong ��u tr��ng , xin/m�i l�a ch�n nh�ng tuy�n th� kh�c quan s�t tranh t�i . ", 0) 
return 
end 
AttachActor(rolename); 
SubWorld = oldSubWorld 
end 


function watch_league() 
-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng �� � xem cu�c chi�n m� th�c 
if (IsSpectator() == 0) then 
AskClientForString("on_watch_league", "", 1, 20,"Xin/m�i ��a v�o chi�n ��i t�n "); 
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
Say("Ng��i tu�n tra ��ch chi�n ��i ���c ��t t�n l� �"..leaguename.."� ��ch chi�n ��i tr��c m�t kh�ng c� � n�i so t�i b�n trong , kh�ng th� ��i v�i n�n chi�n ��i ti�n h�nh xem cu�c chi�n , xin/m�i l�a ch�n nh�ng chi�n ��i kh�c xem cu�c chi�n . ", 0) 
return 
end 
AttachActor(rolename); 
SubWorld = oldSubWorld 
end 


function watch_zone() 
local opp = {} 
opp = get_zone(0) 
Say("Ng��i mu�n tra t�m c�i n�o khu d�ng/u�ng ��ch v�n ng�y so t�i chi�n ��i ? ", getn(opp), opp) 
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
str = " ng��i m�i v�a tra t�m ��ch chi�n ��i ���c ��t t�n l� "..name.." , xin/m�i s� d�ng ng��i xem t�p ho�c h��ng ng��i xem t�ch quan vi�n l�n n�a tu�n tra . " 
else 
str = " ng��i m�i v�a tra t�m ��ch tuy�n th� ���c ��t t�n l� "..name.." , xin/m�i s� d�ng ng��i xem t�p ho�c h��ng ng��i xem t�ch quan vi�n l�n n�a tu�n tra . " 
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
" s� d�ng ng��i xem t�p sau , ng��i xem c� th� d�ng tr� xu�ng b�n lo�i ph��ng th�c tu�n tra tranh t�i c�ng ti�n h�nh quan s�t #1# ch� ��nh vai tr� t�n #2# ch� ��nh chi�n ��i t�n #3# c�n c� khu d�ng/u�ng ph�n chia tra t�m chi�n ��i #4# ng�u nhi�n tu�n tra �ang so t�i tuy�n th� . tu�n tra ��ch vai tr� ho�c l� chi�n ��i nh�t ��nh ph�i v� ng�y �� so t�i chi�n ��i , h�n n�a n�n chi�n ��i tr��c m�t �ang tranh t�i trung . ", 
" � ng��i xem m� th�c trung , n�u nh� tu�n tra ��ch vai tr� ho�c chi�n ��i tr��c m�t cho ph�p b� xem cu�c chi�n , t�c n�n vai tr� ho�c chi�n ��i tr��c m�t �ang tranh t�i trung , l� ���c ti�n v�o xem cu�c chi�n m� th�c . khi xem cu�c chi�n vai tr� th�i lui ra tranh t�i , h� tuy�n ho�c t� vong , l� th�i lui ra xem cu�c chi�n m� th�c # nh� ch�i c�ng c� th� m�nh l�a ch�n th�i lui ra xem cu�c chi�n m� th�c . th�i lui ra sau , nh� ch�i nh�ng tra t�m nh�ng kh�c vai tr� ho�c chi�n ��i ti�n h�nh xem cu�c chi�n . ", 
" � xem cu�c chi�n m� th�c trung , n�u nh� mu�n xem cu�c chi�n vai tr� ho�c chi�n ��i kh�ng ph�i l� tr��c m�t b�n �� c� th� quan s�t , l� s� tr��c �em nh� ch�i truy�n t�ng ��n t��ng �ng ng��i xem t�ch , sau �� nh� ch�i c�n l�i m�t l�n n�a tra t�m m�t l�n n�n vai tr� ho�c chi�n ��i , �� x�c ��nh l� cho ph�p b� xem cu�c chi�n vai tr� ho�c chi�n ��i , m�i c� th� �i v�o xem cu�c chi�n m� th�c . ", 
} 
function wl_onaudiencehelp(count) 
if ( count >= getn( OnAudience ) ) then 
Say(OnAudience[getn( OnAudience )], 1,"T�t /OnCancel") 
else 
		local ncount = count + 1
Say(OnAudience[count], 2,"Trang k� ti�p /#wl_onaudiencehelp("..ncount..")","T�t /OnCancel") 
end 
end 


function wl_getdeadline() 
local extpoint = GetExtPoint(1) 
if ( extpoint == 0 ) then 
Say("Ng��i th� n�o c�m ng��i kh�c ng��i xem t�p d�ng si�t #", 0) 
return 1 
end 

Say("B�y gi� ng��i xem c� th� � ��i h�i v� l�m trong l�c ��ch t�y � th�i gian ti�n v�o ��i h�i v� l�m ph�c v� kh� , kh�ng ch�u ng��i xem v�o tr�ng kho�n s� d�ng k� h�n ��ch h�n ch� . ", 0) 
end 
function want2audience( matchtype ) 
if ( matchtype == 9999 ) then 
Say("V�n ng�y ��ch tranh t�i l� m�n ph�i �an h�ng cu�c so t�i , ng��i xem t�ch c�ng ��i �ng m�n ph�i tranh t�i v� #", 6,"Ng��i xem t�ch 1# Thi�u L�m # Thi�n v��ng #/#want2watchseat(1)","Ng��i xem t�ch 2# ���ng m�n # n�m ��c #/#want2watchseat(2)","Ng��i xem t�ch 3# th�y kh�i # Nga Mi #/#want2watchseat(3)","Ng��i xem t�ch 4# C�i Bang # ng�y nh�n #/#want2watchseat(4)","Ng��i xem t�ch 5# V� ���ng # C�n L�n #/#want2watchseat(5)","Kh�ng c�n /OnCancel") 
elseif( matchtype == 11 ) then 
Say("V�n ng�y ��ch tranh t�i l� hai ng��i cu�c so t�i , m� ra tr� xu�ng ba ng��i xem t�ch , ng��i mu�n �i #", 4,"Ng��i xem t�ch 1/#want2watchseat(1)","Ng��i xem t�ch 2/#want2watchseat(2)","Ng��i xem t�ch 3/#want2watchseat(3)","Kh�ng c�n /OnCancel") 
elseif( matchtype == 12 ) then 
Say("V�n ng�y ��ch tranh t�i l� ng� h�nh �o�n ��i cu�c so t�i , m� ra tr� xu�ng s�u ng��i xem t�ch , ng��i mu�n �i #", 7,"Ng��i xem t�ch 1/#want2watchseat(1)","Ng��i xem t�ch 2/#want2watchseat(2)","Ng��i xem t�ch 3/#want2watchseat(3)","Ng��i xem t�ch 4/#want2watchseat(4)","Ng��i xem t�ch 5/#want2watchseat(5)","Ng��i xem t�ch 6/#want2watchseat(6)","Kh�ng c�n /OnCancel") 
elseif( matchtype == 13 or matchtype == 14 ) then 
Say("V�n ng�y ��ch tranh t�i l� �o�n ��i cu�c so t�i , m� ra tr� xu�ng b�n ng��i xem t�ch , ng��i mu�n �i #", 5,"Ng��i xem t�ch 1/#want2watchseat(1)","Ng��i xem t�ch 2/#want2watchseat(2)","Ng��i xem t�ch 4/#want2watchseat(4)","Ng��i xem t�ch 5/#want2watchseat(5)","Kh�ng c�n /OnCancel") 
elseif( matchtype == 15 ) then 
Say("V�n ng�y ��ch tranh t�i l� khu d�ng/u�ng �o�n th� cu�c so t�i , m� ra m�t c�i s�u ng��i xem t�ch , ng��i mu�n �i #", 7,"Ng��i xem t�ch 1/#want2watchseat(1)","Ng��i xem t�ch 2/#want2watchseat(2)","Ng��i xem t�ch 3/#want2watchseat(3)","Ng��i xem t�ch 4/#want2watchseat(4)","Ng��i xem t�ch 5/#want2watchseat(5)","Ng��i xem t�ch 6/#want2watchseat(6)","Kh�ng c�n /OnCancel") 
else 
Say("Ng��i xem t�ch b�y gi� t�t c� s�a , xin h�u n�a ti�n v�o . ", 0) 
end 
end 
function want2watchseat(position) 
local watchmap = WL_TABWATCHMAPS[position][1] 
x,y,z = GetWorldPos(); 
SetTask(WL_TASKID_FROMMAP, x); 
SetTask(WL_TASKID_FROM_X, y); 
SetTask(WL_TASKID_FROM_Y, z); 
NewWorld(watchmap, WL_MAPPOS_OUT[1], WL_MAPPOS_OUT[2]) 
Msg2Player("Ng��i ��t t�i ng��i xem t�ch , xin/m�i s� d�ng ng��i xem t�p ho�c h��ng ng��i xem t�ch quan vi�n tu�n tra tranh t�i ") 
end
