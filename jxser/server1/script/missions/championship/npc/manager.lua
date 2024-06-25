Include("\\script\\missions\\championship\\head.lua")
Include("\\script\\event\\wulin_final_match\\wulin_watchticket.lua")
Include("\\script\\event\\wulin_final_match\\awardevent.lua")
Include("\\script\\tong\\tong_header.lua");

-- script viet hoa By http://tranhba.com  ®¹i héi vâ l©m quan viªn 
function main() 
-- script viet hoa By http://tranhba.com Say("§¹i héi vâ l©m quan viªn # vâ l©m hµo kiÖt , trôc léc lung tung thÕ gian # anh hïng thiªn h¹ , ®ñ tËp tö cÊm ®Ønh . lÇn nµy ®¹i héi vâ l©m lµm khu vùc dù chän cuéc so tµi , sÏ chän lùa 90 tªn vâ l©m cao thñ lµm ®¹i biÓu vèn dïng/uèng ®Ých tuyÓn thñ tham gia cuèi cïng ®Ých toµn khu toµn dïng/uèng ®¹i héi vâ l©m # ®èt ng­¬i kÝch t×nh , tíi ®Çu nhËp s©n nµy oanh oanh liÖt liÖt ®¹i héi vâ l©m #", 1,"X¸c nhËn /want_bid_option") 
-- script viet hoa By http://tranhba.com  wulin_watchticketmain() 
wulin_awardmain() -- script viet hoa By http://tranhba.com  ®¹i héi vâ l©m t­ëng th­ëng nhËp khÈu 
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
if (validateDate(CP_BEGIN_BID_DATE, CP_END_BID_DATE)) then -- script viet hoa By http://tranhba.com  ë c¹nh chän lÜnh ®éi ®Ých thêi gian lóc 
talkstr = " muèn c¹nh tranh khu vùc tæng lÜnh ®éi a ?" 
optiontab = { 
" nh×n chän tæng lÜnh ®éi ®Ých kÕt thóc thêi gian /look_endbid", 
" tiÕn vµo ®¹i héi vâ l©m cuéc so tµi trµng /transtoplace", 
" ta muèn muèn c¹nh tranh khu vùc Tæng thèng dÉn # c¸c bang chñ #/want_bid", 
" tra xÐt ta b©y giê khiªu chiÕn tæng t­ s¶n 1/look_bid_self", 
" tra xÐt ta b©y giê khiªu chiÕn t×nh huèng /look_bid_first", 
" lÊy ®­îc vâ l©m t©n tó tuyÓn thñ danh hiÖu /catch_title", 
" trî gióp ®¹i héi vâ l©m /help_championship", 
" ta mét håi trë l¹i !/OnCancel" 
} 
elseif(tonumber(date("%y%m%d%H")) >= CP_UPTO_TRYOUT) then 
talkstr = " muèn lÊy ®­îc khu vùc tuyÓn thñ t­ c¸ch sao ?" -- script viet hoa By http://tranhba.com  ®· quyÕt ra tæng lÜnh ®éi 
optiontab = { 
" ghi danh tham gia liªn ' vâ l©m t©n tó ' cuéc so tµi ”'/regist_freshman", 
" dÉn khiªu chiÕn kim /give_back", 
" nhËn lÊy vâ l©m t©n tó tuyÓn thñ danh hiÖu /catch_title", 
" dÉn khiªu chiÕn kim # tæng lÜnh ®éi #/send_card", 
" tra xÐt vâ l©m t©n tó tuyÓn thñ danh s¸ch cïng t­ c¸ch tranh tµi /look_card", 
" trî gióp ®¹i héi vâ l©m /help_championship", 
" ta mét håi trë l¹i !/OnCancel" 
} 
elseif (tonumber(date("%y%m%d%H")) > CP_END_BID_DATE) then 
Say("C¹nh tranh ho¹t ®éng ®· kÕt thóc # xin ®îi ®îi ®¹i héi vâ l©m dù chän cuéc so tµi b¾t ®Çu # sau tra xÐt kÕt qu¶ . ", 0) 
return 
else 
Say("§¹i héi vâ l©m ho¹t ®éng b©y giê b¾t ®Çu # xin chó ý th«ng b¸o tin tøc !",0); 
return 
end 

Say(talkstr, getn(optiontab), optiontab) 
end 

