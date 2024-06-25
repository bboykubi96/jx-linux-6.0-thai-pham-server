Include("\\script\\missions\\championship\\head.lua")
Include("\\script\\event\\wulin_final_match\\wulin_watchticket.lua")
Include("\\script\\event\\wulin_final_match\\awardevent.lua")
Include("\\script\\tong\\tong_header.lua");

-- script viet hoa By http://tranhba.com  ��i h�i v� l�m quan vi�n 
function main() 
-- script viet hoa By http://tranhba.com Say("��i h�i v� l�m quan vi�n # v� l�m h�o ki�t , tr�c l�c lung tung th� gian # anh h�ng thi�n h� , �� t�p t� c�m ��nh . l�n n�y ��i h�i v� l�m l�m khu v�c d� ch�n cu�c so t�i , s� ch�n l�a 90 t�n v� l�m cao th� l�m ��i bi�u v�n d�ng/u�ng ��ch tuy�n th� tham gia cu�i c�ng ��ch to�n khu to�n d�ng/u�ng ��i h�i v� l�m # ��t ng��i k�ch t�nh , t�i ��u nh�p s�n n�y oanh oanh li�t li�t ��i h�i v� l�m #", 1,"X�c nh�n /want_bid_option") 
-- script viet hoa By http://tranhba.com  wulin_watchticketmain() 
wulin_awardmain() -- script viet hoa By http://tranhba.com  ��i h�i v� l�m t��ng th��ng nh�p kh�u 
end 

function str__findicon(string) 
len = strlen(string) 
for i = 1, len do 
if (strbyte(string, i) == 93) then 
return 1 
end 
end 
return 0 
end 

function want_bid_option() 
local optiontab = {} 
if (validateDate(CP_BEGIN_BID_DATE, CP_END_BID_DATE)) then -- script viet hoa By http://tranhba.com  � c�nh ch�n l�nh ��i ��ch th�i gian l�c 
talkstr = " mu�n c�nh tranh khu v�c t�ng l�nh ��i a ?" 
optiontab = { 
" nh�n ch�n t�ng l�nh ��i ��ch k�t th�c th�i gian /look_endbid", 
" ti�n v�o ��i h�i v� l�m cu�c so t�i tr�ng /transtoplace", 
" ta mu�n mu�n c�nh tranh khu v�c T�ng th�ng d�n # c�c bang ch� #/want_bid", 
" tra x�t ta b�y gi� khi�u chi�n t�ng t� s�n 1/look_bid_self", 
" tra x�t ta b�y gi� khi�u chi�n t�nh hu�ng /look_bid_first", 
" l�y ���c v� l�m t�n t� tuy�n th� danh hi�u /catch_title", 
" tr� gi�p ��i h�i v� l�m /help_championship", 
" ta m�t h�i tr� l�i !/OnCancel" 
} 
elseif(tonumber(date("%y%m%d%H")) >= CP_UPTO_TRYOUT) then 
talkstr = " mu�n l�y ���c khu v�c tuy�n th� t� c�ch sao ?" -- script viet hoa By http://tranhba.com  �� quy�t ra t�ng l�nh ��i 
optiontab = { 
" ghi danh tham gia li�n ' v� l�m t�n t� ' cu�c so t�i �'/regist_freshman", 
" d�n khi�u chi�n kim /give_back", 
" nh�n l�y v� l�m t�n t� tuy�n th� danh hi�u /catch_title", 
" d�n khi�u chi�n kim # t�ng l�nh ��i #/send_card", 
" tra x�t v� l�m t�n t� tuy�n th� danh s�ch c�ng t� c�ch tranh t�i /look_card", 
" tr� gi�p ��i h�i v� l�m /help_championship", 
" ta m�t h�i tr� l�i !/OnCancel" 
} 
elseif (tonumber(date("%y%m%d%H")) > CP_END_BID_DATE) then 
Say("C�nh tranh ho�t ��ng �� k�t th�c # xin ��i ��i ��i h�i v� l�m d� ch�n cu�c so t�i b�t ��u # sau tra x�t k�t qu� . ", 0) 
return 
else 
Say("��i h�i v� l�m ho�t ��ng b�y gi� b�t ��u # xin ch� � th�ng b�o tin t�c !",0); 
return 
end 

Say(talkstr, getn(optiontab), optiontab) 
end 

function want_bid() 
if (GetTongFigure() ~= TONG_MASTER) then 
Say("Ch� c� bang ch� c� t� c�ch tham gia c�nh cu�c so t�i , ng��i tr� v� �i th�i !", 0); 
return 0 
end 
if(GetLevel() < 90) then 
Say("90 c�p tr� l�n bang ch� m�i c� th� c�nh tranh t�ng l�nh ��i # ng��i tr� v� �i th�i #", 0) 
return 
end 
local strName = GetName(); 
if (str__findicon(strName) == 0) then 
Say("M�i l�n ��u ng�n mu�n 100 v�n c� , gi� th�p nh�t l� 100 v�n l��ng , m�i l�n ��u ng�n nhi�u nh�t l� 5 �c hai . ", 2,"X�c nh�n /sure_bid","H�y b� /OnCancel") 
end 
end 

