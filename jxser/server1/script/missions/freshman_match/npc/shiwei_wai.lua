-- script viet hoa By http://tranhba.com  ®¹i héi vâ l©m thŞ vÖ 

Include("\\script\\missions\\freshman_match\\tryout\\head.lua")
function main() 
Say("Vâ l©m t©n tó liªn cuéc so tµi quan viªn : tõ 2005 n¨m 6 th¸ng 1 ngµy ®Õn 2005 n¨m 6 th¸ng 10 ngµy , mçi ngµy 20: ®Õn 23:00 ®em cö hµnh <color=yellow> vâ l©m t©n tó liªn cuéc so tµi liªn cuéc so tµi <color>. bæn trµng tranh tµi môc ®İch lµ cho tay míi #50 cÊp ®Õn 89 cÊp # s¸ng lËp cïng ®ång m«n trao ®æi ®İch c¬ héi , ®Ò cao tay míi ®İch vâ nghÖ , nhanh ®i tham gia ®i !", 1,"§ång ı /want_bid_option") 
end 

function want_enrol_option() 
if (validateDate(CP_UPTO_TRYOUT, CP_END_TRYOUT)) then 
local optiontab = { 
" tham gia vâ l©m t©n tó liªn cuéc so tµi /want_enrol", 
" vâ l©m t©n tó liªn cuéc so tµi thµnh tİch !/look_sort", 
" vâ l©m t©n tó liªn cuéc so tµi trî gióp /help_freshmanmatch", 
" ta chê mét chót trë l¹i !/OnCancel" 
} 
Say("Muèn tham gia vâ l©m t©n tó liªn cuéc so tµi sao ?", getn(optiontab), optiontab) 
elseif(tonumber(date("%y%m%d%H")) >= CP_END_TRYOUT) then 
Say("Vâ l©m t©n tó liªn cuéc so tµi ®· kÕt thóc , ®øng hµng tr­íc n¨m ®İch cã thÓ ®Õn tr­íc khi an thÊy vâ l©m t©n tó liªn cuéc so tµi quan viªn (182, 202) nhËn lÊy danh hiÖu .", 0) 
else 
nHour = mod(CP_UPTO_TRYOUT, 100) 
nDay = floor(mod(CP_UPTO_TRYOUT, 10000) / 100) 
nMonth = floor(mod(CP_UPTO_TRYOUT, 1000000) / 10000) 
Say("Vâ l©m t©n tó liªn cuéc so tµi ®em b¾t ®Çu tõ "..date( "%Y" ).." n¨m "..nMonth.." th¸ng "..nDay.." ngµy "..nHour.." chİnh thøc b¾t ®Çu , xin/mêi tiÕp tôc chó ı !", 0 ) 
end 
end 

function want_enrol() 
if ( nt_gettask( CP_TASKID_REGIST ) ~= CP_UPTO_TRYOUT ) then 

if (GetLevel() >= 90 ) then 
Say("90 cÊp trë lªn kh«ng thÓ tham gia tranh tµi .", 0) 
return 
end 

if ( GetLevel() < 50 ) then 
Say("CÊp bËc cña ng­¬i kh«ng ®ñ 50 cÊp yªu cÇu , kh«ng thÓ ghi danh tranh tµi !", 0 ) 
return 
end 

end 
local nHour = mod( CP_UPTO_TRYOUT, 100 ) 
local opentime = TRYOUT_TIMER_2 / 60 / 60 / FRAME2TIME 
if (GetMissionV( MS_STATE ) == 0) then 
local talkstr = " vâ l©m t©n tó liªn cuéc so tµi mçi ngµy tõ "..nHour..":00 lóc "..opentime..", b©y giê lµ "..date( "%H:%M" )..", chê mét chót trë l¹i ®i !" 
Say(talkstr, 0) 
return 
elseif (GetMissionV(MS_STATE) == 2) then 
local talkstr = " vâ l©m t©n tó liªn cuéc so tµi ®ang tiÕn hµnh , xin chê chót mét cuéc !" 
Say(talkstr, 0) 
return 
end 

Say("Vâ l©m t©n tó liªn cuéc so tµi mçi ngµy tõ "..nHour..":00 lóc "..opentime..", ghi danh thêi gian lµ 5 phót , tranh tµi thêi gian lµ 15 phót , tÊt c¶ mäi ng­êi cã thÓ tham gia ."..CP_MAXROUND.." tranh tµi . ghi danh tiÕn vµo chuÈn bŞ tranh tµi khu vùc sau , ng­¬i cã thÓ rêi ®i hoÆc lµ ®îi ®Õn tranh tµi thêi gian . .", 2,"Ta muèn tham gia tranh tµi !/sure_enrol_1","§Ó cho ta xem mét chót /OnCancel") 
end 

function sure_enrol_1() 
Say("C¨n cø minh chñ vâ l©m ®İch hiÖu lÖnh , ë tranh tµi trung nghiªm cÊm sö dông PK thuèc , ng­¬i muèn nh×n mét chót trªn ng­êi ng­¬i cã hay kh«ng c¸i nµy thuèc , nÕu kh«ng sÏ bŞ dõng cuéc so tµi . ta ®em thñ tiªu ng­¬i dŞ th­êng PK tr¹ng th¸i . <color=red> tiÕn vµo cuéc so tµi trµng lóc , ng­¬i cÇn nh×n trang bŞ ®İch tiªu hao ®é . tiÕn vµo ®Êu trµng sau , nghiªm cÊm di ®éng vËt phÈm . ng­¬i kiÓm tra mét c¸i xem mét chót trang bŞ ®ñ ch­a ?",2,"Ta ®· chuÈn bŞ xong !/sure_enrol_2","Ta chê mét chót trë l¹i !/OnCancel") 
end 

