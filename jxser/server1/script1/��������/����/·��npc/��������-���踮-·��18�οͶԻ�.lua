-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ ng­êi ®i ®­êng 18 phiªu kh¸ch ®èi tho¹i 
-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ Hoa S¬n tuyÖt ®Ønh truyÒn tèng NPC 199,201 
function main(sel) 
if(GetLevel() >= 60)then 
Say("Võa nh×n ng­¬i chÝnh lµ tuyÖt thÕ ®¹i hiÖp . ng­¬i lµ tõ Hoa S¬n ®Ýnh xuèng ®i ? chØ cÇn 500 hai , ta liÒn ®em ng­êi mang tíi c¸i nµy !",2,"Cã thËt kh«ng , ®i thö mét chót nh×n ! /yes","Kh«ng quan t©m , kh«ng muèn ®i . /no") 
else 
Say("Phiªu kh¸ch # c¸i nµy v¹n tö v­ên ®Ých muéi tö thËt lµ kh«ng tÖ a , ®Ó cho ng­êi ta trë vÒ chç v« cïng , nh­ng lµ nÕu nh­ ta sÏ kh«ng trë vÒ , tèi nay liÒn l¹i muèn quú tha y b¶n liÔu #",0) 
end 
end; 

function yes() 
if(GetCash() >= 500)then 
Pay(500); 
NewWorld(2, 2600, 3600); 
else 
Say("500 hai cã thÓ lµm c¸i g× a ?",0) 
end 
end; 

function no() 
Say("Xuèng nói muèn tíi t×m ta a !",0) 
end; 
