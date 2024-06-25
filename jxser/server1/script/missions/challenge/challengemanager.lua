-- script viet hoa By http://tranhba.com  dù thi l­u tr×nh 
-- script viet hoa By http://tranhba.com 1# cïng chñ nhËp khÈu ®Ých Npc ®èi tho¹i , lùa chän tiÕn vµo thø mÊy c¸ chiÕn khu 
-- script viet hoa By http://tranhba.com 2# nÕu nh­ phï hîp ®iÒu kiÖn dù thi lµ tiÕn vµo chiÕn khu bªn trong # kh¸c mét tÊm b¶n ®å # , còng lÊy 0 trËn doanh m« thøc tiÕn vµo 
-- script viet hoa By http://tranhba.com 3# nhµ ch¬i cïng hai bªn Npc ®èi tho¹i , tù do lùa chän tham dù ®Ých trËn doanh . 
-- script viet hoa By http://tranhba.com 4# nhµ ch¬i Pk tö vong sau ®em tù ®éng bÞ vÉn ra s©n bªn ngoµi , nh­ng ë bæn ®Þa ®å bªn trong 
-- script viet hoa By http://tranhba.com 5# khi nhµ ch¬i tö vong lóc , sÏ tù ®éng h­íng cïng b¶n ®å ®Ých tÊt c¶ nhµ ch¬i c«ng bè tr­íc mÆt ®Ých chiÕn huèng . 
-- script viet hoa By http://tranhba.com 6# nÕu nh­ cã thÓ , cã thÓ tõ Npc ®èi tho¹i trung hiÓu râ tr­íc mÆt ®Ých tæng ®øng hµng thø 
-- script viet hoa By http://tranhba.com 7# tranh tµi cã thÓ dùa theo cÊp bËc chia lµm c¸c lo¹i cuéc so tµi trµng 
-- script viet hoa By http://tranhba.com  vµo chiÕn khu ®Ých Npc# lùa chän trËn doanh ®Ých Npc 
Include("\\script\\missions\\challenge\\challengehead.lua");

MapTab = {}; 

MapTab[1]= {209, 1568, 3278}; 
MapTab[2]= {210, 1568, 3278}; 
MapTab[3]= {211, 1568, 3278}; 

MapCount = getn(MapTab); 

function main() 
if (GetCamp() == 0) then 
Say("Ng­¬i kh«ng ph¶i lµ giang hå nh©n sÜ , kh«ng thÓ vµo chiÕn khu !",0); 
return 
end; 

-- script viet hoa By http://tranhba.com  thiÕt trÝ trë vÒ ®iÓm 
SetTask(300, 80); 
SetTask(301, 1908); 
SetTask(302, 2844); 
Say("Hoan nghªnh tham gia tranh tµi # chØ cã ®· gÇn ®Õn ghi danh ®Ých tuyÓn thñ míi cã thÓ tiÕn vµo vò trµng # ng­¬i muèn ®i vµo c¸i nµo chiÕn khu ?", 4 ,"TrËn chiÕn ®Çu tiªn khu /DoJoin","Thø hai chiÕn khu /DoJoin","Thø ba chiÕn khu /DoJoin","Ta kh«ng ph¶i lµ tham gia so tµi tuyÓn thñ , ta kh«ng ®i vµo . /OnCancel"); 
end; 

function DoJoin(nSel) 
	if (nSel + 1 > MapCount) then
return 
end; 
LeaveTeam(); 
	WantToJoin(MapTab[nSel + 1][1], MapTab[nSel + 1][2], MapTab[nSel + 1][3]);
end; 


function WantToJoin(nMapId, nX, nY) 
SetFightState(0); 
SetLogoutRV(1); 
SetTaskTemp(200,1);-- script viet hoa By http://tranhba.com  lóc nµy kh«ng c¸ch nµo söa ®æi bang héi trËn doanh 
w, x, y = GetLeavePos(); 
SetTempRevPos(w, x * 32 , y * 32); -- script viet hoa By http://tranhba.com  thiÕt trÝ t¹m thêi sèng l¹i ®iÓm v× ghi danh ®iÓm phô cËn 
NewWorld(nMapId, nX, nY); 
end; 

function OnCancel() 

end; 
