IL("SETTING") 
IL("LEAGUE") 
Include("\\script\\lib\\gb_modulefuncs.lua")

COLOR_BLESS = { 
{"ThuÇn mµu tr¾ng ","color=White"}, -- script viet hoa By http://tranhba.com  mµu tr¾ng 
{"§á t­¬i s¾c ","color=Red"}, -- script viet hoa By http://tranhba.com  mµu ®á 
{"Cá mµu xanh l¸ c©y ","color=Green"}, -- script viet hoa By http://tranhba.com  mµu xanh l¸ c©y 
{"Hå mµu xanh da trêi ","color=Water"}, -- script viet hoa By http://tranhba.com  mµu xanh da trêi 
{"Mµu vµng kim ","color=Orange"}, -- script viet hoa By http://tranhba.com  kim Gold 
{"Chanh mµu ®á ","color=0xff5040"}, -- script viet hoa By http://tranhba.com  chanh s¾c 
{"Mµu ®á tÝm ","color=Pink"}, -- script viet hoa By http://tranhba.com  tö hång 
{"Gi¸ng mµu tÝm ","color=Violet"}, -- script viet hoa By http://tranhba.com  tö 
{" l­îng mµu ®á ","bclr=Red><color=Yellow"}, -- script viet hoa By http://tranhba.com  l­îng mµu ®á 
{" l­îng mµu xanh da trêi ","bclr=Blue><color=White"}, -- script viet hoa By http://tranhba.com  l­îng mµu xanh da trêi 
{" l­îng ®µo hång s¾c ","bclr=Pink><color=Yellow"}, -- script viet hoa By http://tranhba.com  l­îng ®µo hång 
} 

TB_FORBIDWORD = { 
"<item=", 
"<link=", 
"<pic=", 
"<color=", 
"<bclr=", 
"<enter", 
} 

STSK_OTHERNAME = 1 
STST_COLOR = 2 
ITEM_GENRE = 6 
ITEM_DETAIL = 1 
ITEM_PARTI = 1053 

function main() 
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
local tbOpp = {} 
for i = 1, getn(COLOR_BLESS) do 
tbOpp[i] = COLOR_BLESS[i][1].."/ColorSelect" 
end 
	tbOpp[ getn(tbOpp) + 1 ] = "È¡Ïû/OnCancel"
Say("Xin/mêi lùa chän chóc phóc ng÷ ®Ých mµu s¾c #", getn(tbOpp), tbOpp ) 
end 

function ColorSelect(nSel) 
	local stcolor = nSel + 1
SetStringTask(STST_COLOR,COLOR_BLESS[stcolor][2]) 
AskClientForString("BlessPlayer", "", 1, 100,"Xin/mêi ®­a vµo chóc phóc ng÷ "); 
end 

function BlessPlayer(szBless) 
if (ST_CheckTextFilter(szBless) ~= 1) then 
Say("ThËt xin lçi , ngµi ®Ých chóc phóc ng÷ trung hµm h÷u phi ph¸p tõ ®¬n , xin/mêi thö l¹i mét lÇn . ", 0) 
return 
end 

for i = 1, getn(TB_FORBIDWORD) do 
local bp = strfind(szBless, TB_FORBIDWORD[i]) 
if (bp ~= nil) then 
Say("ThËt xin lçi , ngµi së ®­a vµo ®Ých tªn hµm h÷u phi ph¸p tõ ®¬n , xin/mêi thö l¹i mét lÇn . ", 0) 
return 
end 
end 

if (GetStringTask(STSK_OTHERNAME) == nil or GetStringTask(STSK_OTHERNAME) == "" or GetStringTask(STST_COLOR) == nil or GetStringTask(STST_COLOR) == "") then 
return 
end 
if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then 
ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1) 
local szMsg = "" 
szMsg = "<color=yellow>"..GetName().."<color><#> ®èi víi <color=yellow>"..GetStringTask(STSK_OTHERNAME).."<color><#> nãi #<"..GetStringTask(STST_COLOR)..">"..szBless 
-- script viet hoa By http://tranhba.com AddGlobalCountNews(szMsg,2); 
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "")
else 
Say("Kh«ng t×m ®­îc thÎ , xin/mêi thö l¹i mét lÇn . ", 0) 
end 
end 

function OnCancel() 
end
