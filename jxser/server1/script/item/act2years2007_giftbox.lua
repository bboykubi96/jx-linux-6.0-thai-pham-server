-- script viet hoa By http://tranhba.com  ViÖt Nam hai tuÇn lÔ n¨m ho¹t ®éng , lÔ phÈm hép 
-- script viet hoa By http://tranhba.com fmz 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  
ACT2YEAR_TWhiteBoxRan = { 
tRan = {1000}, 
tItemID = { {6,1,1442}}, 
tItemName = {"H¶i miªn b¸nh ngät "} 
} 
-- script viet hoa By http://tranhba.com  
ACT2YEAR_TBlueBoxRan = { 
tRan = {10,15,25,125,175,195,295,1000}, 
tItemID = { 
{6,1,23}, 
{6,1,12}, 
{4,353,1}, 
{6,1,147,1}, 
{6,1,147,2}, 
{6,1,147,3}, 
{6,1,125}, 
{6,1,1443}, 
}, 
tItemName = {"ThiÕt La H¸n ","M©m mÒm t©m tr¶i qua ","Tinh hång b¶o th¹ch ","1 cÊp huyÒn tinh qu¸ng th¹ch ","2 cÊp huyÒn tinh qu¸ng th¹ch ","3 cÊp huyÒn tinh qu¸ng th¹ch ", 
" hoa quÕ r­îu ","B¨ng kÝch l¨ng bÝnh ",} 
} 
-- script viet hoa By http://tranhba.com  
ACT2YEAR_TYellowBoxRan = { 
tRan = {30,124,174,194,344,944,946,948,950,952,954,956,958,960,962,964,966,968,970,972,974,976,978,980,982,984,986,988,990,992,994,996,998,1000,}, 
tItemID = { 
{6,1,23}, 
{6,1,147,2}, 
{6,1,147,3}, 
{6,1,147,4}, 
{4,239,1}, 
{6,1,1444}, 
{6,1,27}, 
{6,1,28}, 
{6,1,33}, 
{6,1,34}, 
{6,1,35}, 
{6,1,36}, 
{6,1,37}, 
{6,1,38}, 
{6,1,39}, 
{6,1,40}, 
{6,1,41}, 
{6,1,42}, 
{6,1,43}, 
{6,1,45}, 
{6,1,46}, 
{6,1,47}, 
{6,1,48}, 
{6,1,49}, 
{6,1,50}, 
{6,1,51}, 
{6,1,52}, 
{6,1,53}, 
{6,1,54}, 
{6,1,55}, 
{6,1,56}, 
{6,1,57}, 
{6,1,58}, 
{6,1,59}, 
}, 
tItemName = {"ThiÕt La H¸n ","2 cÊp huyÒn tinh qu¸ng th¹ch ","3 cÊp huyÒn tinh qu¸ng th¹ch ","4 cÊp huyÒn tinh qu¸ng th¹ch ","Tö thñy tinh ","§Æc biÖt b¨ng kÝch l¨ng bÝnh ","Tô tµi b¾n cung . m­a sa lª hoa ", 
" vïi lÊp tÜnh thuËt . lo¹n ®¸nh tr¶ ","Th¸i cùc quyÒn phæ . quyÓn thø ba ","Th¸i Cùc kiÕm phæ . quyÓn thø hai ","V©n long kÝch . m©u ph¸p "," l­u tinh . ®¹o ph¸p ","Thiªn v­¬ng chïy ph¸p . cuèn 1", 
" Thiªn v­¬ng th­¬ng ph¸p . cuèn 2","Thiªn v­¬ng ®¹o ph¸p . cuèn 3","Thóy khãi ®¹o ph¸p ","Thóy khãi song ®ao ","DiÖt kiÕm bÝ tÞch ","Nga Mi phËt quang ch­ëng bÝ tÞch ","Phi ®ao thuËt . nhiÕp hån bãng tr¨ng ", 
" phi tiªu thuËt . cöu cung bay tinh ","N¨m ®éc ch­ëng ph¸p . cuèn 1","N¨m ®éc ®¹o ph¸p . cuèn 2","N¨m ®éc nhiÕp t©m thuËt . cuèn 3","Ngù phong thuËt ","Ngù long thuËt ","Ngù t©m thuËt ", 
" nhiÕp hån . chó thuËt ","C¸i Bang ch­ëng ph¸p ","C¸i Bang c«n ph¸p ","ThiÕu L©m quyÒn ph¸p . cuèn 1","ThiÕu L©m c«n ph¸p . cuèn 2","ThiÕu L©m ®¹o ph¸p . cuèn 3","Phæ ®é bÝ tÞch " } 
} 
-- script viet hoa By http://tranhba.com  
function main(nItemIndex) 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > 70712 then 
Say("VËt phÈm ®· qua sö dông kú .",0) 
return 0 
end 
local szItemName = GetItemName(nItemIndex) 
local tRan = {} 
local g, d , p = GetItemProp( nItemIndex ) 
if p == 1439 then 
tRan = ACT2YEAR_TWhiteBoxRan 
elseif p == 1441 then 
tRan = ACT2YEAR_TBlueBoxRan 
elseif p == 1440 then 
tRan = ACT2YEAR_TYellowBoxRan 
end 
local nMedalItemGID, nMedalItemDID,nMedalItemPID,nItemLev,szMedalItemName = act2years2007_getgift(tRan) 
if nMedalItemGID == nil or nMedalItemDID == nil or nMedalItemPID == nil or szMedalItemName == nil then 
Msg2Player("Sö dông thÊt b¹i , xin/mêi thö mét lÇn n÷a .") 
return 1 
end 
-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng ph¶i lµ huyÒn tinh 
if nMedalItemPID ~= 147 then 
nItemLev = 1 
end 
AddItem(nMedalItemGID,nMedalItemDID,nMedalItemPID,nItemLev,0,0) 
Msg2Player(format("Chóc mõng ngµi ®¹t ®­îc 1%s.",szMedalItemName)) 
return 0 
end 
-- script viet hoa By http://tranhba.com  
function act2years2007_getgift(tRan) 

local nCurRan,nMaxNumber 
local nMaxRan = 1000 
nCurRan = random(nMaxRan) 
nMaxNumber = getn(tRan.tRan) 
for i = 1, nMaxNumber do 
if nCurRan <= tRan.tRan[i] then 
return tRan.tItemID[i][1],tRan.tItemID[i][2],tRan.tItemID[i][3],tRan.tItemID[i][4], tRan.tItemName[i] 
end 
end 
end 
