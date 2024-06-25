IncludeLib("LEAGUE") 
IncludeLib("TONG") 
Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\citywar_global\\ladder.lua")
MapTab = {}; 
MapTab[1]= {213, 1633, 3292}; 
MapTab[2]= {214, 1633, 3292}; 
MapTab[3]= {215, 1633, 3292}; 
MapTab[4]= {216, 1633, 3292}; 
MapTab[5]= {217, 1633, 3292}; 
MapTab[6]= {218, 1633, 3292}; 
MapTab[7]= {219, 1633, 3292}; 
MapTab[8]= {220, 1633, 3292}; 
MapCount = getn(MapTab); 

LGTSK_QINGTONGDING_COUNT = 1; -- script viet hoa By http://tranhba.com  ghi danh c¹nh ®Çu ®Ých khiªu chiÕn lÖnh sè l­îng 
LGTSK_CITYWAR_SIGNCOUNT = 2; -- script viet hoa By http://tranhba.com  tr­íc mÆt c¹nh ®Çu ®Ých sè lÇn 

LEAGUETYPE_CITYWAR_SIGN = 508; 
LEAGUETYPE_CITYWAR_FIRST = 509; 
nCityWar_Item_ID_G = 6 -- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn th­ vËt G ID 
nCityWar_Item_ID_D = 1 -- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn th­ vËt D ID 
nCityWar_Item_ID_P = 1499 -- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn th­ vËt P ID 
TIAOZHANLING_TASK_DATE = 1839 -- script viet hoa By http://tranhba.com  khiªu chiÕn lÖnh ghi chÐp nhËn lÊy thêi kú ,1. thêi gian ( n¨m %y),2. thêi gian ( th¸ng ) , 3. thêi gian ( ngµy ),4. nhËn lÊy sè lÇn 
TIAOZHANLING_TASK_COUNT = 1840 -- script viet hoa By http://tranhba.com  khiªu chiÕn lÖnh giao n¹p sè lÇn 

function OnCancel() 
end; 

function PreEnterGame() 
-- kiem tra xem co phai doi truong hay ko
-- local szTongName, nTongID = GetTongName(); 
-- if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER and GetTongFigure() ~= TONG_MANAGER)) then 
-- Say("ChØ cã ®éi tr­ëng trë lªn míi cã thÓ tham gia tÝnh n¨ng nµy.")
-- return 
-- end
---
-- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i chç ë bang héi ®ang tiÕn hµnh l«i ®µi cuéc so tµi , lµ tù ®éng tiÕn vµo nªn n¬i chèn 
TongName, result = GetTong() 
if (TongName ~= "") then 
for i = 0, 7 do 
if (IsArenaBegin(i) == 1) then 
Tong1, Tong2 = GetArenaBothSides(i); 
if (Tong1 == TongName or Tong2 == TongName) then 
EnterBattle(i); 
return 
end; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  nÕu kh«ng , xin/mêi nhµ ch¬i m×nh lùa chän tiÕn vµo c¸i nµo 
EnterGame(); 
end; 

function EnterGame() 
ExtraArenaInfo = {"<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) ", "<#> ( ®Êt trèng ) "}; 
for i = 0, 7 do 
if (IsArenaBegin(i) == 1) then 
Tong1, Tong2 = GetArenaBothSides(i); 
			ExtraArenaInfo[i + 1] = " ("..Tong1.." vs "..Tong2..") "
end; 
end; 

Say("Ng­¬i nghÜ tiÕn c«ng thµnh chiÕn l«i ®µi dù chän cuéc so tµi sao ??", 9, "<#> l«i ®µi 1"..ExtraArenaInfo[1].."/EnterBattle", "<#> l«i ®µi 2"..ExtraArenaInfo[2].."/EnterBattle", "<#> l«i ®µi 3"..ExtraArenaInfo[3].."/EnterBattle", "<#> l«i ®µi 4"..ExtraArenaInfo[4].."/EnterBattle", "<#> l«i ®µi 5"..ExtraArenaInfo[5].."/EnterBattle", "<#> l«i ®µi 6"..ExtraArenaInfo[6].."/EnterBattle", "<#> l«i ®µi 7"..ExtraArenaInfo[7].."/EnterBattle", "<#> l«i ®µi 8"..ExtraArenaInfo[8].."/EnterBattle","Kh«ng ®i /OnCancel"); 
end; 

function EnterBattle(nBattleId) 

if (IsArenaBegin(nBattleId) ~= 1) then 
return 
end; 
-- DisabledStall(1)	--½ûÖ¹°ÚÌ¯
-- ForbitTrade(1);		--½ûÖ¹½»Ò×
SetFightState(0) 
local tbRoom= GetRoomItems(0)
	for _,v in tbRoom do
	local G,D,P,nLevel = GetItemProp(v);
	if G == 1 then
		-- Msg2Player("fff")
		SetItemBindState(v ,-2)
		SyncItem(v)
	end
	end
-- script viet hoa By http://tranhba.com  thiÕt trÝ trë vÒ ®iÓm 
M,X,Y = GetWorldPos(); 
SetTask(300, M); 
SetTask(301, X); 
SetTask(302, Y); 

	NewWorld(MapTab[nBattleId + 1][1], MapTab[nBattleId + 1][2], MapTab[nBattleId + 1][3]);
end; 


-- script viet hoa By http://tranhba.com  function main() 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ArenaMain(); 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  ghi danh chØ ®Þnh thµnh phè l«i ®µi cuéc so tµi [wxb 2004-3-31]( bá hoang 2006-11-22) 
function SignupACity(sel) 
	CityID = sel + 1;
if (IsSigningUp(CityID) == 1) then 
SetTaskTemp(15, CityID); 
AskClientForNumber("SignUpFinal", 1000000, 99999999,"Xin/mêi ®­a vµo ®Çu ngän ®Ých sè tiÒn :"); 
else 
Say("<#><"..GetCityAreaName(CityID).."<#> > thµnh , l«i ®µi ghi danh cßn ch­a b¾t ®Çu ", 0); 
end; 
end; 

-- script viet hoa By http://tranhba.com  ghi danh duy nhÊt ®ang ghi danh giai ®o¹n ®Ých l«i ®µi cuéc so tµi [wxb 2004-3-31]( bá hoang 2006-11-22) 
function SignUpTheOne() 
CityID = 0; 
for i = 1, 7 do 
if (IsSigningUp(i) == 1) then 
CityID = i; 
end; 
end; 

