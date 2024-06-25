-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn trung chuyÓn b¶n ®å to thµnh chiÕn ®Þa ®å # thñ thµnh ph­¬ng # 
-- script viet hoa By http://tranhba.com Trap ID# c«ng thµnh chiÕn 

function main() 
if (GetCurCamp() ~= 1) then 
Msg2Player("Kh«ng ®i ®­îc , muèn ®i lêi cña ®Ých ph¶i ®Þch qu©n ®Ých phôc kÝch chç . "); 
else 
SetCurCamp(GetCamp()) 
SetFightState(0) 
SetLogoutRV(0) 
NewWorld(222, 1613, 3185) 
end; 
end; 
