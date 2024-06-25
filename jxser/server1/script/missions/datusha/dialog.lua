Include("\\script\\missions\\datusha\\datusha.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING") 
COST_MONEY = 100000 
MAX_AWARD_COUNT = 100 
DaTuShaRankAward = 
{ 
[1] = 8e6, 
[2] = 7e6, 
[3] = 6e6, 
[4] = 5e6, 
[5] = 45e5, 
[6] = 4e6, 
[7] = 35e5, 
[8] = 3e6, 
[9] = 25e5, 
[10] = 15e5, 
} 
LastManAward = 
{ 
[1]={szName=" tö m·ng kh«i ®å phæ ",tbProp={6,1,2714,1,0,0},nRate = 2.0,}, 
[2]={szName=" tö m·ng y ®å phæ ",tbProp={6,1,2715,1,0,0},nRate = 2.0,}, 
[3]={szName=" tö m·ng ®ai l­ng ®å phæ ",tbProp={6,1,2717,1,0,0},nRate = 2.0,}, 
[4]={szName=" tö m·ng hé cæ tay ®å phæ ",tbProp={6,1,2718,1,0,0},nRate = 2.0,}, 
[5]={szName=" tö m·ng béi ®å phæ ",tbProp={6,1,2720,1,0,0},nRate = 2.0,}, 
[6]={szName=" tö m·ng giµy ®å phæ ",tbProp={6,1,2716,1,0,0},nRate = 2.0,}, 
[7]={szName=" tö m·ng gi©y chuyÒn ®å phæ ",tbProp={6,1,2719,1,0,0},nRate = 2.0,}, 
[8]={szName=" tö m·ng th­îng chiÕc nhÉn ®å phæ ",tbProp={6,1,2721,1,0,0},nRate = 0.5,}, 
[9]={szName=" tö m·ng h¹ chiÕc nhÉn ®å phæ ",tbProp={6,1,2722,1,0,0},nRate = 0.5,}, 
[10]={szName=" tö m·ng khÝ giíi ®å phæ ",tbProp={6,1,2723,1,0,0},nRate = 0.5,}, 
[11]={szName=" tö m·ng lµm ",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.5}, 
[12]={szName=" hoµng kim chi qu¶ ",tbProp={6,1,907,1,0,0},nCount=1,nRate=19, nExpiredTime = 10080}, 
[13]={nExp_tl=1,nRate = 65,nCount = 10000000,}, 
} 

TotalRankAward = 
{ 
{ 
{nExp_tl = 32e6}, 
{ 
{szName=" cµn kh«n song tuyÖt béi ",tbProp={6,1,2219,1,0,0},nRate = 5.0, nExpiredTime = 43200} 
} 
}, 
{nExp_tl = 28e6}, 
{nExp_tl = 24e6}, 
{nExp_tl = 20e6}, 
{nExp_tl = 18e6}, 
{nExp_tl = 16e6}, 
{nExp_tl = 14e6}, 
{nExp_tl = 12e6}, 
{nExp_tl = 10e6}, 
{nExp_tl = 8e6}, 
} 
function DaTuShaClass:Join() 
local pDungeon = DungeonList[896] 
if pDungeon then 
local nMapId, nX, nY = GetWorldPos() 
pDungeon.tbPlayer[GetName()] = {tbSignUpPos={nMapId, nX, nY}} 

pDungeon:GotoDaTuSha(); 
end 
end 

function about(nStep) 