function sure_bid() 
if (GetTongFigure() ~= TONG_MASTER) then 
Say("Ch� c� bang ch� m�i c� ��u ng�n t� c�ch , ng��i tr� v� �i th�i !", 0); 
return 0 
end 

local flag = check_bid_title() 
if (not flag) then 
return 
end 
AskClientForNumber("bit",1000000,500000000,"Xin/m�i ��a v�o ��u ng�n ti�n ��m :"); 
end 

function check_bid_title() 
biwu_loadfile(LEVELTOP10) 
local name = GetName() 
for i =1 , 10 do 
topten_name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i) 
if (name == topten_name) then 
Say("Ng��i �� ti�n v�o th�p ��i cao th� th� gi�i , c� t� c�ch tham gia v� l�m t�n t� li�n cu�c so t�i ��i h�i ! ng��i kh�ng th� c�nh tranh t�ng l�nh ��i # tr� v� �i th�i #", 0) 
return nil 
end 
end 
return 1 
end 


function bit(fee) 
if( fee < 1000000 ) then 
Say("��u gi� th�p nh�t l� 100 v�n .", 0); 
return 0 
end 
if( fee > 500000000 ) then 
Say("M�i l�n c�nh tranh nhi�u nh�t l� 5 �c hai .", 0); 
return 0 
end 
if( GetCash() < fee ) then 
Say("Ng��i kh�ng �� ti�n , ch� chu�n b� �� r�i tr� l�i �i #", 0); 
return 0 
end 
biwu_loadfile(BID_DATA); 
MasterName = GetName(); 
intTongBid = tonumber(biwu_getdata(BID_DATA, MasterName, "Bid")); 
if (not intTongBid) then 
intTongBid = 0 
end 
intfee = floor(fee/1000000) 
if (mod(fee, 1000000) ~= 0) then 
dibs = mod(fee, 1000000) 
fee = intfee * 1000000 
Msg2Player("M�i l�n c�nh tranh mu�n 100 v�n c� , t�m ng��i ti�n sau c�n c� c�n th�a l�i "..dibs.." hai ") 
end 
Pay(fee); 
fee = floor(fee/10000) 
if( intTongBid == 0 ) then 
biwu_setdata(BID_DATA, MasterName, "Bid", intfee); 
biwu_setdata(BID_DATA, MasterName, "MasterName", MasterName); 
biwu_save(BID_DATA); 
cp_saveback_count(fee) 
Ladder_NewLadder(10130, MasterName, intfee, 1); 
print("the first bid") 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] c�nh tranh "..fee.." v�n l��ng ."); 
Say("Ng��i l�n ��u ti�n c�nh ti�u . l�n n�y c�nh ti�u ��ch gi� ti�n l� "..fee.." v�n l��ng . h� th�ng �� nh� t�n c�a ng��i , ti�n b�c c�ng tr��ng m�c , tham gia c�nh ti�u ��ch thao t�c �� ho�n th�nh .",0); 
Msg2SubWorld("Nh� ch�i <color=blue> "..GetName().."<color> m�i v�a tham gia khu v�c t�ng l�nh ��i ��ch c�nh tranh ") 
return 1 
end 
print("bid back bid") 
	intTongBid = intTongBid + intfee;
TongBid = 100 * intTongBid; 
biwu_setdata(BID_DATA, MasterName, "Bid", tostring(intTongBid)); 
biwu_setdata(BID_DATA, MasterName, "MasterName", MasterName); 
biwu_save(BID_DATA); 
cp_saveback_count(TongBid) 
Ladder_NewLadder(10130, MasterName, intTongBid, 1); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] ti�p t�c c�nh ti�u "..fee.." v�n l��ng . b�y gi� t�ng s� v� "..TongBid.." v�n l��ng ."); 
Say(" l�n n�y c�nh ti�u ��ch ra gi� l� "..fee.." v�n l��ng . h� th�ng �� ghi ch�p xu�ng t�n c�a ng��i , ti�n b�c ��m c�ng tr��ng m�c , tham gia c�nh ti�u ��ch thao t�c �� ho�n th�nh . ��n b�y gi� , ng��i c�nh ti�u t�ng ti�n b�c v� "..TongBid.." v�n l��ng .", 0); 
Msg2SubWorld("Nh� ch�i <color=blue> "..GetName().."<color> m�i v�a m�i tham gia khu v�c t�ng l�nh ��i ��ch c�nh tranh ") 
return 1 
end 

CP_SENDCARD_OPEN = 5052820 
CP_SENDCARD_END = 5060420 

