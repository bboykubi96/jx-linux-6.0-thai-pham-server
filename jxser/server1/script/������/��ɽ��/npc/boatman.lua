-- script viet hoa By http://tranhba.com  t©y s¬n tù thuyÒn phu 

function main() 
Say("Ng­¬i nghÜ ngåi thuyÒn ®i D­¬ng Ch©u ? 500 hai !", 2,"H¶o ! ®i !/toyangzhou","Kh«ng ngåi thuyÒn /no"); 
end 

function toyangzhou() 
if( GetCash() >= 500 ) then 
NewWorld( 80,1369,3369 ); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú rêi ®i t©y s¬n tù trë vÒ D­¬ng Ch©u sau sö dông trë vÒ thµnh phï 
SetFightState(1); 
Pay( 500 ); 
else 
Talk( 1,"","Kh«ng giao tiÒn kh«ng thÓ lªn thuyÒn !"); 
end 
end 

function no() 
end
