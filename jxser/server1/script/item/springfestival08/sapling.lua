-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##sapling.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-01-16 10:54:26 
-- script viet hoa By http://tranhba.com  t� 2008 n�m 02 th�ng 02 s� � 2008 n�m 03 th�ng 02 s� 24 �i�m 00 
-- script viet hoa By http://tranhba.com  t�nh ch�t : 
-- script viet hoa By http://tranhba.com - ch�i ���c d�ch , b�y s�p , b� hoang , b�n shop = 0 hai . 
-- script viet hoa By http://tranhba.com - kh�ng th� �i�p gia 

-- script viet hoa By http://tranhba.com  gi�i h�n : 
-- script viet hoa By http://tranhba.com - s� d�ng ��o c� l�c kh�ng h�n ch� vai tr� c�p b�c . 
-- script viet hoa By http://tranhba.com - m�i vai tr� m�i ng�y ch� nh�ng lo�i 8 g�c c�y . 
-- script viet hoa By http://tranhba.com  ph��ng ph�p s� d�ng : b�n ph�i ki�n �i�m k�ch 


-- script viet hoa By http://tranhba.com Include("\\script\\event\\springfestival08\\luckplanting\\head.lua")
Include("\\script\\event\\springfestival08\\luckplanting\\treehead.lua")
Include("\\script\\global\\judgeoffline_limit.lua")
IncludeLib("ITEM") 
-- script viet hoa By http://tranhba.com Event tr#g c# may m l��ng - Modified by DinhHQ - 20110518 

nTSK_USE_COUNT_LIMIT = 2728 
nUSE_COUNT_LIMIT = 500 

function main(nItemIndex) 
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("V�t ph�m �� qua k� , kh�ng th� s� d�ng .") 
return 1; 
end 

if (GetTask(nTSK_USE_COUNT_LIMIT) >= nUSE_COUNT_LIMIT) then 
Talk(1, "", " lo�i c�y ��t t�i gi�i h�n , kh�ng th� n�a tr�ng !") 
return 1 
end 

if not sapling_checkmap() then 
Msg2Player("Ch� c� th� � tay m�i th�n c�ng th�nh ph� s� d�ng ") 
return 1 
end 

if offlineCheckPermitRegion() == 0 then 
Msg2Player("T�t nh�t kh�ng mu�n � nhi�u ng��i ��ch ��a ph��ng lo�i .") 
return 1; 
end 

	SetTask(nTSK_USE_COUNT_LIMIT, GetTask(nTSK_USE_COUNT_LIMIT) + 1)
local _, nX, nY = GetWorldPos(); 
if (plantTree_0801(1, SubWorld, nX*32, nY*32, format("C�y %s",GetName()), FileName2Id(GetName()), GetRoleCreateTimeData() ) == 0) then 
return 1; 
end; 
return 0 
end 

function bak_main(nItemIndex) 
do return end 
local nData_E = GetItemParam(nItemIndex, 1); 
local nUseCountLimit = 8 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
local nDateYmd = tonumber(GetLocalDate("%Y%m%d")) 
local nTSKV = GetTask(TSK_sapling_UseCountLimit) 

if nData_E <= nDateYmd then 
Msg2Player("N�n v�t ph�m �� qua k� , kh�ng th� s� d�ng .", 0) 
return 0; 
end 
if not sapling_checkmap() then 
Msg2Player("Ch� c� th� � c�c th�n tr�n ��ch kh�ng ph�i l� chi�n ��u khu v�c s� d�ng .") 
return 1 
end 

if offlineCheckPermitRegion() == 0 then 
Msg2Player("T�t nh�t kh�ng mu�n � nhi�u ng��i ��ch ��a ph��ng lo�i .") 
return 1; 
end 

if nDate ~= floor(nTSKV/256) then 
nTSKV = nDate * 256 -- script viet hoa By http://tranhba.com  thanh linh c�ng th�� gian ��i m�i 
end 
if mod(nTSKV,256) >= nUseCountLimit then -- script viet hoa By http://tranhba.com  s� l�n 
Say(format("Ng�i h�m nay �� lo�i <color=yellow>%d<color> c�y , ng�y mai ti�p t�c lo�i nga ", nUseCountLimit), 0) 
return 1; 
end 

-- script viet hoa By http://tranhba.com  sinh ra 
local _, nX, nY = GetWorldPos(); 
-- script viet hoa By http://tranhba.com local nNpcIdx = AddNpc(711, 1, SubWorld, (nX-1)*32, (nY-1)*32, 1, format("%s ��ch c�y ",GetName())); 
	if (plantTree_0801(1, SubWorld, (nX+random(-2,2))*32, (nY+random(-2,2))*32, format("��%s",GetName()), FileName2Id(GetName()), GetRoleCreateTimeData() ) == 0) then
return 1; 
end; 

	SetTask(TSK_sapling_UseCountLimit, nTSKV+1);
end 

function sapling_checkmap() 
local tbCityMap = 
{ 
[174] = 1,-- script viet hoa By http://tranhba.com  long tuy�n 
[121] = 1, -- script viet hoa By http://tranhba.com  long m�n 
[153] = 1, -- script viet hoa By http://tranhba.com  th�ch c� 
[101] = 1,-- script viet hoa By http://tranhba.com  ��o h��ng th�n 
[99] = 1, -- script viet hoa By http://tranhba.com  v�nh nh�c 
[100] = 1,-- script viet hoa By http://tranhba.com  Chu ti�n tr�n 
[20] = 1, -- script viet hoa By http://tranhba.com  giang m�i 
[53] = 1, -- script viet hoa By http://tranhba.com  ba l�ng 
[11] = 1, 
[1] = 1, 
[37] = 1, 
[176] = 1, 
[162] = 1, 
[78] = 1, 
[80] = 1, 
} 
return tbCityMap[SubWorldIdx2ID(SubWorld)] and (GetFightState() == 0) 
end
