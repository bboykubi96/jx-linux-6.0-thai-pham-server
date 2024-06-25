-- script viet hoa By http://tranhba.com  2007 gi¸ng sinh ho¹t ®éng gi¸ng sinh ®­êng 
-- script viet hoa By http://tranhba.com  thêi gian sö dông 2007/11/23 00#00~24#00 
-- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng # nhá nhÊt # 6 1 1622 
-- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng # tiÓu # 6 1 1623 
-- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng # trung # 6 1 1624 
-- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng # ®¹i # 6 1 1625 
-- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng # cùc lín # 6 1 1626 
-- script viet hoa By http://tranhba.com  sö dông kinh nghiÖm th­îng h¹n 1 øc 

XMASCANDY2007_DATE = 20071224 -- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng sö dông kú h¹n 
XMASCANDY2007_EXPLM = 100000000 -- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng kinh nghiÖm th­îng h¹n 
TSK_XMASCANDY2007_EXP = 1861 -- script viet hoa By http://tranhba.com  gi¸ng sinh ®­êng kinh nghiÖm mÖt mái kÕ ghi chÐp thay ®æi l­îng 

function main(nItemIdx) 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 

if (nDate > XMASCANDY2007_DATE) then -- script viet hoa By http://tranhba.com  thêi gian sö dông ph¸n ®o¸n 
Msg2Player("§· qua sö dông kú , nÕu nh­ tiÕp tôc sö dông sÏ cã nguy h¹i , cÇn bu«ng tha cho "); 
Say("§· qua sö dông kú , nÕu nh­ tiÕp tôc sö dông sÏ cã nguy h¹i , cÇn bu«ng tha cho ", 0); 
WriteLog(format("[XMASCANDY2007]\t%s\t%s\t%s\t%s", 
GetLocalDate("%Y%m%d %X"), 
GetName(), 
GetAccount(), 
"Delete_Dated_XMASCANDY" )); 
return 0; 
end; 

local tb_candy_exp = { 
[1622] = 15000, 
[1623] = 25000, 
[1624] = 40000, 
[1625] = 50000, 
[1626] = 100000, 
}; 
local ng, nd, np = GetItemProp(nItemIdx); 
local szItemName = GetItemName(); 
if (tb_candy_exp[np]) then 
		local nCurExp = tb_candy_exp[np] + GetTask(TSK_XMASCANDY2007_EXP);
if (nCurExp >= XMASCANDY2007_EXPLM) then 
Msg2Player("§¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ ®· ®¹t 1 øc th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu ."); 
Say("§¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ ®· ®¹t 1 øc th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu ."); 
return 1; 
else 
AddOwnExp(tb_candy_exp[np]); 
SetTask(TSK_XMASCANDY2007_EXP, nCurExp); 
WriteLog(format("[XMASCANDY2007]\t%s\t%s\t%s\t%s%d", 
GetLocalDate("%Y%m%d %X"), 
GetName(), 
GetAccount(), 
"Use_XMASCANDY_Exp:", 
tb_candy_exp[np] )); 
end; 
else 
return 1; 
end; 
end;