function want_bid() 
if (GetTongFigure() ~= TONG_MASTER) then 
Say("ChØ cã bang chñ cã t­ c¸ch tham gia c¹nh cuéc so tµi , ng­¬i trë vÒ ®i th«i !", 0); 
return 0 
end 
if(GetLevel() < 90) then 
Say("90 cÊp trë lªn bang chñ míi cã thÓ c¹nh tranh tæng lÜnh ®éi # ng­¬i trë vÒ ®i th«i #", 0) 
return 
end 
local strName = GetName(); 
if (str__findicon(strName) == 0) then 
Say("Mçi lÇn ®Çu ngän muèn 100 v¹n c¶ , gi¸ thÊp nhÊt lµ 100 v¹n l­îng , mçi lÇn ®Çu ngän nhiÒu nhÊt lµ 5 øc hai . ", 2,"X¸c nhËn /sure_bid","Hñy bá /OnCancel") 
end 
end 

function sure_bid() 
if (GetTongFigure() ~= TONG_MASTER) then 
Say("ChØ cã bang chñ míi cã ®Çu ngän t­ c¸ch , ng­¬i trë vÒ ®i th«i !", 0); 
return 0 
end 

local flag = check_bid_title() 
if (not flag) then 
return 
end 
AskClientForNumber("bit",1000000,500000000,"Xin/mêi ®­a vµo ®Çu ngän tiÒn ®Õm :"); 
end 

function check_bid_title() 
biwu_loadfile(LEVELTOP10) 
local name = GetName() 
for i =1 , 10 do 
topten_name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i) 
if (name == topten_name) then 
Say("Ng­¬i ®· tiÕn vµo thËp ®¹i cao thñ thÕ giíi , cã t­ c¸ch tham gia vâ l©m t©n tó liªn cuéc so tµi ®¹i héi ! ng­¬i kh«ng thÓ c¹nh tranh tæng lÜnh ®éi # trë vÒ ®i th«i #", 0) 
return nil 
end 
end 
return 1 
end 


function bit(fee) 
if( fee < 1000000 ) then 
Say("§Êu gi¸ thÊp nhÊt lµ 100 v¹n .", 0); 
return 0 
end 
if( fee > 500000000 ) then 
Say("Mçi lÇn c¹nh tranh nhiÒu nhÊt lµ 5 øc hai .", 0); 
return 0 
end 
if( GetCash() < fee ) then 
Say("Ng­¬i kh«ng ®ñ tiÒn , chê chuÈn bÞ ®ñ råi trë l¹i ®i #", 0); 
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
Msg2Player("Mçi lÇn c¹nh tranh muèn 100 v¹n c¶ , t×m ng­¬i tiÒn sau cßn cã cßn thõa l¹i "..dibs.." hai ") 
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
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] c¹nh tranh "..fee.." v¹n l­îng ."); 
Say("Ng­¬i lÇn ®Çu tiªn c¹nh tiªu . lÇn nµy c¹nh tiªu ®Ých gi¸ tiÒn lµ "..fee.." v¹n l­îng . hÖ thèng ®· nhí tªn cña ng­¬i , tiÒn b¹c cïng tr­¬ng môc , tham gia c¹nh tiªu ®Ých thao t¸c ®· hoµn thµnh .",0); 
Msg2SubWorld("Nhµ ch¬i <color=blue> "..GetName().."<color> míi võa tham gia khu vùc tæng lÜnh ®éi ®Ých c¹nh tranh ") 
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
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] tiÕp tôc c¹nh tiªu "..fee.." v¹n l­îng . b©y giê tæng sè v× "..TongBid.." v¹n l­îng ."); 
Say(" lÇn nµy c¹nh tiªu ®Ých ra gi¸ lµ "..fee.." v¹n l­îng . hÖ thèng ®· ghi chÐp xuèng tªn cña ng­¬i , tiÒn b¹c ®Õm cïng tr­¬ng môc , tham gia c¹nh tiªu ®Ých thao t¸c ®· hoµn thµnh . ®Õn b©y giê , ng­¬i c¹nh tiªu tæng tiÒn b¹c v× "..TongBid.." v¹n l­îng .", 0); 
Msg2SubWorld("Nhµ ch¬i <color=blue> "..GetName().."<color> míi võa míi tham gia khu vùc tæng lÜnh ®éi ®Ých c¹nh tranh ") 
return 1 
end 

CP_SENDCARD_OPEN = 5052820 
CP_SENDCARD_END = 5060420 

function send_card() -- script viet hoa By http://tranhba.com  lùa chän cã hay kh«ng ph¸i ph¸t 

