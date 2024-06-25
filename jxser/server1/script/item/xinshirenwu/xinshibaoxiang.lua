Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem) 
return "" 
end 

function main(nItem) 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> thØnh an ®øng hµng mét c¸i trang bÞ , Ýt nhÊt ph¶i l­u mét chç trèng , sau ®ã më ra b¶o r­¬ng ") 
return 1 
end 
local nCount = CalcItemCount(3, 6, 1, 2744, -1) 
if nCount >= 1 then 
-- script viet hoa By http://tranhba.com  khi bá vµo c¸i r­¬ng , Fix sai lÇm kh«ng mÊt ®i nh­ ý c¸i ch×a khãa - Modified by DinhHQ -20110812 
if ConsumeItem(3, 1, 6, 1, 2744, -1) ~= 1 then 
Msg2Player("CÇn nh­ ý c¸i ch×a khãa míi cã thÓ më ra b¶o r­¬ng ") 
return 1 
end 
-- script viet hoa By http://tranhba.com ConsumeEquiproomItem(1, 6, 2812, 1, -1);-- script viet hoa By http://tranhba.com  khÊu trõ tin/th¬ khiÕn cho b¶o r­¬ng 

tbAward = { 
{szName=" kinh nghiÖm trÞ gi¸ 1", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(1500000,"Tin/th¬ khiÕn cho b¶o r­¬ng ") 
end, 
nRate = 60, 
}, 
{szName=" kinh nghiÖm trÞ gi¸ 2", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(2000000,"Tin/th¬ khiÕn cho b¶o r­¬ng ") 
end, 
nRate = 97.20, 
}, 
{szName=" kinh nghiÖm trÞ gi¸ 3", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(5000000,"Tin/th¬ khiÕn cho b¶o r­¬ng ") 
end, 
nRate = 2, 
}, 
{szName=" kinh nghiÖm trÞ gi¸ 4", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(10000000,"Tin/th¬ khiÕn cho b¶o r­¬ng ") 
end, 
nRate = 0.05, 
}, 
{szName=" kinh nghiÖm trÞ gi¸ 5", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(20000000,"Tin/th¬ khiÕn cho b¶o r­¬ng ") 
end, 
nRate = 0.02, 
}, 
{szName=" kinh nghiÖm trÞ gi¸ 6", 
pFun = function (tbItem, nItemCount, szLogTitle) 
%tbvng_ChestExpAward:ExpAward(50000000,"Tin/th¬ khiÕn cho b¶o r­¬ng ") 
end, 
nRate = 0.01, 
}, 
{szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 0.01}, 
{szName = " huyÒn viªn lµm ", tbProp = {6, 1, 2351, 1, 0, 0}, nRate = 0.10}, 
{szName = " tö m·ng lµm ", tbProp = {6, 1, 2350, 1, 0, 0}, nRate = 0.05}, 
{szName = " nh­ ý c¸i ch×a khãa ", tbProp = {6, 1, 2744, 1, 0, 0}, nRate = 0.1}, 
{szName = " hçn nguyªn linh lé ", tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 0.01}, 
{szName = " ngäc lon ", tbProp = {6, 1, 2311, 1, 0, 0}, nRate = 0.01}, 
{szName = " håi thiªn t¸i t¹o cÈm nang ", tbProp = {6, 1, 1781, 1, 0, 0}, nRate = 0.1, tbParam = {60}}, 
{szName = " ®Æc hiÖu tiªn th¶o lé ", tbProp = {6, 1, 1181, 1, 0, 0}, nRate = 0.1}, 
} 

tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"}) 
return 0 
else 
Msg2Player("CÇn mét nh­ ý c¸i ch×a khãa míi cã thÓ më ra b¶o r­¬ng ") 
return 1 
end 
end 