function sure_enrol_2() 
Say("Héi tr­êng quan viªn :<color=red> tiÕn vµo chuÈn bŞ khu vùc cïng tranh tµi khu vùc , nhµ ch¬i kh«ng thÓ di ®éng trang bŞ dÆm vËt phÈm , nh­ng lµ , cã thÓ sö dông vËt phÈm . ng­¬i mau kiÓm tra mét chót nãi cô lan th­îng ®İch vËt phÈm ®ñ ch­a ?",2,"X¸c nhËn /sure_enrol","Ta cßn kh«ng chuÈn bŞ xong !/OnCancel") 
end 

function sure_enrol() 
local forbiditem_con = 0 
local forbiditem_key = 0 
local keyitem = {} 
local keyitem_g = {} 
local keyitem_d = {} 
local keyitem_p = {} 
for i = 1, 3 do 
keyitem[i] = ITEM_GetImmediaItemIndex (i) 
if (keyitem[i] ~= 0) then 
keyitem_g[i], keyitem_d[i], keyitem_p[i] = GetItemProp(keyitem[i]) 
else 
keyitem_g[i] = 0 
keyitem_d[i] = 0 
keyitem_p[i] = 0 
end 
end 
for i = 1, getn(CP_FORBID_ITEM) do 
forbiditem_con = CalcEquiproomItemCount( CP_FORBID_ITEM[i][2][1], CP_FORBID_ITEM[i][2][2], CP_FORBID_ITEM[i][2][3], CP_FORBID_ITEM[i][2][4] ) 
if (forbiditem_con > 0) then 
break 
end 
for j = 1, 3 do 
if (keyitem_g[j] == CP_FORBID_ITEM[i][2][1] and keyitem_d[j] == CP_FORBID_ITEM[i][2][2] and keyitem_p[j] == CP_FORBID_ITEM[i][2][3]) then 
forbiditem_key = 1 
break 
end 
end 
end 
if(forbiditem_con > 0 or forbiditem_key > 0) then 
Say("Ng­¬i thËt lµ gan lín , d¸m kh«ng nghe tõ minh chñ vâ l©m ®İch ra lÖnh , tù tiÖn mang cÊm thuèc tiÕn vµo , mau rêi ®i n¬i nµy !", 0) 
return 
end 

if (keyitem[1] == 0 and keyitem[2] == 0 and keyitem[3] == 0) then 
Say("Tr­íc m¾t c«ng cô cña ng­¬i lan Th­îng H¶i kh«ng cã vËt phÈm , xin/mêi lùa chän vËt phÈm bá vµo chİnh x¸c vŞ trİ !<color=red> tiÕn vµo cuéc so tµi trµng sau , ®Òu ë di ®éng vËt phÈm , xin x¸c nhËn c«ng cô lan th­îng ®İch vËt phÈm còng söa sang l¹i xong ch­a ?", 0) 
return 
end 

if (nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
local talkstr = " ng­¬i míi lµ lÇn ®Çu tiªn tham gia a ? muèn tham gia sao ?" 
Say(talkstr, 2,"Ta muèn tham gia !/pay_enrol_money","§Ó cho ta xem mét chót /OnCancel") 
return 
end 

join_tryout() 
Msg2Player("TiÕn vµo tranh tµi khu vùc sau , kh«ng thÓ di ®éng trang bŞ dÆm vËt phÈm , nh­ng lµ cã thÓ sö dông vËt phÈm "); 
end 

function pay_enrol_money() 

nt_settask(CP_TASKID_REGIST, CP_UPTO_TRYOUT) 
for i = 1084 , 1092 do 
nt_settask(i, 0) 
end 
nt_settask( CP_TASKID_LOGOUT, 0) 
join_tryout() 
end 

function look_sort() 
if (nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
for i = 1096 , 1105 do 
nt_settask(i, 0) 
end 
nt_settask( CP_TASKID_LOGOUT, 0) 
end 

if (nt_gettask(CP_TASKID_ROUND) == 0) then 
Say("Tr­íc m¾t ng­¬i cßn ch­a cã bÊt kú trµng lÇn tranh tµi !", 0) 
else 
Say("Vâ l©m t©n tó liªn cuéc so tµi cho phĞp mçi ng­êi nhiÒu nhÊt tham gia "..CP_MAXROUND.." lÇn , b©y giê ng­¬i ®· tham gia <color=yellow>"..nt_gettask(CP_TASKID_ROUND).."<color> lÇn , t­ëng th­ëng v× "..nt_gettask(CP_TASKID_POINT)..", th¾ng "..nt_gettask(CP_TASKID_WIN).."t trµng , thua "..nt_gettask(CP_TASKID_LOSE).." trµng , cïng "..nt_gettask(CP_TASKID_TIE).." trµng .", 0) 
end 
end 
