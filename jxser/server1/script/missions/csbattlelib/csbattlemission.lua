function InitMission() 
SetMissionV(1,1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
end; 

function RunMission() 

end; 

function EndMission() 
for i = 1, 20 do 
SetMissionV(i , 0); 
end; 
GameOver(); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().." r�i �i chi�n tr��ng , "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
Msg2MSAll(1, str2); 
SetTaskTemp(200, 0); 
end;
