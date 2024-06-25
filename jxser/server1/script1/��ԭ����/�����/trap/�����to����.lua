-- script viet hoa By http://tranhba.com  Trung Nguyªn nam khu ®¹o h­¬ng th«n to D­¬ng Ch©u 
-- script viet hoa By http://tranhba.com TrapID# Trung Nguyªn nam khu 75 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) rít xuèng ra th«n cÊp bËc yªu cÇu v× 5 cÊp 

function main(sel) 

if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFightState(1); 
NewWorld(80, 1446, 3077) 
else 
Talk(1,"","Phİa tr­íc nguy hiÓm , xin/mêi trë vÒ luyÖn n÷a tËp !") 
SetPos(1911, 3211) -- script viet hoa By http://tranhba.com  ®i ra Trap ®iÓm 
end 

end; 