function send_card() -- script viet hoa By http://tranhba.com  l�a ch�n c� hay kh�ng ph�i ph�t 

sendmonth , senddate , sendhour = look_the_time( CP_SENDCARD_OPEN ) 
endmonth , enddate , endhour = look_the_time( CP_SENDCARD_END ) 
if ( tonumber( date( "%y%m%d%H" ) ) < CP_SENDCARD_OPEN ) then 
Say("T�ng l�nh ��i t� c�ch ��n "..sendmonth.." th�ng "..senddate.." ng�y "..sendhour..", ��n "..endmonth.." th�ng "..enddate.." ng�y "..endhour.." k�t th�c ", 0) 
return 
end 

if ( tonumber( date( "%y%m%d%H" ) ) > CP_SENDCARD_END ) then 
Say("T�ng l�nh ��i kh�m ph� tham gia v� l�m t�n t� li�n cu�c so t�i t� c�ch �� k�t th�c , ng��i c� th� �i tra x�t v� l�m t�n t� li�n cu�c so t�i tuy�n th� ��ch danh s�ch !", 0) 
return 
end 

local orgindex = PlayerIndex 
biwu_loadfile(BID_LEADER) 
local leader_name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (GetName() ~= leader_name) then 
Say("Ng��i kh�ng ph�i l� khu v�c t�ng l�nh ��i , kh�ng c� t� c�ch l�a ch�n tham gia v� l�m t�n t� li�n cu�c so t�i ��ch t� c�ch !", 0) 
return 
end 
if ( IsCaptain() ~= 1 ) then 
Say("Ng��i kh�ng ph�i l� ��i tr��ng , �ng t� ti�u t� ��i tr��ng ph�i ra . ",0); 
return 0 
end 
MemCount = GetTeamSize(); 
if ( MemCount <= 1 ) then 
Say("Ng��i trong ��i ng� kh�ng c� th�nh vi�n kh�c , kh�ng th� ph�i ra .",0); 
return 0 
end 
local TeamMembers = ""; 
for i = 2, MemCount do 
PlayerIndex = GetTeamMember(i); 
TeamMembers = TeamMembers..","..GetName() 
end 
PlayerIndex = orgindex 
Say("Ng��i mu�n ph�i "..TeamMembers.." tham gia quy�t cu�c so t�i ? n�u nh� th�p h�n 90 c�p l�i c�a �em kh�ng c� t� c�ch tham gia tranh t�i . mu�n <color=yellow>"..endmonth.." th�ng "..enddate.." ng�y "..endhour.." <color> k�t th�c .", 2,"Mu�n /ensure","Ta �ang suy ngh� /OnCancel"); 
return 
end 

function ensure(ncount) -- script viet hoa By http://tranhba.com  x�c nh�n ph�i ph�t 
local tabname = {} 
local ncount = 0 
local orgindex = PlayerIndex 
MemCount = GetTeamSize(); 
for i = 1, MemCount do 
PlayerIndex = GetTeamMember(i); 

cp_checkmember_title() -- script viet hoa By http://tranhba.com  x�c ��nh tr��c m�t ��i vi�n th�n ph�n 

if ( IsCaptain() ~= 1 and GetTask(CP_TASKID_TITLE) ~= 9 and GetLevel() >= 90) then -- script viet hoa By http://tranhba.com  n�u nh� kh�ng ph�i l� ��i tr��ng m�nh , h�n n�a ch�a cho qu� t� c�ch 
TeamMemberName = GetName(); 
local flag = provide(TeamMemberName); 
if (not flag) then 
PlayerIndex = orgindex 
Say("Ng��i �� kh�ng c� quy�n l�i ph�i ng��i tham gia quy�t cu�c so t�i ", 0) 
WriteLog(date("%Y-%m-%d %H:%M:%S,")..GetAccount()..",["..GetName().."] t�ng l�nh ��i m�i c� t� c�ch ph�i ng��i tham gia tranh t�i !") 
break 
end 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(19, 1, TITLETIME); -- script viet hoa By http://tranhba.com  nh� v�y l� cho m�nh th�m c�n l� cho ��i h�u ? 
Title_ActiveTitle( 19 ); 
Talk(1, "","Ng��i �i ��ch ��i h�i v� l�m tuy�n th� danh hi�u "); 
Msg2SubWorld("Ch�c m�ng nh� ch�i ["..GetName().."] l�y ���c v� l�m ��i h�i tuy�n th� danh hi�u ") 
WriteLog(date("%Y-%m-%d %H:%M:%S,")..GetAccount()..",["..GetName().."] t�ng l�nh ��i tra x�t t� c�ch tranh t�i ") 
elseif( IsCaptain() ~= 1 and GetTask(CP_TASKID_TITLE) == 9 ) then 
Msg2Player("Ng��i �� c� quy�t cu�c so t�i tuy�n th� t� c�ch ") 
elseif( IsCaptain() ~= 1 and GetLevel() < 90 ) then 
Msg2Player("C�p b�c c�a ng��i kh�ng t�i 90 c�p , kh�ng th� nh�n l�y quy�t cu�c so t�i tuy�n th� ��ch t� c�ch ") 
end 
end 
PlayerIndex = orgindex 
end 

