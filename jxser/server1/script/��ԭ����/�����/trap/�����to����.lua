-- script viet hoa By http://tranhba.com  Trung Nguyªn nam khu ®¹o h­¬ng th«n to t­¬ng d­¬ng 
-- script viet hoa By http://tranhba.com TrapID# Trung Nguyªn nam khu 73 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFightState(1); 
NewWorld(78, 1799, 3425) 
else 
Talk(1,"","Phİa tr­íc nguy hiÓm , xin/mêi trë vÒ luyÖn n÷a tËp !") 
SetPos(1335, 3397) -- script viet hoa By http://tranhba.com  ®i ra Trap ®iÓm 
end 

end; 