sendmonth , senddate , sendhour = look_the_time( CP_SENDCARD_OPEN ) 
endmonth , enddate , endhour = look_the_time( CP_SENDCARD_END ) 
if ( tonumber( date( "%y%m%d%H" ) ) < CP_SENDCARD_OPEN ) then 
Say("Tæng lÜnh ®éi t­ c¸ch ®Õn "..sendmonth.." th¸ng "..senddate.." ngµy "..sendhour..", ®Õn "..endmonth.." th¸ng "..enddate.." ngµy "..endhour.." kÕt thóc ", 0) 
return 
end 

if ( tonumber( date( "%y%m%d%H" ) ) > CP_SENDCARD_END ) then 
Say("Tæng lÜnh ®éi kh¸m ph¸ tham gia vâ l©m t©n tó liªn cuéc so tµi t­ c¸ch ®· kÕt thóc , ng­¬i cã thÓ ®i tra xÐt vâ l©m t©n tó liªn cuéc so tµi tuyÓn thñ ®Ých danh s¸ch !", 0) 
return 
end 

local orgindex = PlayerIndex 
biwu_loadfile(BID_LEADER) 
local leader_name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (GetName() ~= leader_name) then 
Say("Ng­¬i kh«ng ph¶i lµ khu vùc tæng lÜnh ®éi , kh«ng cã t­ c¸ch lùa chän tham gia vâ l©m t©n tó liªn cuéc so tµi ®Ých t­ c¸ch !", 0) 
return 
end 
if ( IsCaptain() ~= 1 ) then 
Say("Ng­¬i kh«ng ph¶i lµ ®éi tr­ëng , øng tõ tiÓu tæ ®éi tr­ëng ph¸i ra . ",0); 
return 0 
end 
MemCount = GetTeamSize(); 
if ( MemCount <= 1 ) then 
Say("Ng­¬i trong ®éi ngò kh«ng cã thµnh viªn kh¸c , kh«ng thÓ ph¸i ra .",0); 
return 0 
end 
local TeamMembers = ""; 
for i = 2, MemCount do 
PlayerIndex = GetTeamMember(i); 
TeamMembers = TeamMembers..","..GetName() 
end 
PlayerIndex = orgindex 
Say("Ng­¬i muèn ph¸i "..TeamMembers.." tham gia quyÕt cuéc so tµi ? nÕu nh­ thÊp h¬n 90 cÊp lêi cña ®em kh«ng cã t­ c¸ch tham gia tranh tµi . muèn <color=yellow>"..endmonth.." th¸ng "..enddate.." ngµy "..endhour.." <color> kÕt thóc .", 2,"Muèn /ensure","Ta ®ang suy nghÜ /OnCancel"); 
return 
end 

function ensure(ncount) -- script viet hoa By http://tranhba.com  x¸c nhËn ph¸i ph¸t 
local tabname = {} 
local ncount = 0 
local orgindex = PlayerIndex 
MemCount = GetTeamSize(); 
for i = 1, MemCount do 
PlayerIndex = GetTeamMember(i); 

cp_checkmember_title() -- script viet hoa By http://tranhba.com  x¸c ®Þnh tr­íc mÆt ®éi viªn th©n phËn 

if ( IsCaptain() ~= 1 and GetTask(CP_TASKID_TITLE) ~= 9 and GetLevel() >= 90) then -- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng ph¶i lµ ®éi tr­ëng m×nh , h¬n n÷a ch­a cho qu¸ t­ c¸ch 
TeamMemberName = GetName(); 
local flag = provide(TeamMemberName); 
if (not flag) then 
PlayerIndex = orgindex 
Say("Ng­¬i ®· kh«ng cã quyÒn lîi ph¸i ng­êi tham gia quyÕt cuéc so tµi ", 0) 
WriteLog(date("%Y-%m-%d %H:%M:%S,")..GetAccount()..",["..GetName().."] tæng lÜnh ®éi míi cã t­ c¸ch ph¸i ng­êi tham gia tranh tµi !") 
break 
end 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(19, 1, TITLETIME); -- script viet hoa By http://tranhba.com  nh­ vËy lµ cho m×nh thªm cßn lµ cho ®éi h÷u ? 
Title_ActiveTitle( 19 ); 
Talk(1, "","Ng­¬i ®i ®Ých ®¹i héi vâ l©m tuyÓn thñ danh hiÖu "); 
Msg2SubWorld("Chóc mõng nhµ ch¬i ["..GetName().."] lÊy ®­îc vò l©m ®¹i héi tuyÓn thñ danh hiÖu ") 
WriteLog(date("%Y-%m-%d %H:%M:%S,")..GetAccount()..",["..GetName().."] tæng lÜnh ®éi tra xÐt t­ c¸ch tranh tµi ") 
elseif( IsCaptain() ~= 1 and GetTask(CP_TASKID_TITLE) == 9 ) then 
Msg2Player("Ng­¬i ®· cã quyÕt cuéc so tµi tuyÓn thñ t­ c¸ch ") 
elseif( IsCaptain() ~= 1 and GetLevel() < 90 ) then 
Msg2Player("CÊp bËc cña ng­¬i kh«ng tíi 90 cÊp , kh«ng thÓ nhËn lÊy quyÕt cuéc so tµi tuyÓn thñ ®Ých t­ c¸ch ") 
end 
end 
PlayerIndex = orgindex 
end 

