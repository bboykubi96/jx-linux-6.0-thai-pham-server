-- script viet hoa By http://tranhba.com  t­ëng th­ëng .lua ( bang héi chiªu mé ®Ö tö ho¹t ®éng ) 
if (not __DIS_AWARD_H__) then 
__DIS_AWARD_H__ = 1; 
Include([[\script\missions\tong\tong_disciple\head.lua]]); 
IncludeLib("FILESYS"); 
SFHD_DATAFILE = [[\settings\tong\workshop\huodong_level_data.txt]]; 

dis_tabExp = { 
2000000, 
2000000, 
2000000, 
1500000, 
1500000, 
1500000, 
1000000, 
1000000, 
1000000, 
500000 
}; 

dis_tabRate = { 
{0, 0.69, 0.27, 0.04}, 
{0, 0.83, 0.14, 0.03}, 
{0, 0.86, 0.13, 0.01}, 
{0, 0.85, 0.15, 0}, 
{0, 0.9, 0.1, 0}, 
{0, 0.95, 0.05, 0}, 
{0.27, 0.68, 0.05, 0}, 
{0.37, 0.59, 0.04, 0}, 
{0.61, 0.36, 0.03, 0}, 
{0.72, 0.26, 0.02, 0} 
}; 


function disciple_aword(nTongID, nWorkshopID) 
if (GetTaskTemp(193) == 1) then 
return 
end; 
SetTaskTemp(193, 1); 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ho¹t ®éng ph­êng cÊp bËc 
local nLevel = TWS_GetLevel(nTongID, nWorkshopID); 
if (nLevel < 1 or nLevel > 10) then 
Say("Ng­¬i bang héi ch­a thÊy lËp nªn x­ëng .", 1,"Ta biÕt !/oncancel") 
return 0; 
end; 

local nCount = GetTask(DIS_COUNT_ONETIME); 
local nRank = GetTask(DIS_TK_RANK); 
SetTask(DIS_COUNT_ONETIME, 0); 
SetTask(DIS_TK_RANK, 0); 
if (nCount == 0 or nRank == 0) then 
Say("Ho¹t ®éng ph­êng tæng qu¶n # ng­¬i thËt gièng nh­ kh«ng cã mang bÊt kú chiªu mé ®Ö tö ®Õn c¸i nµy .", 1,"Dùa theo phÊt tay quy ®Þnh bay ra ./oncancel"); 
SetTaskTemp(193, 0); 
return 
end; 
local strSay = format("ThËt lµ thËt tèt qu¸ , ng­¬i ®· chiªu mé ®Õn tÊt c¶ %d <color=yellow> ®Ö tö <color>, ®øng hµng thø ", nCount, nRank); 
local isDouble = dis_double(nLevel);-- script viet hoa By http://tranhba.com  xem mét chót cã hay kh«ng ®¹t ®­îc gÊp ®«i 
if (1 == isDouble) then 
strSay = strSay.." thËt lµ may m¾n , ng­¬i ®· ®¹t ®­îc <color=red> gÊp ®«i t­ëng th­ëng <color>, "; 
giveaward(nRank); 
end; 

Describe(strSay.." ®©y lµ ®­a cho ng­¬i t­ëng th­ëng .", 1,"NhËn lÊy lÔ vËt ./oncancel"); 
giveaward(nRank); 
SetTaskTemp(193, 0); 
end; 

-- script viet hoa By http://tranhba.com  lÊy ra tab v¨n kiÖn ®Ých néi dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

function dis_double(nLevel)-- script viet hoa By http://tranhba.com  cã hay kh«ng nhËn lÊy gÊp ®«i t­ëng th­ëng 
local nResult = 0; 
local nSeed = random(100); 
	local nRate = tonumber(gettabfiledata(SFHD_DATAFILE, nLevel + 1, 5));
if (nSeed <= nRate * 100) then 
nResult = 1; 
end; 
return nResult; 
end; 

function giveaward(nRank) 
expaward(nRank); 
goodsaward(nRank); 
end; 

function expaward(nRank) 
AddOwnExp(dis_tabExp[nRank]); 
end; 

function goodsaward(nRank) 
local nGoodsType = getgoodtype(nRank); 
if (nGoodsType == 1) then 
AddItem(6, 1, 1008, 1, 0, 0, 0); 
local strsay = " ng­¬i ®¹t ®­îc mét hoµng kim mÇm mãng " 
Msg2Player(strsay); 
elseif (nGoodsType == 2) then 
AddItem(6, 1, 1007, 1, 0, 0, 0); 
local strsay = " ng­¬i ®¹t ®­îc mét viªn thñy tinh mÇm mãng " 
Msg2Player(strsay); 
elseif (nGoodsType == 3) then 
AddItem(6, 1, 1006, 1, 0, 0, 0); 
local strsay = " ng­¬i ®¹t ®­îc mét viªn hoa hång mÇm mãng " 
Msg2Player(strsay); 
elseif (nGoodsType == 4) then 
AddItem(6, 1, 1005, 1, 0, 0, 0); 
local strsay = " ng­¬i ®¹t ®­îc mét viªn may m¾n mÇm mãng " 
Msg2Player(strsay); 
end; 
end; 

function getgoodtype(nRank) 
local nSeed = random(100); 
local nRate = {} 
local i; 
for i = 1, 4 do 
nRate[i] = dis_tabRate[nRank][i] * 100 
end; 
local nBase = 0; 
for i = 1, 4 do 
		nBase = nBase + nRate[i];
if (nBase >= nSeed) then 
return (5 - i); 
end; 
end; 
end; 

function onsale() 

end; 

function oncancel() -- script viet hoa By http://tranhba.com  hñy bá 

end; 

end; -- script viet hoa By http://tranhba.com // end of __DIS_AWARD_H__
