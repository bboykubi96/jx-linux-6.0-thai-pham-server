tbZHONGQIULIHE_GIFT = { 
{ "<#> m�t ph�n ", 0.45, 520 }, 
{ "<#> sa ���ng ", 0.45, 521 }, 
{ "<#> li�n dong ", 0.0435, 523 }, 
{ "<#> ��u sa ", 0.04349, 524 }, 
{ "<#> ��n ", 0.01, 522 }, 
{ "<#> h�nh nh�n ", 0.002, 525 }, 
{ "<#> hoa sinh ", 0.001, 526 }, 
{ "<#> gia ti ", 0.00001, 527 }, 
} 

function main() 
local base = 0; 
local sum = 0; 
local gift_index = 0; 
for i = 1, getn( tbZHONGQIULIHE_GIFT ) do 
		base = base + tbZHONGQIULIHE_GIFT[i][2] * 100000;
end 
local rannum = random(base); 
for i = 1, getn(tbZHONGQIULIHE_GIFT) do 
		sum = tbZHONGQIULIHE_GIFT[i][2] * 100000 + sum
if ( sum >= rannum ) then 
gift_index = i; 
break 
end; 
end; 
if ( gift_index ~= 0 ) then 
AddEventItem(tbZHONGQIULIHE_GIFT[gift_index][3]) 
Msg2Player("<#> ng��i ��t ���c m�t "..tbZHONGQIULIHE_GIFT[gift_index][1]) 
WriteLog(date("%y-%m-%d,%H:%M,").."ACCOUNT:"..GetAccount()..",NAME:"..GetName()..",use zhongqiu_lihe , get "..tbZHONGQIULIHE_GIFT[gift_index][1]) 
else 
Say("Di ? th� n�o kh�ng c� g� c� n�t ? ", 0) 
end 
end