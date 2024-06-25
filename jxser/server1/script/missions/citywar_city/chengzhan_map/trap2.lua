-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn trung chuyÓn b¶n ®å to thµnh chiÕn ®Þa ®å # thñ thµnh ph­¬ng # 
-- script viet hoa By http://tranhba.com Trap ID# c«ng thµnh chiÕn 

function main() 
if (GetCurCamp() ~= 2) then 
Msg2Player("Kh«ng ®i ®­îc , muèn ®i lêi cña ®Ých ph¶i ®Þch qu©n ®Ých phôc kÝch chç . "); 
else 
local _,nX,nY = GetWorldPos()
local nDX= abs(nX-1909)
local nDY= abs(nY-3616)
if sqrt(nDX*nDX + nDY*nDY) > 20 then
return
end
SetCurCamp(GetCamp()) 
SetFightState(0) 
SetLogoutRV(0) 
NewWorld(223, 1613, 3185) 
-- Msg2Player("Bi loi me roi")
end; 
end; 