if (IsSigningUp(CityID) == 1) then 
SetTaskTemp(15, CityID); 
AskClientForNumber("SignUpFinal", 1000000, 99999999,"Xin/mêi ®­a vµo ®Çu ngän ®Ých sè tiÒn :"); 
else 
Say("<#><"..GetCityAreaName(CityID).."<#> > thµnh , l«i ®µi ghi danh cßn ch­a b¾t ®Çu ", 0); 
end; 
end; 

-- script viet hoa By http://tranhba.com  nhµ ch¬i ®­a vµo ®Çu ngän kim sau tíi ®©y [wxb 2004-3-31]( bá hoang 2006-11-22) 
function SignUpFinal(Fee) 
CityID = GetTaskTemp(15); 
SignUpCityWarArena(CityID, Fee); 
end; 

-- script viet hoa By http://tranhba.com  tuÇn tra ngµy h«m qua c¹nh ®Çu khiªu chiÕn lÖnh ®Ých t×nh huèng 
function citywar_CheckVotes() 
local nCityId = getSigningUpCity(1); 
local tbVotes = citywar_tbLadder:GetInfo() 
local szMsg = format("<dec><npc> phÝa d­íi lµ bang héi tham gia c¹nh ®Çu khiªu chiÕn lÖnh <%s>: <enter>%s%s%s<enter>", GetCityAreaName(nCityId), strfill_center("STT",4, " "), strfill_center("Bang héi ", 20, " "), strfill_center("Sè l­îng ", 20, " ")) 
local res = {} 
for i = 1, getn(tbVotes) do 
tinsert(res, strfill_center(i, 4, " ")) 
tinsert(res, strfill_center(tbVotes[i].szName, 20, " ")) 
tinsert(res, strfill_center(tbVotes[i].nValue, 20, " ")) 
tinsert(res, "<enter>") 
end 
PushString(szMsg) 
for i = 1, getn(res) do 
AppendString(res[i]) 
end 
szMsg = PopString() 
TaskSayList(szMsg,"C¸m ¬n ! ta hiÓu ./OnCancel") 
end 
-- script viet hoa By http://tranhba.com  nhËp khÈu 
function ArenaMain() 
-- CityID = 0; 
-- for i = 1, 7 do 
-- if (IsSigningUp(i) == 1) then 
-- CityID = i; 
-- end;
-- end
-- if CityID == 0 then
-- Say("L«i ®µi bang héi b¸o danh lóc 18h h»ng ngµy. Ng­¬i quay l¹i sau nhÐ",0)
-- return
-- end
Say(format("L«i ®µi bang héi %s ®ang b¸o danh, bang chñ hoÆc tr­ëng l·o nhanh tay b¸o danh",GetCityAreaName(CityID)),5,
--"Ta muèn b¸o danh/SignUpTheOne",
--"Ta muèn vµo l«i ®µi bang héi/PreEnterGame",
--" th­¬ng nghÞ chiÕm thµnh lÖnh bµi /TokenCard",
--" mua c«ng thµnh chiÕn phô trî dông cô /AskDeal",
"Ta chØ xem qua/OnCancel")
-- local nCityId = getSigningUpCity(1);-- script viet hoa By http://tranhba.com GetArenaTargetCity() 
-- if (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and getSignUpState(nCityId) == 1) then 
-- Say(format("B©y giê c«ng thµnh chiÕm thµnh <%s> ®ang ghi danh , ng­¬i muèn ghi danh sao ?",GetCityAreaName(nCityId)), 7,"Ghi danh c«ng thµnh chiÕn /SignUpCityWar","Ta muèn xem mét chót c«ng thµnh chiÕn ®Ých ghi danh t×nh huèng /ViewCityWarTong","Ta muèn xem mét chót bang héi khiªu chiÕn lÖnh ®Ých sè l­îng /ViewTiaoZhanLing","HiÓu râ c«ng thµnh chiÕn t×nh huèng /GameInfo","Th­¬ng nghÞ chiÕm thµnh lÖnh bµi /TokenCard","Mua c«ng thµnh chiÕn phô trî dông cô /AskDeal","C¸i g× ®Òu kh«ng cÇn /OnCancel"); 
-- else 
-- Say("§©y lµ th­¬ng nghÞ c«ng thµnh chiÕn ®Ých ®Þa ph­¬ng , ng­¬i cã chuyÖn g× kh«ng ?", 
-- 7, 
-- " ta tíi ®ãng lÖnh bµi /GiveTiaoZhanLing", 
-- " nh×n khiªu chiÕn lÖnh ®Çu ngän t×nh huèng /citywar_CheckVotes" , 
-- " ta muèn xem mét chót bang héi khiªu chiÕn lÖnh ®Ých sè l­îng /ViewTiaoZhanLing", 
-- " hiÓu râ c«ng thµnh chiÕn t×nh huèng /GameInfo", 
-- " th­¬ng nghÞ chiÕm thµnh lÖnh bµi /TokenCard", 
-- " mua c«ng thµnh chiÕn phô trî dông cô /AskDeal", 
-- " c¸i g× ®Òu kh«ng cÇn /Cancel"); 
-- end; 
end; 

-- script viet hoa By http://tranhba.com  tra xÐt ®· ghi danh tham gia c«ng thµnh chiÕn ®Ých bang héi 
function ViewCityWarTong() 
local caption = nil 
local nCityId = getSigningUpCity(1); 
local nlgID = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)) 
-- script viet hoa By http://tranhba.com LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), 
local nlgcount = LG_GetMemberCount(nlgID) 
if nlgcount == 0 then 
caption = "<dec> b©y giê kh«ng cã bang héi ghi danh c«ng thµnh ." 
else 
caption = "<dec> ghi danh c«ng thµnh chiÕn ®Ých bang héi : \n" 
PushString(caption) 
for nindex=0,nlgcount do 
szTongName = LG_GetMemberInfo(nlgID,nindex) 
AppendString("<color=yellow>") 
AppendString(szTongName) 
AppendString("<color>\t") 
end 
caption = PopString() 
end 
local option = {"Trë vÒ /ArenaMain","Rêi ®i /OnCancel"} 
TaskSay(caption, option) 
end 

