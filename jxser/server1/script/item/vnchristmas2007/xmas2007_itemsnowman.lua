-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##xmas2007_itemsnowman.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2007-12-01 16:05:50 

IncludeLib("NPCINFO") 
IncludeLib("TASKSYS") 
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\event\\xmas07_makesnowman\\head.lua")
Include("\\script\\lib\\pay.lua")

xmas2007_SnowManItem_forbitmap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} 

xmas2007_tbSnowManBoss = 
{ 
-- script viet hoa By http://tranhba.com [ v�t ph�m PID] = { t�n ,bossID} 
[1634] = {szName = " Ho�ng Tuy�t Nh�n ", nBossId = 1329}, 
[1635] = {szName = " T� Tuy�t Nh�n ", nBossId = 1330}, 
[1636] = {szName = " L�c Tuy�t Nh�n ", nBossId = 1331}, 
} 
xmas2007_SnowManItem_tbItemList = 
{ 
-- script viet hoa By http://tranhba.com [ v�t ph�m PID] = { t�n , v�t ph�m prop , x�c su�t %} 
[1634] = { 
{"T� th�y tinh ",{4,238,1,1,0,0},6.00}, 
{"N��c bi�c tinh ",{4,239,1,1,0,0},5.00}, 
{" lam th�y tinh ",{4,240,1,1,0,0},5.00}, 
{"��c hi�u ti�n th�o l� ",{6,1,1181,1,0,0},5.00}, 
{"Ti�n th�o l� ",{6,1,71,1,0,0},10.00}, 
{"Ph�c duy�n l� ( ��i ) ",{6,1,124,1,0,0},30.00}, 
{"Tinh h�ng b�o th�ch ",{4,353,1,1,0,0},5.60}, 
{"An bang b�ng tinh th�ch gi�y chuy�n ",{0,164},0.01}, 
{"An bang m�u g� th�ch chi�c nh�n ",{0,167},0.02}, 
{"An bang hoa c�c th�ch chi�c nh�n ",{0,165},0.02}, 
{"An bang �i�n ho�ng th�ch ng�c b�i ",{0,166},0.05}, 
{"��nh n��c � sa ph�t quan ",{0,160},0.06}, 
{"��nh n��c l�a m�ng xanh tr��ng sam ",{0,159},0.06}, 
{"��nh n��c ng�n t�m �ai l�ng ",{0,163},0.06}, 
{"��nh n��c x�ch quy�n m�m ngoa ",{0,161},0.06}, 
{"��nh n��c t� ��ng h� c� tay ",{0,162},0.06}, 
{"B�ng tuy�t ",{6,0,1013,1,0,0},8.25}, 
{"M�u xanh l� c�y l� ph�m ",{6,0,1012,1,0,0},8.25}, 
{"Hoa h�ng ",{6,0,20,1,0,0},8.25}, 
{"M�t n� - tu�n l�c ",{0,11,405,1,0,0},0.60}, 
{"M�t n� - �ng gi� n� en ( m�u �� ) ",{0,11,398,1,0,0},0.45}, 
{"M�t n� - �ng gi� n� en ( m�u xanh l� c�y ) ",{0,11,397,1,0,0},0.45}, 
{"M�t n� - �ng gi� n� en ( m�u tr�ng ) ",{0,11,399,1,0,0},0.45}, 
{"M�t n� - �ng gi� n� en ( m�u v�ng ) ",{0,11,400,1,0,0},0.45}, 
{"M�t n� - �ng gi� n� en ( m�u �� ) ",{0,11,394,1,0,0},0.45}, 
{"M�t n� - gi�ng sinh thi�n s� ( m�u �� ) ",{0,11,395,1,0,0},0.45}, 
{"M�t n� - gi�ng sinh thi�n s� ( m�u xanh l� c�y ) ",{0,11,401,1,0,0},0.45}, 
{"M�t n� - gi�ng sinh thi�n s� ( m�u tr�ng ) ",{0,11,403,1,0,0},0.45}, 
{"M�t n� - gi�ng sinh thi�n s� ( m�u v�ng ) ",{0,11,404,1,0,0},0.45}, 
{"M�t n� - gi�ng sinh thi�n s� ( m�u �� ) ",{0,11,402,1,0,0},0.45}, 
{"M�t n� - tinh linh ( m�u �� ) ",{0,11,423,1,0,0},0.45}, 
{"M�t n� - tinh linh ( m�u xanh l� c�y ) ",{0,11,396,1,0,0},0.45}, 
{"M�t n� - tinh linh (( m�u v�ng ) ",{0,11,424,1,0,0},0.45}, 
{"M�t n� - tinh linh (( m�u t�m ) ",{0,11,422,1,0,0},0.45}, 
{"M�t n� - ho�ng tuy�t nh�n ",{0,11,425,1,0,0},0.45}, 
{"M�t n� - t� tuy�t nh�n ",{0,11,426,1,0,0},0.45}, 
{"M�t n� - xanh bi�c tuy�t nh�n ",{0,11,427,1,0,0},0.45}, 
}, 
[1636] = 
{ 
{"��c hi�u ti�n th�o l� ",{6,1,1181,1,0,0},0.50}, 
{"Ti�n th�o l� ",{6,1,71,1,0,0},9.50}, 
{"Tr�m qu� l� ",{6,1,73,1,0,0},10.00}, 
{"Thi�n S�n b�o l� ",{6,1,72,1,0,0},10.00}, 
{"Ph�c duy�n l� ( ��i ) ",{6,1,124,1,0,0},5.00}, 
{"Ph�c duy�n l� ( trung ) ",{6,1,123,1,0,0},10.00}, 
{"Hoa qu� r��u ",{6,1,125,1,0,0},5.00}, 
{"M�t n� - tu�n l�c ",{0,11,405,1,0,0},12.50}, 
{"B�ng tuy�t ",{6,0,1013,1,0,0},12.50}, 
{"M�u xanh l� c�y l� ph�m ",{6,0,1012,1,0,0},8.25}, 
{"Hoa h�ng ",{6,0,20,1,0,0},12.50}, 
} 
} 
function main(nItemIndex) 
local _, _, PID = GetItemProp(nItemIndex); 
local szItemName = GetItemName(nItemIndex); 
local tbSnowManBossInfo = xmas2007_tbSnowManBoss[PID]; 
local nCurExp = GetTask(xmas2007_SnowManItem_TSK_ExpLimit); 
local nExp = 1000000 
local nTotalRate = 100000; 
local nRate = floor(nTotalRate*5/100) 
if xmas07_makeSnowMan_isUsePeriod() == 0 then 
Msg2Player("N�n v�t ph�m �� qua s� d�ng k� , s� bi�n m�t .") 
return 0 
end 
if xmas2007_SnowManItem_CheckForbitMap() == 1 then 
return 1 
end 
if IsCharged() == 0 or GetLevel() < 50 then 
Msg2Player("50 c�p tr� l�n sung tr� gi� nh� ch�i m�i c� th� s� d�ng n�n v�t ph�m .") 
return 1; 
end 
if nCurExp >= xmas2007_SnowManItem_ExpMax then 
Msg2Player("S� d�ng ng��i tuy�t �� v��t qua kinh nghi�m tr� gi� th��ng h�n , kh�ng th� s� d�ng n�a li�u .") 
return 1; 
else 
AddOwnExp(nExp); 
		SetTask(xmas2007_SnowManItem_TSK_ExpLimit,nCurExp+nExp);