function provide(MemberName) -- script viet hoa By http://tranhba.com  ph�i ph�t t� c�ch 
biwu_loadfile(LEADER_MEMBER); 
MemberCount = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  l�y ��m , n�u nh� b�t ��u dat v� v� �ch c� th� hay kh�ng c� l�i , c�n m�i b�t ��u h�a �i ? 
if (not MemberCount) then -- script viet hoa By http://tranhba.com  kh�ng bi�t dat v� v� �ch s� tr� v� c�i g� 
MemberCount = 0; 
end 
if ( MemberCount >= 29 ) then 
Say("C�i n�y khu ��ch tranh t�i ��i ng� �� ��y , ng��i kh�ng th� nh�n l�y t� c�ch n�y . .", 0); 
return nil 
end 
	count = tostring(MemberCount + 1);
biwu_setdata(LEADER_MEMBER, "LeadMember", "Count", count); -- script viet hoa By http://tranhba.com  ��m h�t 
biwu_setdata(LEADER_MEMBER, "LeadMember", "Member"..count, MemberName); 
biwu_setdata(LEADER_MEMBER, "LeadMember", "Fact"..count, tostring(GetLastFactionNumber()) ) 
biwu_save(LEADER_MEMBER); 
return 1 
end 

function give_back() 
biwu_loadfile(BID_DATA) 
MasterName = GetName(); 
TongBid = tonumber(biwu_getdata(BID_DATA, MasterName, "Bid")); 
if (not TongBid) then 
Say("Ng��i kh�ng c� tham gia c�nh ch�n l�nh ��i ��ch ho�t ��ng , t�i sao c�n ph�i mu�n m�o hi�m ��y ?", 0) 
return 
end 
biwu_loadfile(BID_LEADER) 
firstname = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (firstname ~= "" and firstname ~= nil and firstname == MasterName) then 
Say("Ng��i �� tranh th� ��n v�n khu ��ch t�ng l�nh ��i t� c�ch , kh�ng l�i tr� ti�n l�i cho ng��i li�u !", 0) 
return 
end 
if (TongBid == 0) then 
Say("Ng��i c�nh ch�n ��ch ph� d�ng ta �� tr� l�i cho ng��i li�u .", 0) 
return 
end 
if (nt_gettask(CP_TASKID_BACKCONT) <= 0) then 
Say("Ng��i c�nh ch�n ��ch ph� d�ng ta �� to�n b� tr� l�i cho ng��i li�u .", 0) 
return 
end 
Say("N�u nh� s� l��ng l�n h�n 5 �c hai , m�i l�n ng��i �em ph�i tr� 5 �c hai . d�n tr��c xin x�c nh�n ng��i c� th� nh�n l�y s� ti�n n�y .", 2,"B�y gi� ta �� l�nh /sure_give_back","B�n ta l�n t�i t�i /OnCancel") 
end 

function sure_give_back() 
biwu_loadfile(BID_DATA) 
MasterName = GetName(); 
TongBid = tonumber(biwu_getdata(BID_DATA, MasterName, "Bid")); 
if (not TongBid) then 
Say("Ng��i kh�ng c� tham gia c�nh ch�n l�nh ��i ��ch ho�t ��ng , t�i sao c�n ph�i mu�n m�o hi�m ��y ?", 0) 
return 
end 
biwu_loadfile(BID_LEADER) 
firstname = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (firstname ~= "" and firstname ~= nil and firstname == MasterName) then 
Say("Ng��i �� tranh th� ��n v�n khu ��ch t�ng l�nh ��i t� c�ch , kh�ng l�i tr� ti�n l�i cho ng��i li�u !", 0) 
return 
end 
if (TongBid == 0) then 
Say("Ng��i c�nh ch�n ��ch ph� d�ng ta �� tr� l�i cho ng��i li�u .", 0) 
return 
end 
if (nt_gettask(CP_TASKID_BACKCONT) <= 0) then 
Say("Ng��i c�nh ch�n ��ch ph� d�ng ta �� to�n b� tr� l�i cho ng��i li�u .", 0) 
return 
end 

if (GetCash() > 1500000000) then 
Say("Gi�ng nh� ng��i mang t�i qu� nhi�u ti�n , mu�n tr� l�i cho ng��i ��ch ti�n ta t�m th�i b�o qu�n . ch� ng��i c�n d�ng ti�n th�i �i�m tr� l�i d�n �i .", 0) 
return 
end 

