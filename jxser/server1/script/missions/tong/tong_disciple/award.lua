-- script viet hoa By http://tranhba.com  t��ng th��ng .lua ( bang h�i chi�u m� �� t� ho�t ��ng ) 
if (not __DIS_AWARD_H__) then 
__DIS_AWARD_H__ = 1; 
Include([[\script\missions\tong\tong_disciple\head.lua]]); 
IncludeLib("FILESYS"); 
SFHD_DATAFILE = [[\settings\tong\workshop\huodong_level_data.txt]]; 

dis_tabExp = { 
2000000, 
2000000, 
2000000, 
1500000, 
1500000, 
1500000, 
1000000, 
1000000, 
1000000, 
500000 
}; 

dis_tabRate = { 
{0, 0.69, 0.27, 0.04}, 
{0, 0.83, 0.14, 0.03}, 
{0, 0.86, 0.13, 0.01}, 
{0, 0.85, 0.15, 0}, 
{0, 0.9, 0.1, 0}, 
{0, 0.95, 0.05, 0}, 
{0.27, 0.68, 0.05, 0}, 
{0.37, 0.59, 0.04, 0}, 
{0.61, 0.36, 0.03, 0}, 
{0.72, 0.26, 0.02, 0} 
}; 


function disciple_aword(nTongID, nWorkshopID) 
if (GetTaskTemp(193) == 1) then 
return 
end; 
SetTaskTemp(193, 1); 
-- script viet hoa By http://tranhba.com  ��t ���c ho�t ��ng ph��ng c�p b�c 
local nLevel = TWS_GetLevel(nTongID, nWorkshopID); 
if (nLevel < 1 or nLevel > 10) then 
Say("Ng��i bang h�i ch�a th�y l�p n�n x��ng .", 1,"Ta bi�t !/oncancel") 
return 0; 
end; 

local nCount = GetTask(DIS_COUNT_ONETIME); 
local nRank = GetTask(DIS_TK_RANK); 
SetTask(DIS_COUNT_ONETIME, 0); 
SetTask(DIS_TK_RANK, 0); 
if (nCount == 0 or nRank == 0) then 
Say("Ho�t ��ng ph��ng t�ng qu�n # ng��i th�t gi�ng nh� kh�ng c� mang b�t k� chi�u m� �� t� ��n c�i n�y .", 1,"D�a theo ph�t tay quy ��nh bay ra ./oncancel"); 
SetTaskTemp(193, 0); 
return 
end; 
local strSay = format("Th�t l� th�t t�t qu� , ng��i �� chi�u m� ��n t�t c� %d <color=yellow> �� t� <color>, ��ng h�ng th� ", nCount, nRank); 
local isDouble = dis_double(nLevel);-- script viet hoa By http://tranhba.com  xem m�t ch�t c� hay kh�ng ��t ���c g�p ��i 
if (1 == isDouble) then 
strSay = strSay.." th�t l� may m�n , ng��i �� ��t ���c <color=red> g�p ��i t��ng th��ng <color>, "; 
giveaward(nRank); 
end; 

Describe(strSay.." ��y l� ��a cho ng��i t��ng th��ng .", 1,"Nh�n l�y l� v�t ./oncancel"); 
giveaward(nRank); 
SetTaskTemp(193, 0); 
end; 

-- script viet hoa By http://tranhba.com  l�y ra tab v�n ki�n ��ch n�i dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

function dis_double(nLevel)-- script viet hoa By http://tranhba.com  c� hay kh�ng nh�n l�y g�p ��i t��ng th��ng 
local nResult = 0; 
local nSeed = random(100); 
	local nRate = tonumber(gettabfiledata(SFHD_DATAFILE, nLevel + 1, 5));
if (nSeed <= nRate * 100) then 
nResult = 1; 
end; 
return nResult; 
end; 

function giveaward(nRank) 
expaward(nRank); 
goodsaward(nRank); 
end; 

function expaward(nRank) 
AddOwnExp(dis_tabExp[nRank]); 
end; 

function goodsaward(nRank) 
local nGoodsType = getgoodtype(nRank); 
if (nGoodsType == 1) then 
AddItem(6, 1, 1008, 1, 0, 0, 0); 
local strsay = " ng��i ��t ���c m�t ho�ng kim m�m m�ng " 
Msg2Player(strsay); 
elseif (nGoodsType == 2) then 
AddItem(6, 1, 1007, 1, 0, 0, 0); 
local strsay = " ng��i ��t ���c m�t vi�n th�y tinh m�m m�ng " 
Msg2Player(strsay); 
elseif (nGoodsType == 3) then 
AddItem(6, 1, 1006, 1, 0, 0, 0); 
local strsay = " ng��i ��t ���c m�t vi�n hoa h�ng m�m m�ng " 
Msg2Player(strsay); 
elseif (nGoodsType == 4) then 
AddItem(6, 1, 1005, 1, 0, 0, 0); 
local strsay = " ng��i ��t ���c m�t vi�n may m�n m�m m�ng " 
Msg2Player(strsay); 
end; 
end; 

function getgoodtype(nRank) 
local nSeed = random(100); 
local nRate = {} 
local i; 
for i = 1, 4 do 
nRate[i] = dis_tabRate[nRank][i] * 100 
end; 
local nBase = 0; 
for i = 1, 4 do 
		nBase = nBase + nRate[i];
if (nBase >= nSeed) then 
return (5 - i); 
end; 
end; 
end; 

function onsale() 

end; 

function oncancel() -- script viet hoa By http://tranhba.com  h�y b� 

end; 

end; -- script viet hoa By http://tranhba.com // end of __DIS_AWARD_H__
