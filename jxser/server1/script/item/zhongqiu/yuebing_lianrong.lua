MOONCAKE_MAX_EXP = 100000000 
function main() 
local tbEXP = {200000, 300000, 400000} 
local eatexp = GetTask(1568) 
if (eatexp >= MOONCAKE_MAX_EXP) then 
Msg2Player("<#> ng��i �� �n r�i qu� nhi�u b�nh Trung thu li�u ") 
return 1 
end 

local rannum = random(getn(tbEXP)) 
local mooncake_addexp = tbEXP[rannum] 
	if ( mooncake_addexp + eatexp > MOONCAKE_MAX_EXP ) then
mooncake_addexp = MOONCAKE_MAX_EXP - eatexp 
end 
AddOwnExp(mooncake_addexp) 
	SetTask(1568, eatexp + mooncake_addexp)
if(GetTask(1568) >= MOONCAKE_MAX_EXP) then 
Msg2Player("<#> ng��i �� �n r�i qu� nhi�u b�nh Trung thu li�u ") 
else 
Msg2Player( "<#> ng��i c�n c� th� th�ng qua �n v�o trung thu b�nh Trung thu ��t ���c <color=yellow>"..(MOONCAKE_MAX_EXP - GetTask(1568)).."<#><color> ch�t kinh nghi�m " ) 
end 
WriteLog(date("%y-%m-%d,%H:%M,").."ACCOUNT:"..GetAccount()..",NAME:"..GetName()..", use yuebing_lianrong, get "..mooncake_addexp.." experience") 
end 