Include([[\script\missions\springfestival\head.lua]]); 

ITEM_DROPRATE_TABLE = { 
{ {6,1,978,1,1,1,1},0.020,"Gia t�c ho�n " }, 
{ {6,1,981,1,1,1,1},0.010,"H�n m� b�y r�p " }, 
{ {6,1,982,1,1,1,1},0.005,"Huy�n thi�n b�y r�p " }, 
{ {6,1,983,1,1,1,1},0.020,"S��ng xu�ng b�y r�p " }, 
{ {6,1,984,1,1,1,1},0.010,"��ng b�ng b�y r�p " }, 
{ {6,1,994,1,1,1,1},0.016,"Gi� r�t ng�c " }, 
{ {6,1,989,1,1,1,1},0.010,"Kinh nghi�m ph� " }, 
{ {6,1,988,1,1,1,1},0.005,"Kinh nghi�m ph� ( cao c�p ) " }, 
{ {6,1,985,1,1,1,1},0.005,"C�n kh�n na di ph� " }, 
{ {6,1,986,1,1,1,1},0.005,"D�i h�nh �o �nh ph� " }, 
{ {6,1,979,1,1,1,1},0.010,"B�ng s��ng k�n hi�u " }, 
{ 300,0.15}, 
{ 600,0.15}, 
{ 1500,0.15}, 
{ 3000,0.15}, 
{ 6000,0.1189}, 
{ 10000,0.015}, 
{ 20000,0.0001}, 
{ {6,1,71,1,1,1,1},0.0001,"Ti�n th�o l� "}, 
} 


function gift_true() 

add_dropitem() 

CastSkill(358, 1); -- script viet hoa By http://tranhba.com  �� m�t k� n�ng # 

Msg2Player("Ng��i nh�n ���c "..CO_GIFTNAME); 
end; 

function add_dropitem() 
local nSum = 0 
local nRandNum = random(1, 10000) 

for i =1, getn(ITEM_DROPRATE_TABLE) do 
		nSum = nSum + ITEM_DROPRATE_TABLE[i][2] * 10000
if (nSum >= nRandNum) then 
if (type( ITEM_DROPRATE_TABLE[i][1] ) == "table") then 
AddItem(ITEM_DROPRATE_TABLE[i][1][1], ITEM_DROPRATE_TABLE[i][1][2], ITEM_DROPRATE_TABLE[i][1][3], ITEM_DROPRATE_TABLE[i][1][4], ITEM_DROPRATE_TABLE[i][1][5], ITEM_DROPRATE_TABLE[i][1][6], ITEM_DROPRATE_TABLE[i][1][7]) 
Msg2Player("Ng��i nh�n ���c m�t <color=0xB5FDD7>"..ITEM_DROPRATE_TABLE[i][3]); 
elseif (type( ITEM_DROPRATE_TABLE[i][1] ) == "number") then 
local nExp = ITEM_DROPRATE_TABLE[i][1] * festival_get_exptimes(); 
AddOwnExp(nExp); 
Msg2Player("Ng��i nh�n ���c <color=0xB5FDD7>"..nExp.." kinh nghi�m tr� gi� ."); 
end 
break 
end 
end 


end 

function IsPickable( nItemIndex, nPlayerIndex ) 
if (0 == GetItemParam(nItemIndex, 2)) then 
return 1; 
end 
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
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
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
return 
end; 
AddSkillState(673, 20, 0, 15 * 18) 
Msg2Player("Ng��i nh�t ���c 30 tu�i ng��i gi� h�p qu� b� <color=yellow> ng�t x�u 15 gi�y <color>!"); 
end; 
