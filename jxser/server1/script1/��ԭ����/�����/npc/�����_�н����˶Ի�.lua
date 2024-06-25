-- script viet hoa By http://tranhba.com description: tay míi th«n _ ®­îc ch©n th­¬ng nh©n 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 


function main() 
UTask_world38=GetTask(66) 
if (UTask_world38 == 2) then 
Say("Muèn mua x¹ th¬m kh«ng ? ta cã chÝnh t«ng tªn thuèc , chØ cÇn 200 hai ! ", 2 ,"Mua /yes","Kh«ng mua /no") 
else 
Talk(1,""," lµm ®­îc ch©n th­¬ng nh©n , vµo nam ra b¾c , thËt lµ kh«ng dÔ , nh×n ta trong tay hµng hãa , rÊt khã lÊy ®­îc h¶o hãa !") 
end 
end; 

function yes() 
if (GetCash()<200) then 
Talk(1,"","Chê ng­¬i cã tiÒn tíi t×m ta !") 
else 
Pay(200) 
AddEventItem(142) 
Msg2Player("Tõ ®­îc ch©n th­¬ng nh©n chç mua ®­îc x¹ h­¬ng . ") 
AddNote("Tõ ®­îc ch©n th­¬ng nh©n chç mua ®­îc x¹ h­¬ng . ") 
end 
end 

function no() 
end 
