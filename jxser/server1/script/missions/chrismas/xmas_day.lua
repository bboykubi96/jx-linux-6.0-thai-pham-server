-- script viet hoa By http://tranhba.com  Created by Danielsun 2006-12-07 
-- script viet hoa By http://tranhba.com  l� gi�ng sinh ho�t ��ng 
-- script viet hoa By http://tranhba.com  xmas_entry() 
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\basic.lua")

TB_SnowMan = { 
-- script viet hoa By http://tranhba.com  1.[ th�nh c�ng ] ng��i tuy�t t�n 2.[ th�nh c�ng ] ng��i tuy�t ID 3.[ th�nh c�ng ] t� l� 4.[ th�t b�i ] ng��i tuy�t t�n 5.[ th�t b�i ] ng��i tuy�t ID 6.[ th�t b�i ] t� l� 7, kim ti�n 8, ��i l�y l� ph�m t�n 9, ��i l�y l� ph�m ID 
{"Vi lam vi c�n ��ch ng��i tuy�t ( ��c bi�t )", 1319, 60,"Vi lam vi c�n ��ch ng��i tuy�t ( b�nh th��ng )", 1322, 40, 1000,"Nam d�a b�nh ", 1325}, 
{"Vi h�ng vi c�n ��ch ng��i tuy�t ( ��c bi�t )", 1320, 60,"Vi h�ng vi c�n ��ch ng��i tuy�t ( b�nh th��ng )", 1323, 40, 3000,"Tuy�t cao ", 1326}, 
{"��c bi�t ng��i tuy�t ", 1321, 80,"B�nh th��ng ng��i tuy�t ", 1324, 20, 5000,"H�a k� ", 1327}, 
} 

TB_Material = { 
-- script viet hoa By http://tranhba.com 1. v�t ph�m t�n 2. s� l��ng 
[1319] ={ 
["6,1,1312"] = {"B�ng tuy�t ", 10 }, 
["6,1,1313"] = {"C� c� r�t ", 1 }, 
["6,1,1314"] = {"T�ng chi ", 2 }, 
["6,1,1315"] = {"Gi�ng sinh m�o ", 1 }, 
["6,1,1316"] = {" lam vi c�n ", 1 }, 
}, 
[1320] ={ 
["6,1,1312"] = {"B�ng tuy�t ", 10 }, 
["6,1,1313"] = {"C� c� r�t ", 1 }, 
["6,1,1314"] = {"T�ng chi ", 2 }, 
["6,1,1315"] = {"Gi�ng sinh m�o ", 1 }, 
["6,1,1317"] = {" lam vi c�n ", 1 }, 
}, 
[1321] ={ 
["6,1,1312"] = {"B�ng tuy�t ", 10 }, 
["6,1,1313"] = {"C� c� r�t ", 1 }, 
["6,1,1314"] = {"T�ng chi ", 2 }, 
["6,1,1315"] = {"Gi�ng sinh m�o ", 1 }, 
["6,1,1318"] = {" lam vi c�n ", 1 }, 
}, 
} 

TB_Message = { 
-- script viet hoa By http://tranhba.com  luy�n ch� mi�u t� 
" ��ng vi lam vi c�n ��ch ng��i tuy�t ( ��c bi�t ) c�n 10 ��ng tuy�t , 1 c� c� r�t , 2 t�ng chi , 1 c�i m� , 1 lam vi c�n c�ng 1000 hai .", 
" ��ng vi h�ng vi c�n ��ch ng��i tuy�t ( ��c bi�t ) c�n 10 ��ng tuy�t , 1 c� c� r�t , 2 t�ng chi , 1 c�i m� , 1 lam vi c�n c�ng 3000 hai .", 
" ��ng ng��i tuy�t ( ��c bi�t ) c�n 10 ��ng tuy�t , 1 c� c� r�t , 2 t�ng chi , 1 c�i m� , 1 t�ng c�y c�ng 5000 hai .", 
} 

