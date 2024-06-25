-- script viet hoa By http://tranhba.com  Ngò ®éc gi¸o n¨m ®éc ®éng chiÕn ®Êu NPC con bß c¹p 01# n¨m ®éc nhËp m«n nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),2) 
if (Uworld37 == 10) and (HaveItem(223) == 0) and (random(0,99) < 80) then -- script viet hoa By http://tranhba.com  ë nhiÖm vô trung h¬n n÷a v« nhiÖm vô vËt phÈm 
AddEventItem(223) 
Msg2Player("Ng­¬i lÊy ®­îc thø hai c©y khæng t­íc vò mao . ") 
AddNote("Ng­¬i lÊy ®­îc thø hai c©y khæng t­íc vò mao . ") 
end 
end; 
