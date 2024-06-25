Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn ®İch b¶n ®å ID 
MSBegin = MS_TOOLBEGIN; 
Count = g_nMaxToolCount; 
NpcTempl = 526; 
NpcLevel = 60; 

function main() 

-- script viet hoa By http://tranhba.com  nh×n tr­íc mÆt vŞ trİ cã chång hay ch­a ë c«ng thµnh chiÕn ®Şa ®å th­îng 
W,X,Y = GetWorldPos(); 
nSubWorldID = SubWorldIdx2ID(SubWorld); 

if (nSubWorldID ~= CityWarID) then 
Msg2Player("Ng­¬i kh«ng thÓ ë n¬i nµy ®Şa ph­¬ng sö dông ngoan cæ binh phï #") 
return 1; 
end 

if (GetCurCamp() ~= 1) then 
Msg2Player("ChØ cã thñ thµnh nhÊt ph­¬ng míi cã thÓ sö dông ngoan cæ binh phï #") 
return 1; 
end 

bAdd = 0 
for i = 1, Count do 
	if (GetMissionV(MSBegin + i - 1) == 0) then 
ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, X * 32, Y * 32, 1, GetName().." lİnh ®¸nh thuª ", 1); 
if (ToolIndex > 0) then 
SetNpcCurCamp(ToolIndex, 1); 
			SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
			SetMissionV(MSBegin + i - 1, ToolIndex); 
Msg2MSAll(MISSIONID, GetName().." sai ph¸i liÔu mét tªn ®¸nh trèng vâ sÜ , gia nhËp chiÕn ®Êu #"); 
WriteLog(GetLoop()..GetName().." sai ph¸i liÔu mét tªn ®¸nh trèng vâ sÜ , gia nhËp chiÕn ®Êu #"); 
WriteLog("T¨ng lªn mét leigu"..ToolIndex); 
bAdd = 1 
return 0 
end; 
end; 
end 

if (bAdd == 0) then 
Msg2Player("Tr­íc m¾t ph¸i tíi ®İch binh lİnh ®· cÊu , t¹m thêi kh«ng cÇn ph¸i ") 
return 1 
end; 

return 0; 
end; 