end 


WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tUse a %s.",xmas07_makeSnowMan_ActName, 
GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),szItemName )) 
if random(1,nTotalRate) <= nRate then 
local W,X,Y=GetWorldPos() 
local nSeries = random(0,4) 
AddNpcEx(tbSnowManBossInfo.nBossId, 90, nSeries, SubWorld, X*32, Y*32,1, tbSnowManBossInfo.szName, 2) 

WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tcall a boss %s.",xmas07_makeSnowMan_ActName, 
GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),szItemName )) 
end 
xmas2007_SnowManItem_GiveRandomItem(xmas2007_SnowManItem_tbItemList[PID]) 
return 0; 
end 



function xmas2007_SnowManItem_CheckForbitMap() 
local W,X,Y=GetWorldPos() 
local nMapId = W; 
local i; 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� chi�n ��u khu c�m d�ng 
Msg2Player("Kh�ng c� � ��y tr�ng th�i chi�n ��u th� kh�ng th� s� d�ng "); 
return 1 
end 
for i = 249, 318 do -- script viet hoa By http://tranhba.com  t�y t�y ��o s�n ��ng 
if ( i == nMapId ) then 
Msg2Player("N�i n�y kh�ng th� s� d�ng n�n v�t ph�m "); 
return 1 
end 
end 
for i = 375, 415 do -- script viet hoa By http://tranhba.com  m�i t�ng t�ng kim chi�n tr��ng b�n �� ��a tin nhi�m v� b�n �� t� v� ��i h�i b�n �� 
if ( i == nMapId ) then 
Msg2Player("N�i n�y kh�ng th� s� d�ng n�n v�t ph�m "); 
return 1 
end 
end 

for i = 1, getn( xmas2007_SnowManItem_forbitmap ) do -- script viet hoa By http://tranhba.com  ��c th� b�n �� c�m d�ng 
if( xmas2007_SnowManItem_forbitmap[i] == nMapId ) then 
Msg2Player("N�i n�y kh�ng th� s� d�ng n�n v�t ph�m "); 
return 1 
end 
end 

if (CheckAllMaps(nMapId) == 1) then 
Msg2Player("Tri�u h�i l�nh b�i kh�ng th� � n�n khu v�c ��c bi�t s� d�ng ."); 
return 1 
end 
return 0 
end
