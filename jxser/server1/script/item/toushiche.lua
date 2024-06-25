Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn ®Ých b¶n ®å ID 
MSBegin = MS_TSCBEGIN; 
Count = g_nMaxTscPerDoor * g_nDoorCount; 
NpcTempl = 525; 
NpcLevel = 60; 

function main() 
if GetTask(5859)> 0  then
		Say("VËn Tiªu §i Råi H·y SD Th©n Hµnh Phï")
		return 1
	end;
          if GetTask(3920)> 0  then
		Say("Ng­¬i ®ang vËn chuyÓn Bao L­¬ng . Mau di chuyÓn ®Õn §iÓm tËp kÕt ®i.")
		return 1
	end;
-- script viet hoa By http://tranhba.com  nh×n tr­íc mÆt vÞ trÝ cã chång hay ch­a ë c«ng thµnh chiÕn ®Þa ®å th­îng 
W,X,Y = GetWorldPos(); 
nSubWorldID = SubWorldIdx2ID(); 

if (nSubWorldID ~= CityWarID) then 
Msg2Player("Ng­¬i kh«ng thÓ ë n¬i nµy ®Þa ph­¬ng sö dông hån th¹ch r¸ch #") 
return 1; 
end 

if (GetCurCamp() ~= 2) then 
Msg2Player("ChØ cã c«ng thµnh nhÊt ph­¬ng míi cã thÓ sö dông hån th¹ch r¸ch #") 
return 1 
end; 

PosId = GetNearstPos(X*32,Y*32, TscPos); 

if (PosId == 0) then 
Say("Ng­¬i vÞ trÝ chç ë c¸ch hån th¹ch r¸ch ®Ó ®­a vÞ trÝ qu¸ xa , kh«ng c¸ch nµo sö dông #",0) 
return 1 
end; 

DoorId = floor( (PosId - 1) / g_nMaxTscPerDoor ) + 1;

if (GetMissionV(MS_DOORBEGIN + DoorId - 1)  ~= 0 and (mod(PosId, 3) == 2) ) then 
Msg2Player("Ng­¬i vÞ trÝ vÞ trÝ phÝa tr­íc ®Ých cöa thµnh cßn ch­a c«ng h·m , vÞ trÝ nµy tr­íc mÆt kh«ng c¸ch nµo sö dông hån th¹ch r¸ch !") 
return 1 
end; 

if (GetMissionV(MSBegin + PosId - 1) == 0) then 
ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, TscPos[PosId][1], TscPos[PosId][2], 1, "", 1); 
if (ToolIndex > 0) then 
SetNpcCurCamp(ToolIndex, 2); 
		SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
		SetMissionV(MSBegin + PosId -1, ToolIndex); 
Msg2MSAll(MISSIONID, GetName().." ®Ó ®­a liÔu mét m¸y hån th¹ch r¸ch , hiÖp trî c«ng thµnh . "); 
SetMangonelParam(ToolIndex, TscPos[PosId][3], TscPos[PosId][4], 200); 
WriteLog(GetLoop()..GetName()..":AddHSL"..ToolIndex) 
return 0 
end; 
else 
Msg2Player("Ng­¬i tr­íc mÆt vÞ trÝ vÞ trÝ ®èi øng hån th¹ch r¸ch ®· tån t¹i , t¹m thêi kh«ng thÓ lÇn n÷a ®Ó ®­a . "); 
return 1 
end; 

return 0; 
end; 
