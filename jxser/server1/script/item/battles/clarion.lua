-- script viet hoa By http://tranhba.com  tèng kim ®¹o cô binh lÝnh chi kÌn hiÖu , cho gäi ra mÊy phe NPC binh lÝnh 2 c¸ 
-- script viet hoa By http://tranhba.com  Liu Kuo 
-- script viet hoa By http://tranhba.com  2004.12.18 
Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine() -- script viet hoa By http://tranhba.com  th«ng qua ph¸n ®o¸n chiÕn tr­êng ®Ých cÊp bËc cïng nhµ ch¬i ®Ých trËn doanh tíi thªm NPC 
if (GetFightState() == 0) then 
Say("KÌn hiÖu kh«ng thÓ ë kh«ng ph¶i lµ chiÕn ®Êu d­íi t×nh huèng sö dông #", 0) 
return -1 
end; 
tbPK_MAP = {357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} -- script viet hoa By http://tranhba.com  mét m×nh ®Êu b¶n ®å cÊm chØ sö dông kÌn hiÖu 
for j = 1, getn(tbPK_MAP) do 
if ( nMapId == tbPK_MAP[j] ) then 
Msg2Player(" ë mét m×nh ®Êu b¶n ®å kh«ng thÓ sö dông ®¹o nµy cô "); 
return -1 
end 
end 

for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player("§¹o nµy cô chØ cã thÓ ë tèng kim chiÕn tr­êng bªn trong sö dông "); 
return -1 
end 
end 
if (GetCurCamp() == 1) then 
if (GetMissionV(MS_CALLNPCCOUNT_S) >= MAX_CALLNPCCOUNT) then 
Msg2Player("Tr­íc m¾t chiÕn tr­êng sö dông kÌn hiÖu sè l­îng ®· ®¹t tíi th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu . ") 
return -1 
else 
			SetMissionV(MS_CALLNPCCOUNT_S, GetMissionV(MS_CALLNPCCOUNT_S) + 1)
end 
elseif (GetCurCamp() == 2) then 
if (GetMissionV(MS_CALLNPCCOUNT_J) >= MAX_CALLNPCCOUNT) then 
Msg2Player("Tr­íc m¾t chiÕn tr­êng sö dông kÌn hiÖu sè l­îng ®· ®¹t tíi th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu . ") 
return -1 
else 
			SetMissionV(MS_CALLNPCCOUNT_J, GetMissionV(MS_CALLNPCCOUNT_J) + 1)		
end 
end 

if ( GetLevel() >= 40 and GetLevel() <= 79) then -- script viet hoa By http://tranhba.com  s¬ cÊp chiÕn tr­êng 
if( GetCurCamp() == 1) then -- script viet hoa By http://tranhba.com  cho gäi cïng nhµ ch¬i cïng trËn doanh ®Ých NPC 
CallSjNpc( 682, 50, W, X, Y,"§Ých tèng qu©n sÜ binh "); 
elseif( GetCurCamp() == 2) then 
CallSjNpc( 688, 50, W, X, Y,"§Ých kim qu©n sÜ binh "); 
end 
elseif ( GetLevel() >= 80 and GetLevel() <= 119) then -- script viet hoa By http://tranhba.com  trung cÊp chiÕn tr­êng 
if( GetCurCamp() == 1) then 
CallSjNpc( 682, 70, W, X, Y,"§Ých tèng qu©n sÜ binh "); 
elseif( GetCurCamp() == 2) then 
CallSjNpc( 688, 70, W, X, Y,"§Ých kim qu©n sÜ binh "); 
end 
else -- script viet hoa By http://tranhba.com  cao cÊp chiÕn tr­êng 
if( GetCurCamp() == 1) then 
CallSjNpc( 682, 90, W, X, Y,"§Ých tèng qu©n sÜ binh "); 
elseif( GetCurCamp() == 2) then 
CallSjNpc( 688, 90, W, X, Y,"§Ých kim qu©n sÜ binh "); 
end 
end 
end 

function CallSjNpc(NpcId, NpcLevel, W, X, Y, Name) 
local playername = GetName(); 
-- script viet hoa By http://tranhba.com for i = 1, 2 do 
AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X - 3 ) * 32, Y * 32, 1, playername..Name, 0); 
		AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X +  3 ) * 32, Y * 32, 1, playername..Name, 0);
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com for j = 1, 2 do 
-- script viet hoa By http://tranhba.com AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X - j * 3 ) * 32, Y * 32, 1, playername.." ®Ých tèng qu©n sÜ binh ", 0); 
-- script viet hoa By http://tranhba.com end 
	-- script viet hoa By http://tranhba.com AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), X * 32, ( Y + 3 ) * 32, 1, playername.."µÄËÎ¾üÊ¿±ø", 0);
end
