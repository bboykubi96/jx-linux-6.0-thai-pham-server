Include([[\script\missions\tong\tong_springfestival\head.lua]]); 

ITEM_DROPRATE_TABLE = { 
{ {6,1,978,1,1,1,1},0.020,"Gia t�c ho�n " }, 
{ {6,1,981,1,1,1,1},0.010,"H�n m� b�y r�p " }, 
{ {6,1,983,1,1,1,1},0.020,"S��ng xu�ng b�y r�p " }, 
{ {6,1,994,1,1,1,1},0.016,"Gi� r�t ng�c " }, 
{ {6,1,989,1,1,1,1},0.010,"Kinh nghi�m ph� " }, 
{ {6,1,982,1,1,1,1},0.005,"Huy�n thi�n b�y r�p " }, 
{ {6,1,984,1,1,1,1},0.010,"��ng b�ng b�y r�p " }, 
{ {6,1,979,1,1,1,1},0.002,"B�ng s��ng k�n hi�u " }, 
{ {6,1,985,1,1,1,1},0.005,"C�n kh�n na di ph� " }, 
{ {6,1,986,1,1,1,1},0.001,"D�i h�nh �o �nh ph� " }, 
{ {6,1,988,1,1,1,1},0.005,"Kinh nghi�m ph� ( cao c�p ) " }, 
{ 1000,0.12}, 
{ 2000,0.12}, 
{ 5000,0.15}, 
{ 10000,0.15}, 
{ 20000,0.12}, 
{ 50000,0.1}, 
{ 100000,0.015}, 
{ 200000,0.006}, 
{ 300000,0.0025}, 
{ 500000,0.0005}, 
{ {6,1,71,1,1,1,1},0.001,"Ti�n th�o l� "}, 
{ {6,1,122,1,1,1,1},0.010,"Ph�c duy�n l� ( ti�u ) "}, 
{ {6,1,123,1,1,1,1},0.005,"Ph�c duy�n l� ( trung ) "}, 
{ {6,1,124,1,1,1,1},0.003,"Ph�c duy�n l� ( ��i ) "}, 
-- { {6,1,402,1,1,1,1},0.002,"Th�n b� ��i l� t�i "}, 
{ {6,0,1,1,1,1,1},0.005,"Tr��ng m�nh ho�n "}, 
{ {6,0,2,1,1,1,1},0.005,"Th�m b�o ho�n "}, 
{ {6,0,3,1,1,1,1},0.005,"��i l�c ho�n "}, 
{ {6,0,4,1,1,1,1},0.005,"Cao nhanh ch�ng ho�n "}, 
{ {6,0,5,1,1,1,1},0.005,"Trung h�c �� nh� c�p ho�n "}, 
{ {6,0,6,1,1,1,1},0.005,"Nhanh ch�ng ho�n "}, 
{ {6,0,7,1,1,1,1},0.005,"B�ng ph�ng ho�n "}, 
{ {6,0,8,1,1,1,1},0.005, " l�i ph�ng ho�n t� "}, 
{ {6,0,9,1,1,1,1},0.005, " l�a ph�ng ho�n "}, 
{ {6,0,10,1,1,1,1},0.005,"��c ph�ng ho�n "}, 
} 


function gift_true() 

add_dropitem() 

CastSkill(358, 1); -- script viet hoa By http://tranhba.com  �� m�t k� n�ng # 

Msg2Player("Ng��i ��t ���c 1 "..SF_GIFTNAME); 
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
Msg2Player("Ng��i l�y ���c 1 c� <color=0xB5FDD7>"..ITEM_DROPRATE_TABLE[i][3]); 
elseif (type( ITEM_DROPRATE_TABLE[i][1] ) == "number") then 
local nExp = ITEM_DROPRATE_TABLE[i][1] * festival_get_exptimes(); 
AddOwnExp(nExp); 
Msg2Player("Ng��i ��t ���c <color=0xB5FDD7>"..nExp.." kinh nghi�m tr� gi� ."); 
end 
break 
end 
end 


end 

function IsPickable( nItemIndex, nPlayerIndex ) 
if (0 == GetItemParam(nItemIndex, 2)) then 
return 1; 
end 
if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT) then 
return 0; 
else 
return 1; 
end; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
SetSpecItemParam(nItemIndex, 2, 0); 
local bFaked = GetItemParam(nItemIndex, 1); 
if (1 == bFaked) then 
gift_true(nPlayerIndex); 
elseif(2 == bFaked) then 
gift_fake(nPlayerIndex); 
end; 
return 0; 
end 

function gift_fake(nPlayerIndex) -- script viet hoa By http://tranhba.com  gi� h�p qu� 
if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT) then 
return 
end; 
AddSkillState(673, 20, 0, 15 * 18) 
Msg2Player("Ng��i ch�n tr�ch l�m th� ��ch gi� l� v�t <color=yellow> ng�t x�u 15 gi�y <color>!"); 
end; 
