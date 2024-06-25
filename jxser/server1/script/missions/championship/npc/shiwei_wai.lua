-- script viet hoa By http://tranhba.com  ®¹i héi vâ l©m thÞ vÖ 
Include("\\script\\missions\\championship\\head.lua")
Include("\\script\\missions\\championship\\tryout\\head.lua")
function main() 
Say("Cuéc so tµi trµng quan viªn : lÇn tranh tµi nµy ®em tõ anh hïng thiªn h¹ cïng vâ l©m hµo kiÖt tróng tuyÓn ra 90 vÞ vâ l©m cao thñ ®¹i biÓu tham gia toµn khu ®¹i héi vâ l©m # mêi/xin ng­¬i ®i tham gia long träng ®Ých ®¹i héi vâ l©m !", 1,"§ång ý /want_enrol_option") 
end 

function want_enrol_option() 
cp_syntaskround() 
if (validateDate(CP_UPTO_TRYOUT, CP_END_TRYOUT)) then 
local optiontab = { 
" tham gia m«n ph¸i dù chän cuéc so tµi /want_enrol", 
" tra xÐt ta b©y giê dù chän cuéc so tµi ®Ých thµnh tÝch /look_sort", 
" m«n ph¸i dù chän cuéc so tµi trî gióp /help_tryout", 
" ta mét håi trë l¹i !/OnCancel" 
} 
Say("Muèn ®i ®¹i héi vâ l©m ", getn(optiontab), optiontab) 
elseif(tonumber(date("%y%m%d%H")) > CP_END_TRYOUT) then 
Say("§¹i héi vâ l©m dù chän cuéc so tµi kÕt thóc , ng­¬i cã thÓ ®Õn tr­íc khi an thÊy ®¹i héi vâ l©m quan viªn nh×n tróng chän danh s¸ch .", 0) 
else 
nHour = mod(CP_UPTO_TRYOUT, 100) 
nDay = floor(mod(CP_UPTO_TRYOUT, 10000) / 100) 
nMonth = floor(mod(CP_UPTO_TRYOUT, 1000000) / 10000) 
Say("§¹i héi vâ l©m dù chän cuéc so tµi ®em tæ chøc víi "..date("%Y").." n¨m "..nMonth.." th¸ng "..nDay.." ngµy "..nHour.." chÝnh thøc b¾t ®Çu , xin/mêi tiÕp tôc chó ý !",0) 
end 
end 

function want_enrol() 
-- script viet hoa By http://tranhba.com if vèn tr­¬ng môc ®Ých nh÷ng kh¸c vai trß ®· ghi danh then 
-- script viet hoa By http://tranhba.com  Say("Vèn sè tr­¬ng môc ë vèn dïng/uèng ®· cã vai trß tham gia m«n ph¸i dù chän cuéc so tµi , lµ nh÷ng kh¸c vai trß ë vèn dïng/uèng kh«ng thÓ dù thi . xin/mêi ë bu«ng tha cho dù thi vai trß t­ c¸ch sau , l¹i dïng vèn vai trß ghi danh dù thi #", 0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com end 
if (nt_gettask(CP_TASKID_REGIST) == 9) then -- script viet hoa By http://tranhba.com  ®· hñy bá ghi danh t­ c¸ch 
Say("Ng­¬i ®· bá qua tham gia m«n ph¸i dù chän cuéc so tµi ®Ých t­ c¸ch , kh«ng thÓ tiÕp tôc ghi danh tham gia tranh tµi .", 0) 
return 
end 
if (nt_gettask(CP_TASKID_TITLE) == 9) then -- script viet hoa By http://tranhba.com  ®· lÊy ®­îc quyÕt cuéc so tµi vßng t­ c¸ch 
Say("Ng­¬i ®· lÊy ®­îc tuyÓn thñ t­ c¸ch , kh«ng muèn ®Õn c¸i nµy n÷a c­íp vÞ !", 0) 
return 
end 
local nHour = mod(CP_UPTO_TRYOUT, 100) 
local opentime = TRYOUT_TIMER_2 / 60 / 60 / FRAME2TIME 
if (GetMissionV(MS_STATE) == 0) then 
local talkstr = " m«n ph¸i dù chän cuéc so tµi b¾t ®Çu víi mçi ngµy "..nHour..":00 ®iÓm "..opentime..", b©y giê lµ "..date("%H:%M")..", ®îi trë l¹i ®i !" 
Say(talkstr, 0) 
return 
elseif (GetMissionV(MS_STATE) == 2) then 
local talkstr = " cuéc thi ®Êu nµy khu ®ang tiÕn hµnh tranh tµi , xin chê chót mét cuéc !" 
Say(talkstr, 0) 
return 
end 

Say("M«n ph¸i dù chän cuéc so tµi b¾t ®Çu víi mçi ngµy "..nHour..":00 ®iÓm "..opentime.." lóc , ghi danh thêi gian lµ 5 phót , tranh tµi thêi gian lµ 10 phót , mçi ng­êi chØ cã thÓ tham gia "..CP_MAXROUND.." côc tranh tµi . ®ang chuÈn bÞ khu ghi danh sau , ng­¬i cã thÓ lùa chän rêi ®i hoÆc lµ chê ®îi . c¨n cø tranh tµi thµnh tÝch chän lùa 5 ng­êi ®¹i biÓu m«n ph¸i tham gia khu vùc tæng quyÕt cuéc so tµi ", 2,"Ta muèn tham gia dù chän !/sure_enrol_1","§Ó cho ta xem mét chót /OnCancel") 
end 

