Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = format("C¸i nµy kh«i lçi quan phñ ®ang ngñ , cÇn phiÒn to¸i c¸c vÞ bang héi nh©n sÜ ®i xua ®uæi %s , vÞ kia nh©n sÜ muèn gióp bËn rén cã thÓ ®Õn tæng ho¹t ®éng ph­êng ghi danh tham gia .",SF_ANIMALNAME); 
AddGlobalNews(strGlbNews); 
SetGlbValue(GLB_SF_PHASE, 1); -- script viet hoa By http://tranhba.com  cã thÓ b¾t ®Çu b¸o danh 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 1); 
StartMissionTimer(SF_PREPAREMISSIONID, SF_PREPARETIME, SF_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function EndMission() 
StopMissionTimer(SF_PREPAREMISSIONID, SF_PREPARETIME); 
festival_gameover(SF_MAPID[1], SF_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
