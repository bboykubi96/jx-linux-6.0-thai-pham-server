function main() 
local eattime = GetTask(1502) 
local eatexp = GetTask(1501) 
local eatmsg = {"<#> ng��i �n r�i qu� nhi�u t�ng t� , �� kh�ng th� ti�p t�c �n r�i #", 
"<#> ng��i c�m th�y r�t b�o , ph�i ��i m�t �o�n th�i gian m�i c� th� �n t�ng t� #", 
"<#> ng��i �n r�i nhi�u �� ��ch t�ng t� , ��y �� l� ng��i cu�i c�ng #" 
} 
local randomexp = {10000, 20000, 50000} 
if(eatexp > 20000000) then -- script viet hoa By http://tranhba.com  s� d�ng kinh nghi�m l�n h�n 20,000,000 , kh�ng th� �n n�a 
Msg2Player(eatmsg[1]) 
return 1 
else 
		if (GetGameTime() > eattime + 60 * 60) then
local i = random(1, 3) 
AddOwnExp(randomexp[i]) 
			SetTask(1501, eatexp+randomexp[i])
SetTask(1502, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t � tuy�n th�i gian 
if(GetTask(1501) > 20000000) then 
Msg2Player(eatmsg[3]) 
end 
return 0 
elseif (eattime == 0) then 
local i = random(1, 3) 
AddOwnExp(randomexp[i]) 
			SetTask(1501,eatexp+randomexp[i])
SetTask(1502, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t � tuy�n th�i gian 
if(GetTask(1501) >20000000) then 
Msg2Player(eatmsg[3]) 
end 
return 0 
else 
Msg2Player(eatmsg[2]) 
return 1 
end 

end 
end
