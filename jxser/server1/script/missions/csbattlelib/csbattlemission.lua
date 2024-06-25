function InitMission() 
SetMissionV(1,1);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
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
str2 = GetName().." rêi ®i chiÕn tr­êng , "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
Msg2MSAll(1, str2); 
SetTaskTemp(200, 0); 
end;
