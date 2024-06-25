-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##teshubaijuwanlibao.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### ®Æc thï b¹ch c©u hoµn tËp häp ba ®Æc thï b¹ch c©u hoµn 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-07-12 11:17:19 

Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{ 
{szName = " ®Æc biÖt râ rµng c©u hoµn ", tbProp = {6,1,1157,1,0,0}, nCount = 3}, 
} 


function main(nItemIndex) 
local nWidth = 1 
local nHeight = 1 
local nCount = 3 
if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
Say(format("V× b¶o ®¶m ®¹i hiÖp ®Ých tµi s¶n an toµn , xin/mêi l­u l¹i %d %dx%d trang bÞ chç trèng ", nCount, nWidth, nHeight)) 
return 1 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n tói ®eo l­ng kh«ng gian 
tbAwardTemplet:GiveAwardByList(%tbAward,"Sö dông ®Æc biÖt râ rµng c©u hoµn lÔ tói ", 1) 
return 0 
end