BackBid = TongBid 
if (BackBid > 500) then 
BackBid = 500 
TongBid = TongBid - BackBid 
biwu_setdata(BID_DATA, MasterName, "Bid", tostring(TongBid)); 
biwu_save(BID_DATA); 
BackBid = 500 * 1000000 
Earn(BackBid) 
nt_settask(CP_TASKID_BACKCONT, nt_gettask(CP_TASKID_BACKCONT) - 1) 
TongBid = TongBid * 100 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] l�y ���c 5 �c hai , c�n c� "..TongBid.." v�n l��ng kh�ng c� b� tr� v� ") 
Say("B�i v� ng��i c�nh tranh ��ch ph� d�ng l�n h�n 50 �c hai , ta tr��c t�m ng��i 50 v�n l��ng , ng��i c�n c� <color=yellow>"..TongBid.."<color> v�n l��ng � ch� n�y c�a ta , tr��c ki�m tra l�ng c�a ng��i t�i c� th� hay kh�ng trang b� s� ti�n n�y tr� l�i !", 0) 
else 
BackBid = BackBid * 1000000 
biwu_setdata(BID_DATA, MasterName, "Bid", tostring(0)) 
biwu_save(BID_DATA); 
Earn(BackBid) 
nt_settask(CP_TASKID_BACKCONT, 0) 
BackBid = BackBid/10000 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] l�y ���c lui kho�n "..BackBid.." v�n l��ng , �� lui c�n t�t c� c�nh tranh ph� d�ng .") 
Say("Ta tr?color=yellow>"..BackBid.."<color> v�n l��ng cho ng��i , xin/m�i ti�p nh�n !", 0) 
end 
end 

function catch_title() 
Say("Ng��i mu�n nh�n l�y c�i n�o danh hi�u ? ", 5,"T�ng l�nh ��i /leader","Th� gi�i th�p ��i cao th� /level_top10","��i h�i v� l�m tuy�n th� /nomal_player","Th�p ��i m�n ph�i tr��c 5 ��i cao th� /#faction_top5("..GetLastFactionNumber()..")","Kh�ng mu�n /OnCancel"); 
end 

function level_top10() -- script viet hoa By http://tranhba.com  th� gi�i th�p ��i nh�n l�y danh hi�u 
biwu_loadfile(LEVELTOP10); 
for i = 1, 10 do 
Name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i); 
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(8, 1, TITLETIME); 
Title_ActiveTitle( 8 ); 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] nh�n l�y ��i h�i v� l�m th�p ��i cao th� danh hi�u ") 
Msg2Player("Ng��i nh�n l�y ��i h�i v� l�m th�p ��i cao th� danh hi�u "); 
return 1 
end 
end 
Say("Ng��i kh�ng c� t� c�ch nh�n l�y th� gi�i th�p ��i cao th� danh hi�u .", 0); 
return 
end 

function faction_top5(factionnumber) -- script viet hoa By http://tranhba.com 10 ��i m�n ph�i tr��c n�m nh�n l�y danh hi�u 
if( factionnumber < 0 or factionnumber > 9 ) then 
Say("Ng��i kh�ng ph�i l� th�p ��i m�n ph�i ng��i .", 0); 
return 
end 
if( tonumber(date("%y%m%d%H")) < CP_END_TRYOUT ) then 
Say("M�n ph�i d� ch�n cu�c so t�i b�y gi� c�n kh�ng c� k�t th�c , c�n kh�ng c� sinh ra m�n ph�i tr��c n�m , kh�ng th� nh�n l�y danh hi�u .", 0) 
return 
end 
	biwu_loadfile( Faction[factionnumber + 1][1] );
for i = 1, 5 do 
		Name = biwu_getdata(Faction[factionnumber+1][1], Faction[factionnumber+1][2], "Top"..i);
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
			Title_AddTitle(factionnumber + 9, 1, TITLETIME);
			Title_ActiveTitle(factionnumber + 9);
			WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."]�õ�"..FactionTitle[factionnumber+1].."����");
			Msg2Player("��õ�"..FactionTitle[factionnumber+1].."����");
return 1 
end 
end 
Say("Ng��i kh�ng c� t� c�ch nh�n l�y ��i h�i v� l�m m�n ph�i cao th� danh hi�u ",0); 
return 
end 

function nomal_player() 
biwu_loadfile(LEADER_MEMBER) 
count = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")) 
if(not count ) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n : t�ng l�nh ��i c�n kh�ng c� ban h�nh cho ng��i d� ch�n t� c�ch , ng��i kh�ng c� t� c�ch nh�n l�y danh hi�u !", 0) 
return 
end 
local name = GetName() 
for i = 1, count do 
mem_name = biwu_getdata(LEADER_MEMBER, "LeadMember", "Member"..i); 
if (mem_name == name) then 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(19, 1, TITLETIME); -- script viet hoa By http://tranhba.com  nh� v�y l� cho m�nh th�m c�n l� cho ��i h�u ? 
Title_ActiveTitle( 19 ); 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] �� nh�n l�y ��n ��i h�i v� l�m tuy�n th� danh hi�u "); 
Msg2Player("Ng��i l�y ���c v� l�m ��i h�i tuy�n th� danh hi�u "); 
return 
end 
end 
Say("T�ng l�nh ��i c�n kh�ng c� cho ng��i d� ch�n t� c�ch , ng��i kh�ng c�ch n�o l�y ���c c�i n�y ��c d�/� !", 0) 
end 

