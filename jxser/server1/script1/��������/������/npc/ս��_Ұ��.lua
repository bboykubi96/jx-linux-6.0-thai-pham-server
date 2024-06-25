-- script viet hoa By http://tranhba.com  long m«n trÊn chiÕn ®Êu heo rõng tay míi nhiÖm vô # heo rõng thŞt 
-- script viet hoa By http://tranhba.com  By#Dan_Deng(2003-09-17) 

function OnDeath() 
UTask_world27 = GetTask(27) 
if (UTask_world27 == 5) and (random(0,99) < 80) then 
AddEventItem(228) 
if (GetItemCount(228) >= 3) then 
Msg2Player(" lóc nµo b¾t ®­îc 3 khèi heo rõng thŞt lóc nµo míi cã thÓ ®i ") 
AddNote(" lóc nµo b¾t ®­îc 3 khèi heo rõng thŞt lóc nµo míi cã thÓ ®i ") 
else 
Msg2Player("GiÕt mét con heo rõng b¾t ®­îc mét miÕng thŞt ") 
end 
end 
end; 
