Include("\\script\\lib\\gb_modulefuncs.lua")
IncludeLib("LEAGUE") 
MAX_TJL_USE_COUNT = 5 
str_endmsg = " ng��i s� d�ng thi�n c� l�nh �� ��t t�i s� d�ng th��ng h�n "..MAX_TJL_USE_COUNT.." l�n , v� v�y t� trong t�i �eo l�ng �i tr� #"; 

function main(nItem) 
local nUsedCount = GetItemParam(nItem, 1); 

Msg2Player("Ng��i s� d�ng thi�n c� l�nh # � m�t gi� b�n trong ng��i nh�ng l�y ���c bi�t s� t�i �� t�t c� v�t ph�m qu� tr�ng ��ch th�p th� t�n h�i th� .") 
AddSkillState(707, 1, 1, 18*60*60); 

	nUsedCount = nUsedCount + 1
if (nUsedCount >= MAX_TJL_USE_COUNT) then 
Msg2Player(str_endmsg) 
return 0 
else 
SetItemMagicLevel(nItem, 1, nUsedCount) 
end 
SyncItem(nItem) 
return 1 
end 

function GetDesc(nItem) 
local nUsedCount = GetItemParam(nItem, 1); 
return " c�n th�a l�i s� d�ng s� l�n :" ..(MAX_TJL_USE_COUNT - nUsedCount).." / "..MAX_TJL_USE_COUNT 
end