-- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh ��i tho�i ch�n v�n # 
Include([[\script\missions\tong\tong_disciple\head.lua]]); 
ITEM_DROPRATE_TABLE = { 
{ {6,1,978,1,1,1,1},0.025,"Gia t�c ho�n " }, 
{ {6,1,981,1,1,1,1},0.025,"H�n m� b�y r�p " }, 
{ {6,1,983,1,1,1,1},0.025,"S��ng xu�ng b�y r�p " }, 
{ {6,1,991,1,1,1,1},0.025,"Thi�n l�i ng�c " }, 
{ {6,1,994,1,1,1,1},0.025,"Gi� r�t ng�c " }, 
{ {6,1,987,1,1,1,1},0.025,"��n ��a ph� " }, 
{ {6,1,989,1,1,1,1},0.018,"Kinh nghi�m ph� " }, 
{ {6,1,990,1,1,1,1},0.005, " l�i t�c ho�n " }, 
{ {6,1,982,1,1,1,1},0.005,"Huy�n thi�n b�y r�p " }, 
{ {6,1,984,1,1,1,1},0.005,"��ng b�ng b�y r�p " }, 
{ {6,1,993,1,1,1,1},0.005, " l�i th�n ng�c " }, 
{ {6,1,992,1,1,1,1},0.005,"Huy�n b�ng ng�c " }, 
{ {6,1,980,1,1,1,1},0.002,"B�o l�i k�n hi�u " }, 
{ {6,1,979,1,1,1,1},0.002,"B�ng s��ng k�n hi�u " }, 
{ {6,1,985,1,1,1,1},0.005,"C�n kh�n na di ph� " }, 
{ {6,1,986,1,1,1,1},0.003,"D�i h�nh �o �nh ph� " }, 
{ {6,1,988,1,1,1,1},0.005,"Kinh nghi�m ph� ( cao c�p ) " }, 
{ 500,0.08}, 
{ 1000,0.1}, 
{ 3000,0.12}, 
{ 5000,0.18}, 
{ 10000,0.12}, 
{ 30000,0.1}, 
{ 50000,0.05}, 
{ 100000,0.024}, 
{ 150000,0.01}, 
{ 300000,0.005}, 
{ {6,1,402,1,1,1,1},0.001,"Th�n b� ��i l� t�i "}, 
} 


function main() 
local nNpcIdx = GetLastDiagNpc(); 
if (GetNpcParam(nNpcIdx, 4) == 0 ) then 
return 
end 
SetNpcParam(nNpcIdx,4,0) 

	local nCount = GetTask(DIS_COUNT_ONETIME) + 1;
SetTask(DIS_COUNT_ONETIME, nCount); 
DelNpc(nNpcIdx); 

add_dropitem() 

CastSkill(358, 1); -- script viet hoa By http://tranhba.com  �� m�t k� n�ng # 

Msg2Player("Ng��i chi�u m� ��n "..nCount.." c� "..DIS_MOUSENAME); 
end; 

function add_dropitem() 
local sum = 0 
for i = 1, getn(ITEM_DROPRATE_TABLE) do 
		sum = sum + ITEM_DROPRATE_TABLE[i][2] * 1000
end 

local nRandNum = random(sum) 
local nSum = 0 
for i =1, getn(ITEM_DROPRATE_TABLE) do 
		nSum = nSum + ITEM_DROPRATE_TABLE[i][2] * 1000
if (nSum >= nRandNum) then 
if (type( ITEM_DROPRATE_TABLE[i][1] ) == "table") then 
AddItem(ITEM_DROPRATE_TABLE[i][1][1], ITEM_DROPRATE_TABLE[i][1][2], ITEM_DROPRATE_TABLE[i][1][3], ITEM_DROPRATE_TABLE[i][1][4], ITEM_DROPRATE_TABLE[i][1][5], ITEM_DROPRATE_TABLE[i][1][6], ITEM_DROPRATE_TABLE[i][1][7]) 
Msg2Player("Ng��i ��t ���c 1 c� <color=0xB5FDD7>"..ITEM_DROPRATE_TABLE[i][3]) 
elseif (type( ITEM_DROPRATE_TABLE[i][1] ) == "number") then 
local nExp = ITEM_DROPRATE_TABLE[i][1] * get_exptimes(); 
AddOwnExp(nExp); 
Msg2Player("Ng��i ��t ���c <color=0xB5FDD7>"..nExp.." kinh nghi�m tr� gi� .") 
end 
break 
end 
end 


end
