-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##callbosslingpai.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### chØ cã thÓ ë c¸c ®¹i chñ thµnh , tay míi th«n ®Ých d· ngo¹i cïng bang héi b¶n ®å call 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-11-11 14:56:18 
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\functionlib.lua")
function checkfightstate() 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chiÕn ®Êu khu cÊm dïng 
Msg2Player("Kh«ng cã ë ®©y tr¹ng th¸i chiÕn ®Êu th× kh«ng thÓ sö dông "); 
return 0 
end 
return 1 
end 

function checkmap() 
-- script viet hoa By http://tranhba.com  b¶y ®¹i thµnh thÞ , t¸m ®¹i tay míi th«n , bang héi b¶n ®å 
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
lib:ShowMessage("CÇn ë c¸c ®¹i thµnh thÞ # tay míi th«n ra ®Ých ®Þa ph­¬ng sö dông ") 
return 0 
end 
return 1 
end 


function getbossinfo(nItemIdx) 
local tbBossInfomation = { 
-- script viet hoa By http://tranhba.com  bossid, bosslvl, bossname 
[3083] = {1873,95,"Tê tuyªn ",}, 
[3084] = {1874,95,"Kim thi l­îng ",}, 
[3085] = {1875,95,"Mé Dung toµn ",}, 
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
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] dïng lÖnh bµi gäi hoµng kim BOSS: "..szBossname); 
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
Msg2Player("TriÖu håi BOSS thÊt b¹i , xin/mêi thö l¹i ") 
return 1 
end 

return 0 
end
