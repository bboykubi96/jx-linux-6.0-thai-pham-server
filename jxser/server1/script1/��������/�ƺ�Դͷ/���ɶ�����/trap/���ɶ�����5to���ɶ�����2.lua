-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu l­u tiªn ®éng tÇng hai 5to l­u tiªn ®éng tÇng ba 2 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c b¾c khu 29 
-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån mª cung F2-F3 trap 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q2","Ng­¬i lµ tíi lµm nhiÖm vô sao ? ") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L60_q2() 
Say("Viªm ®Õ nguyªn lµ mÆt trêi thÇn , còng lµ mét vÞ n«ng nghiÖp thÇn , h¾n b¶o ®¶m bÇu trêi mÆt trêi ph¸t ra quang , trî gióp ngò cèc sinh tr­ëng . khi ®ã trªn ®Þa cÇu ng­êi cña kh«ng buån ¨n mÆc , v× vËy mäi ng­êi t«n x­ng h¾n lµ thÇn N«ng thÞ . thÇn N«ng thÞ còng lµ mét vÞ y d­îc thÇn , h¾n lµm ng­êi cöa nÕm trªn tr¨m lo¹i cá , cuèi cïng tróng ®éc mµ chÕt . löa thÇn cã mét c« g¸i , ®Õn §«ng h¶i ch¬i thêi ®iÓm bÊt h¹nh chÕt ch×m bá m×nh , tõ nay biÕn thµnh mét c¸i nhá ®iÓu , miÖng ngËm ®¸ bá vµo §«ng h¶i , muèn lÊp ®Çy biÓn réng . ng­¬i biÕt c¸i nµy tiÓu ®iÓu ®Ých tªn sao ? ",4,"Khen phô /L60_S2_wrong","Ngu c«ng /L60_S2_wrong","HËu NghÖ /L60_S2_wrong","Tinh vÖ /L60_S2_correct") 
end 

function L60_S2_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(12) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(12) == 1)) then
Msg2Player("Ng­¬i theo nh­ thø 4 c¸ c©u tr¶ lêi , c¬ quan sÏ dÉn ng­¬i ®Õn thø 3 tÇng . ") 
SetFightState(1); 
NewWorld(127, 1614, 3083); 
else 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt , nh­ng lµ kh«ng cã g× ph¶n øng ") 
end 
end; 

function L60_S2_wrong() 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt , nh­ng lµ kh«ng cã g× ph¶n øng ") 
end; 