local szTitle = "" 
local tbOpt = {} 
if nStep == 0 then 
szTitle = "<npc> ho¹t ®éng thêi gian lµ mçi ngµy 12:00, 19:00, 20:00, 21:00, tÊt c¶ 120 cÊp trë lªn nhµ ch¬i còng cã thÓ t×m ta ghi danh , ghi danh thêi gian lµ 10 phót , ghi danh muèn ®ãng 10 v¹n l­îng . ho¹t ®éng b¾t ®Çu sau cã thÓ sö dông tù th©n kü n¨ng tham chiÕn , lo¹n thêi chiÕn ®ang lóc lµ 30 ph©n , mçi ng­êi cã 5 lÇn sèng l¹i c¬ héi , ho¹t ®éng sau khi kÕt thóc c¨n cø tÝch ph©n dÉn t­ëng ." 
tinsert(tbOpt, {"Cöu ch©u cèc lµ mét c¸i d¹ng g× ®Ých ®Þa ph­¬ng ", about, {1}}) 
tinsert(tbOpt, {"Cã c¸i g× phÇn th­ëng sao ", about, {2}}) 
elseif nStep == 1 then 
szTitle = "<npc> Cöu ch©u cèc lµ n¨m gÇn ®©y triÒu ®×nh dïng ®Ó huÊn luyÖn ®¹i néi cao thñ ®Ých ®Þa ph­¬ng bÝ mËt , trong cèc c¨n cø tiªn nh©n ®Ých c¸ch gäi lµ chia lµm 9 c¸i khu vùc ®Ých Cöu ch©u # tû vâ b¾t ®Çu sau , tõ thø 3 b¾t ®Çu , c¸ch mçi 3 phót ®em cã mét c¸i khu vùc bÞ ngµn n¨m b¨ng h¹n bao gåm , nÕu nh­ kh«ng kÞp lóc r¸ch b¨ng rêi ®i sÏ bÞ ®«ng cøng chÕt . trªn ®Êt 30 phót nÕu nh­ cßn kh«ng cã ph©n ra th¾ng b¹i , trong cèc ®Ých tÊt c¶ nhµ ch¬i sÏ bÞ ®ãng b¨ng . trong cèc quanh n¨m trµn ®Çy ®Æc biÖt l¹nh s­¬ng vô . ë s­¬ng l¹nh trung hçn chiÕn võa bÞ b¨ng s­¬ng uy hiÕp ®ång thêi l¹i kh«ng cã nghÌo nguy hiÓm ." 
tinsert(tbOpt, {"§èi tho¹i trë vÒ th­îng mét tÇng ", about, {0}}) 
elseif nStep == 2 then 
szTitle = "<npc> mçi lÇn ho¹t ®éng ph¶i c¨n cø lÇn nµy ®Ých tÝch ph©n tíi dÉn t­ëng # nÕu nh­ ng­¬i lµ cuèi cïng duy nhÊt ng­êi may m¾n cßn sèng sãt , còng cã thÓ nhËn lÊy cuèi cïng dòng sÜ ®Ých phÇn th­ëng . mçi ngµy ®em c¨n cø ban ngµy nhËn lÊy ®Ých tÝch ph©n tiÕp tôc ®øng hµng , tr­íc m­êi danh t­íng cã dòng sÜ phÇn th­ëng ." 
tinsert(tbOpt, {"§èi tho¹i trë vÒ th­îng mét tÇng ", about, {0}}) 
end 
tinsert(tbOpt, {"KÕt thóc ®èi tho¹i "}) 
CreateNewSayEx(szTitle, tbOpt) 
end 

function check_rank() 

local szMsg = format("Ng­¬i tæng tÝch ph©n lµ <color=green>%d<color><enter>", GetPlayerTotalScores()) 

local szName, nValue = Ladder_GetLadderInfo(LadderId, 1); 

if (szName == nil or szName == "" or nValue == nil) then 
return Talk(1, "", szMsg.." t¹m thêi cßn kh«ng cã tr­íc m­êi tªn ®Ých b¶ng xÕp h¹ng .") 
end 

szMsg = szMsg.." tr­íc m­êi tªn ®Ých b¶ng xÕp h¹ng : <enter>" 
szMsg = szMsg..format("%s%s%s<enter>", strfill_center("§øng hµng ", 6, " "), strfill_center("Tªn hä ", 10, " "), strfill_center("Tæng tÝch ph©n ", 8, " ")) 
for i=1, 10 do 
local szName, nValue = Ladder_GetLadderInfo(LadderId, i); 
if szName and szName ~= "" and nValue > 0 then 
szMsg = szMsg..format("%s%s%s<enter>", strfill_center(tostring(i), 6, " "), strfill_center(szName, 10, " "), strfill_center(tostring(nValue), 8, " ")) 
end 
end 
local tbOpt = 
{ 
{"Trë vÒ ", dialog_main}, 
{"KÕt thóc ®èi tho¹i "}, 
} 
CreateNewSayEx("<npc>"..szMsg, tbOpt) 
end 

