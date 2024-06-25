tbNewPracticeMap = {}; 

tbNewPracticeMap.bDeBug = 0; -- script viet hoa By http://tranhba.com  DeBug m« thøc 
tbNewPracticeMap.interval = 18 * 60; -- script viet hoa By http://tranhba.com  Timer gian c¸ch (1 phót ) 
tbNewPracticeMap.timerId = 114; -- script viet hoa By http://tranhba.com  TimerID 
tbNewPracticeMap.TimeLeft_A = 2662; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng :A h×nh b¶n ®å cßn thõa l¹i thêi gian 
tbNewPracticeMap.TimeLeft_B = 2663; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng :B h×nh b¶n ®å cßn thõa l¹i thêi gian 
tbNewPracticeMap.MapId_A = {917,918,919,920}; -- script viet hoa By http://tranhba.com  A h×nh b¶n ®å ID 
tbNewPracticeMap.MapId_B = {921,922,923,924}; -- script viet hoa By http://tranhba.com  B h×nh b¶n ®å ID 
tbNewPracticeMap.WarningTime = 3; -- script viet hoa By http://tranhba.com  ®Ò kú thêi gian ( cßn thõa l¹i thêi gian Ýt h¬n 3 phót tiÕn hµnh ®Ò kú ) 

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
