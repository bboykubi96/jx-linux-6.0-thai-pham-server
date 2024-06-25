-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: xunwu_hou.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-12-19 
-- script viet hoa By http://tranhba.com Comment: lÔ gi¸ng sinh ho¹t ®éng t­ëng th­ëng —— t×m vËt hÇu 
-- script viet hoa By http://tranhba.com  chøc n¨ng # mçi ngµy cã thÓ sö dông 10 lÇn , mçi mét lÇn sö dông liÒn cã thÓ ngÉu nhiªn ®¹t ®­îc mét mãn trang bŞ 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Uworld0001 = 2001 
MAX_USETIME = 10 
-- script viet hoa By http://tranhba.com  thø nhÊt ch÷ tiÕt lµm gèc ngµy sö dông sè lÇn 
-- script viet hoa By http://tranhba.com  thø hai ch÷ tiÕt v× cuèi cïng sö dông nhËt kú 
function main() 
use_day = GetByte(GetTask(Uworld0001), 2) 

nDay = tonumber(date("%d")) 
if (use_day ~= nDay) then 
SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, 0)) 
end 
use_time = GetByte(GetTask(Uworld0001), 1) 
if (use_time >= MAX_USETIME) then 
Talk(1, "","T×m vËt hÇu mÖt mái ®İch ngñ thiÕp ®i , xem ra nã kh«ng ngñ b·o ch¾c lµ sÏ kh«ng tØnh . ") 
else 
-- script viet hoa By http://tranhba.com AddItem() 
		SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, use_time + 1))
Msg2Player("Ngµi thu ®­îc mét mãn ngÉu nhiªn trang bŞ ") 
end 
return 1 
end
