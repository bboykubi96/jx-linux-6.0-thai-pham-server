tbNewPracticeMap = {}; 

tbNewPracticeMap.bDeBug = 0; -- script viet hoa By http://tranhba.com  DeBug m� th�c 
tbNewPracticeMap.interval = 18 * 60; -- script viet hoa By http://tranhba.com  Timer gian c�ch (1 ph�t ) 
tbNewPracticeMap.timerId = 114; -- script viet hoa By http://tranhba.com  TimerID 
tbNewPracticeMap.TimeLeft_A = 2662; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng :A h�nh b�n �� c�n th�a l�i th�i gian 
tbNewPracticeMap.TimeLeft_B = 2663; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng :B h�nh b�n �� c�n th�a l�i th�i gian 
tbNewPracticeMap.MapId_A = {917,918,919,920}; -- script viet hoa By http://tranhba.com  A h�nh b�n �� ID 
tbNewPracticeMap.MapId_B = {921,922,923,924}; -- script viet hoa By http://tranhba.com  B h�nh b�n �� ID 
tbNewPracticeMap.WarningTime = 3; -- script viet hoa By http://tranhba.com  �� k� th�i gian ( c�n th�a l�i th�i gian �t h�n 3 ph�t ti�n h�nh �� k� ) 

function tbNewPracticeMap:checkMapId() 

local nSubWorldID = SubWorldIdx2ID(); 

for i = 1, getn(self.MapId_A) do 
if(nSubWorldID == self.MapId_A[i]) then 
return 1; 
end 
end 

for i = 1, getn(self.MapId_B) do 
if(nSubWorldID == self.MapId_B[i]) then 
return 2; 
end 
end 

return 0; 
end