-- script viet hoa By http://tranhba.com  giao n¹p khiªu chiÕn lÖnh 
function GiveTiaoZhanLing() 
if checkBangHuiLimit() == 0 then 
Say("Ng­îng ngïng ! ng­¬i cßn kh«ng cã gia nhËp bÊt kú bang ph¸i #",0); 
return 0; 
end 
local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d"))); 
local nLibao = GetTask(TIAOZHANLING_TASK_DATE); 
local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3)); 
local nCount = GetTask(TIAOZHANLING_TASK_COUNT); 
if ( nOlddate == nDate and nCount >= 300) then 
Say("Mçi ngµy nhiÒu nhÊt ®Ò giao 300 tÊm lÖnh bµi . h«m nay ng­¬i ®· ®Ò giao liÔu 300 tÊm lÖnh bµi , ngµy mai tiÕp tôc ®i ",0) 
return 0; 
end 
if ( nOlddate ~= nDate ) then 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d")))); 
SetTask(TIAOZHANLING_TASK_COUNT,0); 
end 

local szlgname = GetTongName(); 
-- script viet hoa By http://tranhba.com **** ph¸n ®o¸n cã hay kh«ng s¸ng lËp nªn x· ®oµn 
checkCreatLG(szlgname); 

-- script viet hoa By http://tranhba.com ** ph¸n ®o¸n cã hay kh«ng gia nhËp nªn x· ®oµn 
checkJoinLG(szlgname); 
local szTongName, nTongID = GetTongName(); 
local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
if nsum >= 2000000000 then -- script viet hoa By http://tranhba.com  th­îng h¹n ®¹t 20 øc lµ kh«ng thÓ nh¾c l¹i ®ãng 
Say("Vâ l©m lµm tæng sè ®· ®¹t th­îng h¹n . lóc/khi kh¸c thö l¹i lÇn n÷a ®i .",0) 
return 0; 
end 
-- script viet hoa By http://tranhba.com ** ®Ò giao khiªu chiÕn lÖnh 
GiveItemUI("§Ò giao khiªu chiÕn lÖnh ","Khiªu chiÕn lÖnh cã thÓ ®æi 20 v¹n kinh nghiÖm , bang héi dïng ®Ó ghi danh c«ng thµnh chiÕn .", "sure_GiveTiaoZhanLing", "OnCancel"); 
end 

function sure_GiveTiaoZhanLing(nCount) 
if nCount <= 0 then 
Say("ThËt ®¸ng tiÕc , ng­¬i cßn kh«ng cã ®ãng khiªu chiÕn vËt phÈm cho ta ",2,"§ãng vËt phÈm /GiveTiaoZhanLing","Ta muèn võa nghÜ /OnCancel"); 
return 0; 
end 
for i = 1, nCount do 
local nItemidx = GetGiveItemUnit(i); 
local g, d, p = GetItemProp(nItemidx); 
if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then 
Say("Ta kh«ng muèn kh¸c , chØ cÇn mang cho ta <color=yellow> khiªu chiÕn lÖnh <color> lµ ®­îc råi .", 2,"§ãng vËt phÈm /GiveTiaoZhanLing","Ta muèn võa nghÜ /OnCancel"); 
return 0; 
end; 
end; 
local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d"))); 
local nLibao = GetTask(TIAOZHANLING_TASK_DATE); 
local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3)); 
local nCountall = GetTask(TIAOZHANLING_TASK_COUNT); 
	if ( nOlddate == nDate and nCountall+nCount > 300) then
Say(format("ThËt tiÕc nuèi , h«m nay ng­¬i ®· nép lªn %d khiªu chiÕn lÖnh , chØ cÇn trë/mang lªn ®ãng %d lÖnh bµi lµ ®­îc råi .",nCountall,300-nCountall),0) 
return 0; 
end 
if ( nOlddate ~= nDate ) then 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d")))); 
SetTask(TIAOZHANLING_TASK_COUNT,0); 
end 
local nCityId = getSigningUpCity(1); 
local szTongName, nTongID = GetTongName(); 
-- script viet hoa By http://tranhba.com local szplayName = GetName() 
-- script viet hoa By http://tranhba.com local nlg = LG_GetLeagueObj(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName); 
-- script viet hoa By http://tranhba.com local nlid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPE, szTongName); 
-- script viet hoa By http://tranhba.com local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE, szTongName, szplayName, LGTSK_QINGTONGDING_COUNT); 
local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
-- script viet hoa By http://tranhba.com ConsumeEquiproomItem(nCount, nCityWar_Item_ID_G, nCityWar_Item_ID_D, nCityWar_Item_ID_P, -1); 
for i = 1, nCount do 
local nItemidx = GetGiveItemUnit(i); 
RemoveItemByIndex(nItemidx) 
end; 
	SetTask(TIAOZHANLING_TASK_COUNT,nCountall+nCount);
-- script viet hoa By http://tranhba.com LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_CITYWAR_SIGNCOUNT, 1, "", "") 

LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, nCount, "", ""); 


-- script viet hoa By http://tranhba.com print(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, nCount, "", "") 
-- script viet hoa By http://tranhba.com  gia t¨ng kinh nghiÖm , ®Ò giao 1 c¸ gia t¨ng 20 v¹n kinh nghiÖm 
nAddExp = nCount * 5000 
AddOwnExp(nAddExp) 
Msg2Player(format("Ng­¬i ®· nép lªn %d khiªu chiÕn lÖnh , lÊy ®­îc %d kinh nghiÖm ",nCount,nAddExp)) 
WriteLog(format("[ c«ng thµnh chiÕn _ ®ãng khiªu chiÕn lÖnh ]Date:%s Account:%s Name:%s Tong:%s Count:%d Exp:%d",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szTongName,nCount,nAddExp)) 
end; 

-- script viet hoa By http://tranhba.com  tuÇn tra khiªu chiÕn lÖnh 
function ViewTiaoZhanLing() 
local szTongName, nTongID = GetTongName(); 
if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER)) then 
Say("ThËt ®¸ng tiÕc , chØ cã trî gióp cïng tr­ëng l·o míi cã thÓ nh×n khiªu chiÕn lÖnh ®Ých sè l­îng tin tøc .", 0); 
return 0 
end 
-- script viet hoa By http://tranhba.com local szlgname = GetTongName(); 
-- script viet hoa By http://tranhba.com **** ph¸n ®o¸n cã hay kh«ng s¸ng lËp nªn x· ®oµn 
checkCreatLG(szTongName); 

-- script viet hoa By http://tranhba.com ** ph¸n ®o¸n cã hay kh«ng gia nhËp nªn x· ®oµn 
checkJoinLG(szTongName); 
-- script viet hoa By http://tranhba.com local nCityId = getSigningUpCity(1); 
-- script viet hoa By http://tranhba.com local szTongName, nTongID = GetTongName(); 
-- script viet hoa By http://tranhba.com local nlg = LG_GetLeagueObj(TIAOZHANLING_LGTYPE, szTongName); 
-- script viet hoa By http://tranhba.com local szplayName = GetName() 
-- script viet hoa By http://tranhba.com local nlid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPE, szTongName); 
-- script viet hoa By http://tranhba.com Msg2Player(nlid) 
-- script viet hoa By http://tranhba.com local nCurCount = LG_GetMemberTask(nlid, LGTSK_TIAOZHANLING_COUNT) 
local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 