GiftMsg = { 
-- script viet hoa By http://tranhba.com  ��i l�y l� v�t mi�u t� 
" ��i nam d�a b�nh mu�n m�t v�y quanh h�ng vi c�n ��ch ng��i tuy�t ( ��c bi�t )", 
" ��i tuy�t cao mu�n m�t v�y quanh lam vi c�n ��ch ng��i tuy�t ( ��c bi�t )", 
" ��i h�a k� c�n m�t ��c bi�t ng��i tuy�t ", 
} 

TSKTMP_ITEM_NUMC = 20; 

function xmas_entry() 
aryDescribe = { 
"<dec><npc> ��i qu� gi�ng sinh ", 
" ��ng ng��i tuy�t /want_snowman", 
" ��i l� v�t /want_gift", 
" ta c� chuy�n , l�c/khi kh�c tr� l�i /cancel", 
} 
CreateTaskSay(aryDescribe) 
end 

function want_snowman() 
if (isXmasTime() == 0) then 
CreateTaskSay({"<dec><npc> ho�t ��ng k�t th�c .","Bi�t /cancel"}); 
return 
end; 
aryDescribe = { 
"<dec><npc> c� r�t nhi�u lo�i ng��i tuy�t , m�i lo�i ��ch t�i li�u ��u kh�ng m�t d�ng , ng��i ngh� l�m lo�i n�o ?", 
" l�m v�y quanh h�ng vi c�n ��ch ng��i tuy�t ( ��c bi�t )/#do_snowman(1)", 
" l�m v�y quanh lam vi c�n ��ch ng��i tuy�t ( ��c bi�t )/#do_snowman(2)", 
" l�m ��c bi�t ng��i tuy�t /#do_snowman(3)", 
" ta c� chuy�n , l�c/khi kh�c tr� l�i /cancel", 
} 
CreateTaskSay(aryDescribe) 
end 

function do_snowman(snown) 
SetTaskTemp(TSKTMP_ITEM_NUMC, snown); 
aryDescribe = TB_Message[snown] 
GiveItemUI("��ng ng��i tuy�t ",aryDescribe,"do_snow_process","cancel",1) 
end 

function do_snow_process(nItemCount) 
local nItemNumC = GetTaskTemp(TSKTMP_ITEM_NUMC); 
local nItemPart = TB_SnowMan[nItemNumC][2] 

local tb_enhanceitem_count = {}; 
for szkey, tb_item in TB_Material[nItemPart] do 
tb_enhanceitem_count[szkey] = {}; 
tb_enhanceitem_count[szkey][1] = 0; 
end 

-- script viet hoa By http://tranhba.com  ki�m tr�c v�t ph�m th�t x�ng 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemName = GetItemName(nCurItemIdx); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 

if(GetCash() < TB_SnowMan[nItemNumC][7]) then 
aryDescribe = { 
"<dec><npc> ��ng ng��i tuy�t c�n ph�i c� "..TB_SnowMan[nItemNumC][7].." ti�n , ti�n tr�n ng��i ng��i kh�ng �� ", 
" bi�t /cancel" 
} 
CreateTaskSay(aryDescribe) 
return 
end 

if (TB_Material[nItemPart][szItemKey] == nil) then 
CreateTaskSay( { "<dec><npc>"..TB_Message[nItemNumC]..", c�i n�y "..GetItemName(nCurItemIdx)..", ta kh�ng c�n c�i n�y ng��i l�y v� �i ", 
" ta l�m l�i !/#do_snowman("..nItemNumC..")", 
" ta m�t h�i tr� l�i ./cancel" } ); 
return 
end 
		tb_enhanceitem_count[szItemKey][1] = tb_enhanceitem_count[szItemKey][1] + GetItemStackCount(nCurItemIdx);
tb_enhanceitem_count[szItemKey][2] = nCurItemName; 
if(tb_enhanceitem_count[szItemKey][1] > TB_Material[nItemPart][szItemKey][2] ) then 
CreateTaskSay( { "<dec><npc>"..TB_Message[nItemNumC]..", ta kh�ng c�n nhi�u nh� v�y <color=yellow>"..nCurItemName.."<color> xin �em ch�a d�ng t�i ��ch th� ra ngo�i .", 
" ta l�m l�i !/#do_snowman("..nItemNumC..")", 
" ta m�t h�i tr� l�i ./cancel" } ); 
return 
end 
end 

