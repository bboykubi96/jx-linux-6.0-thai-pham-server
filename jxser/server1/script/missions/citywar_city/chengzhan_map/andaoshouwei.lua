-- script viet hoa By http://tranhba.com  th�m n�i th� v� 
function main() 
Say("��y l� d�ng cho b� m�t r�i/b� th�nh t�p k�ch ��ch qu�n ��ch m�t ��o # ng��i ngh� s� d�ng c�i n�y m�t ��o sao ?", 2,"Mu�n /OnGo","Kh�ng mu�n /OnCancel"); 
end 

function OnGo() 
local mapid = 221 
local i = random(0,1); 

if (i == 0) then 
NewWorld(mapid,1739,3513) 
else 
NewWorld(mapid,1836,3405) 
end 

SetFightState(1); 
end 

function OnCancel() 
end 