Say(format("§¾t gióp ®· nép lªn liÔu <color=yellow>%d<color> khiªu chiÕn lÖnh .",nCurCount),0) 
end 

-- script viet hoa By http://tranhba.com  liªn quan tíi lÖnh bµi ®Ých xö lý start************************************************ 
function TokenCard() 
Say("Khiªu chiÕn lÖnh bµi muèn ®Ó l¹i cho muèn ®i tiÕp viÖn bang héi c«ng thñ thµnh ng­êi cña ! xin hái mét chót nghÜa sÜ ®Ých môc ®Ých lµ c¸i g× ?", 4,"Mua chiÕm thµnh lÖnh bµi /BuyCard","Thñ lÖnh bµi /CheckCard", " lui vÒ lÖnh bµi /ReturnCard","Kh«ng lµm c¸i g× /OnCancel"); 
end; 

function BuyCard() 
if (GetName() == GetTongMaster()) then 
TongName, result = GetTong() 
for i = 1, 7 do 
Tong1, Tong2 = GetCityWarBothSides(i); 
if (Tong1 == TongName) then 
SetTaskTemp(15, CardTab[i * 2 - 1]); 
str_format = format("Th× ra lµ ®¹i hiÖp lµ khiªu chiÕn thµnh %s ng­êi cña , thËt lµ lîi h¹i , n¬i nµy cã b¸n c«ng thµnh lÖnh bµi , lÖnh bµi nµy cã cÊt gi÷ ®¾t gióp liªn minh 5 ngµy ®Ých hiÖu lùc , mçi lÖnh bµi gi¸ %s hai .",GetCityAreaName(i),CardPrice); 
Say(str_format, 2,"Mua mét chót /DealBuyCard","T¹m thêi kh«ng cÇn /OnCancel"); 
return 
elseif (Tong2 == TongName) then 
SetTaskTemp(15, CardTab[i * 2]); 
str_format = format("Th× ra lµ ®¹i hiÖp lµ %s thµnh ®Ých Th¸i thó , n¬i nµy cã b¸n thñ thµnh lÖnh bµi , lÖnh bµi nµy cã cÊt gi÷ ®¾t gióp liªn minh 5 ngµy ®Ých hiÖu lùc , mçi lÖnh bµi gi¸ %s hai .",GetCityAreaName(i),CardPrice); 
Say(str_format, 2,"Mua mét chót /DealBuyCard","T¹m thêi kh«ng cÇn /OnCancel"); 
return 
end; 
end; 
Say("Ng­¬i cïng c«ng thñ thµnh ®Ých bang ph¸i kh«ng cã quan hÖ # kh«ng thÓ sö dông chiÕm thµnh lÖnh bµi !", 0); 
else 
Say("ChØ cã bang chñ míi cã thÓ mua chiÕm thµnh lÖnh bµi ", 0); 
end; 
end; 

function DealBuyCard(CardID) 
AskClientForNumber("PayForCard", 1, 30,"Ng­¬i ph¶i nhiÒu thiÓu ?"); 
end; 

function PayForCard(count) 
CardItemID = GetTaskTemp(15); 
if (CardItemID > 0 and count > 0) then 
if (Pay(count * CardPrice) ~= 0) then 
for i = 1,count do 
AddEventItem(CardItemID); 
end; 
Say("Xin/mêi thÝch ®¸ng b¶o tån # lÖnh bµi nµy lµ trªn chiÕn tr­êng ®ång minh ®Ých chøng kiÕn # xin chó ý lÖnh bµi ®Ých thêi gian , chØ cã 5 ngµy ®Ých hiÖu lùc , nÕu nh­ qu¸ h¹n th× kh«ng thÓ sö dông , cã thÓ ®Õn c¸i nµy lui ®æi cïng cÇm trë vÒ phÝ dông ", 0); 
end; 
end; 
end; 

function CheckCard() 
count = 0; 
CardItemID = 0; 
for i=1,14 do 
		newcount = count + GetItemCountEx(CardTab[i])
if (newcount > count) then 
CardItemID = CardTab[i]; 
count = newcount; 
end; 
end; 
if (count == 0) then 
Say("Trªn ng­êi ng­¬i kh«ng cã bÊt kú lÖnh bµi !", 0); 
elseif (count > 1) then 
Say("Ng­¬i mang theo qu¸ nhiÒu chiÕm thµnh lÖnh bµi , kh«ng biÕt ng­¬i muèn nghiÖm chøng kia khèi # xin/mêi chØ mang mét tÊm lÖnh bµi lµ tèt råi !", 0); 
elseif (CardItemID ~= 0) then 
life = GetItemLife(CardItemID); 
if (life < 0) then 
Say("Khèi nµy lÖnh bµi ®Ých t×nh huèng lµ ......", 0); 
elseif (life < 7200) then 
Say(format("Nh÷ng thø nµy c«ng thµnh lÖnh bµi ®Ých sè l­îng muèn ë %s ngµy tr­íc ph¸t ra , b©y giê vÉn nh­ cò h÷u hiÖu lùc .",floor(life/1440)), 0) 
else 
Say(format("Nh÷ng thø nµy c«ng thµnh lÖnh bµi ®Ých sè l­îng muèn ë %s ngµy tr­íc ph¸t ra , b©y giê ®· qu¸ h¹n , kh«ng cã sö dông hiÖu lùc .",floor(life/1440)), 0); 
end; 
end; 
end; 

function ReturnCard() 
count = 0; 
for i=1,14 do 
		count = count + GetItemCountEx(CardTab[i]);
end; 
if (count <= 0) then 
Say("Trªn ng­êi ng­¬i kh«ng cã bÊt kú lÖnh bµi !", 0); 
else 
str_format = format("C«ng thµnh lÖnh bµi cã thÓ dïng %s hai thu vÒ , ng­¬i ®ång ý tr¶ l¹i sao ?",count*ReturnCardPrice); 
Say(str_format, 2,"Ta muèn tr¶ l¹i /DealReturnCard","Kh«ng , ta ch¼ng qua lµ hái mét chót /OnCancel"); 
end; 
end; 

function DealReturnCard() 
money = 0; 
for i=1,14 do 
count = GetItemCountEx(CardTab[i]); 
if (count > 0) then 
			money = money + count * ReturnCardPrice;
