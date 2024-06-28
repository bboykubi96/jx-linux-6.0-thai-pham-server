-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu l­u tiªn ®éng mét tÇng 6to l­u tiªn ®éng tÇng hai 3 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c b¾c khu 25 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q1","Ng­¬i thÊy mét c¬ quan , phÝa trªn cã kh¾c ch÷ #") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L60_q1() 
Say("TruyÒn thuyÕt phôc hi lµ l«i thÇn ®Ých con trai , h¾n tõ tù nhiªn löa l«i trung lÊy ®­îc lo¹i löa mang tíi nh©n gian , phôc hi sau , míi cã chui , dïng chui lÊy löa lµ ai ph¸t minh ®Ých ? ",4,"M¹nh mÉu /L60_S1_wrong","Suy ng­êi /L60_S1_correct","N÷ Oa /L60_S1_wrong","V­¬ng mÉu /L60_S1_wrong") 
end 

function L60_S1_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(11) == 1))) then
Msg2Player("Ng­¬i xem thÊy mét c¬ quan , phÝa trªn cã kh¾c #") 
SetFightState(1); 
NewWorld(126,1483,3039) 
else 
Msg2Player("Ng­¬i lung tung nhÊn võa th«ng suèt nh­ng lµ kh«ng cã ph¶n øng ") 
end 
end; 

function L60_S1_wrong() 
Msg2Player("Ng­¬i lung tung nhÊn võa th«ng suèt nh­ng lµ kh«ng cã ph¶n øng ") 
end; 
