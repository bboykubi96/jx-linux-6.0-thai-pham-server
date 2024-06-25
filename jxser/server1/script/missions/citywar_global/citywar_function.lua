IncludeLib("LEAGUE") 
IncludeLib("TITLE") 
Include("\\script\\lib\\gb_modulefuncs.lua");
TASK_ACTIVE_TITLE = 1122 
CW_TITLE_TIME = 7*24*60*60*18; 
TB_CITYWAR_ARRANGE = { 
{3,4},-- script viet hoa By http://tranhba.com  ph­îng t­êng 
{1,2},-- script viet hoa By http://tranhba.com  thµnh ®« 
{2,3},-- script viet hoa By http://tranhba.com  §¹i Lı 
{5,6},-- script viet hoa By http://tranhba.com  biÖn kinh 
{4,5},-- script viet hoa By http://tranhba.com  t­¬ng d­¬ng 
{0,1},-- script viet hoa By http://tranhba.com  D­¬ng Ch©u 
{6,0},-- script viet hoa By http://tranhba.com  tr­íc khi an 
} 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - mua c«ng thµnh chiÕn ®¹o cô start 
function AskDeal() 
Say("Phô trî dông cô c«ng thµnh hÕt søc h÷u hiÖu dïng , chØ cã thÓ dïng nguyªn b¶o mua ! kh¸ch quan nÕu nh­ bá lì kh«ng mua thËt chİnh lµ tiÕc nuèi !", 4, 
-- script viet hoa By http://tranhba.com " hån th¹ch r¸ch /DealBuy", 
" nghiÖt long h­íng xe /#DealBuy(1)", 
" tô tËp binh phï /#DealBuy(2)", 
" ngoan cè binh phï /#DealBuy(3)", 
" kh«ng cÇn /OnCancelBuy"); 
end; 

function DealBuy(ItemID) 
if (ItemID == 0) then 
SetTaskTemp(15, 29); 
elseif (ItemID == 1) then 
SetTaskTemp(15, 30); 
elseif (ItemID == 2) then 
SetTaskTemp(15, 31); 
elseif (ItemID == 3) then 
SetTaskTemp(15, 32); 
else 
return 
end; 
Say("Bëi v× mua ng­êi rÊt nhiÒu ! kh¸ch quan chØ cã thÓ mua mét lÇn ! ®ång ı kh«ng ?", 2,"H¶o /DoBuy","Ta muèn mét c¸i /OnCancelBuy"); 
end; 

function DoBuy() 
TheItem = GetTaskTemp(15); 
if (TheItem >= 29 and TheItem <= 32) then 
if CalcEquiproomItemCount(4, 417, 1, -1) > 30 then
ConsumeEquiproomItem(30,4, 417, 1, -1)
AddItem(6,1,TheItem,1,0,0); 
WriteLog(format("%s dïng 30 tiÒn ®ång mua 1 c¸ c«ng thµnh ®¹o cô >> %s",GetName(),TheItem)); 
else
Say("Kh¸ch quan lµ cïng tiÓu nh©n nãi giìn hay lµ thËt ®İch kh«ng cã 30 tiÒn ®ång?", 0); 
end
-- if (GetItemCountEx(343) > 0) then 
-- DelItemEx(343); 
-- AddItem(6,1,TheItem,1,0,0); 
-- WriteLog(format("%s dïng 343 c¸ kim nguyªn b¶o mua 1 c¸ c«ng thµnh ®¹o cô >> %s",GetName(),TheItem)); 
-- Say("Kh¸ch quan thËt thøc hãa !", 0); 
-- else 
-- Say("Kh¸ch quan lµ cïng tiÓu nh©n nãi giìn hay lµ thËt ®İch kh«ng cã nguyªn b¶o ?", 0); 
-- end; 
end; 
end; 
function OnCancelBuy() 
Say("Chóc nghÜa sÜ kú khai ®¾c th¾ng , sím ngµy kh¶i hoµn !", 0); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - mua c«ng thµnh chiÕn ®¹o cô end 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®Õn 7 ngµy sau 20:00 ph©n ®İch thêi gian trinh 
function getUsedLine() 
local nh = tonumber(GetLocalDate("%H")); 
local nm = tonumber(GetLocalDate("%M")); 
	return (CW_TITLE_TIME-((nh-20)*60+nm)*60*18);
