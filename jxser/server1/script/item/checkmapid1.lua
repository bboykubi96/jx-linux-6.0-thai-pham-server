-- script viet hoa By http://tranhba.com  ki�m tra c� hay kh�ng � t�ng kim b�n �� 
-- script viet hoa By http://tranhba.com  LiuKuo 
-- script viet hoa By http://tranhba.com  2004.12.22 
IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
tbCD_MAP = {516, 517, 580, 581} -- script viet hoa By http://tranhba.com  gi� l�a li�n th�nh th� th�nh b�n �� 

function main(nItemIdx) 

-- script viet hoa By http://tranhba.com  
W,X,Y = GetWorldPos(); 
nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 

if BT_GetGameData(GAME_BATTLEID) == 2 then 
Msg2Player("��o n�y c� kh�ng th� � n��c chi�n t�ng kim chi�n tr��ng b�n trong s� d�ng "); 
return 1; 
end 
-- Msg2Player("T�ng Kim li�n server kh�ng ���c s� d�ng c�c lo�i ��o c� n�y"); 
-- do return 1 end
-- local nWeekDay = tonumber(GetLocalDate("%w"))
-- local nHour = tonumber(GetLocalDate("%H%M"))
-- if (nWeekDay == 1 or nWeekDay == 3 or nWeekDay == 5 or nWeekDay == 0  ) and (nHour > 2045 and nHour < 2300) then
-- Msg2Player("War bang kh�ng ���c s� d�ng c�c lo�i ��o c� n�y"); 
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
Msg2Player("��o n�y c� ch� c� th� � t�ng kim chi�n tr��ng b�n trong s� d�ng "); 
return 1; 
end
