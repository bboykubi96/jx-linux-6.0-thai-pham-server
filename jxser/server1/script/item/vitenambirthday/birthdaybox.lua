tbSHENGRILIHE_GIFT = { 
{ "<#> ti�n n�i ", 0.03, 975 }, 
{ "<#> tinh ph�n ", 0.47, 976 }, 
{ "<#> ���ng tinh ", 0.47, 977 }, 
{ "<#> tr�ng g� ", 0.03, 978 }, 
} 

function main() 
local base = 0; 
local sum = 0; 
local gift_index = 0; 
for i = 1, getn( tbSHENGRILIHE_GIFT ) do 
		base = base + tbSHENGRILIHE_GIFT[i][2] * 100000;
end 
local rannum = random(base); 
for i = 1, getn(tbSHENGRILIHE_GIFT) do 
		sum = tbSHENGRILIHE_GIFT[i][2] * 100000 + sum
if ( sum >= rannum ) then 
gift_index = i; 
break 
end; 
end; 
if ( gift_index ~= 0 ) then 
AddEventItem(tbSHENGRILIHE_GIFT[gift_index][3]) 
Msg2Player("<#> ng�i ��t ���c m�t "..tbSHENGRILIHE_GIFT[gift_index][1]) 
WriteLog(date("%y-%m-%d,%H:%M,").."ACCOUNT:"..GetAccount()..",NAME:"..GetName()..",use zhongqiu_lihe , get "..tbSHENGRILIHE_GIFT[gift_index][1]) 
else 
Say("T�i sao c�i g� c�ng kh�ng c� ��y ?", 0) 
end 
end