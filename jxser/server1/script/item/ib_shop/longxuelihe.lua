-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##longxuelihe.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### long huyÕt hép quµ sö dông nh­ng ®¹t ®­îc 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-07-11 11:54:21 

Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{ 
{szName = " long huyÕt hoµn ", tbProp = {6,1,2117,1,0,0}, nCount = 3}, 
{szName = " tèng kim nhanh chãng hoµn ", tbProp = {6,1,190,1,0,0}, nCount = 5}, 
{szName = " tèng kim bªn ngoµi phæ hoµn ", tbProp = {6,1,178,1,0,0}, nCount = 5}, -- script viet hoa By http://tranhba.com  vËt phÈm ID kh«ng x¸c ®Þnh 
} 


function main(nItemIndex) 
local nWidth = 1 
local nHeight = 1 
local nCount = 5 
if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
Say(format("V× b¶o ®¶m ®¹i hiÖp ®Ých tµi s¶n an toµn , xin/mêi l­u l¹i %d %dx%d trang bÞ chç trèng ", nCount, nWidth, nHeight)) 
return 1 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n tói ®eo l­ng kh«ng gian 
tbAwardTemplet:GiveAwardByList(%tbAward,"Sö dông long huyÕt hép quµ ", 1) 
return 0 
end