function provide(MemberName) -- script viet hoa By http://tranhba.com  ph¸i ph¸t t­ c¸ch 
biwu_loadfile(LEADER_MEMBER); 
MemberCount = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  lÊy ®Õm , nÕu nh­ b¾t ®Çu dat v× v« Ých cã thÓ hay kh«ng cã lçi , cÇn míi b¾t ®Çu hãa ®i ? 
if (not MemberCount) then -- script viet hoa By http://tranhba.com  kh«ng biÕt dat v× v« Ých sÏ trë vÒ c¸i g× 
MemberCount = 0; 
end 
if ( MemberCount >= 29 ) then 
Say("C¸i nµy khu ®Ých tranh tµi ®éi ngò ®· ®Çy , ng­¬i kh«ng thÓ nhËn lÊy t­ c¸ch nµy . .", 0); 
return nil 
end 
	count = tostring(MemberCount + 1);
biwu_setdata(LEADER_MEMBER, "LeadMember", "Count", count); -- script viet hoa By http://tranhba.com  ®Õm hÕt 
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
Say("Ng­¬i kh«ng cã tham gia c¹nh chän lÜnh ®éi ®Ých ho¹t ®éng , t¹i sao cßn ph¶i muèn m¹o hiÓm ®©y ?", 0) 
return 
end 
biwu_loadfile(BID_LEADER) 
firstname = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (firstname ~= "" and firstname ~= nil and firstname == MasterName) then 
Say("Ng­¬i ®· tranh thñ ®Õn vèn khu ®Ých tæng lÜnh ®éi t­ c¸ch , kh«ng lïi tr¶ tiÒn l¹i cho ng­¬i liÔu !", 0) 
return 
end 
if (TongBid == 0) then 
Say("Ng­¬i c¹nh chän ®Ých phÝ dông ta ®· tr¶ l¹i cho ng­¬i liÔu .", 0) 
return 
end 
if (nt_gettask(CP_TASKID_BACKCONT) <= 0) then 
Say("Ng­¬i c¹nh chän ®Ých phÝ dông ta ®· toµn bé tr¶ l¹i cho ng­¬i liÔu .", 0) 
return 
end 
Say("NÕu nh­ sè l­îng lín h¬n 5 øc hai , mçi lÇn ng­¬i ®em ph¶i tr¶ 5 øc hai . dÉn tr­íc xin x¸c nhËn ng­¬i cã thÓ nhËn lÊy sè tiÒn nµy .", 2,"B©y giê ta ®· lÜnh /sure_give_back","Bän ta lÇn tíi tíi /OnCancel") 
end 

function sure_give_back() 
biwu_loadfile(BID_DATA) 
MasterName = GetName(); 
TongBid = tonumber(biwu_getdata(BID_DATA, MasterName, "Bid")); 
if (not TongBid) then 
Say("Ng­¬i kh«ng cã tham gia c¹nh chän lÜnh ®éi ®Ých ho¹t ®éng , t¹i sao cßn ph¶i muèn m¹o hiÓm ®©y ?", 0) 
return 
end 
biwu_loadfile(BID_LEADER) 
firstname = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (firstname ~= "" and firstname ~= nil and firstname == MasterName) then 
Say("Ng­¬i ®· tranh thñ ®Õn vèn khu ®Ých tæng lÜnh ®éi t­ c¸ch , kh«ng lïi tr¶ tiÒn l¹i cho ng­¬i liÔu !", 0) 
return 
end 
if (TongBid == 0) then 
Say("Ng­¬i c¹nh chän ®Ých phÝ dông ta ®· tr¶ l¹i cho ng­¬i liÔu .", 0) 
return 
end 
if (nt_gettask(CP_TASKID_BACKCONT) <= 0) then 
Say("Ng­¬i c¹nh chän ®Ých phÝ dông ta ®· toµn bé tr¶ l¹i cho ng­¬i liÔu .", 0) 
return 
end 

