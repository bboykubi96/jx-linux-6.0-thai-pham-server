-- script viet hoa By http://tranhba.com  Created by Danielsun 2006-12-07 
-- script viet hoa By http://tranhba.com  lÔ gi¸ng sinh ho¹t ®éng 
-- script viet hoa By http://tranhba.com  xmas_entry() 
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\basic.lua")

TB_SnowMan = { 
-- script viet hoa By http://tranhba.com  1.[ thµnh c«ng ] ng­êi tuyÕt tªn 2.[ thµnh c«ng ] ng­êi tuyÕt ID 3.[ thµnh c«ng ] tû lÖ 4.[ thÊt b¹i ] ng­êi tuyÕt tªn 5.[ thÊt b¹i ] ng­êi tuyÕt ID 6.[ thÊt b¹i ] tû lÖ 7, kim tiÒn 8, ®æi lÊy lÔ phÈm tªn 9, ®æi lÊy lÔ phÈm ID 
{"Vi lam vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt )", 1319, 60,"Vi lam vi c©n ®Ých ng­êi tuyÕt ( b×nh th­êng )", 1322, 40, 1000,"Nam d­a bÝnh ", 1325}, 
{"Vi hång vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt )", 1320, 60,"Vi hång vi c©n ®Ých ng­êi tuyÕt ( b×nh th­êng )", 1323, 40, 3000,"TuyÕt cao ", 1326}, 
{"§Æc biÖt ng­êi tuyÕt ", 1321, 80,"B×nh th­êng ng­êi tuyÕt ", 1324, 20, 5000,"Háa kª ", 1327}, 
} 

TB_Material = { 
-- script viet hoa By http://tranhba.com 1. vËt phÈm tªn 2. sè l­îng 
[1319] ={ 
["6,1,1312"] = {"B«ng tuyÕt ", 10 }, 
["6,1,1313"] = {"Cñ cµ rèt ", 1 }, 
["6,1,1314"] = {"Tïng chi ", 2 }, 
["6,1,1315"] = {"Gi¸ng sinh m¹o ", 1 }, 
["6,1,1316"] = {" lam vi c©n ", 1 }, 
}, 
[1320] ={ 
["6,1,1312"] = {"B«ng tuyÕt ", 10 }, 
["6,1,1313"] = {"Cñ cµ rèt ", 1 }, 
["6,1,1314"] = {"Tïng chi ", 2 }, 
["6,1,1315"] = {"Gi¸ng sinh m¹o ", 1 }, 
["6,1,1317"] = {" lam vi c©n ", 1 }, 
}, 
[1321] ={ 
["6,1,1312"] = {"B«ng tuyÕt ", 10 }, 
["6,1,1313"] = {"Cñ cµ rèt ", 1 }, 
["6,1,1314"] = {"Tïng chi ", 2 }, 
["6,1,1315"] = {"Gi¸ng sinh m¹o ", 1 }, 
["6,1,1318"] = {" lam vi c©n ", 1 }, 
}, 
} 

TB_Message = { 
-- script viet hoa By http://tranhba.com  luyÖn chÕ miªu t¶ 
" ®èng vi lam vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt ) cÇn 10 ®èng tuyÕt , 1 cñ cµ rèt , 2 tïng chi , 1 c¸i mò , 1 lam vi c©n cïng 1000 hai .", 
" ®èng vi hång vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt ) cÇn 10 ®èng tuyÕt , 1 cñ cµ rèt , 2 tïng chi , 1 c¸i mò , 1 lam vi c©n cïng 3000 hai .", 
" ®èng ng­êi tuyÕt ( ®Æc biÖt ) cÇn 10 ®èng tuyÕt , 1 cñ cµ rèt , 2 tïng chi , 1 c¸i mò , 1 tïng c©y cïng 5000 hai .", 
} 

GiftMsg = { 
-- script viet hoa By http://tranhba.com  ®æi lÊy lÔ vËt miªu t¶ 
" ®æi nam d­a bÝnh muèn mét v©y quanh hång vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt )", 
" ®æi tuyÕt cao muèn mét v©y quanh lam vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt )", 
" ®æi háa kª cÇn mét ®Æc biÖt ng­êi tuyÕt ", 
} 