end; 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt ghi danh c«ng thµnh chiÕn ®İch thµnh phè 
-- script viet hoa By http://tranhba.com nSel=1, ghi danh #nSel=2, c«ng thµnh 
function getSigningUpCity(nSel) 
local nWeek = tonumber(GetLocalDate("%w")); 
for i = 1, getn(TB_CITYWAR_ARRANGE)do 
if (TB_CITYWAR_ARRANGE[i][nSel] == nWeek) then 
return i; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  kiÓm tra dÉn t­ëng ®iÒu kiÖn 
function check_award_condition(city_index, show_talk) 
if (city_index == 0) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã chiÕm lÜnh thµnh phè ®İch bang ph¸i míi cã thÓ dÉn t­ëng , mang c¸c huynh ®Ö cña ta ®i chiÕm lÜnh mét tßa thµnh ®i !") 
end 
return 0 
end 

-- script viet hoa By http://tranhba.com local tong_master = GetTongMaster() 
-- script viet hoa By http://tranhba.com local player_name = GetName() 
-- script viet hoa By http://tranhba.com if (tong_master ~= player_name) then 
-- script viet hoa By http://tranhba.com  if (show_talk == 1) then 
-- script viet hoa By http://tranhba.com  Talk(1, "", "<#> chØ cã bang chñ míi cã thÓ nhËn lÊy bang héi t­ëng th­ëng , gäi c¸c ng­¬i bang chñ ®Õn ®©y ®i ") 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com return 0 
-- script viet hoa By http://tranhba.com end 

local wday = tonumber(GetLocalDate("%w")) -- script viet hoa By http://tranhba.com  h«m nay lµ thø mÊy ? 
local hour = tonumber(GetLocalDate("%H")) 
if (wday ~= 1 or hour < 9 or hour >= 20) then 
if (show_talk == 1) then 
Talk(1, "", "<#> mçi tuÇn tõ 9:00~20:00 lµ dÉn t­ëng thêi gian , ®Õn lóc ®ã l¹i ®i ") 
end 
return 0 
end 

local ndate = tonumber(GetLocalDate("%Y%m%d")) 
if (ndate == get_citybonus_task(city_index, CITYINFO_LEAGUETASK_BONUS)) then 
if (get_city_orecount(city_index) <= get_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT)) then 
if (show_talk == 1) then 
Talk(1, "", "<#> tuÇn nµy ®İch phÇn th­ëng ®· dÉn hoµn , cuèi tuÇn trë l¹i ®i . ") 
end 
return 0 
end; 
else 
set_citybonus_task(city_index, CITYINFO_LEAGUETASK_BONUS, ndate); 
set_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, 0); 
end 

return 1 
end 

TSK_CITYTONG_DATE = 2518 
-- script viet hoa By http://tranhba.com  nhËn lÊy chiÕm thµnh bang héi t­ëng th­ëng 
function talk_citytong_award() 
local city_index = gettongownercity() 
if (check_award_condition(city_index, 1) == 1) then 
Say("<#> chiÕm thµnh bang héi phÇn th­ëng . chiÕm thµnh gióp thµnh viªn cã thÓ ®Õn vâ l©m truyÒn nh©n chç nhËn lÊy 5 cÊp huyÒn tinh , mçi ng­êi cã thÓ nhËn lÊy 1 viªn . giíi h¹n : ®« thµnh ( tr­íc khi an cïng biÖn kinh ) nhËn lÊy 300 viªn 5 cÊp huyÒn tinh , thµnh phè ( nh÷ng thµnh thŞ kh¸c ) nhËn lÊy 200 viªn 5 cÊp huyÒn tinh . ë 18h00 sau nÕu nh­ cßn kh«ng cã dÉn hoµn lêi cña , nh­ vËy bang chñ cã thÓ ë 20h00 tr­íc n÷a nhËn lÊy .", 
3, 
"<#> ta muèn nhËn lÊy huyÒn tinh qu¸ng th¹ch /#take_tong_award(1)", 
"<#> ta lµ bang chñ , trë l¹i dÉn mét lÇn phÇn th­ëng /take_tong_resaward", 
"<#> ta t¹m thêi kh«ng dÉn /nothing") 
end 
end 

