tbPlayer = {} 


tbPlayer.TSK_RANK = 3172 
tbPlayer.TSK_VICTORY_COUNT = 3173 
tbPlayer.TSK_DRAW_COUNT = 3174 
tbPlayer.TSK_LOSE_COUNT = 3175 
tbPlayer.TSK_CUR_WEEK = 3176 
tbPlayer.TSK_CUR_COUNT = 3177 



local TITLE_TABLE = 
{ 
{nMin = 2600, nMax = -1, szTitle = " tuy�t th� cao th� "}, 
{nMin = 2400, nMax = 2600, szTitle = " t�n m�n giang h� "}, 
{nMin = 2200, nMax = 2400, szTitle = " hi�p danh lan xa "}, 
{nMin = 2000, nMax = 2200, szTitle = " v� l�m t�n t� "}, 
{nMin = 1800, nMax = 2000, szTitle = " ti�m l� ��u gi�c "}, 
{nMin = 1600, nMax = 1800, szTitle = " m�ng c� vi t�n "}, 
{nMin = 1400, nMax = 1600, szTitle = " m�i v�o giang h� "}, 
{nMin = 1200, nMax = 1400, szTitle = " nh�p m�n �� t� "}, 
{nMin = -1, nMax = 1200, szTitle = " s� khuy m�n k�nh "}, 
} 

function tbPlayer:GetVictoryRate() 
	return floor(self:GetVictoryCount() * 100/self:GetTotalCount() + 0.5)
end 
function tbPlayer:GetLoseRate() 
	return floor(self:GetLoseCount() * 100/self:GetTotalCount() + 0.5)
end 


function tbPlayer:GetTotalCount() 
	return self:GetVictoryCount() + self:GetDrawCount() + self:GetLoseCount()
end 

function tbPlayer:GetVictoryCount() 
return GetTask(self.TSK_VICTORY_COUNT) 
end 

function tbPlayer:GetDrawCount() 
return GetTask(self.TSK_DRAW_COUNT) 
end 

function tbPlayer:GetLoseCount() 
return GetTask(self.TSK_LOSE_COUNT) 
end 

function tbPlayer:GetRank() 
return GetTask(self.TSK_RANK) 
end 

function tbPlayer:GetCurCount() 
local nYW = tonumber(GetLocalDate("%Y%W")) 
if GetTask(self.TSK_CUR_WEEK) == nYW then 
return GetTask(self.TSK_CUR_COUNT) 
else 
return 0 
end 
end 

function tbPlayer:GetTitle() 
local nRank =self:GetRank() 
for i=1, getn(%TITLE_TABLE) do 
local tbTitle = %TITLE_TABLE[i] 
local nMin = tbTitle.nMin 
local nMax = tbTitle.nMax 
if (nMin == -1 or nMin <= nRank) and (nMax == -1 or nRank < nMax) then 
return tbTitle.szTitle 
end 
end 
return %TITLE_TABLE[1].szTitle 
end 

function tbPlayer:GetRankProcess() 
local nRank =self:GetRank() 
for i=1, getn(%TITLE_TABLE) do 
local tbTitle = %TITLE_TABLE[i] 
local nMin = tbTitle.nMin 
local nMax = tbTitle.nMax 
if (nMin == -1 or nMin <= nRank) and (nMax == -1 or nRank < nMax) then 
return nRank, nMin, nMax 
end 
end 
return nRank, 0, -1 
end