-- script viet hoa By http://tranhba.com  ��c th� nhi�m v� l�nh b�i v�n ki�n 
Include([[\script\tong\workshop\tongcolltask.lua]]); 

function main(nItem) 
_, nTongID = GetTongName(); 
if (nTongID <= 0) then 
Say("Ng��i tr��c m�t kh�ng c� � ��y <color=yellow> bang h�i <color> trung , kh�ng c�ch n�o s� d�ng bang h�i ��c th� nhi�m v� l�nh b�i . ", 0); 
Msg2Player("Ng��i tr��c m�t kh�ng c� � ��y <color=yellow> bang h�i <color> trung , kh�ng c�ch n�o s� d�ng bang h�i ��c th� nhi�m v� l�nh b�i . "); 
return 1; 
end; 
local nCount = GetTask(TASK_LP_COUNT); 
SetTask(TASK_LP_ITEMID, nItem); -- script viet hoa By http://tranhba.com  l�y ���c l�nh b�i c�p b�c 

if (nCount > 0) then 
Say("<color=green> nhi�m v� l�nh b�i <color># ng�i tr��c m�t c� c�n ch�a ho�n th�nh ng�u nhi�n nhi�m v� , ng��i nh�t ��nh ph�i ti�p nh�n nhi�m v� m�i sao ? ", 2, 
" ��ng v�y , ta mu�n bu�ng tha cho tr��c ��ch ng�u nhi�n nhi�m v� /cancelformertask", 
" kh�ng ���c , c�n l� v�n v�n �i /OnCancel"); 
return 1; 
else 
wanttask() 
return 1; 
end; 
end; 

-- script viet hoa By http://tranhba.com  h�y b� m�t c�i nhi�m v� l�nh b�i nhi�m v� . 
function cancelformertask() 
if (GetTask(TASK_LP_COUNT) ~= 0) then 
rwlp_cleartask(); 
Say("Ng��i �� h�y b� <color=yellow> ��c th� nhi�m v� l�nh b�i <color> nhi�m v� . ", 0); 
Msg2Player("Ng��i �� h�y b� <color=yellow> ��c th� nhi�m v� l�nh b�i <color> nhi�m v� . "); 
end; 
end; 

-- script viet hoa By http://tranhba.com  ti�p nh�n l�nh b�i nhi�m v� 
function wanttask() 
if (GetTask(TASK_LP_COUNT) ~= 0) then 
Say("Ng��i �� c� m�t ��c th� nhi�m v� l�nh b�i nhi�m v� , kh�ng th� nh�n nhi�m v� m�i li�u . ", 0); 
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

local szContent = "<color=yellow>"..nLevel.."<color> c�p tr� l�n b�t ��ng bang h�i ��ch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng t�ng qu�n <color> , "; 
if (nResult == 0) then 
Say("V�n l� c�n ng��i �i vi�ng th�m m�y v� "..szContent.." nh�ng l� r�t ��ng ti�c tr��c m�t t�t c� bang h�i ��ch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng <color> c�p b�c ��u kh�ng ch�n , cho n�n v�n l� m�i/xin ng��i l�n sau th� l�i l�n n�a �i . ", 0); 
Msg2Player("T�m th�i kh�ng c� nhi�u �� ��ch "..szContent.." xin/m�i l�n sau n�m th� n�a . "); 
return 
end; 

szContent = "<color=yellow>"..nCount.."<color> v� "..szContent; 
Say("B�n bang ��ch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng t�ng qu�n <color> g�n nh�t t�m t� kh�ng t�t , nguy�n b�n ��nh th��ng kinh �i thi , c�u xin l�y m�t c�ng danh . kh�ng ao ��c kinh quan y�u c�u , ra s� gi� t� c�n ph�i c� ��a ph��ng danh s� ��ch ti�n s�ch . c�ng danh v�ng m�n kinh s� ng��i , kh�o th� c�ng danh ��ch c� h�i l�i c�ng l�n . l�m phi�n ng��i cho h�n �i t�m "..szContent.." ��t ���c b�n h� ti�n s�ch . ", 2, 
" h�o , ta nh�t ��nh l�m h�t s�c /#lp_confirm("..nLevel..","..nWorkshopIdx..","..nCount..", 1)", 
" nhi�m v� n�y qu� kh� kh�n , ta kh�ng l�m /#lp_confirm("..nLevel..","..nWorkshopIdx..","..nCount..", 0)"); 
end; 

-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a m�t c�i nhi�m v� 
function init_task() 
local nLPLvl = GetItemParam(GetTask(TASK_LP_ITEMID), 1); -- script viet hoa By http://tranhba.com  l�nh b�i ��ch c�p b�c 

local nLevel, nWorkshopIdx, nCount; 
nLevel = 1; 
nWorkshopIdx = random(1, 7); -- script viet hoa By http://tranhba.com  ng�u nhi�n m�t x��ng 

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
local szContent = "<color=yellow>"..nCount.."<color> v� <color=yellow>"..nLevel.."<color> c�p tr� l�n b�t ��ng bang h�i ��ch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng t�ng qu�n <color>"; 

nt_SetTask(TASK_LP_ZONGGUANIDX, nWorkshopIdx); 
nt_SetTask(TASK_LP_ZONGGUANLEVEL, nLevel); 

if (bOK == 1) then 
Say("B�n bang ��ch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng t�ng qu�n <color> g�n nh�t t�m t� kh�ng t�t , nguy�n b�n ��nh th��ng kinh �i thi , c�u xin l�y m�t c�ng danh . kh�ng ao ��c kinh quan y�u c�u , ra s� gi� t� c�n ph�i c� ��a ph��ng danh s� ��ch ti�n s�ch . c�ng danh v�ng m�n kinh s� ng��i , kh�o th� c�ng danh ��ch c� h�i l�i c�ng l�n . l�m phi�n ng��i cho h�n �i t�m "..szContent.." ��t ���c b�n h� ti�n s�ch . ", 1,"Ta bi�t /lp_confirmtwo"); 
else 
Say("B�n bang ��ch <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng t�ng qu�n <color> hy v�ng ng��i cho h�n �i t�m "..szContent.." ��t ���c b�n h� ti�n s�ch . ng��i th�t kh�ng c� th�i gian sao ? ",2 ,"Ta c�n l� ti�p thu nhi�m v� n�y �i /lp_confirmtwo","Ta qu� th�t kh�ng mu�n ti�p thu nhi�m v� n�y /OnCancel"); 
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
Msg2Player("Ng��i ti�p thu �i c�ng <color=yellow>"..nCount.."<color> c� <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng t�ng qu�n <color> ��i tho�i , ��t ���c ti�n s�ch ��ch nhi�m v� , <color=yellow>"..tab_Workshop[nWorkshopIdx].." ph��ng <color> ��ch c�p b�c nh�t ��nh ph�i v� <color=yellow>"..nLevel.."<color> c�p . "); 
end; 
