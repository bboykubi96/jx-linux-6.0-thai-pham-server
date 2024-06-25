Include([[\script\missions\tong\tong_springfestival\head.lua]]); 

ITEM_DROPRATE_TABLE = { 
{ {6,1,978,1,1,1,1},0.020,"Gia tËc hoµn " }, 
{ {6,1,981,1,1,1,1},0.010,"H´n m™ b…y rÀp " }, 
{ {6,1,983,1,1,1,1},0.020,"S≠¨ng xuËng b…y rÀp " }, 
{ {6,1,994,1,1,1,1},0.016,"Gi„ r–t ng‰c " }, 
{ {6,1,989,1,1,1,1},0.010,"Kinh nghi÷m phÔ " }, 
{ {6,1,982,1,1,1,1},0.005,"Huy“n thi™n b…y rÀp " }, 
{ {6,1,984,1,1,1,1},0.010,"ß„ng b®ng b…y rÀp " }, 
{ {6,1,979,1,1,1,1},0.002,"B®ng s≠¨ng kÃn hi÷u " }, 
{ {6,1,985,1,1,1,1},0.005,"Cµn kh´n na di phÔ " }, 
{ {6,1,986,1,1,1,1},0.001,"DÍi h◊nh ∂o ∂nh phÔ " }, 
{ {6,1,988,1,1,1,1},0.005,"Kinh nghi÷m phÔ ( cao c p ) " }, 
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
{ {6,1,71,1,1,1,1},0.001,"Ti™n th∂o lÈ "}, 
{ {6,1,122,1,1,1,1},0.010,"PhÛc duy™n lÈ ( ti”u ) "}, 
{ {6,1,123,1,1,1,1},0.005,"PhÛc duy™n lÈ ( trung ) "}, 
{ {6,1,124,1,1,1,1},0.003,"PhÛc duy™n lÈ ( Æπi ) "}, 
-- { {6,1,402,1,1,1,1},0.002,"Th«n b› Æπi l‘ tÛi "}, 
{ {6,0,1,1,1,1,1},0.005,"Tr≠Íng m÷nh hoµn "}, 
{ {6,0,2,1,1,1,1},0.005,"Th™m bµo hoµn "}, 
{ {6,0,3,1,1,1,1},0.005,"ßπi l˘c hoµn "}, 
{ {6,0,4,1,1,1,1},0.005,"Cao nhanh ch„ng hoµn "}, 
{ {6,0,5,1,1,1,1},0.005,"Trung h‰c Æ÷ nhﬁ c p hoµn "}, 
{ {6,0,6,1,1,1,1},0.005,"Nhanh ch„ng hoµn "}, 
{ {6,0,7,1,1,1,1},0.005,"B®ng phﬂng hoµn "}, 
{ {6,0,8,1,1,1,1},0.005, " l´i phﬂng hoµn tˆ "}, 
{ {6,0,9,1,1,1,1},0.005, " lˆa phﬂng hoµn "}, 
{ {6,0,10,1,1,1,1},0.005,"ßÈc phﬂng hoµn "}, 
} 


function gift_true() 

add_dropitem() 

CastSkill(358, 1); -- script viet hoa By http://tranhba.com  Æ” mÈt k¸ n®ng # 

Msg2Player("Ng≠¨i Æπt Æ≠Óc 1 "..SF_GIFTNAME); 
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
Msg2Player("Ng≠¨i l y Æ≠Óc 1 c∏ <color=0xB5FDD7>"..ITEM_DROPRATE_TABLE[i][3]); 
elseif (type( ITEM_DROPRATE_TABLE[i][1] ) == "number") then 
local nExp = ITEM_DROPRATE_TABLE[i][1] * festival_get_exptimes(); 
AddOwnExp(nExp); 
Msg2Player("Ng≠¨i Æπt Æ≠Óc <color=0xB5FDD7>"..nExp.." kinh nghi÷m trﬁ gi∏ ."); 
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

function gift_fake(nPlayerIndex) -- script viet hoa By http://tranhba.com  gi∂ hÈp quµ 
if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT) then 
return 
end; 
AddSkillState(673, 20, 0, 15 * 18) 
Msg2Player("Ng≠¨i ch‰n tr∏ch l«m thÛ Æ›ch gi∂ l‘ vÀt <color=yellow> ng t xÿu 15 gi©y <color>!"); 
end; 
