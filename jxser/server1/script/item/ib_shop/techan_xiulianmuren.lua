-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##techan_xiulianmuren.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### ��c th� tu luy�n m�c nh�n , c� th� �i�p gia , ��u v� 10 c�p ��ch th� luy�n ph��ng m�c nh�n IB shop �i�u ch�nh 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-07-15 17:32:35 

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
Msg2Player("Kh�ng th� � n�i n�y s� d�ng v�t ph�m .") 
return 1 
end 



if (n_my_count >= 100) then 
Msg2Player("M�i nh� ch�i m�i ng�y nhi�u nh�t ch� c� th� s� d�ng 100 c� tu luy�n m�c nh�n ."); 
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
Msg2Player(" � n�i n�y l�m sao c� th� luy�n t�p ��y ? �i ra ngo�i b�n ngo�i .") 
return 1 
end 
-- script viet hoa By http://tranhba.com  local nParam1 = GetItemParam(nItemIndex, 2) -- script viet hoa By http://tranhba.com  mua m�c nh�n l�c x��ng ��ch s� d�ng c�p b�c 
local nParam1 = 10 -- script viet hoa By http://tranhba.com  ��c th� m�c nh�n , s� d�ng c�p b�c ��u v� 10 c�p 
-- script viet hoa By http://tranhba.com local nParam2 = GetItemParam(nItemIndex, 3) 
local posx = x*32 
local posy = y*32 
bossid = 1161 
bosslvl = 100 
-- script viet hoa By http://tranhba.com local key = random(1,100000) 
local npcindex = AddNpc(bossid,bosslvl,mapindex,posx,posy,1,GetName().." m�c nh�n ",2) 
if (npcindex > 0) then 
SetNpcParam(npcindex, 2, nParam1) 
local playerid = String2Id(GetName()) 
SetNpcParam(npcindex, 3, floor( playerid/100000 ) ) 
SetNpcParam(npcindex, 4, mod( playerid, 100000 ) ) 
			SetNpcDeathScript(npcindex, "\\script\\tong\\npc\\muren_death.lua")
Msg2Player("M�c nh�n �� xu�t hi�n , nhanh �i luy�n t�p .") 

			SetTask(TSK_MAXCOUNT, SetByte(n_my_value, 2, n_my_count+1));		-- script viet hoa By http://tranhba.com  ����ʹ�ô�������
-- script viet hoa By http://tranhba.com SetTask(1740, key) 
end 
return 0 
else 
Msg2Player("M�c nh�n ch� c� th� � chi�n ��u khu v�c s� d�ng .") 
return 1 
end 
end
