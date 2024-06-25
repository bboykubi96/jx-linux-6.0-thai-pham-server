-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##yirongmishu.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##wangjingjun 
-- script viet hoa By http://tranhba.com  néi dung ### dÞch dung bÝ thuËt bao hµm nhiÒu mÆt n¹ ®Ých lÔ tói lo¹i vËt phÈm 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-07-11 09:36:28 

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

local tbMask = 
{ 
{szName = " b¹ch yªu kiÒu mÆt n¹ ", tbProp = {0,11,496,1,0,0}, nExpiredTime = 48*60}, 
{szName = " b¹ch thµnh QuËn chóa mÆt n¹ ", tbProp = {0,11,497,1,0,0}, nExpiredTime = 48*60}, 
{szName = " chung linh tó mÆt n¹ ", tbProp = {0,11,498,1,0,0}, nExpiredTime = 48*60}, 
{szName = " cæ b¸ch mÆt n¹ ", tbProp = {0,11,499,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®ao song ph­îng mÆt n¹ ", tbProp = {0,11,500,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®¹o thanh ch©n nh©n mÆt n¹ ", tbProp = {0,11,501,1,0,0}, nExpiredTime = 48*60}, 
{szName = " hay nh­ mÆt n¹ ", tbProp = {0,11,502,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®oan méc duÖ mÆt n¹ ", tbProp = {0,11,503,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®«ng tö mÆt n¹ ", tbProp = {0,11,504,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®­êng bÊt nhiÔm mÆt n¹ ", tbProp = {0,11,505,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  10 
{szName = " ®­êng thÇn mÆt n¹ ", tbProp = {0,11,506,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®­êng thiªn t©m mÆt n¹ ", tbProp = {0,11,507,1,0,0}, nExpiredTime = 48*60}, 
{szName = " nhµ luËt trong mòi mÆt n¹ ", tbProp = {0,11,508,1,0,0}, nExpiredTime = 48*60}, 
{szName = " hµ linh phiªu mÆt n¹ ", tbProp = {0,11,509,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ng­êi nµo ta mÆt n¹ ", tbProp = {0,11,510,1,0,0}, nExpiredTime = 48*60}, 
{szName = " h¹ thµnh mÆt n¹ ", tbProp = {0,11,511,1,0,0}, nExpiredTime = 48*60}, 
{szName = " b¹ch heo mÆt n¹ ", tbProp = {0,11,512,1,0,0}, nExpiredTime = 48*60}, 
{szName = " mai hoa léc mÆt n¹ ", tbProp = {0,11,513,1,0,0}, nExpiredTime = 48*60}, 
{szName = " huyÒn gi¸c ®¹i s­ mÆt n¹ ", tbProp = {0,11,514,1,0,0}, nExpiredTime = 48*60}, 
{szName = " lam linh c«ng tö mÆt n¹ ", tbProp = {0,11,515,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  20 
{szName = " lan vÉn nh­ cò mÆt n¹ ", tbProp = {0,11,516,1,0,0}, nExpiredTime = 48*60}, 
{szName = " liÔu phiªu an mÆt n¹ ", tbProp = {0,11,517,1,0,0}, nExpiredTime = 48*60}, 
{szName = " liÔu thanh thanh mÆt n¹ ", tbProp = {0,11,518,1,0,0}, nExpiredTime = 48*60}, 
{szName = " long m­êi ba nhµ mÆt n¹ ", tbProp = {0,11,519,1,0,0}, nExpiredTime = 48*60}, 
{szName = " m¹nh th­¬ng l­¬ng mÆt n¹ ", tbProp = {0,11,520,1,0,0}, nExpiredTime = 48*60}, 
{szName = " Mé Dung an mÆt n¹ ", tbProp = {0,11,521,1,0,0}, nExpiredTime = 48*60}, 
{szName = " nguyÖt dao dao mÆt n¹ ", tbProp = {0,11,522,1,0,0}, nExpiredTime = 48*60}, 
{szName = " phiÕn kh¸ch mÆt n¹ ", tbProp = {0,11,523,1,0,0}, nExpiredTime = 48*60}, 
{szName = " n¨m míi hiÖp kh¸ch ", tbProp = {0,11,524,1,0,0}, nExpiredTime = 48*60}, 
{szName = " n¨m míi hiÖp n÷ ", tbProp = {0,11,525,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  30 
{szName = " thanh niªn h¶i ®­êng mÆt n¹ ", tbProp = {0,11,526,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr­ëng thµnh h¶i ®­êng mÆt n¹ ", tbProp = {0,11,527,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh niªn löa nhÉn mÆt n¹ ", tbProp = {0,11,528,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr­ëng thµnh löa nhÉn mÆt n¹ ", tbProp = {0,11,529,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh niªn kim phong mÆt n¹ ", tbProp = {0,11,530,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr­ëng thµnh kim phong mÆt n¹ ", tbProp = {0,11,531,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh niªn l«i th©n kiÕm cô ", tbProp = {0,11,532,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr­ëng thµnh l«i th©n kiÕm cô ", tbProp = {0,11,533,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thanh niªn c­êi s­¬ng mÆt n¹ ", tbProp = {0,11,534,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tr­ëng thµnh c­êi s­¬ng mÆt n¹ ", tbProp = {0,11,535,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  40 
{szName = " thanh tuyÖt s­ th¸i mÆt n¹ ", tbProp = {0,11,536,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thiÕu niªn h¶i ®­êng mÆt n¹ ", tbProp = {0,11,537,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thiÕu niªn löa nhÉn mÆt n¹ ", tbProp = {0,11,538,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thiÕu niªn kim phong mÆt n¹ ", tbProp = {0,11,539,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thiÕu niªn l«i th©n kiÕm cô ", tbProp = {0,11,540,1,0,0}, nExpiredTime = 48*60}, 
{szName = " thiÕu niªn c­êi s­¬ng mÆt n¹ ", tbProp = {0,11,541,1,0,0}, nExpiredTime = 48*60}, 
{szName = " t« tõ hinh mÆt n¹ ", tbProp = {0,11,542,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tê t«n ngay mÆt cô ", tbProp = {0,11,543,1,0,0}, nExpiredTime = 48*60}, 
{szName = " tö hiÖp mÆt n¹ ", tbProp = {0,11,544,1,0,0}, nExpiredTime = 48*60}, 
{szName = " toµn ky tö mÆt n¹ ", tbProp = {0,11,545,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  50 
{szName = " ¸ Ch©u gièng mÆt n¹ ", tbProp = {0,11,546,1,0,0}, nExpiredTime = 48*60}, 
{szName = " Hoµng Hµ gièng mÆt n¹ ", tbProp = {0,11,547,1,0,0}, nExpiredTime = 48*60}, 
{szName = " v­¬ng t¸ mÆt n¹ ", tbProp = {0,11,548,1,0,0}, nExpiredTime = 48*60}, 
{szName = " an hiÓu tr¸i mÆt n¹ ", tbProp = {0,11,549,1,0,0}, nExpiredTime = 48*60}, 
{szName = " yÕn h­íng mÆt n¹ ", tbProp = {0,11,550,1,0,0}, nExpiredTime = 48*60}, 
{szName = " theo mét miÖn mÆt n¹ ", tbProp = {0,11,551,1,0,0}, nExpiredTime = 48*60}, 
{szName = " hay mét mÆt n¹ ", tbProp = {0,11,552,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®o¹n méc bªn trong cô ", tbProp = {0,11,553,1,0,0}, nExpiredTime = 48*60}, 
{szName = " ®­êng h¹o mÆt n¹ ", tbProp = {0,11,554,1,0,0}, nExpiredTime = 48*60}, 
{szName = " th­êng nga mÆt n¹ ", tbProp = {0,11,555,1,0,0}, nExpiredTime = 48*60}, -- script viet hoa By http://tranhba.com  60 
{szName = " l¨ng tiªu tö mÆt n¹ ", tbProp = {0,11,556,1,0,0}, nExpiredTime = 48*60}, 
{szName = " lÖ chiÕt mai mÆt n¹ ", tbProp = {0,11,557,1,0,0}, nExpiredTime = 48*60}, 
{szName = " xu©n bß mÆt n¹ ", tbProp = {0,11,558,1,0,0}, nExpiredTime = 48*60}, 
} 

function showMask(nIndex, nPlayerIndex, nItemIndex) 
local szTitle = " xin/mêi lùa chän ngµi cÇn mÆt n¹ " 
local tbOpt = {} 
local nMaskCount = getn(%tbMask) 
local nShowIndex = 0 
local nPerCount = 10 

nIndex = max(1, nIndex) 
nIndex = min(nIndex, nMaskCount) 
nShowIndex = nIndex 

for i=1,nPerCount do 
if nShowIndex > nMaskCount then 
break 
end 
tinsert(tbOpt, {%tbMask[nShowIndex].szName, queren, {nShowIndex, nPlayerIndex, nItemIndex}}) 
		nShowIndex = nShowIndex + 1	
end 

tinsert(tbOpt, {"Trang tr­íc ", showMask, {nIndex - nPerCount, nPlayerIndex, nItemIndex}}) 
	if nShowIndex + 1 < nMaskCount then
tinsert(tbOpt, {"Trang kÕ tiÕp ", showMask, {nShowIndex, nPlayerIndex, nItemIndex}}) 
end 
tinsert(tbOpt, {"Rêi ®i ", cancel}) 

CreateNewSayEx(szTitle, tbOpt) 
end 

function queren(nIndex, nPlayerIndex, nItemIndex) 
local nWidth = 1 
local nHeight = 1 
local nCount = 1 
if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then 
Say(format("V× b¶o ®¶m ®¹i hiÖp ®Ých tµi s¶n an toµn , xin/mêi l­u l¹i %d %dx%d trang bÞ chç trèng ", nCount, nWidth, nHeight)) 
return 
end 

if CallPlayerFunction(nPlayerIndex, IsMyItem, nItemIndex) ~= 1 then 
return 
end 
if CallPlayerFunction(nPlayerIndex, RemoveItemByIndex, nItemIndex) ~= 1 then 
WriteLog("Bu«ng tha cho dÞch dung bÝ thuËt thÊt b¹i ") 
return 
end 
-- script viet hoa By http://tranhba.com  tÆng chän ®Þnh mÆt n¹ 
CallPlayerFunction(nPlayerIndex, tbAwardTemplet.GiveAwardByList, tbAwardTemplet, %tbMask[nIndex],"Sö dông dÞch dung bÝ thuËt ", 1) 
end 

function main(nItemIndex) 
showMask(1, PlayerIndex, nItemIndex) 
return 1 
end
