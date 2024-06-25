-- script viet hoa By http://tranhba.com  t��ng th��ng .lua ( bang h�i ��nh n�m th� ho�t ��ng ) 
if (not __SF_AWARD_H__) then 
__SF_AWARD_H__ = 1; 

IncludeLib("FILESYS"); 
Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");
SFHD_DATAFILE = [[\settings\tong\workshop\huodong_level_data.txt]]; 



function springfestival_aword(nTongID, nWorkshopID) 
if (GetTaskTemp(193) == 1) then 
return 
end; 
SetTaskTemp(193, 1); 
-- script viet hoa By http://tranhba.com  ��t ���c ho�t ��ng ph��ng c�p b�c 
local nLevel = TWS_GetLevel(nTongID, nWorkshopID); 
if (nLevel < 1 or nLevel > 10) then 
Say("Ng��i bang h�i c�n ch�a x�y d�ng n�n x��ng .", 1,"Ta bi�t !/festival06_Cancal") 
return 0; 
end; 

local nGetCount = GetTask(SF_COUNT_ONETIME); 
local nRank = GetTask(SF_TK_RANK); 
SetTask(SF_COUNT_ONETIME, 0); 
SetTask(SF_TK_RANK, 0); 
if (nGetCount <= 0 or nRank <= 0) then 
Say("Ho�t ��ng ph��ng t�ng qu�n : gi�ng nh� ng��i c�n ch�a �i ��nh n�m th� , mu�n d�n t��ng , nhanh �i ��nh n�m th� tr��c �i .", 1,"Ch� coi /festival06_Cancal"); 
SetTaskTemp(193, 0); 
return 
end; 
local strniaoshou = " qu� nguy hi�m , ng��i m�i v�a b� qu�i th� x�m nh�p , may m�n l� m�i ng��i h�p l�c �u�i �i qu�i v�t . v� c�m t� ng��i d�ng c�m , ta c� m�t ch�t t�m � , xin/m�i ti�p n�p . "; 
local stryongshi = " l�m r�t t�t , ng��i �� d�ng ph�o tr��ng ��nh tr�ng n�m th� <color=yellow>"..nGetCount.."<color> l�n , ��ng h�ng th� ?<color=yellow>"..nRank.."<color>, ��y l� ��a cho ng��i l� ph�m , c�m �i . "; 

festival_addaward(nRank); 
local isDouble = festival_double(nLevel);-- script viet hoa By http://tranhba.com  xem m�t ch�t c� hay kh�ng ��t ���c g�p ��i 
if (1 == isDouble) then 
strniaoshou = " th�t l� may m�n , ng��i ��t ���c <color=red> g�p ��i t��ng th��ng <color>, "..strniaoshou; 
stryongshi = " th�t l� may m�n , ng��i ��t ���c <color=red> g�p ��i t��ng th��ng <color>, "..stryongshi; 
festival_addaward(nRank);-- script viet hoa By http://tranhba.com  g�p ��i t��ng th��ng 
end; 
if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT) then 
Say(strniaoshou, 1,"Nh�n l�y l� v�t ./festival06_Cancal"); 
else 
Say(stryongshi, 1,"Nh�n l�y l� v�t ./festival06_Cancal"); 
end; 
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

function festival_double(nLevel) 
local nResult = 0; 
local nSeed = random(100); 
	local nRate = tonumber(gettabfiledata(SFHD_DATAFILE, nLevel + 1, 7));
if (nSeed <= nRate * 100) then 
nResult = 1; 
end; 
return nResult; 
end; 

festival_tabExp = { 
5000000, 
4000000, 
3000000, 
2000000, 
1500000, 
1000000, 
500000, 
500000, 
}; 
festival_tabRate = { 
{0 ,0 ,0 ,0.464 ,0.2 ,0.175 ,0.15 ,0.01 ,0.001 ,0 }, 
{0 ,0 ,0 ,0.5562 ,0.2 ,0.145 ,0.09 ,0.008 ,0.0008 ,0 } , 
{0 ,0 ,0.3845 ,0.3 ,0.15 ,0.1 ,0.06 ,0.005 ,0.0005 ,0 } , 
{0 ,0 ,0.546 ,0.2 ,0.12 ,0.085 ,0.045 ,0.004 ,0 ,0 } , 
{0 ,0 ,0.653 ,0.15 ,0.09 ,0.075 ,0.03 ,0.002 ,0 ,0.01 } , 
{0 ,0.295 ,0.4 ,0.15 ,0.076 ,0.068 ,0.01 ,0.001 ,0 ,0 } , 
{0.267 ,0.3 ,0.2 ,0.12 ,0.08 ,0.03 ,0.003 ,0 ,0 ,0 } , 
{0.586 ,0.2 ,0.12 ,0.06 ,0.03 ,0.004 ,0 ,0 ,0 ,0 } 
}; 

