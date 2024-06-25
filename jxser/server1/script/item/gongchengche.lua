Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn ®Ých b¶n ®å ID 
MSBegin = MS_GCCBEGIN; 
Count = g_nMaxGccPerDoor * g_nDoorCount; 
NpcTempl = 524; 
NpcLevel = 60; 

function main() 
-- script viet hoa By http://tranhba.com  nh×n tr­íc mÆt vÞ trÝ cã chång hay ch­a ë c«ng thµnh chiÕn ®Þa ®å th­îng 
W,X,Y = GetWorldPos(); 
nSubWorldID = SubWorldIdx2ID(); 

if (nSubWorldID ~= CityWarID) then 
Msg2Player("Ng­¬i kh«ng thÓ ë n¬i nµy ®Þa ph­¬ng sö dông nghiÖt long h­íng xe #") 
return 1; 
end 

if (GetCurCamp() ~= 2) then 
Msg2Player("ChØ cã c«ng thµnh nhÊt ph­¬ng míi cã thÓ sö dông nghiÖt long h­íng xe #") 
return 1; 
end 

PosId = GetNearstPos(X*32,Y*32, GccPos); 
if (PosId == 0) then 
Say("Ng­¬i vÞ trÝ chç ë c¸ch nghiÖt long h­íng xe ®Ó ®­a vÞ trÝ qu¸ xa , kh«ng c¸ch nµo sö dông #",0) 
return 1 
end; 



if (GetMissionV(MS_DOORBEGIN + PosId - 1)  == 0 ) then 
Msg2Player("Ng­¬i vÞ trÝ vÞ trÝ phÝa tr­íc ®Ých cöa thµnh ®· bÞ c«ng h·m # kh«ng cÇn sö dông nghiÖt long h­íng xe . "); 
return 1 
end; 

if (GetMissionV(MSBegin + PosId - 1) == 0) then 
ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, GccPos[PosId][1], GccPos[PosId][2], 1, "", 1); 
if (ToolIndex > 0) then 
SetNpcCurCamp(ToolIndex, 2); 
		SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
		SetMissionV(MSBegin + PosId -1, ToolIndex); 
		SetSiegeVoitureParam(ToolIndex, GetMissionV(MS_DOORBEGIN + PosId - 1))
Msg2MSAll(MISSIONID, GetName().." ®Ó ®­a liÔu mét m¸y nghiÖt long h­íng xe , hiÖp trî c«ng thµnh . "); 
WriteLog(GetLoop()..GetName()..":AddCC"..ToolIndex) 
return 0 
end; 
else 
Msg2Player("Ng­¬i tr­íc mÆt vÞ trÝ vÞ trÝ ®èi øng nghiÖt long h­íng xe ®· tån t¹i , t¹m thêi kh«ng thÓ lÇn n÷a ®Ó ®­a . "); 
return 1 
end; 

return 0; 
end; 