function leader() -- script viet hoa By http://tranhba.com  l�nh ��i nh�n l�y danh hi�u 
biwu_loadfile(BID_LEADER) 
local name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if(GetName() ~= name) then 
Say("Ng��i kh�ng c� t� c�ch nh�n l�y khu v�c n�y l�nh ��i danh hi�u .", 0) 
return 
end 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(7, 1, TITLETIME); 
Title_ActiveTitle(7); 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] �� nh�n l�y ��n ��i h�i v� l�m t�ng l�nh ��i danh hi�u "); 
Msg2Player("Ng��i nh�n l�y ��n ��i h�i v� l�m t�ng l�nh ��i "); 
end 

function look_bid_first() 
local MasterName = Ladder_GetLadderInfo(10130, 1); 
if (not MasterName ) then 
Say("B�y gi� kh�ng c� ��i th� c�nh tranh .", 0) 
print("no new ladder1") 
return 
end 
if (MasterName == "") then 
Say("B�y gi� kh�ng c� ��i th� c�nh tranh .", 0) 
print("no new ladder2") 
return 
end 
Say("B�y gi� ng��i c�nh tranh c�a tham gia c�nh tranh cao nh�t l� <color=yellow>"..MasterName.."<color> nh� ch�i .", 0) 
end 

function look_bid_self() 
local tabmaster = {} 
local flag = 0 
biwu_loadfile(BID_DATA); 
MasterName = GetName(); 
TongBid = tonumber(biwu_getdata(BID_DATA, MasterName, "Bid")); 
if( not TongBid ) then 
Say("Ng��i c�n kh�ng c� tham gia c�nh tranh ho�t ��ng , mu�n th� m�t ch�t sao ?", 0) 
return 
end 
TongBid = TongBid * 100 
for i = 1, 10 do 
tabmaster[i] = Ladder_GetLadderInfo(10130, i); 
if (MasterName == tabmaster[i]) then 
flag = i 
break 
end 
end 
if (flag == 0) then 
Say("Ng��i b�y gi� ��ch c�nh tranh s� l��ng l� "..TongBid.." v�n l��ng , c�n ch�a ti�n v�o tr��c m��i .", 0) 
else 
Say("Ng��i b�y gi� ��ch c�nh tranh s� l��ng l� "..TongBid.." v�n l��ng , ��ng h�ng th� "..flag..", ", 0) 
end 
end 

function look_card() 
listtab = { 
" ch�n l�a t�i th� gi�i th�p ��i cao th� danh s�ch /look_list_topten", 
" ch�n l�a t�i m�i m�n ph�i tr��c 5/look_list_factop", 
" t�ng l�nh ��i c�ng nh�ng tuy�n th� kh�c /look_list_member", 
" c�n c� c�i g� chuy�n t�t sao /OnCancel" 
} 
Say("Ng��i mu�n xem c�i n�o danh s�ch ? ", getn(listtab), listtab) 
end 

function look_list_topten() 
biwu_loadfile(LEVELTOP10); 
local topten_mem = {} 
local ncount = 0; 
for i = 1, 10 do 
name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i); 
if (name ~= "" and name ~= nil) then 
		 	ncount = ncount + 1
topten_mem[ncount] = name.."/OnCancel" 
end 
end 

if (ncount > 0) then 
Say("Ch�n l�a t�i th� gi�i th�p ��i cao th� danh s�ch nh� sau : ", getn(topten_mem), topten_mem) 
else 
Say("Th� gi�i th�p ��i cao th� danh s�ch c�n kh�ng c� �i ra . ", 0) 
end 
end 

function look_list_factop() 
if (tonumber(date("%y%m%d%H")) < CP_END_TRYOUT) then 
Say("Tranh t�i c�n ch�a k�t th�c , c�c m�n ph�i c�n kh�ng c� cho ra c� t� c�ch ��ch danh s�ch . ", 0) 
return 
end 
local factab = {"Thi�u L�m /#look_list_fac(1)","Thi�n v��ng /#look_list_fac(2)","���ng m�n /#look_list_fac(3)","N�m ��c /#look_list_fac(4)","Nga Mi /#look_list_fac(5)","Th�y kh�i /#look_list_fac(6)","C�i Bang /#look_list_fac(7)","Ng�y nh�n /#look_list_fac(8)","V� ���ng /#look_list_fac(9)","C�n L�n /#look_list_fac(10)" ,"Kh�ng c� g�p l�i !/OnCancel"} 
Say("Ng��i ngh� nh�n m�n ph�i kia ch�n l�a t�i danh s�ch sao ? ", getn(factab), factab) 
end 

