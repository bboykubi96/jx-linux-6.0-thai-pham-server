Include("\\script\\missions\\freshman_match\\head.lua")

-- script viet hoa By http://tranhba.com  vâ l©m t©n tó cuéc so tµi quan viªn 
function main() 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : tõ 2005 n¨m 6 th¸ng 1 ngµy ®Õn 2005 n¨m 6 th¸ng 10 ngµy , mçi ngµy 20: ®Õn 23:00 ®em cö hµnh <color=yellow> vâ l©m t©n tó liªn cuéc so tµi <color>. bæn trµng tranh tµi môc ®Ých lµ cho tay míi #50 cÊp ®Õn 89 cÊp # s¸ng lËp cïng ®ång m«n trao ®æi ®Ých c¬ héi , ®Ò cao tay míi ®Ých vâ nghÖ , nhanh ®i tham gia ®i !", 1,"§ång ý /want_bid_option") 
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
if ( validateDate( CP_UPTO_TRYOUT, CP_END_TRYOUT ) ) then -- script viet hoa By http://tranhba.com  ë t©n tó cuéc so tµi ®Ých thêi gian lóc 
talkstr = " vâ l©m t©n tó liªn cuéc so tµi quan viªn : muèn ghi danh tham gia vâ l©m t©n tó liªn cuéc so tµi ?" -- script viet hoa By http://tranhba.com  ®· quyÕt ra tæng lÜnh ®éi 
optiontab = { 
" ghi danh tham gia vâ l©m t©n tó liªn cuéc so tµi '/regist_freshman", 
" ta muèn tiÕn vµo vâ l©m t©n tó liªn cuéc so tµi '/transtoplace", 
" vâ l©m t©n tó liªn cuéc so tµi trî gióp /help_freshmanmatch", 
" ta chê mét chót trë l¹i !/OnCancel" 
} 
elseif(tonumber( date( "%y%m%d%H" ) ) >= CP_END_TRYOUT ) then 
talkstr = " vâ l©m t©n tó liªn cuéc so tµi quan viªn : vâ l©m t©n tó liªn cuéc so tµi ®· kÕt thóc , ng­¬i cã thÓ kiÓm tra c¸c m«n ph¸i tr­íc n¨m tªn ." -- script viet hoa By http://tranhba.com  ®· quyÕt ra tæng lÜnh ®éi 
optiontab = { 
" kiÓm tra c¸c t©n tó liªn cuéc so tµi /look_freshman", 
" nhËn lÊy t©n tó liªn cuéc so tµi danh hiÖu /catch_title", 
" vâ l©m t©n tó liªn cuéc so tµi trî gióp /help_freshmanmatch", 
" ta chê mét chót trë l¹i !/OnCancel" 
} 
else 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : vâ l©m t©n tó liªn cuéc so tµi cßn ch­a b¾t ®Çu , xin chê mét chót !", 0); 
return 
end 

Say(talkstr, getn(optiontab), optiontab) 
end 




function catch_title() -- script viet hoa By http://tranhba.com 10 ®¹i m«n ph¸i tr­íc n¨m nhËn lÊy danh hiÖu 
local factionnumber = GetLastFactionNumber() 
if( factionnumber < 0 or factionnumber > 9 ) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : ng­¬i kh«ng ph¶i lµ thËp ®¹i m«n ph¸i ng­êi sao ?", 0); 
return 
end 
if( tonumber(date("%y%m%d%H")) < CP_END_TRYOUT ) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : vâ l©m t©n tó liªn cuéc so tµi ch­a kÕt thóc , cßn ch­a chän lùa tr­íc n¨m tªn , kh«ng thÓ ban hµnh danh hiÖu .", 0) 
return 
end 
	biwu_loadfile( FactionData[factionnumber + 1][1] );
for i = 1, 5 do 
		Name = biwu_getdata(FactionData[factionnumber+1][1], FactionData[factionnumber+1][2], "Top"..i);
if ( GetName() == Name ) then 
nt_settask(CP_TASKID_TITLE, 9) 
			Title_AddTitle(factionnumber + 20, 1, TITLETIME);
			Title_ActiveTitle(factionnumber + 20);
			WriteLog(date("%Y%m%d %H:%M:%S")..GetAccount()..",["..GetName().."]´ïµ½"..FactionTitle[factionnumber+1].."³ÆºÅ");
			Msg2Player("Äã»ñµÃ"..FactionTitle[factionnumber+1].."³ÆºÅ");