for j=1,count do DelItemEx(CardTab[i]) end; 
end; 
end; 
Earn(money); 
end; 
-- script viet hoa By http://tranhba.com  liªn quan tíi lÖnh bµi ®Ých xö lý end************************************************** 

-- script viet hoa By http://tranhba.com AskDeal c«ng thµnh chiÕn phô trî ®¹o cô chuyÓn tíi citywar_global\\citywar_function.lua 

-- script viet hoa By http://tranhba.com  hiÓu râ c«ng thµnh chiÕn t×nh huèng start************************************************ 
function GameInfo() 
Say("Muèn mæ thµnh thÞ nµo ?", 9, GetCityAreaName(1).."/CityInfo", GetCityAreaName(2).."/CityInfo", GetCityAreaName(3).."/CityInfo", GetCityAreaName(4).."/CityInfo", GetCityAreaName(5).."/CityInfo", GetCityAreaName(6).."/CityInfo", GetCityAreaName(7).."/CityInfo", "Tr?v?ArenaMain","Kh«ng cÇn /OnCancel"); 
end; 

-- script viet hoa By http://tranhba.com " cuéc so tµi tr×nh an bµi /ArenaInfo", 
-- script viet hoa By http://tranhba.com " tû vâ kÕt qu¶ /AllArenaInfo", 
function CityInfo(nSel) 
	local nCityId =  nSel + 1;
SetTaskTemp(245, nCityId); 
if (nCityId < 1 or nCityId > 7) then 
return 
end; 
Say(format("Muèn mæ c«ng thµnh chiÕn %s ®Ých tin tøc g× ?",GetCityAreaName(nCityId)), 4, 
" ghi danh t×nh huèng /RegisterInfo", 
" c«ng thµnh chiÕn sù /CityWarInfo", 
" trë vÒ /GameInfo", 
" kh«ng cÇn /OnCancel"); 
end; 

function RegisterInfo() 
local nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 

local nHour = tonumber(GetLocalDate("%H")); 
if (nHour<18 or nHour>=19) then 
Say("B©y giê kh«ng ph¶i lµ c«ng thµnh chiÕn ®Ých ghi danh thêi gian .", 2,"Trë vÒ /GameInfo","Kh«ng cÇn /OnCancel"); 
return 0; 
end; 
if (nCityId ~= getSigningUpCity(1) or getSignUpState(nCityId) ~= 1) then 
Say(format("B©y giê c«ng thµnh chiÕn <%s> kh«ng cã ë ®©y ghi danh giai ®o¹n .",GetCityAreaName(nCityId)), 2,"Trë vÒ /GameInfo","Kh«ng cÇn /OnCancel"); 
return 0; 
end; 

local szElector = getCityWarElector(cityid_to_lgname(nCityId))-- script viet hoa By http://tranhba.com "< t¹m v« >" 
if (szElector == "" or szElector == nil) then 
szElector = "< t¹m thêi kh«ng >"; 
end; 
Say(format("C«ng thµnh chiÕn <%s> ®ang chuÈn bÞ , dù thi bang héi lÖnh bµi ®øng hµng thø ®Çu tiªn lµ : %s<color=red><enter> nÕu nh­ cã bang héi ®Ých lÖnh bµi sè l­îng cïng thø nhÊt gièng nhau , lµ tõ hÖ thèng ngÉu nhiªn chän lùa ngµy mai c«ng thµnh gióp .<color>",GetCityAreaName(nCityId),szElector), 2,"Trë vÒ /GameInfo","Kh«ng cÇn /OnCancel"); 
end; 


function getCityWarElector(szLeagueName) 
local leagueObj = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName) 

if (leagueObj == 0) then 
return 
end; 
local nMem = LG_GetMemberCount(leagueObj); 
if (nMem < 1) then 
return 
end; 
local szMem = ""; 
local tbMem = {}; 
for i = 0, nMem - 1 do 
szMem = LG_GetMemberInfo(leagueObj, i); 
ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szLeagueName, szMem, LGTSK_QINGTONGDING_COUNT); 
if (getn(tbMem) == 0) then 
tbMem[1] = {szMem, ncount}; 
else 
if (ncount == tbMem[1][2]) then 
				tbMem[getn(tbMem) + 1] = {szMem, ncount};
elseif (ncount > tbMem[1][2]) then 
tbMem = {}; 
				tbMem[getn(tbMem) + 1] = {szMem, ncount};
end; 
end; 
end; 
-- script viet hoa By http://tranhba.com local szMem = LG_GetMemberInfo(leagueObj, 0) 
return tbMem[random(getn(tbMem))][1]; 
-- script viet hoa By http://tranhba.com return LG_GetMemberInfo(leagueObj, 0) 
end; 

-- script viet hoa By http://tranhba.com  cuéc so tµi tr×nh an bµi -( bá hoang 2006-11-22) 
function ArenaInfo() 
nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 
Say(GetArenaSchedule(nCityId), 0); 
end; 

function AllArenaInfo() 
nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 
-- script viet hoa By http://tranhba.com Say(GetArenaInfoByCity(nCityId), 0); 
end; 

function CityWarInfo() 
local nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 
local str_format = format("C«ng thµnh chiÕn <%s> ngµy mai : ",GetCityAreaName(nCityId)); 
local str1, str2 = GetCityWarBothSides(nCityId); 
if (str1 ~= "" and str2 ~= "" ) then 
if (nCityId == getSigningUpCity(2)) then 
str_format = format("C«ng thµnh chiÕn <%s> h«m nay : ",GetCityAreaName(nCityId)); 
if (HaveBeginWar(nCityId) == 1) then 
str_format = format("D­íi m¾t <%s> xö vu c«ng thµnh chiÕn giai ®o¹n : ",GetCityAreaName(nCityId)); 
end; 
end; 
str_format = format("Thñ ph­¬ng %s lµ %s, c«ng míi lµ %s!",str_format,str2,str1); 
Say(str_format , 2,"Trë vÒ /GameInfo","Kh«ng cÇn /OnCancel"); 
else 
Say(format("D­íi m¾t %s cßn kh«ng cã tiÕn vµo c«ng thµnh chiÕn giai ®o¹n !",GetCityAreaName(nCityId)) , 2,"Trë vÒ /GameInfo","Kh«ng cÇn /OnCancel"); 
end; 
end; 


-- script viet hoa By http://tranhba.com  hiÓu râ c«ng thµnh chiÕn t×nh huèng end************************************************** 