-- script viet hoa By http://tranhba.com  nhËn lÊy bao tiÒn l× x× 
function take_tong_award(count) 
-- script viet hoa By http://tranhba.com  mét bao tiÒn l× x× chiÕm mét c¸ch tö 
if (CalcFreeItemCellCount() < count) then 
Talk(1, "", "<#> l­ng cña ng­¬i tói ®Çy , söa sang l¹i h¶o trë l¹i dÉn t­ëng .") 
return 
end 

local city_index = gettongownercity() 
if (check_award_condition(city_index, 0) == 0) then 
return 
end 

local nH = tonumber(GetLocalDate("%H")); 
if (nH >= 18) then 
Talk(1, "", "<#> mçi bang héi ®İch dÉn t­ëng thêi gian lµ 9h00 ®Õn 18h00, xin/mêi ®óng lóc tíi dÉn t­ëng . ®èi víi cßn kh«ng cã nhËn lÊy ®İch phÇn th­ëng , th«ng b¸o bang chñ 20h00 tíi tr­íc nhËn lÊy ."); 
return 0; 
end; 
local today = tonumber(GetLocalDate("%Y%m%d")); 
local nMydate = GetTask(TSK_CITYTONG_DATE); 
if (nMydate ~= today) then 
AddItem(6,1,147,5,1,1); 
SetTask(TSK_CITYTONG_DATE, today); 
add_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, 1); 
local msg = format("%s %s (%s) nhËn lÊy %s 5 cÊp huyÒn tinh tõ kim s¬n ch­ëng m«n nh©n chç ",GetLocalDate("[%y-%m-%d %H:%M] "),GetAccount(),GetName(),count) 
WriteLog(msg); 
Talk(1, "", "<#> ®©y lµ ng­¬i ®İch phÇn th­ëng , xin/mêi nhËn lÊy .") 
else 
Talk(1, "", "<#> ng­¬i ®· lÜnh tuÇn nµy ®İch phÇn th­ëng , chê chót chu ®i . "); 
end 
end 

function take_tong_resaward() 
local city_index = gettongownercity() 
if (check_award_condition(city_index, 0) == 0) then 
return 
end 

local nH = tonumber(GetLocalDate("%H")); 
if (nH < 18 or nH >= 20) then 
Talk(1, "", "<#> bang chñ cã thÓ ë 18h00 ®Õn 20:00 lÇn thø hai dÉn phÇn th­ëng , xin/mêi ®óng lóc tíi dÉn ."); 
return 0; 
end; 

if (GetName() ~= GetTongMaster()) then 
Talk(1, "", "<#> chØ cã bang chñ míi cã thÓ lÇn n÷a nhËn lÊy thuéc vÒ bang héi phÇn th­ëng . xin b¸o cho ®¾t gióp mét tay chñ ë 20h00 tr­íc ®Õn c¸i nµy dÉn t­ëng ."); 
return 0; 
end; 

local nFreecell = CalcFreeItemCellCount(); 
if (nFreecell < 20) then 
Talk(1, "", "<#> tói ®eo l­ng kh«ng gian kh«ng ®ñ , xin/mêi söa sang l¹i tói ®eo l­ng .") 
return 0; 
end; 

local nCount = get_city_orecount(city_index) - get_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT); 

