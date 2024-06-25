-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu l­u tiªn ®éng tÇng n¨m 3to l­u tiªn ®éng s¸u tÇng 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c b¾c khu 41 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q5","Ng­¬i thÊy mét c¬ quan , phÝa trªn cã kh¾c #") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ®©y lµ vËt g× ? 
end; 

function L60_q5() 
Say("Hoµng ®Õ ë trªn trêi ®×nh ®Ých trung t©m , phã t­íng cã ®Êt thÇn hËu thæ . hoµng ®Õ t¹o xe , v× vËy x­ng lµ hiªn viªn thÞ , ng­¬i biÕt hiªn lµ chØ xe ®Ých kia bé phËn sao ? ",4,"B¸nh xe /L60_S5_wrong","Trôc xe /L60_S5_wrong","Hai dïng ®Çu gç lµm sóc vËt gièng nh­ /L60_S5_correct","Sau xe ®Ých ®Çu gç kho /L60_S5_wrong") 
end 

function L60_S5_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(15) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(15) == 1)) then
Msg2Player("Ng­¬i theo nh­ thø 3 c¸ c©u tr¶ lêi , c¬ quan khëi ®éng dÉn ng­¬i ®Õn mét c¸i mËt thÊt ") 
SetFightState(1); 
NewWorld(130, 1547, 3143); 
else 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt nh­ng lµ kh«ng cã ph¶n øng ") 
end 
end; 

function L60_S5_wrong() 
Msg2Player("Ng­¬i nhÊn lo¹n võa th«ng suèt nh­ng lµ kh«ng cã ph¶n øng ") 
end; 
