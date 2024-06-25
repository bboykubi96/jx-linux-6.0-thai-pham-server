-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  sö dông chiÕn ®éi kÕt cÊu tíi ghi chÐp thèng kª tin tøc 
-- script viet hoa By http://tranhba.com  mçi lo¹i thèng kª lµm mét c¸ chiÕn ®éi , mçi h¹ng thèng kª ghi chÐp ë chiÕn ®éi thµnh viªn ®Ých nhiÖm vô thay ®æi l­îng th­îng 
-- script viet hoa By http://tranhba.com  sè liÖu tæ chøc # 
-- script viet hoa By http://tranhba.com  . x· ®oµn lo¹i h×nh (LeagueType)# toµn côc duy nhÊt tiªu chÝ , chó ý kh«ng muèn träng dông 
-- script viet hoa By http://tranhba.com  . x· ®oµn tªn (LeagueName)# c¨n cø thèng kª lo¹i h×nh mµ ®Þnh ("goodssale" - vËt phÈm tiªu thô thèng kª ) 
-- script viet hoa By http://tranhba.com  . x· ®oµn thµnh viªn (LeagueMember)# thèng kª cÆn kÏ bé m«n 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

IncludeLib("LEAGUE") 
IncludeLib("STATINFO") 
Include( "\\script\\missions\\statinfo\\head.lua")

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  ®Þnh lóc h­ëng øng hµm sè 
function OnTimer() 
print("OnTime: update_goods_stat") 
update_goods_stat(0) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  chiÕn ®éi khai s¸ng trë vÒ ®iÒu hµm sè 
function on_create_stat_league(nLeagueType, szLeagueName, szMemberName, bSucceed) 
if (bSucceed == 0) then 
WriteLog("[stat_error]createstatleague fail: "..szLeagueName); 
return 0; 
end 

-- script viet hoa By http://tranhba.com  n÷a thèng kª mét lÇn 
update_goods_stat(0) 
return 1; 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  chiÕn ®éi thµnh viªn t¨ng thªm trë vÒ thªm hµm sè ( tiªu thô ®Ých vËt phÈm ) 
function on_add_stat_item(nLeagueType, szLeagueName, szMemberName, bSucceed) 
if (bSucceed == 0) then 
WriteLog("[stat_error]createstatitem fail: "..szLeagueName.." ItemName: "..szMemberName); 
return 0; 
end 

local nLeagueID = LG_GetLeagueObj(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE); 
if (nLeagueID == 0) then 
WriteLog("[stat_error]createstatitem error: "..szLeagueName.." ItemName: "..szMemberName); 
return 0; 
end 

update_goods_stat_item(nLeagueID, szMemberName, 0); 

return 1; 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  khai s¸ng thèng kª chiÕn ®éi 
function create_stat_league() 
local nLeagueID = LG_CreateLeagueObj(); 

LG_SetLeagueInfo(nLeagueID, LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE); 
LG_ApplyAddLeague(nLeagueID, 
							"\\script\\missions\\statinfo\\timer_goodssale.lua", 
"on_create_stat_league"); 

LG_FreeLeagueObj(nLeagueID); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  t¨ng thªm thèng kª bé m«n 
function add_stat_item(nLeagueID, szItemName) 
local nMemberID = LGM_CreateMemberObj(); 
LGM_SetMemberInfo(nMemberID, szItemName, 0, 
LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE); 
LGM_ApplyAddMember(nMemberID, 
							"\\script\\missions\\statinfo\\timer_goodssale.lua", 
"on_add_stat_item"); 

LGM_FreeMemberObj(nMemberID); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  ®æi míi mét tiªu thô vËt phÈm ®Ých thèng kª ®Õm hÕt ®Õn chiÕn ®éi 
function update_goods_stat_item(nLeagueID, szItemName, bCheckItem) 

local nNumber = STAT_GetGoodsSaleNum(szItemName, 
CURRENCYTYPE_COIN, 
STATDATA_LATECACHE); 
if (nNumber == 0) then 
return 0; -- script viet hoa By http://tranhba.com  chËm h­íng kh«ng cã sè liÖu , kh«ng nªn sinh thµnh hoÆc ®æi míi league ®Ých item 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra item cã hay kh«ng tån t¹i league trung 
if (bCheckItem == 1) then 
local nMemberID = LG_GetMemberObj(nLeagueID, szItemName); 
if (nMemberID == 0) then 
add_stat_item(nLeagueID, szItemName); -- script viet hoa By http://tranhba.com  t¨ng thªm item ®Õn league 
return 0; 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  th©n thØnh ®æi míi sè liÖu ( ghi chÐp ®Õn tæng nhí ®Õm # ngµy ®ã # khi th¸ng ) , sau ®ã thanh trõ chËm h­íng 
LG_ApplyAppendMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, 
szItemName, 
LG_STATITEM_TASKID_TOTAL, nNumber); 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  ghi chÐp ngµy ®ã thèng kª sè liÖu -- script viet hoa By http://tranhba.com  start 
local nCurDate = tonumber(date("%Y%m%d")); -- script viet hoa By http://tranhba.com  20060121 
local nStatDate = LG_GetLeagueTask(nLeagueID, LG_STAT_TASKID_CURDATE) 
if (nCurDate == nStatDate) then 
LG_ApplyAppendMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, 
szItemName, 
LG_STATITEM_TASKID_TODAY, nNumber); 
else 
LG_ApplySetLeagueTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, 
LG_STAT_TASKID_CURDATE, nCurDate); 
LG_ApplySetMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, 
szItemName, 
LG_STATITEM_TASKID_TODAY, nNumber); 
end 
-- script viet hoa By http://tranhba.com  ghi chÐp ngµy ®ã thèng kª sè liÖu -- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  ghi chÐp khi th¸ng thèng kª sè liÖu -- script viet hoa By http://tranhba.com  start 
local nCurYearMonth = tonumber(date("%y%m")) -- script viet hoa By http://tranhba.com  601 
LG_ApplyAppendMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, 
szItemName, 
nCurYearMonth, nNumber); 
-- script viet hoa By http://tranhba.com  ghi chÐp khi th¸ng thèng kª sè liÖu -- script viet hoa By http://tranhba.com  end 

STAT_CleanGoodsSaleNum(szItemName, CURRENCYTYPE_COIN, STATDATA_LATECACHE); 
return 1; 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  ®æi míi vËt phÈm tiªu thô ®Ých thèng kª sè liÖu 
function update_goods_stat(nCurPos) 
local i = nCurPos; 
local nGoodsCount = STAT_GetGoodsCount(); 
-- script viet hoa By http://tranhba.com  kh«ng cã cÇn thèng kª ®Ých tiªu thô vËt phÈm 
if (nCurPos >= nGoodsCount) then 
return 0; 
end 

local nLeagueID = LG_GetLeagueObj(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE); 
-- script viet hoa By http://tranhba.com  chiÕn ®éi kh«ng tån t¹i , tr­íc khai s¸ng 
if (nLeagueID == 0) then 
create_stat_league(); 
return 1; 
end 

local szItemName = ""; 
for i = nCurPos, nGoodsCount-1 do 
szItemName = STAT_GetGoodsName(i); 
update_goods_stat_item(nLeagueID, szItemName, 1); 
end 
end 