function round_award() 
local pDungeon = DungeonList[MAP_ID] 
if pDungeon then 
return Talk(1, "","Tû vâ thêi gian kh«ng thÓ dÉn t­ëng ") 
end 
if not DaTuShaClass.Rank then 
return 
end 
local szCurName = GetName() 
if DaTuShaClass.Scores[szCurName] == nil or DaTuShaClass.Scores[szCurName] == 0 then 
return Talk(1, "","Ng­¬i cßn kh«ng cã tham gia Cöu ch©u cèc thö luyÖn ") 
end 

if DaTuShaClass.Scores[szCurName] < 0 then 
return Talk(1, "","Ng­¬i ®· dÉn qu¸ nµy phÇn th­ëng .") 
end 
local nCount = getn(DaTuShaClass.Rank) 
if nCount > MAX_AWARD_COUNT then 
nCount = MAX_AWARD_COUNT 
end 
local nRank = nil 
for i=1, nCount do 
local szName = DaTuShaClass.Rank[i][1] 
if (szCurName == szName) then 
nRank = i 
break 
end 
end 
if nRank then 
Msg2Player(format("C¸i nµy chiÕn ng­¬i thø h¹ng lµ %d, ®©y lµ tÆng quµ cho ng­¬i xin/mêi nhËn lÊy .", nRank)) 
local nAwardCount = getn(DaTuShaRankAward) 
local nExp = DaTuShaRankAward[nRank] 
if nRank > nAwardCount then 
nExp = DaTuShaRankAward[nAwardCount] 
end 
if nExp then 
tbAwardTemplet:Give({nExp_tl = nExp}, 1, {" lo¹n chiÕn Cöu ch©u cèc ","Cè ®Þnh t­ëng th­ëng "}) 
DaTuShaClass.Scores[szCurName] = -1 
end 
else 
Talk(1, "", format("Ng­¬i c¸i nµy chiÕn ®Ých ®øng hµng kh«ng cã ë ®©y %d danh s¸ch trung ", MAX_AWARD_COUNT)) 
end 
end 

function last_man_award() 
local LastMan = DaTuShaClass.LastMan 
if LastMan and LastMan.szName and LastMan.szName == GetName() and LastMan.bFlag == nil then 
if CalcFreeItemCellCount() < 1 then 
return Talk(1, "", format("Tói ®eo l­ng cÇn <color=yellow>%d<color> kh«ng gian .", 1)) 
end 

tbAwardTemplet:Give(LastManAward, 1, {" lo¹n chiÕn Cöu ch©u cèc ","Cuèi cïng dòng sÜ ®Ých phÇn th­ëng "}) 
LastMan.bFlag = 1 
else 
Talk(1, "","Ng­¬i kh«ng cã t­ c¸ch dÉn t­ëng hoÆc lµ ®· dÉn qua .") 
end 
end 

function final_award() 
local nHour = tonumber(GetLocalDate("%H")) 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 

if not(nHour > 21 and nHour < 24) then 
return Talk(1, "","B©y giê kh«ng ph¶i lµ tæng ®øng hµng thø ®Ých dÉn t­ëng thêi gian .") 
end 
if GetTask(TSK_FINAL_AWARD) == nDate then 
return Talk(1, "","Ng­¬i ®· dÉn qu¸ khen .") 
end 

if CalcFreeItemCellCount() < 1 then 
return Talk(1, "", format("Tói ®eo l­ng ph¶i cã <color=yellow>%d<color> kh«ng gian .", 1)) 
end 

local nRank = nil 
for i=1, 10 do 
local szName, nValue = Ladder_GetLadderInfo(LadderId, i); 
if szName == GetName() and nValue > 0 then 
nRank = i 
break 
end 
end 
if nRank and TotalRankAward[nRank] then 
tbAwardTemplet:Give(TotalRankAward[nRank], 1, {" lo¹n chiÕn Cöu ch©u cèc ","Cuèi cïng dòng sÜ ®Ých phÇn th­ëng "}) 
SetTask(TSK_FINAL_AWARD, nDate) 
else 
return Talk(1, "","Ng­¬i kh«ng cã ë ®©y tr­íc m­êi b¶ng xÕp h¹ng trong .") 
end 
end 