function look_list_fac(nfact) 
local ncount = 0 
biwu_loadfile( Faction[nfact][1] ); 
local topfac_mem = {} 
for i = 1, 5 do 
name = biwu_getdata(Faction[nfact][1], Faction[nfact][2], "Top"..i); 
if (name ~= "" and name ~= nil) then 
		 	ncount = ncount + 1
topfac_mem[ncount] = name.."/OnCancel" 
end 
end 
if (ncount > 0) then 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :"..Faction[nfact][3].." tr�ng tuy�n m�n ph�i danh s�ch :", getn(topfac_mem), topfac_mem); 
else 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :"..Faction[nfact][3].." m�n ph�i d� ch�n tranh t�i danh s�ch c�n kh�ng c� ", 0) 
end 
end 

function look_list_member() 
local member_tab = {} 
biwu_loadfile(BID_LEADER) 
local leader_name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (leader_name == "" or leader_name == nil) then 
Say("B�y gi� kh�ng c� t�ng l�nh ��i .", 0) 
return 
end 
biwu_loadfile(LEADER_MEMBER); 
MemberCount = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  l�y ��m , n�u nh� b�t ��u dat v� v� �ch c� th� hay kh�ng c� l�i , c�n m�i b�t ��u h�a �i ? 
if (not MemberCount) then -- script viet hoa By http://tranhba.com  kh�ng bi�t dat v� v� �ch s� tr� v� c�i g� 
MemberCount = 0; 
Say("T�ng l�nh ��i <color=yellow> "..leader_name.." <color> b�y gi� kh�ng c� t� c�ch cho c�n th�a l�i nh� ch�i .", 0) 
return 
end 
if (MemberCount <= 10) then 
member_tab = member_10_group(1, MemberCount) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/OnCancel" 
end 
Say("Khu v�c n�y ��ch t�ng l�nh ��i l� <color=yellow>"..leader_name.."<color>, hi�n �� c� t� c�ch tuy�n th� bao g�m "..MemberCount.." ng��i , danh s�ch nh� sau :", getn(member_tab), member_tab) 
else 
member_tab = member_10_group(1, 10) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/#look_list_member1(10)" 
end 
Say(" l�n khu v�c ��ch t�ng l�nh ��i l� <color=yellow>"..leader_name.."<color>, b�y gi� �� c� t� c�ch ��ch tuy�n th� bao g�m "..MemberCount.." ng��i , danh s�ch nh� sau :", getn(member_tab), member_tab) 
end 
end 

function look_list_member1(count) 
local member_tab = {} 
biwu_loadfile(LEADER_MEMBER); 
MemberCount1 = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  l�y ��m , n�u nh� b�t ��u dat v� v� �ch c� th� hay kh�ng c� l�i , c�n m�i b�t ��u h�a �i ? 
MemberCount1 = MemberCount1 - count 
	count1 = count + 1
if (MemberCount1 <= 10) then 
member_tab = member_10_group(count1, MemberCount) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/OnCancel" 
end 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :", getn(member_tab), member_tab) 
else 
		count2 = count + 10
member_tab = member_10_group(count1, count2) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/#look_list_member2(20)" 
end 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :", getn(member_tab), member_tab) 
end 
end 

function look_list_member2(count) 
biwu_loadfile(LEADER_MEMBER); 
MemberCount1 = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  l�y ��m , n�u nh� b�t ��u dat v� v� �ch c� th� hay kh�ng c� l�i , c�n m�i b�t ��u h�a �i ? 
	count1 = count + 1
member_tab = member_10_group(count1, MemberCount) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/OnCancel" 
end 
Say("V� l�m t�n t� li�n cu�c so t�i quan vi�n :", getn(member_tab), member_tab) 
end 


function member_10_group(start, ending) 
biwu_loadfile(LEADER_MEMBER); 
local memtab = {} 
	local count = ending - start + 1
for i = 1, count do 
		j = i + start - 1
memtab[i] = biwu_getdata(LEADER_MEMBER, "LeadMember", "Member"..j); 
end 
return memtab 
end 

function cp_saveback_count(tol_money) 
if (mod(tol_money, 50000) > 0) then 
		back_count = floor(tol_money / 50000) + 1
else 
back_count = floor(tol_money / 50000) 
end 
nt_settask(CP_TASKID_BACKCONT, back_count) 
end 

function regist_champion() 
Say("V� l�m t�n t� li�n cu�c so t�i ��i h�i d� ch�n cu�c so t�i k�t th�c m� m�n . b�y gi� c� th� ��n ta ch� xem so t�i k�t qu� c�ng nh�n l�y t��ng �ng danh hi�u . k�nh xin mong ��i ��i h�i v� l�m b�t ��u .", 0) 
do return end 
if (nt_gettask(CP_TASKID_REGIST) == 9) then 
Say("Ng��i �� t� c�c m�n ph�i d� ch�n cu�c so t�i ��ch danh s�ch trung b� b� �i , kh�ng th� ti�p t�c ghi danh tham gia .", 0) 
return 
end 

