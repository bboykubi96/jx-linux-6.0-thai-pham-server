-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##callbosslingpai.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  n�i dung ### ch� c� th� � c�c ��i ch� th�nh , tay m�i th�n ��ch d� ngo�i c�ng bang h�i b�n �� call 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-11-11 14:56:18 
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
function checkfightstate() 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� chi�n ��u khu c�m d�ng 
Msg2Player("Kh�ng c� � ��y tr�ng th�i chi�n ��u th� kh�ng th� s� d�ng "); 
return 0 
end 
return 1 
end 

function checkmap() 
-- script viet hoa By http://tranhba.com  b�y ��i th�nh th� , t�m ��i tay m�i th�n , bang h�i b�n �� 
local ACTIVITY_MAP = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53, 586,587,588,589,590,591,593,594,595,596,597} 
local W,X,Y = GetWorldPos() 
local nMapId = W 
local nIsInMap = 0 

for i = 1, getn(ACTIVITY_MAP) do 
if nMapId == ACTIVITY_MAP[i] and GetFightState() == 1 then 
nIsInMap = 1 
break 
end 
end 

if nIsInMap == 0 then 
lib:ShowMessage("C�n � c�c ��i th�nh th� # tay m�i th�n ra ��ch ��a ph��ng s� d�ng ") 
return 0 
end 
return 1 
end 


function getbossinfo(nItemIdx) 
local tbBossInfomation = { 
-- script viet hoa By http://tranhba.com  bossid, bosslvl, bossname 
[3083] = {1873,95,"T� tuy�n ",}, 
[3084] = {1874,95,"Kim thi l��ng ",}, 
[3085] = {1875,95,"M� Dung to�n ",}, 
} 
local G,D,P = GetItemProp(nItemIdx) 
local szBossname = tbBossInfomation[P][3] 
local nBossLevel = tbBossInfomation[P][2] 
local nBossId = tbBossInfomation[P][1] 
return szBossname, nBossLevel, nBossId 
end 

function callboss(szBossname, nBossLevel, nBossId) 
local nMapId,nPosX,nPosY = GetWorldPos() 
local tbGoldBoss = 
{ 
szName = szBossname, 
nLevel = nBossLevel, 
nNpcId = nBossId, 
nIsboss = 1, 
tbNpcParam = {nBossId,}, 
} 
if basemission_CallNpc(tbGoldBoss, nMapId, nPosX * 32, nPosY * 32) then 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] d�ng l�nh b�i g�i ho�ng kim BOSS: "..szBossname); 
return 1 
end 
return 0 
end 

function main(nItemIdx) 
if checkfightstate() ~= 1 then 
return 1 
end 

if checkmap() ~= 1 then 
return 1 
end 

local szBossname, nBossLevel, nBossId = getbossinfo(nItemIdx) 

if callboss(szBossname, nBossLevel, nBossId) ~= 1 then 
Msg2Player("Tri�u h�i BOSS th�t b�i , xin/m�i th� l�i ") 
return 1 
end 

return 0 
end