function sure_enrol_1() 
Say("Minh chñ cã lÖnh , ë vâ l©m t©n tó liªn cuéc so tµi trung nghiªm cÊm sö dông <color=red>PK thuèc men <color>, tham gia tr­íc ng­¬i muèn xem ë trªn ng­êi cã hay kh«ng cã lo¹i nµy thuèc men , nÕu nh­ kh«ng kiÓm tra lµ sÏ bÞ dõng cuéc so tµi . ta sÏ thanh trõ ng­¬i dÞ th­êng PK tr¹ng th¸i . <color=red> tiÕn vµo cuéc so tµi trµng lóc , ng­¬i muèn xem trang bÞ ®Ých tiªu hao ®iÓm . tiÕn vµo cuéc so tµi trµng sau , nghiªm cÊm dêi ®i vËt phÈm . ng­¬i nÕu l¹i kiÓm tra c«ng cô trong r­¬ng ®Ých vËt phÈm ®Çy ®ñ sao ? ",2,"Ta chuÈn bÞ xong !/sure_enrol_2","Ta mét håi trë l¹i !/OnCancel") 
end 

function sure_enrol_2() 
Say("Héi tr­êng quan viªn :<color=red> tiÕn vµo chuÈn bÞ khu cïng tranh tµi khu , nhµ ch¬i kh«ng thÓ dêi ®i trong tói ®eo l­ng ®Ých vËt phÈm , nh­ng lµ cßn cã thÓ sö dông c«ng cô r­¬ng cïng trong tói ®eo l­ng ®Ých vËt phÈm . ng­¬i kiÓm tra mét c¸i c«ng cô trong r­¬ng ®Ých vËt phÈm ®ñ ch­a ?",2,"X¸c ®Þnh /sure_enrol","Ta cßn kh«ng cã chuÈn bÞ !/OnCancel") 
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
Say("Ng­¬i thËt lín ®¶m # l¹i d¸m kh«ng tu©n thñ minh chñ vâ l©m ®Ých ra lÖnh , tù tiÖn mang cÊm thuèc tiÕn vµo , nhanh lªn rêi ®i !", 0) 
return 
end 

if (keyitem[1] == 0 and keyitem[2] == 0 and keyitem[3] == 0) then 
Say("C«ng cô cña ng­¬i lan trong kh«ng cã thuèc men , ®em thuèc men bá vµo c«ng cô lan #<color=red> tiÕn vµo cuéc so tµi trµng sau cÊm chØ dêi ®i vËt phÈm , xin/mêi x¸c ®Þnh c«ng cô lan cã ph¶i lµ hay kh«ng m·n ®Ých ?<color>", 0) 
return 
end 

if (nt_gettask(CP_TASKID_REGIST) ~= CP_UPTO_TRYOUT) then 
local talkstr = " ng­¬i lÇn ®Çu tiªn tham gia dù chän muèn ®ãng 10 v¹n l­îng ®Ých tiÒn ghi danh ." 
Say(talkstr, 2,"§©y lµ 10 v¹n l­îng ./pay_enrol_money","Chê ta xem mét chót /OnCancel") 
return 
end 

join_tryout() 
Msg2Player("TiÕn vµo tranh tµi khu sau , kh«ng thÓ dêi ®i trong tói ®eo l­ng ®Ých vËt phÈm , nh­ng lµ vÉn nh­ cò cã thÓ sö dông tói ®eo l­ng cïng c«ng cô trong r­¬ng ®Ých vËt phÈm . "); 
end 

function pay_enrol_money() 
if (GetCash() >= CP_CASH) then 
Pay(CP_CASH) 

nt_settask(CP_TASKID_REGIST, CP_UPTO_TRYOUT) 
for i = 1084 , 1092 do 
nt_settask(i, 0) 
end 

join_tryout() 
return 
end 
Say("Ng­¬i tiÒn ghi danh kh«ng ®ñ , ®ñ 10 v¹n l­îng trë l¹i !", 0) 
end 

function look_sort() 
if (nt_gettask(CP_TASKID_ROUND) == 0) then 
Say("Ng­¬i b©y giê cßn kh«ng cã tham gia bÊt kú tranh tµi !", 0) 
else 
Say("§¹i héi vâ l©m m«n ph¸i dù chän cuéc so tµi mçi ng­êi nhiÒu nhÊt tham gia "..CP_MAXROUND.." lÇn . ng­¬i b©y giê ®· tham gia <color=yellow>"..nt_gettask(CP_TASKID_ROUND).."<color> côc tranh tµi , lÊy ®­îc tæng ph©n lµ #"..nt_gettask(CP_TASKID_POINT)..", th¾ng "..nt_gettask(CP_TASKID_WIN).." trµng , b¹i "..nt_gettask(CP_TASKID_LOSE).." trµng , cïng "..nt_gettask(CP_TASKID_TIE).." trµng .", 0) 
end 
end 
