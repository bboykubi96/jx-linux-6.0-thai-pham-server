IncludeLib("TIMER") 
Include("\\script\\missions\\newpracticemap\\head.lua")

function OnTimer() 

-- script viet hoa By http://tranhba.com  ki”m tra tr≠Ìc m∆t Æ›ch mapid 
local nMapType = tbNewPracticeMap:checkMapId(); 

if nMapType ~= 1 and nMapType ~= 2 then 
if tbNewPracticeMap.bDeBug == 1 then 
print("Wrong Map"); 
end 
return 
end 

-- script viet hoa By http://tranhba.com  ki”m tra cÚng d˘ kh u trı nhµ ch¨i Æ›ch cﬂn thıa lπi thÍi gian 
local nTimeLeft; 

if nMapType == 1 then 
nTimeLeft = GetTask(tbNewPracticeMap.TimeLeft_A) - 1; 
SetTask(tbNewPracticeMap.TimeLeft_A, nTimeLeft); 
elseif nMapType == 2 then 
nTimeLeft = GetTask(tbNewPracticeMap.TimeLeft_B) - 1; 
SetTask(tbNewPracticeMap.TimeLeft_B, nTimeLeft); 
end 

if tbNewPracticeMap.bDeBug == 1 then 
print("Name:"..GetName().." MapType:"..nMapType.." TimeLeft:"..nTimeLeft); 
end 

-- script viet hoa By http://tranhba.com  mÎ ra ng≠Íi/c∏i k’ ti’p Timer 
TM_SetTimer(tbNewPracticeMap.interval, tbNewPracticeMap.timerId, 1, 0); 

if nTimeLeft < 0 then 
Msg2Player("Tu luy÷n cÒa ng≠¨i thÍi gian Æ∑ k’t thÛc , Æem bﬁ c≠Ïng ch’ Æ»y ra b∂n ÆÂ #!"); 
local nSubWorldId, nX, nY = RevID2WXY(GetPlayerRev()); 
NewWorld(nSubWorldId, nX/32, nY/32); 
return 
end 

if nTimeLeft <= tbNewPracticeMap.WarningTime then 
Msg2Player("Tu luy÷n cÒa ng≠¨i thÍi gian Æ∑ k’t thÛc , xin/mÍi chu»n bﬁ rÍi Æi b∂n ÆÂ #!"); 
end 

end 
