Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function OnDeath() 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

-- script viet hoa By http://tranhba.com if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then

if (GetMissionV(5) >= (MAX_S_COUNT / 2) and GetMissionV(6) >= (MAX_J_COUNT / 2)) then 

if (random(100) > 70) then 
return 
end; 

AddEventItem(195); 
Msg2Player("Ng�i thu ���c nh�c v��ng ki�m !"); 
end; 


str1 = "<#> t�ng kim chi�n d�ch k�t qu� : ng��i T�ng "..GetName().."<#> gi�t ch�t kim ph��ng ��i t��ng , t�ng ph��ng ��t ���c th�ng l�i !"; 
str = "<#> th�t t�t qu� #["..GetName().."<#>] gi�t ch�t kim �em , ch�ng ta ng��i T�ng th�ng cu�c chi�n ��u n�y ! c�c t��ng s� hoan h� nha #"; 
Msg2MSAll(1, str1); 
Msg2MSGroup(1, str, 1); 
resultstr = WinBonus(1,2); 
str1 = str1..resultstr; 
SetMissionV(2,2); 
SetMissionV(1,3); 
AddGlobalCountNews(str1 , 3); 
CloseMission(1); 
end;
