-- script viet hoa By http://tranhba.com  sa m¹c mª cung truyÒn tèng ®iÓm # toµn ngÉu nhiªn truyÒn tèng # 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2004-04-01) 

function main(sel) 

local nSubWorldId = SubWorldIdx2ID(SubWorld); 
if nSubWorldId == 919 or nSubWorldId == 920 then 
return 
end 

i = random(0,120) 
-- script viet hoa By http://tranhba.com  Msg2Player("i = "..i) -- script viet hoa By http://tranhba.com  ®iÒu thÝ tin tøc 
if (i < 5) then -- script viet hoa By http://tranhba.com  ®Þa biÓu , céng 25% tû lÖ 
SetFightState(1); 
NewWorld(224,1591,3013) 
elseif (i < 10) then 
SetFightState(1); 
NewWorld(224,1781,2908) 
elseif (i < 15) then 
SetFightState(1); 
NewWorld(224,1711,2804) 
elseif (i < 20) then 
SetFightState(1); 
NewWorld(224,1640,2960) 
elseif (i < 25) then 
SetFightState(1); 
NewWorld(224,1530,2933) 
elseif (i < 30) then 
SetFightState(1); 
NewWorld(224,1870,2986) 
elseif (i < 50) then -- script viet hoa By http://tranhba.com  s¬n ®éng 1 , céng 33% tû lÖ 
SetFightState(1); 
NewWorld(225,1476,3274) 
elseif (i < 70) then 
SetFightState(1); 
NewWorld(225,1579,3186) 
elseif (i < 80) then -- script viet hoa By http://tranhba.com  s¬n ®éng 2 , céng 33% tû lÖ 
SetFightState(1); 
NewWorld(226,1553,3173) 
elseif (i < 90) then 
SetFightState(1); 
NewWorld(226,1813,3415) 
elseif (i < 100) then 
SetFightState(1); 
NewWorld(226,1763,3155) 
elseif (i < 110) then 
SetFightState(1); 
NewWorld(226,1690,3246) 
elseif (i < 115) then -- script viet hoa By http://tranhba.com  s¬n ®éng 3 , céng 8.33% tû lÖ 
SetFightState(1); 
NewWorld(227,1530,3270) 
else 
SetFightState(1); 
NewWorld(227,1583,3240) 
end 
end 
