-- script viet hoa By http://tranhba.com  dù thi l­u tr×nh 
-- script viet hoa By http://tranhba.com 1# cïng chñ nhËp khÈu ®İch Npc ®èi tho¹i , lùa chän tiÕn vµo thø mÊy c¸ chiÕn khu 
-- script viet hoa By http://tranhba.com 2# nÕu nh­ phï hîp ®iÒu kiÖn dù thi lµ tiÕn vµo chiÕn khu bªn trong # kh¸c mét tÊm b¶n ®å # , còng lÊy 0 trËn doanh m« thøc tiÕn vµo 
-- script viet hoa By http://tranhba.com 3# nhµ ch¬i cïng hai bªn Npc ®èi tho¹i , tù do lùa chän tham dù ®İch trËn doanh . 
-- script viet hoa By http://tranhba.com 4# nhµ ch¬i Pk tö vong sau ®em tù ®éng bŞ vÉn ra s©n bªn ngoµi , nh­ng ë bæn ®Şa ®å bªn trong 
-- script viet hoa By http://tranhba.com 5# khi nhµ ch¬i tö vong lóc , sÏ tù ®éng h­íng cïng b¶n ®å ®İch tÊt c¶ nhµ ch¬i c«ng bè tr­íc mÆt ®İch chiÕn huèng . 
-- script viet hoa By http://tranhba.com 6# nÕu nh­ cã thÓ , cã thÓ tõ Npc ®èi tho¹i trung hiÓu râ tr­íc mÆt ®İch tæng ®øng hµng thø 
-- script viet hoa By http://tranhba.com 7# tranh tµi cã thÓ dùa theo cÊp bËc chia lµm c¸c lo¹i cuéc so tµi trµng 
-- script viet hoa By http://tranhba.com  vµo chiÕn khu ®İch Npc# lùa chän trËn doanh ®İch Npc 
Include("\\script\\missions\\citywar_arena\\head.lua");
MapTab = {}; 
MapTab[1]= {213, 1633, 3292}; 
MapTab[2]= {214, 1633, 3292}; 
MapTab[3]= {215, 1633, 3292}; 
MapTab[4]= {216, 1633, 3292}; 
MapTab[5]= {217, 1633, 3292}; 
MapTab[6]= {218, 1633, 3292}; 
MapTab[7]= {219, 1633, 3292}; 
MapTab[8]= {220, 1633, 3292}; 
MapCount = getn(MapTab); 

function main() 
-- script viet hoa By http://tranhba.com  thiÕt trİ trë vÒ ®iÓm 
M,X,Y = GetWorldPos(); 
SetTask(300, M); 
SetTask(301, X); 
SetTask(302, Y); 
Say("Ng­¬i nghÜ tiÕn vµo cuéc so tµi trµng khiªu chiÕn sao ?", 9,"§Êu trµng 1/EnterBattle","§Êu trµng 2 /EnterBattle","§Êu trµng 3 /EnterBattle","§Êu trµng 4 /EnterBattle","§Êu trµng 5 /EnterBattle","§Êu trµng 6 /EnterBattle","§Êu trµng 7 /EnterBattle","§Êu trµng 8 /EnterBattle","Kh«ng ®i /OnCancel"); 
end; 

function EnterBattle(nBattleId) 
SetFightState(0) 
	NewWorld(MapTab[nBattleId + 1][1], MapTab[nBattleId + 1][2], MapTab[nBattleId + 1][3]);
end; 

function OnHelp() 
Talk(8, "","Bang héi l«i ®µi lµ trªn giang hå c¸ bang héi gi÷a so tµi vâ nghÖ ®İch ®Şa ph­¬ng # ®©y lµ mét c«ng b×nh c¹nh tranh ®İch vâ ®µi/sµn nh¶y ","Muèn tham gia bang héi l«i ®µi , tr­íc ph¶i tíi h­íng ta th©n thØnh # th©n thØnh ng­êi ph¶i lµ tranh tµi bang héi ®İch bang chñ #","Häp thµnh ®éi sau song ph­¬ng ®éi tr­ëng muèn tíi ghi danh . song ph­¬ng bang chñ mçi ng­êi muèn ®ãng I ngµn v¹n l­îng tiÒn ®Æt cäc . ","Nép tiÒn ®Æt cäc sau , tranh tµi th©n thØnh liÒn hoµn thµnh . ë 2 c¸ ban cã thÓ so víi cuéc so tµi trong lóc kh«ng thÓ ghi danh ","Th©n thØnh thµnh c«ng , song ph­¬ng ®éi viªn cã 10 phót gia nhËp tranh tµi . sau tranh tµi ®em chİnh thøc b¾t ®Çu !","Th¾ng b¹i ®em kÕ vµo song ph­¬ng tranh tµi tİch ph©n . mçi vŞ bang héi thµnh viªn ®em ®èi ph­¬ng ®¸nh träng th­¬ng ®İch ®em cã 3 c¸ tİch ph©n , ®èi ph­¬ng bŞ khÊu trõ 1 c¸ tİch ph©n ","Tranh tµi kÕt thóc , tİch ph©n cao bang héi ®em lÊy ®­îc th¾ng lîi #","Ngoµi ra , tranh tµi trung cã võa kh«ng cã thµnh viªn n÷a tranh tµi lµ th¾ng lîi thuéc vÒ mét mÆt kh¸c " ,"Th¾ng lîi bang héi ®em cã thÓ thu håi ®· nép ®İch 1 ngµn v¹n l­îng , ngoµi ra , cßn cã thÓ lÊy ®­îc 800 v¹n l­îng ®İch t­ëng th­ëng cïng 1 v¹n 2 ngµn ®iÓm bang héi kinh nghiÖm . thÊt b¹i bang héi kh«ng thÓ dÉn trë vÒ ®· nép ®İch phİ dông , cßn ph¶i khÊu trõ 1 v¹n 4 ngµn ®iÓm bang héi kinh nghiÖm "); 
end; 

function OnCancel() 

end; 