if (GetCash() > 1500000000) then 
Say("Gièng nh­ ng­¬i mang tíi qu¸ nhiÒu tiÒn , muèn tr¶ l¹i cho ng­¬i ®Ých tiÒn ta t¹m thêi b¶o qu¶n . chê ng­¬i cÇn dïng tiÒn thêi ®iÓm trë l¹i dÉn ®i .", 0) 
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
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] lÊy ®­îc 5 øc hai , cßn cã "..TongBid.." v¹n l­îng kh«ng cã bæ trë vÒ ") 
Say("Bëi v× ng­¬i c¹nh tranh ®Ých phÝ dông lín h¬n 50 øc hai , ta tr­íc t×m ng­¬i 50 v¹n l­îng , ng­¬i cßn cã <color=yellow>"..TongBid.."<color> v¹n l­îng ë chç nµy cña ta , tr­íc kiÓm tra l­ng cña ng­¬i tói cã thÓ hay kh«ng trang bÞ sè tiÒn nµy trë l¹i !", 0) 
else 
BackBid = BackBid * 1000000 
biwu_setdata(BID_DATA, MasterName, "Bid", tostring(0)) 
biwu_save(BID_DATA); 
Earn(BackBid) 
nt_settask(CP_TASKID_BACKCONT, 0) 
BackBid = BackBid/10000 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] lÊy ®­îc lui kho¶n "..BackBid.." v¹n l­îng , ®· lui cßn tÊt c¶ c¹nh tranh phÝ dông .") 
Say("Ta tr?color=yellow>"..BackBid.."<color> v¹n l­îng cho ng­¬i , xin/mêi tiÕp nhËn !", 0) 
end 
end 

function catch_title() 
Say("Ng­¬i muèn nhËn lÊy c¸i nµo danh hiÖu ? ", 5,"Tæng lÜnh ®éi /leader","ThÕ giíi thËp ®¹i cao thñ /level_top10","§¹i héi vâ l©m tuyÓn thñ /nomal_player","ThËp ®¹i m«n ph¸i tr­íc 5 ®¹i cao thñ /#faction_top5("..GetLastFactionNumber()..")","Kh«ng muèn /OnCancel"); 
end 

function level_top10() -- script viet hoa By http://tranhba.com  thÕ giíi thËp ®¹i nhËn lÊy danh hiÖu 
biwu_loadfile(LEVELTOP10); 
for i = 1, 10 do 
Name = biwu_getdata(LEVELTOP10, "LevelTop10", "Top"..i); 
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(8, 1, TITLETIME); 
Title_ActiveTitle( 8 ); 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] nhËn lÊy ®¹i héi vâ l©m thËp ®¹i cao thñ danh hiÖu ") 
Msg2Player("Ng­¬i nhËn lÊy ®¹i héi vâ l©m thËp ®¹i cao thñ danh hiÖu "); 
return 1 
end 
end 
Say("Ng­¬i kh«ng cã t­ c¸ch nhËn lÊy thÕ giíi thËp ®¹i cao thñ danh hiÖu .", 0); 
return 
end 

function faction_top5(factionnumber) -- script viet hoa By http://tranhba.com 10 ®¹i m«n ph¸i tr­íc n¨m nhËn lÊy danh hiÖu 
if( factionnumber < 0 or factionnumber > 9 ) then 
Say("Ng­¬i kh«ng ph¶i lµ thËp ®¹i m«n ph¸i ng­êi .", 0); 
return 
end 
if( tonumber(date("%y%m%d%H")) < CP_END_TRYOUT ) then 
Say("M«n ph¸i dù chän cuéc so tµi b©y giê cßn kh«ng cã kÕt thóc , cßn kh«ng cã sinh ra m«n ph¸i tr­íc n¨m , kh«ng thÓ nhËn lÊy danh hiÖu .", 0) 
return 
end 
	biwu_loadfile( Faction[factionnumber + 1][1] );