-- script viet hoa By http://tranhba.com  nhËn lÊy c«ng thµnh tÝn vËt start************************************************** 
function checkIsTakeQingtongDing(szTongName, nTongID, nCityId) 
if (nTongID == 0 or GetTongMaster()~= GetName()) then 
Say("ChØ cã ghi danh c«ng thµnh bang héi ®Ých bang chñ cïng ë lÖnh bµi tranh tµi trung thÊt b¹i bang héi bang chñ míi cã thÓ dÉn tÝn vËt .", 0); 
return 0; 
end; 
if (nCityId < 1 or nCityId > 7) then 
return 0; 
end; 

local nHour = tonumber(GetLocalDate("%H")); 
if (nHour < 19) then 
Say("NhËn lÊy c«ng thµnh tÝn vËt ®Ých thêi gian ®· kÕt thóc , mçi ngµy ë 19h00 ®Õn 24h00 ®o¹n thêi gian nµy trung , tranh ®o¹t lÖnh bµi thÊt b¹i bang héi cã thÓ ®Õn ta chç nµy tíi nhËn lÊy khiªu chiÕn lÖnh .", 0) 
return 0; 
end; 

if (getSignUpState(nCityId) == 1) then 
Say(format("Ghi danh tham gia %s thµnh ngµy mai tranh ®o¹t lÖnh bµi cßn ch­a kÕt thóc , cã thÓ tiÕp tôc tham gia .",GetCityAreaName(nCityId)), 0); 
return 0; 
end; 

local szChallenger = GetCityWarBothSides(nCityId); 
if (szChallenger == szTongName) then 
Say(format("§¾t gióp ®· thµnh v× ngµy mai c«ng thµnh %s ®Ých bang héi , c«ng thµnh tÝn vËt ®· tr¶ l¹i cho Th¸i thó liÔu .",GetCityAreaName(nCityId)), 0); 
return 0; 
end; 

local szChallenger = GetCityOwner(nCityId); 
if (szChallenger == szTongName) then 
Say(format("Ng­¬i lµ %s thµnh ®Ých Th¸i thó , kh«ng nªn ®ãn thªm bÞ c«ng thµnh tÝn vËt .",GetCityAreaName(nCityId)), 0); 
return 0; 
end; 

local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 
if (FALSE(nlid)) then 
Say("Cßn kh«ng cã ghi danh tham gia ngµy mai c«ng thµnh chiÕn , n¬i nµy kh«ng cã ng­¬i tÝn vËt .", 0); 
return 0; 
end; 
return 1; 
end; 

function getSignUpState(nCityId) 
return LG_GetLeagueTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), 1); 
end; 

function TakeQingtongDing() 
local szTongName, nTongID = GetTongName(); 
local nCityId = getSigningUpCity(1); 
if (checkIsTakeQingtongDing(szTongName, nTongID, nCityId) ~= 1) then 
return 0 
end; 
local ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT); 

if (ncount < 1) then 
Say("Ghi danh c«ng thµnh tÝn vËt ta ®· còng cßn cho ng­¬i liÔu .", 0); 
else 
Say(format("Ng­¬i cã %s khiªu chiÕn lÖnh , dÉn lÖnh bµi tr­íc xin/mêi tr­íc söa sang l¹i tói ®eo l­ng .",ncount), 3,"Ta muèn dÉn lµm /#sure_takeQingtongDing("..ncount..")","Trë vÒ /ArenaMain","Mét c¸i trë l¹i /OnCancel"); 
end; 
end; 

function sure_takeQingtongDing(ncount) 
local szTongName, nTongID = GetTongName(); 
local nCityId = getSigningUpCity(1); 
if (checkIsTakeQingtongDing(szTongName, nTongID, nCityId) == 1) then 
local nFree = CalcFreeItemCellCount(); 
if (nFree > 6) then 
local szMsg = format("§©y lµ <color=yellow>%s<color> khiªu chiÕn cña ng­¬i lµm .",ncount); 
if (nFree < ncount) then 
szMsg = format("Ng­¬i cã <color=yellow>%s<color> khiªu chiÕn lÖnh , bëi v× tói ®eo l­ng kh«ng gian ch­a ®ñ , ta tr¶ l¹i tíi tr­íc ®Ých %s khèi . cßn cã <color=yellow>%s<color> kh«ng cã nhËn lÊy , h«m nay 24h00 tr­íc nhËn lÊy !",ncount,nFree,(ncount - nFree)); 
ncount = nFree; 
end; 
for i =1, ncount do 
AddItem(nCityWar_Item_ID_G,nCityWar_Item_ID_D,nCityWar_Item_ID_P,1,1,1);-- script viet hoa By http://tranhba.com qingtongding 
end; 
LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, -nFree); 
WriteLog(format("[ tranh ®o¹t c«ng thµnh lµm ]%s Name:%s Account:%s Tong:%s thµnh phè %s nhËn lÊy khiªu chiÕn lÖnh %s",date(),GetName(),GetAccount(),szTongName,cityid_to_lgname(nCityId),ncount)); 
Say(szMsg, 0); 
else 
Say("Tói ®eo l­ng kh«ng gian ch­a ®ñ . chó ý muèn ë 24h00 tr­íc ®Õn c¸i nµy dÉn th¬ håi ©m vËt , nÕu nh­ kh«ng ®Õn th× kh«ng thÓ n÷a nhËn lÊy .", 0); 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  nhËn lÊy c«ng thµnh tÝn vËt end**************************************************** 

-- script viet hoa By http://tranhba.com  ghi danh c«ng thµnh chiÕn start**************************************************** 
function SignUpCityWar() 
local nCityId = getSigningUpCity(1); 

local szTongName, nTongID = GetTongName(); 

if (checkSignUpCityWar(szTongName, nTongID, nCityId) ~= 1) then 
return 0; 
end; 

local szMsg = format("<dec> b©y giê ®ang tiÕn hµnh %s thµnh ghi danh .",GetCityAreaName(nCityId)); 
local szElector = getCityWarElector(cityid_to_lgname(nCityId))-- script viet hoa By http://tranhba.com "< t¹m v« >" 

if (szElector == "" or szElector == nil) then 
szElector = "< t¹m thêi kh«ng >"; 
end; 

local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 

