
-- script viet hoa By http://tranhba.com  dù thi l­u tr×nh 
-- script viet hoa By http://tranhba.com 1# cïng chñ nhËp khÈu ®Ých Npc ®èi tho¹i , lùa chän tiÕn vµo thø mÊy c¸ chiÕn khu 
-- script viet hoa By http://tranhba.com 2# nÕu nh­ phï hîp ®iÒu kiÖn dù thi lµ tiÕn vµo chiÕn khu bªn trong # kh¸c mét tÊm b¶n ®å # , còng lÊy 0( tay míi ) trËn doanh m« thøc tiÕn vµo 
-- script viet hoa By http://tranhba.com 3# nhµ ch¬i cïng hai bªn Npc ®èi tho¹i , tù do lùa chän tham dù ®Ých trËn doanh tiÕn vµo chiÕn ®Êu khu vùc . hoÆc lµ lùa chän xem cuéc chiÕn m« thøc . sau khi tiÕn vµo sÏ thu lÊy 5000 nguyªn . 
-- script viet hoa By http://tranhba.com 4# nhµ ch¬i Pk tö vong sau ®em tù ®éng bÞ vÉn ra s©n bªn ngoµi , nh­ng ë bæn ®Þa ®å bªn trong . 
-- script viet hoa By http://tranhba.com 5# khi nhµ ch¬i tö vong lóc , sÏ tù ®éng h­íng cïng b¶n ®å ®Ých tÊt c¶ nhµ ch¬i c«ng bè tr­íc mÆt ®Ých chiÕn huèng . 
-- script viet hoa By http://tranhba.com 6# tranh tµi cã thÓ dùa theo cÊp bËc chia lµm c¸c lo¹i cuéc so tµi trµng 
-- script viet hoa By http://tranhba.com 7. vßng chiÕn PK ®¾c thñ ng­êi cña , sÏ ®¹t ®­îc 3000 nguyªn ®Ých t­ëng th­ëng . 
-- script viet hoa By http://tranhba.com 8# nÕu nh­ muèn rêi ®i chiÕn ®Êu , ®ang chiÕn ®Êu khu vùc ®Ých nhµ ch¬i cã thÓ cïng Npc ®èi tho¹i , nãi muèn thèi lui ra , bÞ nÐm tíi bªn ngoµi s©n . 
-- script viet hoa By http://tranhba.com 9# t¹i chç bªn ngoµi ng­êi cña , cã thÓ ®i xuèng mÆt ®i , ®¹p ®Õn trap ®iÓm , rêi ®i chiÕn khu , nh¶y ®Õn D­¬ng Ch©u . 
-- script viet hoa By http://tranhba.com 10. tiÕn vµo chiÕn khu lóc , kh«ng c¸ch nµo häp thµnh ®éi # v« tö vong trõng ph¹t chê 


-- script viet hoa By http://tranhba.com  Hoa S¬n cïng lo¹i nµy thøc , bÊt ®ång lóc 
-- script viet hoa By http://tranhba.com 1# cïng Hoa S¬n ng­êi cña ®èi tho¹i sau , tù ®éng tiÕn vµo chiÕn ®Êu khu vùc chiÕn ®Êu . 
-- script viet hoa By http://tranhba.com 2# cÊp bËc h¹n chÕ ë 60 cÊp trë lªn , 10000 hai tiÒn ghi danh dïng . 
-- script viet hoa By http://tranhba.com 3# rêi ®i chiÕn khu lóc , tù ®éng nh¶y ®Õn Hoa S¬n . 
-- script viet hoa By http://tranhba.com 4#PK ®¾c thñ lóc , ®¹t ®­îc 6000 nguyªn t­ëng th­ëng . 


-- script viet hoa By http://tranhba.com  b©y giê cã mét c¸i yªu cÇu , chÝnh lµ 3 c¸ diÔn vâ tr­êng ®Ých b¶n ®å cïng D­¬ng Ch©u ®Æt ë mét m¸y phôc vô khÝ th­îng , Hoa S¬n cïng Hoa S¬n tuyÖt ®Ønh còng ®Æt ë mét m¸y phôc vô khÝ th­îng 
function DoJoin(nSel) 
	if (nSel + 1 > MapCount) then
return 
end; 
LeaveTeam(); 
	WantToJoin(MapTab[nSel + 1][1], MapTab[nSel + 1][2], MapTab[nSel + 1][3]);
end; 


function WantToJoin(nMapId, nX, nY) 
SetCurCamp(0); 
SetFightState(0); 
SetLogoutRV(1); 
SetTaskTemp(200,1);-- script viet hoa By http://tranhba.com  lóc nµy kh«ng c¸ch nµo söa ®æi bang héi trËn doanh 
w, x, y = GetLeavePos(); 
SetTempRevPos(w, x * 32 , y * 32); -- script viet hoa By http://tranhba.com  thiÕt trÝ t¹m thêi sèng l¹i ®iÓm v× ghi danh ®iÓm phô cËn 
NewWorld(nMapId, nX, nY); 
end; 

function OnCancel() 

end; 
