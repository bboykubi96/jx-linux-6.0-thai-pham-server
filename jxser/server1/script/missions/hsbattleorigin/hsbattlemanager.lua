-- script viet hoa By http://tranhba.com  dù thi l­u tr×nh 
-- script viet hoa By http://tranhba.com 1# cïng chñ nhËp khÈu ®Ých Npc ®èi tho¹i , lùa chän tiÕn vµo thø mÊy c¸ chiÕn khu 
-- script viet hoa By http://tranhba.com 2# nÕu nh­ phï hîp ®iÒu kiÖn dù thi lµ tiÕn vµo chiÕn khu bªn trong # kh¸c mét tÊm b¶n ®å # , còng lÊy 0 trËn doanh m« thøc tiÕn vµo 
-- script viet hoa By http://tranhba.com 3# nhµ ch¬i cïng hai bªn Npc ®èi tho¹i , tù do lùa chän tham dù ®Ých trËn doanh . 
-- script viet hoa By http://tranhba.com 4# nhµ ch¬i Pk tö vong sau ®em tù ®éng bÞ vÉn ra s©n bªn ngoµi , nh­ng ë bæn ®Þa ®å bªn trong 
-- script viet hoa By http://tranhba.com 5# khi nhµ ch¬i tö vong lóc , sÏ tù ®éng h­íng cïng b¶n ®å ®Ých tÊt c¶ nhµ ch¬i c«ng bè tr­íc mÆt ®Ých chiÕn huèng . 
-- script viet hoa By http://tranhba.com 6# nÕu nh­ cã thÓ , cã thÓ tõ Npc ®èi tho¹i trung hiÓu râ tr­íc mÆt ®Ých tæng ®øng hµng thø 
-- script viet hoa By http://tranhba.com 7# tranh tµi cã thÓ dùa theo cÊp bËc chia lµm c¸c lo¹i cuéc so tµi trµng 
-- script viet hoa By http://tranhba.com  vµo chiÕn khu ®Ých Npc# lùa chän trËn doanh ®Ých Npc 
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");
Include("\\script\\missions\\hsbattle\\hshead.lua");
MapTab = {}; 
MapCount = 1; 
MapTab[1]= {212, 1577, 3288}; 

function main() 
-- script viet hoa By http://tranhba.com  thiÕt trÝ trë vÒ ®iÓm 
SetTask(300, 2); 
SetTask(301, 2605); 
SetTask(302, 3592); 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
Say("Tr­íc m¾t vÉn ch­a cã ng­êi nµo ghi danh l«i ®µi mét m×nh ®Êu . nghÜa sÜ muèn thö mét chót sao ?",0) 
return 
end 

OldSubWorld = SubWorld; 
SubWorld = idx; 
if (GetMissionV(1) ~= 1) then 
Say("Tr­íc m¾t vÉn ch­a cã ng­êi nµo ghi danh l«i ®µi mét m×nh ®Êu . nghÜa sÜ muèn thö mét chót sao ?",0) 
return 
end; 

SubWorld = OldSubWorld; 

Say("Tr­íc m¾t vÉn ch­a cã ng­êi nµo ghi danh l«i ®µi mét m×nh ®Êu , chØ cÇn 60 cÊp trë lªn , phã 10000 tiÒn ghi danh dïng liÒn cã thÓ thö !", 2,"H¶o , ta muèn thö mét chót c¸c vÞ hµo kiÖt ®Ých tµi nghÖ . /JoinHS","Kh«ng tham gia /OnCancel"); 
end; 

function JoinHS() 
LeaveTeam(); 
if (CheckCondition() == 0) then 
Say("Ng­¬i ch­a ®ñ cÊp bËc hoÆc lµ mang ®Ých kh«ng ®ñ tiÒn , hoÆc lµ kh«ng ph¶i lµ ng­êi trong giang hå , kh«ng thÓ th­îng Hoa S¬n tuyÖt ®Ønh ", 0); 
return 
end; 

if (PrePay(MS_SIGN_MONEY) == 1) then 
NewWorld(MapTab[1][1], MapTab[1][2], MapTab[1][3]); 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
return 
end; 
SubWorld = idx; 
JoinCamp(4); 
return 
end; 
end; 


function CheckCondition() 
if ( GetLevel() >= 60 and GetCamp() ~= 0 ) then 
if (GetCash() >= MS_SIGN_MONEY) then 
return 1; 
end; 
end; 
return 0; 
end; 

function OnCancel() 
end; 