for i = 1, 5 do 
		Name = biwu_getdata(Faction[factionnumber+1][1], Faction[factionnumber+1][2], "Top"..i);
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
			Title_AddTitle(factionnumber + 9, 1, TITLETIME);
			Title_ActiveTitle(factionnumber + 9);
			WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."]µÃµ½"..FactionTitle[factionnumber+1].."ÃûºÅ");
			Msg2Player("ÄãµÃµ½"..FactionTitle[factionnumber+1].."ÃûºÅ");
return 1 
end 
end 
Say("Ng­¬i kh«ng cã t­ c¸ch nhËn lÊy ®¹i héi vâ l©m m«n ph¸i cao thñ danh hiÖu ",0); 
return 
end 

function nomal_player() 
biwu_loadfile(LEADER_MEMBER) 
count = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")) 
if(not count ) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : tæng lÜnh ®éi cßn kh«ng cã ban hµnh cho ng­¬i dù chän t­ c¸ch , ng­¬i kh«ng cã t­ c¸ch nhËn lÊy danh hiÖu !", 0) 
return 
end 
local name = GetName() 
for i = 1, count do 
mem_name = biwu_getdata(LEADER_MEMBER, "LeadMember", "Member"..i); 
if (mem_name == name) then 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(19, 1, TITLETIME); -- script viet hoa By http://tranhba.com  nh­ vËy lµ cho m×nh thªm cßn lµ cho ®éi h÷u ? 
Title_ActiveTitle( 19 ); 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] ®· nhËn lÊy ®Õn ®¹i héi vâ l©m tuyÓn thñ danh hiÖu "); 
Msg2Player("Ng­¬i lÊy ®­îc vò l©m ®¹i héi tuyÓn thñ danh hiÖu "); 
return 
end 
end 
Say("Tæng lÜnh ®éi cßn kh«ng cã cho ng­¬i dù chän t­ c¸ch , ng­¬i kh«ng c¸ch nµo lÊy ®­îc c¸i nµy ®Æc d¹/õ !", 0) 
end 

function leader() -- script viet hoa By http://tranhba.com  lÜnh ®éi nhËn lÊy danh hiÖu 
biwu_loadfile(BID_LEADER) 
local name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if(GetName() ~= name) then 
Say("Ng­¬i kh«ng cã t­ c¸ch nhËn lÊy khu vùc nµy lÜnh ®éi danh hiÖu .", 0) 
return 
end 
nt_settask(CP_TASKID_TITLE, 9) 
Title_AddTitle(7, 1, TITLETIME); 
Title_ActiveTitle(7); 
WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."] ®· nhËn lÊy ®Õn ®¹i héi vâ l©m tæng lÜnh ®éi danh hiÖu "); 
Msg2Player("Ng­¬i nhËn lÊy ®Õn ®¹i héi vâ l©m tæng lÜnh ®éi "); 
end 

function look_bid_first() 
local MasterName = Ladder_GetLadderInfo(10130, 1); 
if (not MasterName ) then 
Say("B©y giê kh«ng cã ®èi thñ c¹nh tranh .", 0) 
print("no new ladder1") 
return 
end 
if (MasterName == "") then 
Say("B©y giê kh«ng cã ®èi thñ c¹nh tranh .", 0) 
print("no new ladder2") 
return 
end 
Say("B©y giê ng­êi c¹nh tranh cöa tham gia c¹nh tranh cao nhÊt lµ <color=yellow>"..MasterName.."<color> nhµ ch¬i .", 0) 
end 

function look_bid_self() 
local tabmaster = {} 
local flag = 0 
biwu_loadfile(BID_DATA); 
MasterName = GetName(); 
TongBid = tonumber(biwu_getdata(BID_DATA, MasterName, "Bid")); 
if( not TongBid ) then 
Say("Ng­¬i cßn kh«ng cã tham gia c¹nh tranh ho¹t ®éng , muèn thö mét chót sao ?", 0) 
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
Say("Ng­¬i b©y giê ®Ých c¹nh tranh sè l­îng lµ "..TongBid.." v¹n l­îng , cßn ch­a tiÕn vµo tr­íc m­êi .", 0) 
else 
Say("Ng­¬i b©y giê ®Ých c¹nh tranh sè l­îng lµ "..TongBid.." v¹n l­îng , ®øng hµng thø "..flag..", ", 0) 
end 
end 