TSKTMP_ITEM_NUMC = 20; 

function xmas_entry() 
aryDescribe = { 
"<dec><npc> ®æi quµ gi¸ng sinh ", 
" ®èng ng­êi tuyÕt /want_snowman", 
" ®æi lÔ vËt /want_gift", 
" ta cã chuyÖn , lóc/khi kh¸c trë l¹i /cancel", 
} 
CreateTaskSay(aryDescribe) 
end 

function want_snowman() 
if (isXmasTime() == 0) then 
CreateTaskSay({"<dec><npc> ho¹t ®éng kÕt thóc .","BiÕt /cancel"}); 
return 
end; 
aryDescribe = { 
"<dec><npc> cã rÊt nhiÒu lo¹i ng­êi tuyÕt , mçi lo¹i ®Ých tµi liÖu ®Òu kh«ng mét d¹ng , ng­¬i nghÜ lµm lo¹i nµo ?", 
" lµm v©y quanh hång vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt )/#do_snowman(1)", 
" lµm v©y quanh lam vi c©n ®Ých ng­êi tuyÕt ( ®Æc biÖt )/#do_snowman(2)", 
" lµm ®Æc biÖt ng­êi tuyÕt /#do_snowman(3)", 
" ta cã chuyÖn , lóc/khi kh¸c trë l¹i /cancel", 
} 
CreateTaskSay(aryDescribe) 
end 

function do_snowman(snown) 
SetTaskTemp(TSKTMP_ITEM_NUMC, snown); 
aryDescribe = TB_Message[snown] 
GiveItemUI("§èng ng­êi tuyÕt ",aryDescribe,"do_snow_process","cancel",1) 
end 

function do_snow_process(nItemCount) 
local nItemNumC = GetTaskTemp(TSKTMP_ITEM_NUMC); 
local nItemPart = TB_SnowMan[nItemNumC][2] 

local tb_enhanceitem_count = {}; 
for szkey, tb_item in TB_Material[nItemPart] do 
tb_enhanceitem_count[szkey] = {}; 
tb_enhanceitem_count[szkey][1] = 0; 
end 

-- script viet hoa By http://tranhba.com  kiÓm tr¾c vËt phÈm thÊt xøng 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemName = GetItemName(nCurItemIdx); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 

if(GetCash() < TB_SnowMan[nItemNumC][7]) then 
aryDescribe = { 
"<dec><npc> ®èng ng­êi tuyÕt cÇn ph¶i cã "..TB_SnowMan[nItemNumC][7].." tiÒn , tiÒn trªn ng­êi ng­¬i kh«ng ®ñ ", 
" biÕt /cancel" 
} 
CreateTaskSay(aryDescribe) 
return 
end 

if (TB_Material[nItemPart][szItemKey] == nil) then 
CreateTaskSay( { "<dec><npc>"..TB_Message[nItemNumC]..", c¸i nµy "..GetItemName(nCurItemIdx)..", ta kh«ng cÇn c¸i nµy ng­¬i lÊy vÒ ®i ", 
" ta lµm l¹i !/#do_snowman("..nItemNumC..")", 
" ta mét håi trë l¹i ./cancel" } ); 
return 
end 
		tb_enhanceitem_count[szItemKey][1] = tb_enhanceitem_count[szItemKey][1] + GetItemStackCount(nCurItemIdx);
tb_enhanceitem_count[szItemKey][2] = nCurItemName; 
if(tb_enhanceitem_count[szItemKey][1] > TB_Material[nItemPart][szItemKey][2] ) then 
CreateTaskSay( { "<dec><npc>"..TB_Message[nItemNumC]..", ta kh«ng cÇn nhiÒu nh­ vËy <color=yellow>"..nCurItemName.."<color> xin ®em ch­a dïng tíi ®Ých th¶ ra ngoµi .", 
" ta lµm l¹i !/#do_snowman("..nItemNumC..")", 
" ta mét håi trë l¹i ./cancel" } ); 
return 
end 
end 

