function OnDeath() 
if (GetTask(126) == 45) then 
SetTask(126,50) 
Msg2Player("GiÕt chÕt thÇn bİ nh©n , gi¶i cøu ®o¹n t­ thµnh ") 
AddNote("GiÕt chÕt thÇn bİ nh©n , gi¶i cøu ®o¹n t­ thµnh ") 
Talk(1,"Uworld126_kill","SÏ cã ng­êi ®i t×m ng­¬i b¸o thï cho ta . ") 
end 
end 

function Uworld126_kill() 
SetFightState(0) 
NewWorld(162,1531,3157) 
end 