festival_tab_Goods = { 
{"Ph�c duy�n l� ( ti�u ) ", 1, 122 }, 
{"Ph�c duy�n l� ( trung ) ", 1, 123 }, 
{"Ph�c duy�n l� ( ��i ) ", 1, 124 }, 
{"Huy�n tinh 3 c�p ", 3, 147 }, 
{"Ti�n th�o l� ", 1, 71 }, 
{"Huy�n tinh 4 c�p ", 4, 147 }, 
{"Huy�n tinh 5 c�p ", 5, 147 }, 
{"Huy�n tinh 6 c�p ", 6, 147 }, 
{"Huy�n tinh 7 c�p ", 7, 147 }, 
{"Ng�y l� ph�o tr��ng ", 1, 1345 }, -- script viet hoa By http://tranhba.com  x�c su�t �i�u v� 0 , kh�ng sinh ra 
}; 
function festival_addaward(nRank) 
if (nRank > getn(festival_tabExp)) then 
nRank = getn(festival_tabExp); 
end; 
nRank = festival_award_rank(nRank); 
festival_expaward(nRank); 
festival_goodsaward(nRank); 
-- script viet hoa By http://tranhba.com  if (nRank <= 2) then 
-- script viet hoa By http://tranhba.com  local nSeed = random(1, 100); 
-- script viet hoa By http://tranhba.com  if (nSeed <= 2) then 
-- script viet hoa By http://tranhba.com  AddItem(0, 11, 263, 1, 0, 0, 0); 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng��i thu ���c m�t <color=yellow> n�m th� m�t n� <color>") 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  end; 
end; 

function festival_goodsaward(nRank) 
local nGroup = GetTask(TK_GROUPID); 
local nGoodsType = festival_getgoodtype(nRank, nGroup); 
local strsay = ""; 
if (festival_tab_Goods[nGoodsType][2] == 1) then 
AddItem(6, 1, festival_tab_Goods[nGoodsType][3], 1, 0, 0, 0); 
else 
AddItem(6, 1, festival_tab_Goods[nGoodsType][3], festival_tab_Goods[nGoodsType][2], 0, 0, 0); 
end; 
Msg2Player("Ng��i ��t ���c <color=yellow>"..festival_tab_Goods[nGoodsType][1].."<color>."); 
end; 

function festival_getgoodtype(nRank, nGroup) 
local nSeed = random(100); 
local nRate = {} 
local i; 
for i = 1, 10 do 
nRate[i] = festival_tabRate[nRank][i] * 100; 
end; 
local nBase = 0; 
for i = 1, 10 do 
		nBase = nBase + nRate[i];
if (nBase >= nSeed) then 
return i; 
end; 
end; 
end; 

function festival_expaward(nRank) 
if (nRank < 1) then 
nRank = 1; 
end; 
if (nRank > 8) then 
nRank = 8; 
end; 
local nCount = festival_tabExp[nRank]; 
AddOwnExp(nCount); 
Msg2Player("Ng��i ��t ���c <color=yellow>"..nCount.."<color> kinh nghi�m tr� gi� ") 
end; 

function festival_addpkwan() 
local itemidx = random(1, 10); 
AddItem(6, 0, itemidx, 1, 0, 0, 0); 
tab_pkwan_name = {"Tr��ng m�nh ho�n ","Th�m ch�y ho�n ","��i l�c ho�n ","Cao nhanh ch�ng ho�n ","Trung h�c �� nh� c�p ho�n ","Nhanh ch�ng ho�n ","B�ng ph�ng ho�n ", " l�i ph�ng ho�n ", " l�a ph�ng ho�n ","��c ph�ng ho�n "}; 
return tab_pkwan_name[itemidx]; 
end; 

function festival_award_rank(nRank) 
local nGroup = GetTask(TK_GROUPID); 
if (nGroup > SF_SMALLMAPCOUNT) then 
if (nRank == 1) then 
nRank = 3; 
else 
nRank = 8; 
end; 
end; 
return nRank; 
end; 

function festival06_Cancal() 

end; 

end; -- script viet hoa By http://tranhba.com // end of __SF_AWARD_H__
