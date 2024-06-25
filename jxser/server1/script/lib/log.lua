IncludeLib("ITEM"); 

local tbFactionNumber2Name = 
{ 
-- script viet hoa By http://tranhba.com  [-1]=" b¹ch tªn tay míi ", 
[-1]="Ch­a vµo ph¸i ", 
[0]="Ph¸i ThiÕu l©m ", 
[1]="Thiªn v­¬ng gióp ", 
[2]="§­êng m«n ", 
[3]="Ngò ®éc gi¸o ", 
[4]="Ph¸i Nga Mi ", 
[5]="Thóy Yªn Ph¸i ", 
[6]="C¸i Bang ", 
[7]="Ngµy nhÉn d¹y ", 
[8]="Ph¸i Vâ §­¬ng ", 
[9]="C«n L«n ph¸i ", 
} 

function _WritePlayerLog(szTitle, szMsg) 

local szTime = GetLocalDate("%H:%M\t%d/%m/%Y") 
local szLog = format("[%s]\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s", 
szTitle, 
szTime, 
GetServerName(), -- script viet hoa By http://tranhba.com  phôc vô khÝ tªn 
GetAccount(), -- script viet hoa By http://tranhba.com  sè tr­¬ng môc 
GetName(), -- script viet hoa By http://tranhba.com  vai trß tªn 
GetLastFactionNumber(), -- script viet hoa By http://tranhba.com  m«n ph¸i 
GetLevel(), -- script viet hoa By http://tranhba.com  cÊp bËc 
GetTong(), -- script viet hoa By http://tranhba.com  bang héi 
szMsg) 
WriteLog(szLog) 
end 

function getItemInfo(nItemIdx) 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp(nItemIdx); 
local nQuality = GetItemQuality(nItemIdx); 
if (nQuality == 1) then 
nDetailType = GetGlodEqIndex(nItemIdx) - 1; 
end 
local szPlatinaLvl = "nil"; 
if (nQuality == 4) then 
szPlatinaLvl = tostring(GetPlatinaLevel(nItemIdx)); 
nDetailType = GetPlatinaEquipIndex(nItemIdx) - 1; 
end; 
local arynMagLvl = GetItemAllParams(nItemIdx); 
local szDes = format("{4,%0.0f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}:%s,GET_TIME:%0.0f,PLA_LVL:%s", 
ITEM_GetItemRandSeed(nItemIdx), nQuality, 
nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck, 
arynMagLvl[1], arynMagLvl[2], arynMagLvl[3], arynMagLvl[4], arynMagLvl[5], arynMagLvl[6], 
GetItemName(nItemIdx),GetItemGenTime(nItemIdx),szPlatinaLvl); 
return szDes; 
end; 

tbLog = {} 
function tbLog:TabFormatLog(...) 
local szLog = arg[1] 
for i=2, getn(arg) do 
szLog = format("%s\t%s", szLog, tostring(arg[i])) 
end 
WriteLog(szLog) 
end 

IncludeLib("SETTING") 

function tbLog:PlayerAwardLog(szEventName, szAction, szAwardName, szCode, nAmount) 
local nTransLifeCount = 0 
if ST_GetTransLifeCount then 
nTransLifeCount = ST_GetTransLifeCount() 
end 
self:TabFormatLog( 
GetAccount() or "", 
GetName() or "", 
szEventName or "", 
GetLevel() or 0, 
nTransLifeCount, 
szAction or "", 
szAwardName or "", 
szCode or "", 
nAmount or 0, 
GetTongName() or "", 
GetWorldPos() or 0 
) 
end 


function tbLog:PlayerActionLog(szKeyLog, ...) 
self:TabFormatLog( 
GetLocalDate("%H:%M") or "", -- script viet hoa By http://tranhba.com  thêi gian 
GetLocalDate("%d/%m/%Y") or "", -- script viet hoa By http://tranhba.com  nhËt kú 
GetServerName(), -- script viet hoa By http://tranhba.com  phôc vô khÝ 
GetAccount() or "", -- script viet hoa By http://tranhba.com  sè tr­¬ng môc 
GetName() or "", -- script viet hoa By http://tranhba.com  tªn 
%tbFactionNumber2Name[GetLastFactionNumber()] or "", -- script viet hoa By http://tranhba.com  m«n ph¸i 
GetLevel() or 0, -- script viet hoa By http://tranhba.com  cÊp bËc 
GetTongName() or "", -- script viet hoa By http://tranhba.com  bang héi 
szKeyLog or "", 
unpack(arg) -- script viet hoa By http://tranhba.com  c¨n cø bÊt ®ång t×nh huèng cÇn truyÒn vµo ®Ých tham sæ 

) 
end 
