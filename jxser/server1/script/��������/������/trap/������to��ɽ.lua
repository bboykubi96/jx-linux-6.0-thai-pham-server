-- script viet hoa By http://tranhba.com  t©y b¾c nam khu vÜnh nh¹c trÊn to Hoa S¬n 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c nam khu 30 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 
Include("\\script\\global\\g7vn\\g7configall.lua")
function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFightState(1); 
NewWorld(2, 2287 ,4092) 
else 
Talk(1,"","Tr­íc mÆt nguy hiÓm , cßn lµ trë vÒ tu luyÖn mét c¸i !") 
SetPos(1851, 2831) -- script viet hoa By http://tranhba.com  ®i ra Trap ®iÓm 
end 

end; 