if (FALSE(nlid)) then 
szMsg = szMsg.." chØ cÇn cã ' khiªu chiÕn lÖnh ' liÒn cã thÓ tham gia tranh ®o¹t . tranh ®o¹t quy t¾c : cßn kh«ng cã chiÕm thµnh ®Ých 18 cÊp trë lªn bang héi cã thÓ sö dông ' khiªu chiÕn lÖnh ' tham gia c¹nh tranh . c¹nh tranh thêi gian lµ mçi ngµy 18h00 ®Õn 19h00. 19h00 tr­íc , lÊy ®­îc khiªu chiÕn lÖnh nhiÒu nhÊt bang héi cã quyÒn tham gia ngµy mai tham gia c«ng thµnh chiÕn .<color=red><enter> nÕu nh­ cã bang héi ®Ých lÖnh bµi sè l­îng còng liÖt vµo ®Ö nhÊt tho¹i hÖ thèng ®em ngÉu nhiªn rót ra lÊy mét tiÕn hµnh ngµy mai c«ng thµnh .<color><enter> b©y giê xÕp hµng thø nhÊt ®Ých bang héi lµ #"..szElector 
else 

local nCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT); 

-- script viet hoa By http://tranhba.com print(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT) 
szMsg = format("%s tranh ®o¹t quy t¾c : cßn kh«ng cã chiÕm thµnh ®Ých 18 cÊp trë lªn bang héi cã thÓ sö dông ' khiªu chiÕn lÖnh ' tham gia c¹nh tranh . c¹nh tranh thêi gian lµ mçi ngµy 18h00 ®Õn 19h00. 19h00 tr­íc , lÊy ®­îc khiªu chiÕn lÖnh nhiÒu nhÊt bang héi cã quyÒn tham gia ngµy mai tham gia c«ng thµnh chiÕn .<color=red><enter> nÕu nh­ cã bang héi ®Ých lÖnh bµi sè l­îng còng liÖt vµo ®Ö nhÊt tho¹i hÖ thèng ®em ngÉu nhiªn rót ra lÊy mét tiÕn hµnh ngµy mai c«ng thµnh .<color><enter> b©y giê xÕp hµng thø nhÊt ®Ých bang héi lµ #%s<enter> ®¾t gióp tranh ®o¹t %s ®Ých khiªu chiÕn lÖnh sè l­îng lµ %s",szMsg,szElector,szTongName,nCount) 
end; 
TaskSayList(szMsg,"Ta muèn c¹nh tranh lÖnh bµi /want_signupcitywar","Trë vÒ /ArenaMain","Ta muèn mét c¸i /OnCancel"); 
end; 

function want_signupcitywar() 
-- script viet hoa By http://tranhba.com local nCityId = getSigningUpCity(1); 
local szTongName, nTongID = GetTongName(); 
-- script viet hoa By http://tranhba.com local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 


local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
if nCurCount <= 0 then 
Say("§¾t gióp kh«ng cã khiªu chiÕn lÖnh , kh«ng thÓ nép lªn , xin/mêi gãp nhÆt khiªu chiÕn lÖnh sau nµy tíi t×m ta n÷a .",0) 
return 0 
end 
if nCurCount > 1000000 then 
nCurCount = 1000000 
end 
AskClientForNumber("sure_signupcitywar", 0,nCurCount,"Nép lªn khiªu chiÕn lÖnh ") 
-- script viet hoa By http://tranhba.com if (FALSE(nlid)) then 
-- script viet hoa By http://tranhba.com if (GetCash() >= 10000000) then 
-- script viet hoa By http://tranhba.com GiveItemUI("C«ng thµnh chiÕn th­ vËt ","Xin/mêi ®em c«ng thµnh chiÕn th­ vËt —— khiªu chiÕn lÖnh bá vµo ®i . ", "sure_signupcitywar", "OnCancel"); 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com Say(" lÇn ®Çu tiªn ghi danh c«ng thµnh chiÕn cÇn gi¸c d©ng/®ãng <color=yellow>1000W hai <color> b¹c , trªn ng­êi ng­¬i kh«ng cã mang nhiÒu tiÒn nh­ vËy . ng­¬i tr­íc chuÈn bÞ xong tiÒn ghi danh trë l¹i ®i . ", 0); 
-- script viet hoa By http://tranhba.com end; 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com local nNum = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName,LGTSK_CITYWAR_SIGNCOUNT); 
-- script viet hoa By http://tranhba.com if (nNum >= 3) then 
-- script viet hoa By http://tranhba.com Say("Ngµi ®Ých c¹nh ®Çu sè lÇn ®· ®¹t tíi <color=yellow>3 lÇn <color> , ngµi b©y giê kh«ng thÓ tiÕp tôc ®Çu chó , xin/mêi ngµi chê ®îi c¹nh ®Çu kÕt qu¶ c«ng bè . ", 0); 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com GiveItemUI("C«ng thµnh chiÕn th­ vËt ","Mçi khiªu chiÕn lÖnh cã thÓ ®æi lÊy 5 v¹n chót kinh nghiÖm , khiªu chiÕn lÖnh cã thÓ dïng ®Ó ghi danh bang héi c«ng thµnh chiÕn . ", "sure_signupcitywar", "OnCancel"); 
-- script viet hoa By http://tranhba.com end; 
-- script viet hoa By http://tranhba.com end; 
end; 

function sure_signupcitywar(nCount) 
-- script viet hoa By http://tranhba.com Msg2Player(nCount) 

local nCityId = getSigningUpCity(1);-- script viet hoa By http://tranhba.com GetArenaTargetCity() 
if not (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and getSignUpState(nCityId) == 1) then 
Talk(1, "","B©y giê kh«ng ph¶i lµ c«ng thµnh chiÕn ®Ých ghi danh thêi gian .") 
return 1 
end 




local szTongName, nTongID = GetTongName(); 
local nTongCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
if nCount > nTongCurCount or nCount > 1000000 then 
Say("Khiªu chiÕn lÖnh kh«ng ®ñ , kh«ng thÓ nép lªn , xin/mêi tiÕp tôc thu tËp sau trë l¹i .",0) 
return 1 
end 
local nCityId = getSigningUpCity(1); 
local nlg = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)); 
local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 
if (FALSE(nlid)) then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn thµnh viªn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn thµnh viªn ®Ých tin tøc ( vai trß tªn # chøc vÞ # x· ®oµn lo¹i h×nh # x· ®oµn tªn ) 
LGM_SetMemberInfo(nMemberID, szTongName, 0, LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)); 
LG_AddMemberToObj(nlg, nMemberID); 
local ret = LGM_ApplyAddMember(nMemberID, "", "") 
LGM_FreeMemberObj(nMemberID) 
end; 

-- script viet hoa By http://tranhba.com LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_CITYWAR_SIGNCOUNT, 1, "", "") 

local nCurCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT); 