function look_card() 
listtab = { 
" chän lùa tíi thÕ giíi thËp ®¹i cao thñ danh s¸ch /look_list_topten", 
" chän lùa tíi mçi m«n ph¸i tr­íc 5/look_list_factop", 
" tæng lÜnh ®éi cïng nh÷ng tuyÓn thñ kh¸c /look_list_member", 
" cßn cã c¸i g× chuyÖn tèt sao /OnCancel" 
} 
Say("Ng­¬i muèn xem c¸i nµo danh s¸ch ? ", getn(listtab), listtab) 
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
Say("Chän lùa tíi thÕ giíi thËp ®¹i cao thñ danh s¸ch nh­ sau : ", getn(topten_mem), topten_mem) 
else 
Say("ThÕ giíi thËp ®¹i cao thñ danh s¸ch cßn kh«ng cã ®i ra . ", 0) 
end 
end 

function look_list_factop() 
if (tonumber(date("%y%m%d%H")) < CP_END_TRYOUT) then 
Say("Tranh tµi cßn ch­a kÕt thóc , c¸c m«n ph¸i cßn kh«ng cã cho ra cã t­ c¸ch ®Ých danh s¸ch . ", 0) 
return 
end 
local factab = {"ThiÕu L©m /#look_list_fac(1)","Thiªn v­¬ng /#look_list_fac(2)","§­êng m«n /#look_list_fac(3)","N¨m ®éc /#look_list_fac(4)","Nga Mi /#look_list_fac(5)","Thóy khãi /#look_list_fac(6)","C¸i Bang /#look_list_fac(7)","Ngµy nhÉn /#look_list_fac(8)","Vâ §­¬ng /#look_list_fac(9)","C«n L«n /#look_list_fac(10)" ,"Kh«ng cã gÆp l¹i !/OnCancel"} 
Say("Ng­¬i nghÜ nh×n m«n ph¸i kia chän lùa tíi danh s¸ch sao ? ", getn(factab), factab) 
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
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :"..Faction[nfact][3].." tróng tuyÓn m«n ph¸i danh s¸ch :", getn(topfac_mem), topfac_mem); 
else 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :"..Faction[nfact][3].." m«n ph¸i dù chän tranh tµi danh s¸ch cßn kh«ng cã ", 0) 
end 
end 

function look_list_member() 
local member_tab = {} 
biwu_loadfile(BID_LEADER) 
local leader_name = biwu_getdata(BID_LEADER, "Leader_Name", "Name") 
if (leader_name == "" or leader_name == nil) then 
Say("B©y giê kh«ng cã tæng lÜnh ®éi .", 0) 
return 
end 
biwu_loadfile(LEADER_MEMBER); 
MemberCount = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  lÊy ®Õm , nÕu nh­ b¾t ®Çu dat v× v« Ých cã thÓ hay kh«ng cã lçi , cÇn míi b¾t ®Çu hãa ®i ? 
if (not MemberCount) then -- script viet hoa By http://tranhba.com  kh«ng biÕt dat v× v« Ých sÏ trë vÒ c¸i g× 
MemberCount = 0; 
Say("Tæng lÜnh ®éi <color=yellow> "..leader_name.." <color> b©y giê kh«ng cã t­ c¸ch cho cßn thõa l¹i nhµ ch¬i .", 0) 
return 
end 
if (MemberCount <= 10) then 
member_tab = member_10_group(1, MemberCount) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/OnCancel" 
end 
Say("Khu vùc nµy ®Ých tæng lÜnh ®éi lµ <color=yellow>"..leader_name.."<color>, hiÖn ®· cã t­ c¸ch tuyÓn thñ bao gåm "..MemberCount.." ng­êi , danh s¸ch nh­ sau :", getn(member_tab), member_tab) 
else 
member_tab = member_10_group(1, 10) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/#look_list_member1(10)" 
end 
Say(" lÇn khu vùc ®Ých tæng lÜnh ®éi lµ <color=yellow>"..leader_name.."<color>, b©y giê ®· cã t­ c¸ch ®Ých tuyÓn thñ bao gåm "..MemberCount.." ng­êi , danh s¸ch nh­ sau :", getn(member_tab), member_tab) 
end 
end 

function look_list_member1(count) 
local member_tab = {} 
biwu_loadfile(LEADER_MEMBER); 
MemberCount1 = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  lÊy ®Õm , nÕu nh­ b¾t ®Çu dat v× v« Ých cã thÓ hay kh«ng cã lçi , cÇn míi b¾t ®Çu hãa ®i ? 
MemberCount1 = MemberCount1 - count 
	count1 = count + 1
