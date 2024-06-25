-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu l­u tiªn ®éng bèn tÇng 5to l­u tiªn ®éng tÇng n¨m 2 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c b¾c khu 39 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q4","Ng­¬i thÊy mét c¬ quan , phÝa trªn cã kh¾c mÊy hµng ch÷ ") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L60_q4() 
Say("Vò trô s¬ khai , thiªn ®Þa c¸ch xa nhau kh«ng xa , loµi ng­êi cã thÓ ®i trªn thang lÇu thiªn ®×nh , ngäc hoµng nãi # ng­êi phµm cïng thiªn thÇn bé d¸ng nh­ vËy thËt sù lµ hçn ®én , v× vËy ra lÖnh thiªn thÇn cöa ®em thiªn ®Þa c¸ch xa , ng­¬i biÕt phÝa d­íi nh÷ng thø nµy thµnh ng÷ ®Ých huyÒn c¬ sao ?",4,"Thiªn hoang ®Þa l·o /L60_S4_wrong","Thiªn ®Þa chia ®Òu /L60_S4_correct","Thiªn nam ®Þa b¾c /L60_S4_wrong","Trêi cao ®Êt réng /L60_S4_wrong") 
end 

function L60_S4_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(14) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(14) == 1)) then
Msg2Player("Ng­¬i theo nh­ tr­íc mÆt thø hai , c¬ quan sÏ dÉn ng­¬i ®Õn tÇng thø n¨m ") 
SetFightState(1); 
NewWorld(129, 1597, 3212); 
else 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt , nh­ng lµ kh«ng cã ph¶n øng ") 
end 
end; 

function L60_S4_wrong() 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt , nh­ng lµ kh«ng cã ph¶n øng ") 
end; 
