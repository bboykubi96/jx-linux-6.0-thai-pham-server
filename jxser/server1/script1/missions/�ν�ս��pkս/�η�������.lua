Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function OnDeath() 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then
if (random(100) > 60) then 
return 
end; 
AddEventItem(195); 
Msg2Player("Ng�i thu ���c nh�c v��ng ki�m !"); 
end; 

-- script viet hoa By http://tranhba.com  c�u n�y l� cho t�t c� tham gia ��i chi�n ��ch nh� ch�i ph�t tin t�c 
str1 = "<#> t�ng kim chi�n d�ch k�t qu� : kim ph��ng t��ng s� "..GetName().."<#> gi�t ch�t t�ng ph��ng ��i t��ng , kim ph��ng ��t ���c th�ng l�i !"; 

-- script viet hoa By http://tranhba.com  ph�a d��i c�u n�y l� cho chi�n th�ng ph��ng ph�t tin t�c , vui m�ng kh�ch l� l�i c�a ! 
str = "<#> th�t t�t qu� #["..GetName().."<#>] gi�t ch�t t�ng �em , ch�ng ta ng��i Kim th�ng cu�c chi�n ��u n�y ! c�c t��ng s� hoan h� nha #"; 

Msg2MSAll(1, str1); 
Msg2MSGroup(1, str, 2); 
resultstr = WinBonus(2, 1); 
str1 = str1..resultstr; 
SetMissionV(2,1); 
SetMissionV(MS_STATE,3); 
AddGlobalCountNews(str1, 3); 
CloseMission(1); 
end; 
