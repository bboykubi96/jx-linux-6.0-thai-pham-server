-- script viet hoa By http://tranhba.com  ®Æc thï nhiÖm vô lÖnh bµi v¨n kiÖn 
Include([[\script\tong\workshop\tongcolltask.lua]]); 

function main(nItem) 
_, nTongID = GetTongName(); 
if (nTongID <= 0) then 
Say("Ng­¬i tr­íc m¾t kh«ng cã ë ®©y <color=yellow> bang héi <color> trung , kh«ng c¸ch nµo sö dông bang héi ®Æc thï nhiÖm vô lÖnh bµi . ", 0); 
Msg2Player("Ng­¬i tr­íc m¾t kh«ng cã ë ®©y <color=yellow> bang héi <color> trung , kh«ng c¸ch nµo sö dông bang héi ®Æc thï nhiÖm vô lÖnh bµi . "); 
return 1; 
end; 
local nCount = GetTask(TASK_LP_COUNT); 
SetTask(TASK_LP_ITEMID, nItem); -- script viet hoa By http://tranhba.com  lÊy ®­îc lÖnh bµi cÊp bËc 

if (nCount > 0) then 
Say("<color=green> nhiÖm vô lÖnh bµi <color># ngµi tr­íc mÆt cã cßn ch­a hoµn thµnh ngÉu nhiªn nhiÖm vô , ng­¬i nhÊt ®Şnh ph¶i tiÕp nhËn nhiÖm vô míi sao ? ", 2, 
" ®óng vËy , ta muèn bu«ng tha cho tr­íc ®İch ngÉu nhiªn nhiÖm vô /cancelformertask", 
" kh«ng ®­îc , cßn lµ v©n v©n ®i /OnCancel"); 
return 1; 
else 
wanttask() 
return 1; 
end; 
end; 

-- script viet hoa By http://tranhba.com  hñy bá mét c¸i nhiÖm vô lÖnh bµi nhiÖm vô . 
function cancelformertask() 
if (GetTask(TASK_LP_COUNT) ~= 0) then 
rwlp_cleartask(); 
Say("Ng­¬i ®· hñy bá <color=yellow> ®Æc thï nhiÖm vô lÖnh bµi <color> nhiÖm vô . ", 0); 
Msg2Player("Ng­¬i ®· hñy bá <color=yellow> ®Æc thï nhiÖm vô lÖnh bµi <color> nhiÖm vô . "); 
end; 
end; 

-- script viet hoa By http://tranhba.com  tiÕp nhËn lÖnh bµi nhiÖm vô 
function wanttask() 
if (GetTask(TASK_LP_COUNT) ~= 0) then 
Say("Ng­¬i ®· cã mét ®Æc thï nhiÖm vô lÖnh bµi nhiÖm vô , kh«ng thÓ nhËn nhiÖm vô míi liÔu . ", 0); 
return 
end; 

local nLevel, nWorkshopIdx, nCount, nItem, nResult; 

nItem = GetTask(TASK_LP_ITEMID); 
nLevel = GetItemParam(nItem, 3); 
nWorkshopIdx = GetItemParam(nItem, 4); 
nCount = GetItemParam(nItem, 5); 
if (not nCount or nCount == 0) then 
nResult = init_task() 
nLevel = GetItemParam(nItem, 3); 
nWorkshopIdx = GetItemParam(nItem, 4); 
nCount = GetItemParam(nItem, 5); 
end; 

local szContent = "<color=yellow>"..nLevel.."<color> cÊp trë lªn bÊt ®ång bang héi ®İch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng tæng qu¶n <color> , "; 
if (nResult == 0) then 
Say("Vèn lµ cÇn ng­¬i ®i viÕng th¨m mÊy vŞ "..szContent.." nh­ng lµ rÊt ®¸ng tiÕc tr­íc m¾t tÊt c¶ bang héi ®İch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng <color> cÊp bËc ®Òu kh«ng ch©n , cho nªn vÉn lµ mêi/xin ng­¬i lÇn sau thö l¹i lÇn n÷a ®i . ", 0); 
Msg2Player("T¹m thêi kh«ng cã nhiÒu ®ñ ®İch "..szContent.." xin/mêi lÇn sau nÕm thö n÷a . "); 
return 
end; 

