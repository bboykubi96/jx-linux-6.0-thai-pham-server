IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 
IncludeLib("FILESYS") 
IncludeLib("TONG") 
IncludeLib("ITEM") 

Include("\\script\\global\\forbidmap.lua")
TSK_MAXCOUNT = 1574; -- script viet hoa By http://tranhba.com  ghi ch�p m�t l�n cu�i c�ng s� d�ng nh�t k� Byte1 
-- script viet hoa By http://tranhba.com  ghi ch�p cu�i c�ng nh�t k� s� d�ng s� l�n Byte2 
local tbUseOnlyInMap = 
{ 
586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604, 
} 
local checkOnlyUseInMap = function() 
local nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn( %tbUseOnlyInMap ) do -- script viet hoa By http://tranhba.com  ��c th� b�n �� c�m d�ng 
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

if (n_cur_date ~= n_my_date) then -- script viet hoa By http://tranhba.com  cu�i c�ng s� d�ng l�c kh�ng ph�i l� h�m nay , m�i b�t ��u h�a s� d�ng s� l�n ��m h�t 
n_my_date = n_cur_date; 
n_my_value = SetByte(n_my_value, 1, n_cur_date); 

n_my_count = 0; 
n_my_value = SetByte(n_my_value, 2, 0); 

SetTask(TSK_MAXCOUNT, n_my_value); 
end 


if %checkOnlyUseInMap() ~= 1 then 
Msg2Player("N�i ��y �� ng��i kh�ng th� s� d�ng ��o n�y c� .") 
return 1 
end 



if (n_my_count >= 100) then 
Msg2Player("Ng�i ��ch s� d�ng l�n nh�t s� l��ng �� v��t qua 100 c� kh�ng th� s� d�ng n�a ."); 
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
Msg2Player(" � ch� n�y l�m sao c� th� ti�n h�nh tu luy�n ��y ? hay l� �i d� ngo�i �i . ") 
return 1 
end 
local nParam1 = GetItemParam(nItemIndex, 2) -- script viet hoa By http://tranhba.com  mua m�c nh�n l�c x��ng ��ch s� d�ng c�p b�c 
-- script viet hoa By http://tranhba.com local nParam2 = GetItemParam(nItemIndex, 3) 
local posx = x*32 
local posy = y*32 
bossid = 1161 
bosslvl = 100 
-- script viet hoa By http://tranhba.com local key = random(1,100000) 
local npcindex = AddNpc(bossid,bosslvl,mapindex,posx,posy,1,GetName().." ��ch tu luy�n m�c nh�n ",2) 
if (npcindex > 0) then 
SetNpcParam(npcindex, 2, nParam1) 
local playerid = String2Id(GetName()) 
SetNpcParam(npcindex, 3, floor( playerid/100000 ) ) 
SetNpcParam(npcindex, 4, mod( playerid, 100000 ) ) 
			SetNpcDeathScript(npcindex, "\\script\\tong\\npc\\muren_death.lua")
Msg2Player("Ng��i thi�t tr� m�t tu luy�n m�c nh�n , nhanh l�n ti�n h�nh tu luy�n �i . ") 

			SetTask(TSK_MAXCOUNT, SetByte(n_my_value, 2, n_my_count+1));		-- script viet hoa By http://tranhba.com  ����ʹ�ô�������
-- script viet hoa By http://tranhba.com SetTask(1740, key) 
end 
return 0 
else 
Msg2Player("Tu luy�n m�c nh�n ch� c� th� � d� ngo�i s� d�ng . ") 
return 1 
end 
end
