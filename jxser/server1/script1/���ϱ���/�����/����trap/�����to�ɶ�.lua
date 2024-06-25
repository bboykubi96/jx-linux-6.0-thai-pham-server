-- script viet hoa By http://tranhba.com  t©y nam b¾c khu giang t©n th«n to thµnh ®« 
-- script viet hoa By http://tranhba.com Trap ID# t©y nam b¾c khu 55 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFightState(1); 
NewWorld(11, 3407, 5295) 
else 
Talk(1,"","Phİa tr­íc nguy hiÓm , xin/mêi trë vÒ luyÖn n÷a tËp !") 
SetPos(3402, 6019) -- script viet hoa By http://tranhba.com  ®i ra Trap ®iÓm 
end 

end; 
