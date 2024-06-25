-- script viet hoa By http://tranhba.com  chiÕn ®Êu _ v©n kh«ng tµ .lua chiÕn ®Êu v©n kh«ng tµ tö vong ch©n vèn 
-- script viet hoa By http://tranhba.com  By: Xiao_Yang(2004-04-29) 

function OnDeath() 
if (GetTask(124) == 35) then 
AddEventItem(387) 
SetTask(124,40) 
Talk(1,"","Ng­¬i thËt ¸c ®éc ! ") 
Msg2Player("Ng­¬i ®¸nh b¹i v©n kh«ng tµ , lôc so¸t ng­êi t×m ®­îc ©m d­¬ng c­êi kú ®éc ®Ých gi¶i d­îc ") 
SetFightState(0) 
NewWorld(185,1612,3204) 
end 
end 
