IncludeLib("ITEM"); 

local tbFactionNumber2Name = 
{ 
-- script viet hoa By http://tranhba.com  [-1]=" b�ch t�n tay m�i ", 
[-1]="Ch�a v�o ph�i ", 
[0]="Ph�i Thi�u l�m ", 
[1]="Thi�n v��ng gi�p ", 
[2]="���ng m�n ", 
[3]="Ng� ��c gi�o ", 
[4]="Ph�i Nga Mi ", 
[5]="Th�y Y�n Ph�i ", 
[6]="C�i Bang ", 
[7]="Ng�y nh�n d�y ", 
[8]="Ph�i V� ���ng ", 
[9]="C�n L�n ph�i ", 
} 

function _WritePlayerLog(szTitle, szMsg) 

local szTime = GetLocalDate("%H:%M\t%d/%m/%Y") 
local szLog = format("[%s]\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s", 
szTitle, 
szTime, 
GetServerName(), -- script viet hoa By http://tranhba.com  ph�c v� kh� t�n 
GetAccount(), -- script viet hoa By http://tranhba.com  s� tr��ng m�c 
GetName(), -- script viet hoa By http://tranhba.com  vai tr� t�n 
GetLastFactionNumber(), -- script viet hoa By http://tranhba.com  m�n ph�i 
GetLevel(), -- script viet hoa By http://tranhba.com  c�p b�c 
GetTong(), -- script viet hoa By http://tranhba.com  bang h�i 
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
GetLocalDate("%H:%M") or "", -- script viet hoa By http://tranhba.com  th�i gian 
GetLocalDate("%d/%m/%Y") or "", -- script viet hoa By http://tranhba.com  nh�t k� 
GetServerName(), -- script viet hoa By http://tranhba.com  ph�c v� kh� 
GetAccount() or "", -- script viet hoa By http://tranhba.com  s� tr��ng m�c 
GetName() or "", -- script viet hoa By http://tranhba.com  t�n 
%tbFactionNumber2Name[GetLastFactionNumber()] or "", -- script viet hoa By http://tranhba.com  m�n ph�i 
GetLevel() or 0, -- script viet hoa By http://tranhba.com  c�p b�c 
GetTongName() or "", -- script viet hoa By http://tranhba.com  bang h�i 
szKeyLog or "", 
unpack(arg) -- script viet hoa By http://tranhba.com  c�n c� b�t ��ng t�nh hu�ng c�n truy�n v�o ��ch tham s� 

) 
end 
