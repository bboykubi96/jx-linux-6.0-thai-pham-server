IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thŞ kho 
IncludeLib("FILESYS") 
IncludeLib("TONG") 
IncludeLib("ITEM") 

Include("\\script\\global\\forbidmap.lua")
TSK_MAXCOUNT = 1574; -- script viet hoa By http://tranhba.com  ghi chĞp mét lÇn cuèi cïng sö dông nhËt kú Byte1 
-- script viet hoa By http://tranhba.com  ghi chĞp cuèi cïng nhËt kú sö dông sè lÇn Byte2 
local tbUseOnlyInMap = 
{ 
586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604, 
} 
local checkOnlyUseInMap = function() 
local nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn( %tbUseOnlyInMap ) do -- script viet hoa By http://tranhba.com  ®Æc thï b¶n ®å cÊm dïng 
if( %tbUseOnlyInMap[i] == nMapId ) then 
return 1 
end 
end 
return 0 
end 

function main(nItemIndex) 
local n_cur_date = tonumber(GetLocalDate("%d")); 
local n_my_value = GetTask(TSK_MAXCOUNT); 
local n_my_date = GetByte(n_my_value, 1); 
local n_my_count = GetByte(n_my_value, 2); 

if (n_cur_date ~= n_my_date) then -- script viet hoa By http://tranhba.com  cuèi cïng sö dông lóc kh«ng ph¶i lµ h«m nay , míi b¾t ®Çu hãa sö dông sè lÇn ®Õm hÕt 
n_my_date = n_cur_date; 
n_my_value = SetByte(n_my_value, 1, n_cur_date); 

n_my_count = 0; 
n_my_value = SetByte(n_my_value, 2, 0); 

SetTask(TSK_MAXCOUNT, n_my_value); 
end 


if %checkOnlyUseInMap() ~= 1 then 
Msg2Player("N¬i ®©y ®å ng­¬i kh«ng thÓ sö dông ®¹o nµy cô .") 
return 1 
end 



if (n_my_count >= 100) then 
Msg2Player("Ngµi ®İch sö dông lín nhÊt sè l­îng ®· v­ît qua 100 c¸ kh«ng thÓ sö dông n÷a ."); 
return 1; 
end 

if (GetFightState() == 1) then 
local w,x,y = GetWorldPos() 
local mapindex = SubWorldID2Idx(w) 
if ( mapindex < 0 ) then 
Msg2Player("Get MapIndex Error.") 
return 1 
end 
if ( CheckAllMaps(w) == 1 ) then 
Msg2Player(" ë chç nµy lµm sao cã thÓ tiÕn hµnh tu luyÖn ®©y ? hay lµ ®i d· ngo¹i ®i . ") 
return 1 
end 
local nParam1 = GetItemParam(nItemIndex, 2) -- script viet hoa By http://tranhba.com  mua méc nh©n lóc x­ëng ®İch sö dông cÊp bËc 
-- script viet hoa By http://tranhba.com local nParam2 = GetItemParam(nItemIndex, 3) 
local posx = x*32 
local posy = y*32 
bossid = 1161 
bosslvl = 100 
-- script viet hoa By http://tranhba.com local key = random(1,100000) 
local npcindex = AddNpc(bossid,bosslvl,mapindex,posx,posy,1,GetName().." ®İch tu luyÖn méc nh©n ",2) 
if (npcindex > 0) then 
SetNpcParam(npcindex, 2, nParam1) 
local playerid = String2Id(GetName()) 
SetNpcParam(npcindex, 3, floor( playerid/100000 ) ) 
SetNpcParam(npcindex, 4, mod( playerid, 100000 ) ) 
			SetNpcDeathScript(npcindex, "\\script\\tong\\npc\\muren_death.lua")
Msg2Player("Ng­¬i thiÕt trİ mét tu luyÖn méc nh©n , nhanh lªn tiÕn hµnh tu luyÖn ®i . ") 

			SetTask(TSK_MAXCOUNT, SetByte(n_my_value, 2, n_my_count+1));		-- script viet hoa By http://tranhba.com  ½ñÌìÊ¹ÓÃ´ÎÊı¼ÆÊı
-- script viet hoa By http://tranhba.com SetTask(1740, key) 
end 
return 0 
else 
Msg2Player("Tu luyÖn méc nh©n chØ cã thÓ ë d· ngo¹i sö dông . ") 
return 1 
end 
end
