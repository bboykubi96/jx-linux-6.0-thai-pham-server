-- script viet hoa By http://tranhba.com  kiÓm tra cã hay kh«ng ë tèng kim b¶n ®å 
-- script viet hoa By http://tranhba.com  LiuKuo 
-- script viet hoa By http://tranhba.com  2004.12.22 
IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
tbCD_MAP = {516, 517, 580, 581} -- script viet hoa By http://tranhba.com  giã löa liªn thµnh thñ thµnh b¶n ®å 

function main(nItemIdx) 

-- script viet hoa By http://tranhba.com  
W,X,Y = GetWorldPos(); 
nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 

if BT_GetGameData(GAME_BATTLEID) == 2 then 
Msg2Player("§¹o nµy cô kh«ng thÓ ë n­íc chiÕn tèng kim chiÕn tr­êng bªn trong sö dông "); 
return 1; 
end 
-- Msg2Player("Tèng Kim liªn server kh«ng ®­îc sö dông c¸c lo¹i ®¹o cô nµy"); 
-- do return 1 end
-- local nWeekDay = tonumber(GetLocalDate("%w"))
-- local nHour = tonumber(GetLocalDate("%H%M"))
-- if (nWeekDay == 1 or nWeekDay == 3 or nWeekDay == 5 or nWeekDay == 0  ) and (nHour > 2045 and nHour < 2300) then
-- Msg2Player("War bang kh«ng ®­îc sö dông c¸c lo¹i ®¹o cô nµy"); 
-- return 1; 
-- end
if (EatMedicine(nItemIdx) == -1) then 
return 1 
else 
return 0 
end 
end 
end 

for i = 1, getn(tbCD_MAP) do 
if (nMapId == tbCD_MAP[i]) then 
if (EatMedicine(nItemIdx) == -1) then 
return 1 
else 
return 0 
end 
end 
end 
Msg2Player("§¹o nµy cô chØ cã thÓ ë tèng kim chiÕn tr­êng bªn trong sö dông "); 
return 1; 
end