szContent = "<color=yellow>"..nCount.."<color> vŞ "..szContent; 
Say("Bæn bang ®İch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng tæng qu¶n <color> gÇn nhÊt t©m t­ kh«ng tèt , nguyªn bæn ®Şnh th­îng kinh ®i thi , cÇu xin lÊy mét c«ng danh . kh«ng ao ­íc kinh quan yªu cÇu , ra sÜ gi¬ tö cÇn ph¶i cã ®Şa ph­¬ng danh sÜ ®İch tiÕn s¸ch . cµng danh väng m·n kinh s­ ng­êi , kh¶o thñ c«ng danh ®İch c¬ héi l¹i cµng lín . lµm phiÒn ng­¬i cho h¾n ®i t×m "..szContent.." ®¹t ®­îc bän hä tiÕn s¸ch . ", 2, 
" h¶o , ta nhÊt ®Şnh lµm hÕt søc /#lp_confirm("..nLevel..","..nWorkshopIdx..","..nCount..", 1)", 
" nhiÖm vô nµy qu¸ khã kh¨n , ta kh«ng lµm /#lp_confirm("..nLevel..","..nWorkshopIdx..","..nCount..", 0)"); 
end; 

-- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa mét c¸i nhiÖm vô 
function init_task() 
local nLPLvl = GetItemParam(GetTask(TASK_LP_ITEMID), 1); -- script viet hoa By http://tranhba.com  lÖnh bµi ®İch cÊp bËc 

local nLevel, nWorkshopIdx, nCount; 
nLevel = 1; 
nWorkshopIdx = random(1, 7); -- script viet hoa By http://tranhba.com  ngÉu nhiªn mét x­ëng 

if (nLPLvl == 1) then 
nLevel = random(1, 3); 
elseif (nLPLvl == 2) then 
nLevel = random(4, 6); 
elseif (nLPLvl == 3) then 
nLevel = random(7, 8); 
end; 

nCount = random(1, 9); 
local nMax = get_workshop_count(nWorkshopIdx, nLevel); 
if (not nMax) then 
nMax = 0; 
end; 
if (nCount > nMax) then 
nCount = nMax; 
end; 

local nItem = GetTask(TASK_LP_ITEMID); 
SetSpecItemParam(nItem, 3, nLevel); 
SetSpecItemParam(nItem, 4, nWorkshopIdx); 
SetSpecItemParam(nItem, 5, nCount); 
SyncItem(nItem); 
if (nCount > 0) then 
return 1; 
end; 
return 0; 
end; 

function lp_confirm(nLevel, nWorkshopIdx, nCount, bOK) 
local szContent = "<color=yellow>"..nCount.."<color> vŞ <color=yellow>"..nLevel.."<color> cÊp trë lªn bÊt ®ång bang héi ®İch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng tæng qu¶n <color>"; 

nt_SetTask(TASK_LP_ZONGGUANIDX, nWorkshopIdx); 
nt_SetTask(TASK_LP_ZONGGUANLEVEL, nLevel); 

if (bOK == 1) then 
Say("Bæn bang ®İch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng tæng qu¶n <color> gÇn nhÊt t©m t­ kh«ng tèt , nguyªn bæn ®Şnh th­îng kinh ®i thi , cÇu xin lÊy mét c«ng danh . kh«ng ao ­íc kinh quan yªu cÇu , ra sÜ gi¬ tö cÇn ph¶i cã ®Şa ph­¬ng danh sÜ ®İch tiÕn s¸ch . cµng danh väng m·n kinh s­ ng­êi , kh¶o thñ c«ng danh ®İch c¬ héi l¹i cµng lín . lµm phiÒn ng­¬i cho h¾n ®i t×m "..szContent.." ®¹t ®­îc bän hä tiÕn s¸ch . ", 1,"Ta biÕt /lp_confirmtwo"); 
else 
Say("Bæn bang ®İch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng tæng qu¶n <color> hy väng ng­¬i cho h¾n ®i t×m "..szContent.." ®¹t ®­îc bän hä tiÕn s¸ch . ng­¬i thËt kh«ng cã thêi gian sao ? ",2 ,"Ta cßn lµ tiÕp thu nhiÖm vô nµy ®i /lp_confirmtwo","Ta qu¶ thËt kh«ng muèn tiÕp thu nhiÖm vô nµy /OnCancel"); 
end; 
end; 

function lp_confirmtwo() 
local nItem = GetTask(TASK_LP_ITEMID); 

local nCount = GetItemParam(nItem, 5); 
local nWorkshopIdx = GetTask(TASK_LP_ZONGGUANIDX); 
local nLevel = GetTask(TASK_LP_ZONGGUANLEVEL); 

if (nItem > 0) then 
if (RemoveItemByIndex(nItem) ~= 1) then 
return 
end; 
end; 

nt_SetTask(TASK_LP_COUNT, nCount); 
Msg2Player("Ng­¬i tiÕp thu ®i cïng <color=yellow>"..nCount.."<color> c¸ <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng tæng qu¶n <color> ®èi tho¹i , ®¹t ®­îc tiÕn s¸ch ®İch nhiÖm vô , <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph­êng <color> ®İch cÊp bËc nhÊt ®Şnh ph¶i v× <color=yellow>"..nLevel.."<color> cÊp . "); 
end; 
