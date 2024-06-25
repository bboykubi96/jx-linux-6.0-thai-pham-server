-- script viet hoa By http://tranhba.com  gi∏ng sinh tinh linh ÆËi thoπi ch©n vËn # 
Include([[\script\missions\tong\tong_disciple\head.lua]]); 
ITEM_DROPRATE_TABLE = { 
{ {6,1,978,1,1,1,1},0.025,"Gia tËc hoµn " }, 
{ {6,1,981,1,1,1,1},0.025,"H´n m™ b…y rÀp " }, 
{ {6,1,983,1,1,1,1},0.025,"S≠¨ng xuËng b…y rÀp " }, 
{ {6,1,991,1,1,1,1},0.025,"Thi™n l´i ng‰c " }, 
{ {6,1,994,1,1,1,1},0.025,"Gi„ r–t ng‰c " }, 
{ {6,1,987,1,1,1,1},0.025,"ß´n Æﬁa phÔ " }, 
{ {6,1,989,1,1,1,1},0.018,"Kinh nghi÷m phÔ " }, 
{ {6,1,990,1,1,1,1},0.005, " l´i tËc hoµn " }, 
{ {6,1,982,1,1,1,1},0.005,"Huy“n thi™n b…y rÀp " }, 
{ {6,1,984,1,1,1,1},0.005,"ß„ng b®ng b…y rÀp " }, 
{ {6,1,993,1,1,1,1},0.005, " l´i th«n ng‰c " }, 
{ {6,1,992,1,1,1,1},0.005,"Huy“n b®ng ng‰c " }, 
{ {6,1,980,1,1,1,1},0.002,"Bπo l´i kÃn hi÷u " }, 
{ {6,1,979,1,1,1,1},0.002,"B®ng s≠¨ng kÃn hi÷u " }, 
{ {6,1,985,1,1,1,1},0.005,"Cµn kh´n na di phÔ " }, 
{ {6,1,986,1,1,1,1},0.003,"DÍi h◊nh ∂o ∂nh phÔ " }, 
{ {6,1,988,1,1,1,1},0.005,"Kinh nghi÷m phÔ ( cao c p ) " }, 
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
{ {6,1,402,1,1,1,1},0.001,"Th«n b› Æπi l‘ tÛi "}, 
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

CastSkill(358, 1); -- script viet hoa By http://tranhba.com  Æ” mÈt k¸ n®ng # 

Msg2Player("Ng≠¨i chi™u mÈ Æ’n "..nCount.." c∏ "..DIS_MOUSENAME); 
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
Msg2Player("Ng≠¨i Æπt Æ≠Óc 1 c∏ <color=0xB5FDD7>"..ITEM_DROPRATE_TABLE[i][3]) 
elseif (type( ITEM_DROPRATE_TABLE[i][1] ) == "number") then 
local nExp = ITEM_DROPRATE_TABLE[i][1] * get_exptimes(); 
AddOwnExp(nExp); 
Msg2Player("Ng≠¨i Æπt Æ≠Óc <color=0xB5FDD7>"..nExp.." kinh nghi÷m trﬁ gi∏ .") 
end 
break 
end 
end 


end
