-- script viet hoa By http://tranhba.com description: t©y nam b¾c khu thµnh ®« phñ ph¸i Nga Mi 10 cÊp nhiÖm vô l­îng má b¹c 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/24 

function main() 
SetPropState() 
AddEventItem(118) 
Msg2Player("NhÆt ®­îc mét khèi l­îng má b¹c . ") 
if (GetTask(1) > 10*256) and (GetTask(1) < 20*256) then 
AddNote(" ë thµnh ®« phİa t©y ®İch trong rõng c©y t×m ®­îc mét khèi l­îng má b¹c . ") 
end 
end; 