for szkey, tb_item in TB_Material[nItemPart] do 
if (tb_enhanceitem_count[szkey][1] ~= TB_Material[nItemPart][szkey][2]) then 
CreateTaskSay( { "<dec><npc> ng��i qu�n �� nguy�n li�u <color=yellow>"..tb_enhanceitem_count[szkey][2].."<color> kh�ng �� . nguy�n li�u kh�ng �� , ta kh�ng l�m ���c .", 
" ta l�m l�i !/#do_snowman("..nItemNumC..")", 
" ta m�t h�i tr� l�i ./cancel" } ); 
return 
end 
end 

-- script viet hoa By http://tranhba.com  san t�i li�u 
for i=1, nItemCount do 
local nIdx = GetGiveItemUnit(i) 
if (RemoveItemByIndex(nIdx) ~= 1) then 
WriteLog("[ ��ng ng��i tuy�t ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t th� ti�u v�t ph�m th�t b�i \t"..GetItemName(GetGiveItemUnit(i))); 
return 
end 
end 
Pay(TB_SnowMan[nItemNumC][7]) 

-- script viet hoa By http://tranhba.com  cho v�t ph�m 
local str = ""; 
PItem = random() * 100; 
if(PItem < TB_SnowMan[nItemNumC][3]) then 

str = " luy�n ch� th�nh c�ng <color=yellow>"..TB_SnowMan[nItemNumC][1].."<color>!" 
AddItem(6,1,TB_SnowMan[nItemNumC][2],1,0,0) 
else 
str = " luy�n ch� th�nh c�ng <color=yellow>"..TB_SnowMan[nItemNumC][4].."<color>!" 
AddItem(6,1,TB_SnowMan[nItemNumC][5],1,0,0) 
end 
Msg2Player(str) 
WriteLog("[ ��ng ng��i tuy�t ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t"..str); 
end 

function want_gift() 
if (isXmasTime() == 0) then 
CreateTaskSay({"<dec><npc> ho�t ��ng k�t th�c .","Bi�t /cancel"}); 
return 
end; 
aryDescribe = {"<dec><npc> ��i nh� sau t��ng �ng l� v�t :\n h� lam vi c�n ��ch ng��i tuy�t -- script viet hoa By http://tranhba.com - nam d�a b�nh \n h� h�ng vi c�n ��ch ng��i tuy�t -- script viet hoa By http://tranhba.com - tuy�t cao \n ��c bi�t ng��i tuy�t -- script viet hoa By http://tranhba.com - h�a k� \n l�a ch�n ��i l� v�t ", 
" nam d�a b�nh /#do_gift(1)", 
" tuy�t cao /#do_gift(2)", 
" h�a k� /#do_gift(3)", 
" t�m th�i kh�ng c�n /cancel", 
} 
CreateTaskSay(aryDescribe) 
end 

function do_gift(ngift) 
local Gcount = CalcEquiproomItemCount(6,1,TB_SnowMan[ngift][2],1) 
if(Gcount == 0) then 
Talk(1,"","Tr�n ng��i ng��i kh�ng c� "..TB_SnowMan[ngift][1]..". kh�ng th� ��i l� v�t "..TB_SnowMan[ngift][8]..".") 
else 
ConsumeEquiproomItem(1,6,1,TB_SnowMan[ngift][2],1) 
AddItem(6,1,TB_SnowMan[ngift][9],1,0,0) 
Msg = " ng��i th�nh c�ng ��i "..TB_SnowMan[ngift][8] 
Msg2Player(Msg) 
WriteLog("[ ��ng ng��i tuy�t ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\t exchange "..GetItemName(GetGiveItemUnit(i)).." for "..TB_SnowMan[ngift][8]); 
end 
end 


function pack(...) 
return arg 
end 

function cancel() 
SetTaskTemp(TSKTMP_ITEM_NUMC, 0); 
end