if (MemberCount1 <= 10) then 
member_tab = member_10_group(count1, MemberCount) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/OnCancel" 
end 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :", getn(member_tab), member_tab) 
else 
		count2 = count + 10
member_tab = member_10_group(count1, count2) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/#look_list_member2(20)" 
end 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :", getn(member_tab), member_tab) 
end 
end 

function look_list_member2(count) 
biwu_loadfile(LEADER_MEMBER); 
MemberCount1 = tonumber(biwu_getdata(LEADER_MEMBER, "LeadMember", "Count")); -- script viet hoa By http://tranhba.com  lÊy ®Õm , nÕu nh­ b¾t ®Çu dat v× v« Ých cã thÓ hay kh«ng cã lçi , cÇn míi b¾t ®Çu hãa ®i ? 
	count1 = count + 1
member_tab = member_10_group(count1, MemberCount) 
for i =1, getn(member_tab) do 
member_tab[i] = member_tab[i].."/OnCancel" 
end 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :", getn(member_tab), member_tab) 
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
Say("Vâ l©m t©n tó liªn cuéc so tµi ®¹i héi dù chän cuéc so tµi kÕt thóc mü m·n . b©y giê cã thÓ ®Õn ta chç xem so tµi kÕt qu¶ cïng nhËn lÊy t­¬ng øng danh hiÖu . kÝnh xin mong ®îi ®¹i héi vâ l©m b¾t ®Çu .", 0) 
do return end 
if (nt_gettask(CP_TASKID_REGIST) == 9) then 
Say("Ng­¬i ®· tõ c¸c m«n ph¸i dù chän cuéc so tµi ®Ých danh s¸ch trung bÞ bá ®i , kh«ng thÓ tiÕp tôc ghi danh tham gia .", 0) 
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

if (nt_gettask(CP_TASKID_TITLE) == 9) then -- script viet hoa By http://tranhba.com  ®· lÊy ®­îc quyÕt cuéc so tµi vßng t­ c¸ch 
Say("Ng­¬i ®· lÊy ®­îc tuyÓn thñ t­ c¸ch , kh«ng muèn n÷a c­íp vÞ trÝ !", 0) 
return 
end 

if (GetLevel() < 90) then 
Say("Ng­¬i ph¶i 90 cÊp trë lªn míi cã thÓ tiÕn vµo ®¹i héi vâ l©m cuéc so tµi trµng , tiÕp tôc luyÖn cÊp ®i !", 0) 
return 
end 

if (GetLastFactionNumber() == -1) then 
Say("Minh chñ vâ l©m cã lÖnh : chØ cã thËp ®¹i m«n ph¸i nh©n tµi cã thÓ tham gia ®¹i héi vâ l©m , ng­¬i kh«ng m«n kh«ng ph¸i kh«ng thÓ tham gia . gia nhËp thËp ®¹i m«n ph¸i sau míi cã thÓ tham gia tranh tµi !", 0) 
return 
end 

if (nt_gettask(CP_TASKID_REGIST) == CP_UPTO_TRYOUT) then 
transtoplace() 
else 
local talkstr = " ghi danh tham gia dù chän cuéc so tµi muèn ®ãng 10 v¹n l­îng tiÒn ghi danh ." 
Say(talkstr, 2,"§©y lµ 10 v¹n l­îng ./sure_regist","Ta nh×n l¹i mét chót /OnCancel") 
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
Say("Ng­¬i tiÒn ghi danh ch­a ®ñ , ®ñ 10 v¹n l­îng trë vÒ n÷a !", 0) 

end 

function regist_freshman() 
Msg2Player("§Õn vâ l©m t©n tó liªn cuéc so tµi quan viªn chç ghi danh tham gia tranh tµi " ) 
NewWorld( 176, 1624, 3233 ) 
end 

function look_endbid() 
local endbid_year = floor(CP_END_BID_DATE / 1000000) 
local endbid_month = mod(floor(CP_END_BID_DATE / 10000), 100) 
local endbid_date = mod(floor(CP_END_BID_DATE / 100), 100) 
local endbid_hour = mod(CP_END_BID_DATE,100) 
Say("Tæng lÜnh ®éi cã t­ c¸ch ®Õn "..endbid_month.." th¸ng "..endbid_date.." ngµy "..endbid_hour.." lóc kÕt thóc , b©y giê thêi gian lµ "..date("d ngµy % %m th¸ng %Y n¨m H lóc "), 0) 
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