-- script viet hoa By http://tranhba.com LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, nCount, "", ""); 
-- script viet hoa By http://tranhba.com print(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, nCount) 
citywar_tbLadder:AddOneInGameServer(nTongID, cityid_to_lgname(nCityId), szTongName, nCount) 


LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, -nCount, "", ""); 

	WriteLog(format("[Õù¶á¹¥³ÇÁî]%s Name:%s Account:%s TongName:%s ³ÇÊÐ %s Õù¶á¹¥³ÇÊýÁ¿: %s",date(),GetName(),GetAccount(),szTongName,cityid_to_lgname(nCityId),(nCount + nCurCount)));

	local szFirstTong = checkFirstSignUpChallenger(cityid_to_lgname(nCityId), szTongName, nCount + nCurCount);
if (szFirstTong == szTongName) then 
		Say(format(" %s°ï»áÌôÕ½ÁîÅÆµÄÊýÁ¿ÏÖÔÚÊÇ£º<color=yellow>%s<color>¿é, ÔÝÁÐµÚÒ», ¾¡¹ÜÈç´Ë£¬»¹ÊÇÒª¹Ø×¢Çé¿ö±ä»¯.",szTongName,(nCount + nCurCount)), 0);
else 
		Say(format(" %s°ï»áÌôÕ½ÁîÅÆµÄÊýÁ¿ÏÖÔÚÊÇ£º<color=yellow>%s<color>¿é. ÔÝÁÐµÚÒ»µÄÊÇ%s,¹ó°ïÐè¼ÌÐøÅ¬Á¦.",szTongName,(nCount + nCurCount),szFirstTong), 0);
end; 
end; 

function checkSignUpCityWar(szTongName, nTongID, nCityId) 
local nHour = tonumber(GetLocalDate("%H")); 
if (nTongID == 0 or GetTongMaster() ~= GetName()) then 
Say("Ng­¬i kh«ng ph¶i lµ bang chñ . ë 18h00 ®Õn 19h00, ®o¹n thêi gian nµy , cßn kh«ng cã chiÕm thµnh ®Ých 18 cÊp trë lªn bang héi bang chñ cã thÓ ghi danh tham gia h«m nay sau ®Ých c«ng thµnh chiÕn .", 0); 
elseif (nHour < 18 or nHour >= 19) then 
Say("B©y giê kh«ng ph¶i lµ c«ng thµnh chiÕn ®Ých ghi danh thêi gian . mçi ngµy 18h00 ®Õn 19h00, cßn kh«ng cã chiÕm thµnh ®Ých 18 cÊp trë lªn bang héi cã thÓ ®Õn c¸i nµy ghi danh tham gia h«m nay sau ®Ých c«ng thµnh chiÕn .", 0); 
--elseif (TONG_GetExpLevel(nTongID) < 18) then 
--Say("Yªu cÇu muèn 18 cÊp trë lªn bang héi míi cã thÓ ghi danh h«m nay sau ®Ých c«ng thµnh chiÕn .", 0); 
elseif (checkCityOwner(szTongName) ~= 0) then 
Say("Ng­¬i lµ thµnh chñ , kh«ng cÇn ghi danh c«ng thµnh .", 0); 
elseif (checkCItyChallenger(szTongName) ~= 0) then 
Say(format("Ng­¬i ®· lµ khiªu chiÕn ph­¬ng %s, kh«ng thÓ tranh ®o¹t h«m nay lÖnh bµi .",GetCityAreaName(checkCItyChallenger(szTongName))), 0); 
elseif (getSignUpState(nCityId) ~= 1) then 
Say("B©y giê cßn kh«ng cã b¾t ®Çu ghi danh c«ng thµnh , d­ìng tóc tinh thÇn chuÈn bÞ ", 0); 
else 
return 1; 
end; 
return 0; 
end; 

function checkCityOwner(szTongName) 
for i=1, 7 do 
if (GetCityOwner(i) == szTongName) then 
return i; 
end; 
end; 
return 0; 
end; 

function checkCItyChallenger(szTongName) 
for i=1, 7 do 
if (GetCityWarBothSides(i) == szTongName) then 
return i; 
end; 
end; 
return 0; 
end; 

function checkFirstSignUpChallenger(szLeagueName, szTongName, nCurCount) 
local szFirstTong = getCityWarElector(szLeagueName) 
local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName) 

if (FALSE(szFirstTong)) then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn thµnh viªn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn thµnh viªn ®Ých tin tøc ( vai trß tªn # chøc vÞ # x· ®oµn lo¹i h×nh # x· ®oµn tªn ) 
LGM_SetMemberInfo(nMemberID, szTongName, 0, LEAGUETYPE_CITYWAR_FIRST, szLeagueName); 
LG_AddMemberToObj(nlid, nMemberID); 
local ret = LGM_ApplyAddMember(nMemberID, "", "") ; 

LGM_FreeMemberObj(nMemberID); 
if (ret == 1) then 
LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szTongName, LGTSK_QINGTONGDING_COUNT, nCurCount); 
end; 
return szTongName; 
end; 

nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLeagueName); 
local nCount = LG_GetMemberCount(nlid); 
local szTemTong = szFirstTong; 
for i = 0, nCount - 1 do 
local szMem = LG_GetMemberInfo(nlid, i); 
if (szMem == szFirstTong) then 
local nMemCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szLeagueName, szMem, LGTSK_QINGTONGDING_COUNT); 

if (nMemCount <= nCurCount) then 
szTemTong = szTongName; 
break 
end; 
end; 
end; 

nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName); 
if (szTemTong ~= szFirstTong) then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn thµnh viªn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn thµnh viªn ®Ých tin tøc ( vai trß tªn # chøc vÞ # x· ®oµn lo¹i h×nh # x· ®oµn tªn ) 
LGM_SetMemberInfo(nMemberID, szTemTong, 0, LEAGUETYPE_CITYWAR_FIRST, szLeagueName); 
LG_AddMemberToObj(nlid, nMemberID); 
local ret = LGM_ApplyAddMember(nMemberID, "", "") ; 
LGM_FreeMemberObj(nMemberID); 
		-- script viet hoa By http://tranhba.com LG_ApplyDoScript(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szFirstTong, "\\script\\event\\citywar.lua", "citywar_removemem", szLeagueName.." "..szFirstTong);
-- script viet hoa By http://tranhba.com LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szFirstTong); 
end; 
return getCityWarElector(szLeagueName); 
end; 
-- script viet hoa By http://tranhba.com  ghi danh c«ng thµnh chiÕn end****************************************************** 
