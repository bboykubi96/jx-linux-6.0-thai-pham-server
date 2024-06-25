-- script viet hoa By http://tranhba.com  Created by firefox 
-- script viet hoa By http://tranhba.com  nh­ ý t¹p 
-- script viet hoa By http://tranhba.com  cã thÓ m×nh biªn tËp chóc phóc 
IL("SETTING") 
IL("LEAGUE"); 
Include("\\script\\lib\\gb_modulefuncs.lua")

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=1016 
STSK_OTHERNAME = 3 
TB_FORBIDWORD = { 
"<item=", 
"<link=", 
"<pic=", 
"<color=", 
"<bclr=", 
"<enter", 
} 
function main(nIndex) 
if (gb_GetModule("Mµu s¾c rùc rì th«ng b¸o h¹ t¹p ") == 1) then 
Say("§©y lµ mét tê huyÔn th¶i h¹ t¹p , cã thÓ ®em ngµi ®Ých chóc phóc lÊy mµu s¾c rùc rì ch÷ viÕt gëi ®i ra ngoµi . xin/mêi tr­íc ®­a vµo ngµi muèn chóc phóc ®èi t­îng ®Ých tªn , sau ®ã lùa chän chóc phóc ng÷ ®Ých mµu s¾c , n÷a ®­a vµo ngµi muèn lêi chóc phóc , liÒn cã thÓ ®­a ra ngµi ®Ých chóc phóc . ", 
2, 
" b©y giê b¾t ®Çu chóc phóc /want2bless", 
" sau nµy n÷a ®­a /OnCancel") 
end 
return 1 
end 

function want2bless(nIndex) 
AskClientForString("PlayerSelect", "", 1, 16,"Xin/mêi ®­a vµo ®èi ph­¬ng tªn "); 
end 

function PlayerSelect(rolename) 
if (ST_CheckTextFilter(rolename) ~= 1) then 
Say("ThËt xin lçi , ngµi së ®­a vµo ®Ých tªn hµm h÷u phi ph¸p tõ ®¬n , xin/mêi thö l¹i mét lÇn . ", 0) 
return 
end 
for i = 1, getn(TB_FORBIDWORD) do 
local bp = strfind(rolename, TB_FORBIDWORD[i]) 
if (bp ~= nil) then 
Say("ThËt xin lçi , ngµi së ®­a vµo ®Ých tªn hµm h÷u phi ph¸p tõ ®¬n , xin/mêi thö l¹i mét lÇn . ", 0) 
return 
end 
end 
SetStringTask(STSK_OTHERNAME,rolename) 
AskClientForString("BlessPlayer", "", 1, 100,"Xin/mêi ®­a vµo chóc phóc ng÷ "); 
end 

function BlessPlayer(szBless) 
if (ST_CheckTextFilter(szBless) ~= 1) then 
Say("ThËt xin lçi , ngµi së ®­a vµo ®Ých tªn hµm h÷u phi ph¸p tõ ®¬n , xin/mêi thö l¹i mét lÇn . ", 0) 
return 
end 
for i = 1, getn(TB_FORBIDWORD) do 
local bp = strfind(szBless, TB_FORBIDWORD[i]) 
if (bp ~= nil) then 
Say("ThËt xin lçi , ngµi së ®­a vµo ®Ých tªn hµm h÷u phi ph¸p tõ ®¬n , xin/mêi thö l¹i mét lÇn . ", 0) 
return 
end 
end 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local szMsg 
szMsg = GetName().."<#> ®èi víi "..GetStringTask(STSK_OTHERNAME).."<#> nãi #"..szBless 
AddGlobalCountNews(szMsg,3); 
else 
Msg2Player("Kh«ng t×m ®­îc thÎ , xin/mêi thö l¹i mét lÇn . ") 
end 
end 
