-- script viet hoa By http://tranhba.com  chi’n Æ u _ Æ≠Íng b t nhi‘m .lua 
-- script viet hoa By http://tranhba.com  by: Dan_Deng(2004-04-12) 

function OnDeath() 
Uworld123 = GetTask(123) 
if (Uworld123 == 40) then 
SetTask(123,50) 
SetFightState(0) 
Talk(1,"","Th’ nµo ta sœ thua Æ©y ?!") 
Msg2Player("Ng≠¨i Æ∑ Æ∏nh bπi Æ≠Íng b t nhi‘m , cﬂn kh´ng Æi an Òi hæn mÈt c∏i ") 
NewWorld(36, 1592, 3193) -- script viet hoa By http://tranhba.com  Æ≠a v“ giÊ tÊ th›nh 
end 
end 