for szkey, tb_item in TB_Material[nItemPart] do 
if (tb_enhanceitem_count[szkey][1] ~= TB_Material[nItemPart][szkey][2]) then 
CreateTaskSay( { "<dec><npc> ng­¬i quªn ®Ó nguyªn liÖu <color=yellow>"..tb_enhanceitem_count[szkey][2].."<color> kh«ng ®ñ . nguyªn liÖu kh«ng ®ñ , ta kh«ng lµm ®­îc .", 
" ta lµm l¹i !/#do_snowman("..nItemNumC..")", 
" ta mét håi trë l¹i ./cancel" } ); 
return 
end 
end 

-- script viet hoa By http://tranhba.com  san tµi liÖu 
for i=1, nItemCount do 
local nIdx = GetGiveItemUnit(i) 
if (RemoveItemByIndex(nIdx) ~= 1) then 
WriteLog("[ ®èng ng­êi tuyÕt ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t thñ tiªu vËt phÈm thÊt b¹i \t"..GetItemName(GetGiveItemUnit(i))); 
return 
end 
end 
Pay(TB_SnowMan[nItemNumC][7]) 

-- script viet hoa By http://tranhba.com  cho vËt phÈm 
local str = ""; 
PItem = random() * 100; 
if(PItem < TB_SnowMan[nItemNumC][3]) then 

str = " luyÖn chÕ thµnh c«ng <color=yellow>"..TB_SnowMan[nItemNumC][1].."<color>!" 
AddItem(6,1,TB_SnowMan[nItemNumC][2],1,0,0) 
else 
str = " luyÖn chÕ thµnh c«ng <color=yellow>"..TB_SnowMan[nItemNumC][4].."<color>!" 
AddItem(6,1,TB_SnowMan[nItemNumC][5],1,0,0) 
end 
Msg2Player(str) 
WriteLog("[ ®èng ng­êi tuyÕt ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t"..str); 
end 

function want_gift() 
if (isXmasTime() == 0) then 
CreateTaskSay({"<dec><npc> ho¹t ®éng kÕt thóc .","BiÕt /cancel"}); 
return 
end; 
aryDescribe = {"<dec><npc> ®æi nh­ sau t­¬ng øng lÔ vËt :\n hÖ lam vi c©n ®Ých ng­êi tuyÕt -- script viet hoa By http://tranhba.com - nam d­a bÝnh \n hÖ hång vi c©n ®Ých ng­êi tuyÕt -- script viet hoa By http://tranhba.com - tuyÕt cao \n ®Æc biÖt ng­êi tuyÕt -- script viet hoa By http://tranhba.com - háa kª \n lùa chän ®æi lÔ vËt ", 
" nam d­a bÝnh /#do_gift(1)", 
" tuyÕt cao /#do_gift(2)", 
" háa kª /#do_gift(3)", 
" t¹m thêi kh«ng cÇn /cancel", 
} 
CreateTaskSay(aryDescribe) 
end 

function do_gift(ngift) 
local Gcount = CalcEquiproomItemCount(6,1,TB_SnowMan[ngift][2],1) 
if(Gcount == 0) then 
Talk(1,"","Trªn ng­êi ng­¬i kh«ng cã "..TB_SnowMan[ngift][1]..". kh«ng thÓ ®æi lÔ vËt "..TB_SnowMan[ngift][8]..".") 
else 
ConsumeEquiproomItem(1,6,1,TB_SnowMan[ngift][2],1) 
AddItem(6,1,TB_SnowMan[ngift][9],1,0,0) 
Msg = " ng­¬i thµnh c«ng ®æi "..TB_SnowMan[ngift][8] 
Msg2Player(Msg) 
WriteLog("[ ®èng ng­êi tuyÕt ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t exchange "..GetItemName(GetGiveItemUnit(i)).." for "..TB_SnowMan[ngift][8]); 
end 
end 


function pack(...) 
return arg 
end 

function cancel() 
SetTaskTemp(TSKTMP_ITEM_NUMC, 0); 
end
