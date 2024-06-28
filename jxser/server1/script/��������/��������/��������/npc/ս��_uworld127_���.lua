-- script viet hoa By http://tranhba.com  t©y b¾c nam khu \ kiÕm c¸c t©y b¾c \npc\ chiÕn ®Êu _uworld127_ ®¹i ®iªu 
-- script viet hoa By http://tranhba.com  ngµy nhÉn 90 cÊp nhiÖm vô ®¹i ®iªu 
-- script viet hoa By http://tranhba.com  by xiaoyang(2004\4\12) 


function OnDeath() 
Uworld127 = GetTask(127) 
if ((Uworld127 == 20) or (Uworld127 ==30)) and (HaveItem(369) == 0) and (random(0,99) < 66) then 
AddEventItem(369) 
Msg2Player("Ng­¬i b¾t ®­îc liÔu ngµn n¨m thÇn ®iªu ") 
AddNote("Ng­¬i b¾t ®­îc liÔu linh ®iªu trë vÒ c«ng chóa phñ phôc mÖnh . ") 
SetTask(127,30) 
end 
end 
