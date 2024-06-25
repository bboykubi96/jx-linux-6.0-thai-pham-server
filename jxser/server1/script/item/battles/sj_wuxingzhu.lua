-- script viet hoa By http://tranhba.com  tèng kim ®¹o cô ngò hµnh trô 
-- script viet hoa By http://tranhba.com  ph©n cét löa # b¨ng trô # ®éc trô # l«i trô 

Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine(nItemIdx) -- script viet hoa By http://tranhba.com  th«ng qua ph¸n ®o¸n chiÕn tr­êng ®Ých cÊp bËc cïng nhµ ch¬i ®Ých trËn doanh tíi thªm NPC 
if (GetFightState() == 0) then 
Say(" ë kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu h¹ kh«ng thÓ sö dông !", 0) 
return -1 
end; 
tbPK_MAP = {357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} -- script viet hoa By http://tranhba.com  mét m×nh ®Êu b¶n ®å cÊm chØ sö dông kÌn hiÖu 
for j = 1, getn(tbPK_MAP) do 
if ( nMapId == tbPK_MAP[j] ) then 
Msg2Player(" ë ®an ®Êu khu vùc kh«ng thÓ sö dông nªn vËt phÈm !"); 
return -1 
end 
end 

for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player("Nªn vËt phÈm chØ cã thÓ ë tèng kim chiÕn tr­êng sö dông "); 
return -1 
end 
end 

local szNpcName = ""; 
local n_player_camp = GetCurCamp(); 

if (n_player_camp == 1) then 
if (GetMissionV(MS_WUXINGZHUCNT_S) >= MAX_CALLWUXINGZHU) then 
Msg2Player("Tr­íc m¾t ë chiÕn tr­êng ®Ých trô ®Õm ®· ®¹t th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu .") 
return -1 
else 
			SetMissionV(MS_WUXINGZHUCNT_S, GetMissionV(MS_WUXINGZHUCNT_S) + 1)
szNpcName = " tèng ph­¬ng - "; 
end 
elseif (n_player_camp == 2) then 
if (GetMissionV(MS_WUXINGZHUCNT_J) >= MAX_CALLWUXINGZHU) then 
Msg2Player("Tr­íc m¾t ë chiÕn tr­êng ®Ých trô ®Õm ®· ®¹t th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu .") 
return -1 
else 
			SetMissionV(MS_WUXINGZHUCNT_J, GetMissionV(MS_WUXINGZHUCNT_J) + 1)
szNpcName = " kim ph­¬ng - "; 
end 
end 

local n_level = check_pl_level(GetLevel); 
local _, _, n_part = GetItemProp(nItemIdx); 
local tb_npc_level = {50, 70, 90}; 
local tb_npc_id = { [1768] = {id = 1343, szname=" cét löa "}, 
[1769] = {id = 1344, szname=" b¨ng trô "}, 
[1770] = {id = 1345, szname=" ®éc trô "}, 
[1771] = {id = 1346, szname=" l«i trô "}, 
[1772] = {id = 1347, szname=" kim trô "}, 
}; 

if (not n_level or not tb_npc_id[n_part]) then -- script viet hoa By http://tranhba.com  kh«ng tån t¹i ®Ých tèng kim cÊp bËc hoÆc lµ ®¹o cô kh«ng c¸ch nµo cïng cho gäi NPC ®èi øng 
return -1; 
end 

local n_npcidex = AddNpc( tb_npc_id[n_part].id, tb_npc_level[n_level], SubWorldID2Idx(W), (X - 3) * 32, Y * 32, 1, szNpcName..tb_npc_id[n_part].szname, 0); 
SetNpcCurCamp(n_npcidex, n_player_camp); 

end 