return 1 
end 
end 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : ng­¬i kh«ng ®ñ t­ c¸ch nhËn lÊy vâ l©m t©n tó liªn cuéc so tµi danh hiÖu .",0); 
return 
end 


function look_freshman() 
if (tonumber(date("%y%m%d%H")) < CP_END_TRYOUT) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : vâ l©m t©n tó liªn cuéc so tµi cßn ch­a kÕt thóc , cßn kh«ng cã quyÕt cuéc so tµi ®Ých m«n ph¸i danh s¸ch .", 0) 
return 
end 
local factab = {"ThiÕu L©m /#look_list_fac(1)","Thiªn v­¬ng /#look_list_fac(2)","§­êng m«n /#look_list_fac(3)","N¨m ®éc /#look_list_fac(4)","Nga Mi /#look_list_fac(5)","Thóy khãi /#look_list_fac(6)","C¸i Bang /#look_list_fac(7)","Ngµy nhÉn /#look_list_fac(8)","Vâ §­¬ng /#look_list_fac(9)","C«n L«n /#look_list_fac(10)" ,"Kh«ng nh×n !/OnCancel"} 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : muèn nh×n m«n ph¸i t©n tó danh s¸ch a ?", getn(factab), factab) 
end 

function look_list_fac(nfact) 
local ncount = 0 
biwu_loadfile( FactionData[nfact][1] ); 
local topfac_mem = {} 
for i = 1, 5 do 
name = biwu_getdata(FactionData[nfact][1], FactionData[nfact][2], "Top"..i); 
if (name ~= "" and name ~= nil) then 
		 	ncount = ncount + 1
topfac_mem[ncount] = name.."/OnCancel" 
end 
end 
if (ncount > 0) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :"..FactionData[nfact][3].." tróng tuyÓn m«n ph¸i danh s¸ch :", getn(topfac_mem), topfac_mem); 
else 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn :"..FactionData[nfact][3].." tróng tuyÓn danh s¸ch cßn kh«ng cã ", 0) 
end 
end 


function regist_freshman() 

if (GetLevel() >= 90 ) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : 90 cÊp hoÆc lµ cao cÊp h¬n kh¸c ®em kh«ng thÓ tham gia vâ l©m t©n tó liªn cuéc so tµi , ng­¬i cã thÓ tiÕn vµo nh×n !", 0) 
return 
end 

if ( GetLevel() < 50 ) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : cÊp bËc cña ng­¬i kh«ng ®ñ 50 cÊp yªu cÇu , kh«ng thÓ ghi danh tranh tµi , nh­ng lµ ng­¬i cã thÓ tiÕn vµo nh×n .", 0 ) 
return 
end 

if (GetLastFactionNumber() == -1) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : ng­¬i kh«ng ph¶i lµ thËp ®¹i m«n ph¸i ng­êi , kh«ng thÓ tham gia tranh tµi . gia nhËp thËp ®¹i m«n ph¸i sau , míi cã thÓ tham gia tranh tµi !", 0) 
return 
end 

if ( nt_gettask( CP_TASKID_REGIST ) == CP_UPTO_TRYOUT ) then 
Msg2Player("Ng­¬i ®· b¸o danh , trùc tiÕp ®i gÆp vâ l©m t©n tó liªn cuéc so tµi quan viªn lµ cã thÓ tiÕn vµo ." ) 
transtoplace() 
else 
local talkstr = " vâ l©m t©n tó liªn cuéc so tµi quan viªn : ng­¬i lÇn ®Çu tiªn tè vâ l©m t©n tó liªn cuéc so tµi sao ? muèn tham gia sao ? " 
Say( talkstr, 2,"Ta muèn ghi danh /sure_regist","§Ó cho ta xem mét chót /OnCancel" ) 
return 
end 
end 

function sure_regist() 

nt_settask( CP_TASKID_REGIST, CP_UPTO_TRYOUT ) 
for i = 1096 , 1105 do 
nt_settask( i, 0 ) 
end 
nt_settask( CP_TASKID_LOGOUT, 0 ) 

transtoplace() 

end 



function look_the_time( THETIME ) 
local the_year = floor(THETIME / 1000000) 
local the_month = mod(floor(THETIME / 10000), 100) 
local the_date = mod(floor(THETIME / 100), 100) 
local the_hour = mod(THETIME,100) 
return the_month, the_date, the_hour 
end 
