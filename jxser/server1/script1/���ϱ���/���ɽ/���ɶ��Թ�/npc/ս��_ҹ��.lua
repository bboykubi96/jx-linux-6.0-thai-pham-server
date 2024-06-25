function OnDeath() 
Uworld125 = GetTask(125) 
if (Uworld125 == 10) or (Uworld125 == 15) then 
SetTask(125,15) 
AddEventItem(388) 
Msg2Player(" lÊy ®­îc Nga Mi kh«ng cã ch÷ thiªn th­ ") 
AddNote(" lÊy ®­îc Nga Mi kh«ng cã ch÷ thiªn th­ ") 
-- script viet hoa By http://tranhba.com  elseif (Uworld125 == 20) and (HaveItem(387) == 0) then 
-- script viet hoa By http://tranhba.com  AddEventItem(387) 
-- script viet hoa By http://tranhba.com  Msg2Player("NÆng lÊy ®­îc Nga Mi kh«ng cã ch÷ thiªn th­ . ") 
-- script viet hoa By http://tranhba.com  AddNote("NÆng lÊy ®­îc Nga Mi kh«ng cã ch÷ thiªn th­ . ") 
end 
end 