function give_award() 
local szTitle = "<npc> mçi lÇn ho¹t ®éng ph¶i c¨n cø lÇn nµy ®Ých tÝch ph©n tíi dÉn t­ëng # nÕu nh­ ng­¬i lµ cuèi cïng duy nhÊt ng­êi may m¾n cßn sèng sãt , còng cã thÓ nhËn lÊy cuèi cïng dòng sÜ ®Ých phÇn th­ëng . mçi ngµy ®em c¨n cø ban ngµy nhËn lÊy ®Ých tÝch ph©n tiÕp tôc ®øng hµng , tr­íc m­êi danh t­íng cã dòng sÜ phÇn th­ëng ." 
local tbOpt = 
{ 

{"Ta tíi nhËn lÊy mçi chiÕn ®Ých phÇn th­ëng ", round_award}, 
{"Ta tíi nhËn lÊy [ cuèi cïng dòng sÜ ] ®Ých phÇn th­ëng " ,last_man_award}, 
{"Ta tíi dÉn tæng tÝch ph©n t­ëng th­ëng ", final_award}, 
{"KÕt thóc ®èi tho¹i "}, 
} 

CreateNewSayEx(szTitle, tbOpt) 
end 

function join_datusha() 
local pDungeon = DungeonList[MAP_ID] 
if pDungeon then 
if pDungeon.nState ~= 1 then 
return 
end 
else 
return 
end 
if (ST_GetTransLifeCount() <= 0 and GetLevel() < 120) then 
return Msg2Player(format("CÊp sè ph¶i <color=yellow>%d<color>.", 120)) 
end 
-- script viet hoa By http://tranhba.com Change request July 13, 2011 - Modified by DinhHQ - 20110713 
-- script viet hoa By http://tranhba.com  if Pay(COST_MONEY) ~= 1 then 
-- script viet hoa By http://tranhba.com  return Talk(1, "", format("CÇn nép lªn %d hai tiÒn ghi danh ", COST_MONEY)) 
-- script viet hoa By http://tranhba.com  end 
if PlayerFunLib:GetTaskDailyCount(2710) >= 1 then 
if (CalcItemCount(-1, 6, 1, 30117, -1) < 1 or ConsumeEquiproomItem(1, 6, 1, 30117, 1) ~= 1) then 
Talk(1, "","Ng­¬i ®· miÔn phÝ ®· tham gia mét lÇn , lÇn nµy tham gia ph¶i cã 1 c¸ Cöu ch©u lµm ") 
return 
else 
tbLog:PlayerActionLog("LoanChienCuuChauCoc","TruThanhCong1CuuChauLenh") 
end 
end 
PlayerFunLib:AddTaskDaily(2710, 1) 
pDungeon.tbPlayer[GetName()] = {} 
local nMapId, nX, nY = GetWorldPos() 
pDungeon.tbPlayer[GetName()].tbSignUpPos = {nMapId, nX, nY} 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "luanzhanjiuzhou")
pDungeon:GotoDaTuSha() 
-- script viet hoa By http://tranhba.com Ghi log kü n¨ng key - Modified By DinhHQ -20120410 
if PlayerFunLib:GetTaskDailyCount(2710) == 1 then 
tbLog:PlayerActionLog("TinhNangKey","BaoDanhLoanChienCuuChauCocMienPhi") 
else 
tbLog:PlayerActionLog("TinhNangKey","BaoDanhLoanChienCuuChauCocThuPhi") 
end 
end 

function dialog_main() 
local szTitle = "<npc> v× v× qu©n ®éi chän lùa nh©n tµi , triÒu ®×nh quyÕt ®Þnh ë d©n chóng tróng tuyÓn ra mét Ýt trÝ dòng song toµn cao thñ . hoan nghªnh c¸c vÞ ghi danh tham gia ." 
local tbOpt = 
{ 
{"Cïng lo¹n chiÕn Cöu ch©u cèc cã liªn quan ", about, {0}}, 
{"Ta muèn xem ta tæng tÝch ph©n cïng tr­íc m­êi ®øng hµng ", check_rank}, 
{"Ta tíi dÉn t­ëng ", give_award}, 
{"Ta ch¼ng qua lµ ®i ngang qua "}, 
} 
local pDungeon = DungeonList[MAP_ID] 
if pDungeon then 
if pDungeon.nState == 1 then 
tinsert(tbOpt, 1, {"Ghi danh tham gia lo¹n chiÕn Cöu ch©u cèc ", join_datusha, {}}) 
end 
end 


CreateNewSayEx(szTitle, tbOpt) 
end 

EventSys:GetType("AddNpcOption"):Reg("Th¾p ®Ìn cung n÷ ", " lo¹n chiÕn Cöu ch©u cèc ", dialog_main) 
