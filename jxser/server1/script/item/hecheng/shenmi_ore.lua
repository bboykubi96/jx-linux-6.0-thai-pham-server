MAXNUM_GIFT = 10 

function main() 
Talk(1, "GiveUIForShenmi_Ore","H�p th�nh th�n b� qu�ng th�ch # m�i l�n b� v�o <color=yellow>10<color> c� <color=yellow>10 c�p <color> ��ch g� n�m th�n b� l� v�t , li�n c� th� h�p th�nh ra m�t th�n b� qu�ng th�ch . ") 
return 
end 

function GiveUIForShenmi_Ore() 
GiveItemUI("Th�n b� qu�ng th�ch h�p th�nh ","T�i h� m�t ��ch v�t ph�m lan b�n trong b� v�o 10 c� 10 c�p ��ch g� n�m th�n b� l� v�t , li�n c� th� h�p th�nh m�t th�n b� qu�ng th�ch . ", "Covert_ShenmiOre", "onCancel" ); 
end 

function Covert_ShenmiOre(nCount) 
local q = 0 
local d = 0 
local num = 0 
local maxCount = 0 
if (nCount == 0) then 
Talk(1, "GiveUIForShenmi_Ore", "<#> g� c�ng kh�ng cho , ng��i ngh� l�m g� nha . ") 
return 
end 
if (nCount >10 ) then 
Talk(1, "GiveUIForShenmi_Ore", "<#> ng��i b� v�o ��ch v�t ph�m s� l��ng gi�ng nh� kh�ng ��ng , th�y r� r�ng n�a �� �i #") 
return l 
end 

for i = 1, nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g,d,_ = GetItemProp(itemIdx) 
if(g ~= 4 or d ~= 518) then 
Talk(1, "GiveUIForShenmi_Ore","<#> ng��i cho l� t�m th��c �� a , th�y th� n�o kh�ng hi�u chi�p ? " ) 
return 
end 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  ki�m tr�c th�n b� n�i c� ��ch s� l��ng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXNUM_GIFT) then -- script viet hoa By http://tranhba.com  ����̫��
Talk(1, "GiveUIForShenmi_Ore", "<#> ng��i cho �� qu� nhi�u , kh�ng th�y r� , ng�t ��") 
return nil 
end 
return num 
end 
num = checkGiftCount(itemIdx,maxCount) 
if (not num) then 
return 
else 
			maxCount = maxCount + num
end 
end 
if (maxCount ~= 10) then 
Talk(1, "GiveUIForShenmi_Ore", "<#> ng��i cho g� n�m th�n b� l� v�t s� l��ng kh�ng �� c�ng #") 
return 
else 
for i=1,nCount do 
RemoveItemByIndex(GetGiveItemUnit( i )) 
end 
AddItem(6, 1, 398, 1, 1, 1, 1) 
Talk(1, "","Ch�c m�ng ng��i h�p th�nh ra kh�i m�t th�n b� qu�ng th�ch #") 
Msg2Player("Ng��i ��t ���c m�t th�n b� qu�ng th�ch ") 
return 
end 
end 

function onCancel() 
end