biwu_loadfile(BID_LEADER ) 
local leader_name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (leader_name ~= "" and leader_name ~= nil) then 
if (GetName() == leader_name) then 
nt_settask(CP_TASKID_TITLE, 9) 
end 
end 

biwu_loadfile(LEVELTOP10) 
for i = 1, 10 do 
Name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i); 
if(Name ~= "" and Name ~= nil) then 
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
end 
end 
end 

biwu_loadfile(LEADER_MEMBER) 
count = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")) 
if(not count ) then 
else 
for i = 1, count do 
mem_name = biwu_getdata(LEADER_MEMBER, "LeadMember", "Member"..i); 
if (mem_name ~= "" and mem_name ~= nil) then 
if (mem_name == GetName()) then 
nt_settask(CP_TASKID_TITLE, 9) 
end 
end 
end 
end 

if (nt_gettask(CP_TASKID_TITLE) == 9) then -- script viet hoa By http://tranhba.com  �� l�y ���c quy�t cu�c so t�i v�ng t� c�ch 
Say("Ng��i �� l�y ���c tuy�n th� t� c�ch , kh�ng mu�n n�a c��p v� tr� !", 0) 
return 
end 

if (GetLevel() < 90) then 
Say("Ng��i ph�i 90 c�p tr� l�n m�i c� th� ti�n v�o ��i h�i v� l�m cu�c so t�i tr�ng , ti�p t�c luy�n c�p �i !", 0) 
return 
end 

if (GetLastFactionNumber() == -1) then 
Say("Minh ch� v� l�m c� l�nh : ch� c� th�p ��i m�n ph�i nh�n t�i c� th� tham gia ��i h�i v� l�m , ng��i kh�ng m�n kh�ng ph�i kh�ng th� tham gia . gia nh�p th�p ��i m�n ph�i sau m�i c� th� tham gia tranh t�i !", 0) 
return 
end 

if (nt_gettask(CP_TASKID_REGIST) == CP_UPTO_TRYOUT) then 
transtoplace() 
else 
local talkstr = " ghi danh tham gia d� ch�n cu�c so t�i mu�n ��ng 10 v�n l��ng ti�n ghi danh ." 
Say(talkstr, 2,"��y l� 10 v�n l��ng ./sure_regist","Ta nh�n l�i m�t ch�t /OnCancel") 
return 
end 
end 

function sure_regist() 
if (GetCash() >= CP_CASH) then 
Pay(CP_CASH) 

nt_settask(CP_TASKID_REGIST, CP_UPTO_TRYOUT) 
for i = 1084 , 1092 do 
nt_settask(i, 0) 
end 

transtoplace() 
return 
end 
Say("Ng��i ti�n ghi danh ch�a �� , �� 10 v�n l��ng tr� v� n�a !", 0) 

end 

function regist_freshman() 
Msg2Player("��n v� l�m t�n t� li�n cu�c so t�i quan vi�n ch� ghi danh tham gia tranh t�i " ) 
NewWorld( 176, 1624, 3233 ) 
end 

function look_endbid() 
local endbid_year = floor(CP_END_BID_DATE / 1000000) 
local endbid_month = mod(floor(CP_END_BID_DATE / 10000), 100) 
local endbid_date = mod(floor(CP_END_BID_DATE / 100), 100) 
local endbid_hour = mod(CP_END_BID_DATE,100) 
Say("T�ng l�nh ��i c� t� c�ch ��n "..endbid_month.." th�ng "..endbid_date.." ng�y "..endbid_hour.." l�c k�t th�c , b�y gi� th�i gian l� "..date("d ng�y % %m th�ng %Y n�m H l�c "), 0) 
end 

function look_the_time( THETIME ) 
local the_year = floor(THETIME / 1000000) 
local the_month = mod(floor(THETIME / 10000), 100) 
local the_date = mod(floor(THETIME / 100), 100) 
local the_hour = mod(THETIME,100) 
return the_month, the_date, the_hour 
end 

function cp_checkmember_title() 

biwu_loadfile(BID_LEADER) 
Name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (GetName() == Name) then 
nt_settask(CP_TASKID_TITLE, 9) 
end 

factionnumber = GetLastFactionNumber() 
		biwu_loadfile( Faction[factionnumber + 1][1] );
for i = 1, 5 do 
			Name = biwu_getdata(Faction[factionnumber+1][1], Faction[factionnumber+1][2], "Top"..i);
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
end 
end 

biwu_loadfile(LEVELTOP10); 
for i = 1, 10 do 
Name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i); 
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
end 
end 
end 
