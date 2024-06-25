Include([[\script\missions\springfestival\head.lua]]); 

ITEM_DROPRATE_TABLE = { 
{ {6,1,978,1,1,1,1},0.020,"Gia tËc hoµn " }, 
{ {6,1,981,1,1,1,1},0.010,"H´n m™ b…y rÀp " }, 
{ {6,1,982,1,1,1,1},0.005,"Huy“n thi™n b…y rÀp " }, 
{ {6,1,983,1,1,1,1},0.020,"S≠¨ng xuËng b…y rÀp " }, 
{ {6,1,984,1,1,1,1},0.010,"ß„ng b®ng b…y rÀp " }, 
{ {6,1,994,1,1,1,1},0.016,"Gi„ r–t ng‰c " }, 
{ {6,1,989,1,1,1,1},0.010,"Kinh nghi÷m phÔ " }, 
{ {6,1,988,1,1,1,1},0.005,"Kinh nghi÷m phÔ ( cao c p ) " }, 
{ {6,1,985,1,1,1,1},0.005,"Cµn kh´n na di phÔ " }, 
{ {6,1,986,1,1,1,1},0.005,"DÍi h◊nh ∂o ∂nh phÔ " }, 
{ {6,1,979,1,1,1,1},0.010,"B®ng s≠¨ng kÃn hi÷u " }, 
{ 300,0.15}, 
{ 600,0.15}, 
{ 1500,0.15}, 
{ 3000,0.15}, 
{ 6000,0.1189}, 
{ 10000,0.015}, 
{ 20000,0.0001}, 
{ {6,1,71,1,1,1,1},0.0001,"Ti™n th∂o lÈ "}, 
} 


function gift_true() 

add_dropitem() 

CastSkill(358, 1); -- script viet hoa By http://tranhba.com  Æ” mÈt k¸ n®ng # 

Msg2Player("Ng≠¨i nhÀn Æ≠Óc "..CO_GIFTNAME); 
end; 

function add_dropitem() 
local nSum = 0 
local nRandNum = random(1, 10000) 

for i =1, getn(ITEM_DROPRATE_TABLE) do 
		nSum = nSum + ITEM_DROPRATE_TABLE[i][2] * 10000
if (nSum >= nRandNum) then 
if (type( ITEM_DROPRATE_TABLE[i][1] ) == "table") then 
AddItem(ITEM_DROPRATE_TABLE[i][1][1], ITEM_DROPRATE_TABLE[i][1][2], ITEM_DROPRATE_TABLE[i][1][3], ITEM_DROPRATE_TABLE[i][1][4], ITEM_DROPRATE_TABLE[i][1][5], ITEM_DROPRATE_TABLE[i][1][6], ITEM_DROPRATE_TABLE[i][1][7]) 
Msg2Player("Ng≠¨i nhÀn Æ≠Óc mÈt <color=0xB5FDD7>"..ITEM_DROPRATE_TABLE[i][3]); 
elseif (type( ITEM_DROPRATE_TABLE[i][1] ) == "number") then 
local nExp = ITEM_DROPRATE_TABLE[i][1] * festival_get_exptimes(); 
AddOwnExp(nExp); 
Msg2Player("Ng≠¨i nhÀn Æ≠Óc <color=0xB5FDD7>"..nExp.." kinh nghi÷m trﬁ gi∏ ."); 
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

function gift_fake(nPlayerIndex) -- script viet hoa By http://tranhba.com  gi∂ hÈp quµ 
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
return 
end; 
AddSkillState(673, 20, 0, 15 * 18) 
Msg2Player("Ng≠¨i nh∆t Æ≠Óc 30 tuÊi ng≠Íi gi∂ hÈp quµ bﬁ <color=yellow> ng t xÿu 15 gi©y <color>!"); 
end; 
