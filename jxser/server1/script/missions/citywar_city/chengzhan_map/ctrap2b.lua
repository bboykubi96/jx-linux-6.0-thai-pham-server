
-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn trung chuyÓn b¶n ®å to thµnh chiÕn ®Þa ®å # thñ thµnh ph­¬ng # 
-- script viet hoa By http://tranhba.com Trap ID# c«ng thµnh chiÕn 
-- script viet hoa By http://tranhba.com 211 , 1622 , 3249 211 , 1608 , 3235 
Include("\\script\\missions\\citywar_city\\head.lua")

function main() 
ft = GetFightState(); 
if (ft == 0) then 
SetPos(1858,3590) 
SetFightState(1) 
bt_RankEffect(BT_GetData(PL_CURRANK)) 
else 
if (GetCurCamp() ~= 2) then 
Msg2Player("Kh«ng ®i ®­îc , muèn ®i lêi cña ®Ých ph¶i ®Þch qu©n ®Ých phôc kÝch chç . "); 
SetPos(1858,3590) 
else 
SetPos(1862,3597) 
SetFightState(0) 
end; 
end; 
end; 
