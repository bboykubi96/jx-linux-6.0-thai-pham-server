Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function InitMission() 
-- script viet hoa By http://tranhba.com Msg2Player("Chi�n s� kh�n c�p , ��i chi�n v�a ch�m v�o t�c ph�t ."); 
StartMissionTimer(1,4,TIMER_1); 
SetMissionV(1,1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
SetMissionV(MS_KEY, random(100000)) 
RevivalAllNpc(); 
HideNpc("Nam T�ng t��ng qu�n ",1000000); 
HideNpc("Kim qu�c ��i t��ng ",1000000); 

RestMin, RestSec = GetMinAndSec(1800); 
local str1 = "<#> t�ng kim ��i chi�n �ang ti�n v�o ghi danh giai �o�n , mu�n ng��i tham chi�n xin mau s�m � t�ng kim chi�n tr��ng hai nh�p kh�u m�t trong ghi danh , ghi danh c�n th�a l�i th�i gian :"..RestMin.."<#> ph�n "..RestSec.."<#> gi�y ".."<#> . tham chi�n �i�u ki�n : c�p b�c kh�ng nh� v�i 40 c�p , ti�n ghi danh 3000 hai . "; 
AddGlobalCountNews(str1, 1); 
end; 

function RunMission() 
SetMissionV(1,2); 
SetMissionV(MS_J_NPCDEATH, 0); 
SetMissionV(MS_S_NPCDEATH, 0); 
SetMissionV(MS_S_SHOWKING, 0); 
SetMissionV(MS_J_SHOWKING, 0); 
RevivalAllNpc(); 
HideNpc("Nam T�ng t��ng qu�n ",1000000); 
HideNpc("Kim qu�c ��i t��ng ",1000000); 
HideNpc("T�ng qu�n qu�n y ",1000000); 
HideNpc("Kim qu�c qu�n y ",1000000); 
idx = 0; 

for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end; 

-- script viet hoa By http://tranhba.com  l�c n�y v� GM ph�t ra m�nh l�nh , ch�nh th�c ��nh vang chi�n ��u 
PutMessage("��ch qu�n �� b�t ��u h�nh ��ng , c�c t��ng s� ch�y t�i ti�n tuy�n , ph�n d�ng gi�t ��ch nha !"); 
end; 

StartMissionTimer(1,5, TIMER_2); 
end; 

function EndMission() 

for i = 1, 20 do 
SetMissionV(i , 0); 
end; 

StopMissionTimer(1,4); 
StopMissionTimer(1,5); 
GameOver(); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().." th�i lui ra kh�i chi�n tr��ng "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
SetPKFlag(0) 
ForbidChangePK(0); 
Msg2MSAll(1, str2); 
end; 