for i = 1, nCount do 
AddItem(6,1,147,5,1,1); 
end; 
add_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, nCount); 
local msg = format("%s %s (%s) nhËn lÊy %s 5 cÊp huyÒn tinh tõ kim s¬n ch­ëng m«n nh©n ",GetLocalDate("[%y-%m-%d %H:%M] "),GetAccount(),GetName(),count) 
WriteLog(msg); 
Say(format("§©y lµ ®¾t gióp ®İch phÇn th­ëng , %s viªn huyÒn tinh cßn cã !",nCount), 0); 
end; 

function get_city_orecount(cityid) 
if (cityid == 4 or cityid == 7) then 
return 300; 
else 
return 200; 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  lÊy ®­îc mét nhµ ch¬i chç ë bang héi chiÕm lÜnh ®İch thµnh phè , trë vÒ t¸c dÉn trŞ gi¸ 
function gettongownercity() 
-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i bang héi tªn 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 

-- script viet hoa By http://tranhba.com  chia ra lÊy ®­îc b¶y ®¹i thµnh thŞ ®İch bang héi tªn cïng nhµ ch¬i bang héi tªn so s¸nh 
local strCityTongName 

for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "" and strCityTongName == strTongName) then 
return nCityID 
end 
end 

-- script viet hoa By http://tranhba.com  bµy tá nhµ ch¬i chç ë bang héi kh«ng cã chiÕm lÜnh thµnh phè 
return 0 
end 

-- script viet hoa By http://tranhba.com  nÕu v× nil hoÆc 0 , trë vÒ 1 , nÕu kh«ng trë vÒ 0 
function FALSE(nValue) 
if (nValue == nil or nValue == 0 or nValue == "") then 
return 1 
else 
return nil 
end 
end 

LEAGUETYPE_CITYWAR_SIGN = 508; 
LEAGUETYPE_CITYWAR_FIRST = 509; 
function checkCityWarLeague() 
for i = 1, 7 do 
local szLg = cityid_to_lgname(i); 
local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLg); 
if (FALSE(nlid)) then 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_SIGN, szLg) -- script viet hoa By http://tranhba.com  thiÕt trİ x· ®oµn tin tøc ( lo¹i h×nh # tªn ) 
local ret = LG_ApplyAddLeague(nNewLeagueID, "", ""); 
LG_FreeLeagueObj(nNewLeagueID); 
end; 

nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLg); 
if (FALSE(nlid)) then 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_FIRST, szLg) -- script viet hoa By http://tranhba.com  thiÕt trİ x· ®oµn tin tøc ( lo¹i h×nh # tªn ) 
local ret = LG_ApplyAddLeague(nNewLeagueID, "", ""); 
LG_FreeLeagueObj(nNewLeagueID); 
end; 
end; 
end; 

function cityid_to_lgname(nCityID) 
return GetCityAreaName(nCityID); 
end; 

-- script viet hoa By http://tranhba.com  cËn ë mét m¸y phôc vô khİ th­îng thi hµnh lµ ®­îc 
-- script viet hoa By http://tranhba.com  cho nªn , ph¸n ®o¸n cã Hoa S¬n ®İch b¶n ®å 

-- script viet hoa By http://tranhba.com Relay thi hµnh thiÕt trİ c«ng thµnh ph­¬ng 
function citywar_appointchallenger(szCityName, szTongName) 
if (SubWorldID2Idx(2) >= 0 and not FALSE(szCityName) and not FALSE(szTongName)) then 
AppointChallenger(szCityName, szTongName) 
end; 
end; 

-- script viet hoa By http://tranhba.com Relay thi hµnh thiÕt trİ thµnh chñ 
function citywar_appointviceroy(szCityName, szTongName) 
if (SubWorldID2Idx(2) >= 0 and not FALSE(szCityName) and not FALSE(szTongName)) then 
AppointViceroy(szCityName, szTongName) 
end; 
end; 
