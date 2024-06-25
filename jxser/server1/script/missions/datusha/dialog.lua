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
[1]={szName=" t� m�ng kh�i �� ph� ",tbProp={6,1,2714,1,0,0},nRate = 2.0,}, 
[2]={szName=" t� m�ng y �� ph� ",tbProp={6,1,2715,1,0,0},nRate = 2.0,}, 
[3]={szName=" t� m�ng �ai l�ng �� ph� ",tbProp={6,1,2717,1,0,0},nRate = 2.0,}, 
[4]={szName=" t� m�ng h� c� tay �� ph� ",tbProp={6,1,2718,1,0,0},nRate = 2.0,}, 
[5]={szName=" t� m�ng b�i �� ph� ",tbProp={6,1,2720,1,0,0},nRate = 2.0,}, 
[6]={szName=" t� m�ng gi�y �� ph� ",tbProp={6,1,2716,1,0,0},nRate = 2.0,}, 
[7]={szName=" t� m�ng gi�y chuy�n �� ph� ",tbProp={6,1,2719,1,0,0},nRate = 2.0,}, 
[8]={szName=" t� m�ng th��ng chi�c nh�n �� ph� ",tbProp={6,1,2721,1,0,0},nRate = 0.5,}, 
[9]={szName=" t� m�ng h� chi�c nh�n �� ph� ",tbProp={6,1,2722,1,0,0},nRate = 0.5,}, 
[10]={szName=" t� m�ng kh� gi�i �� ph� ",tbProp={6,1,2723,1,0,0},nRate = 0.5,}, 
[11]={szName=" t� m�ng l�m ",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.5}, 
[12]={szName=" ho�ng kim chi qu� ",tbProp={6,1,907,1,0,0},nCount=1,nRate=19, nExpiredTime = 10080}, 
[13]={nExp_tl=1,nRate = 65,nCount = 10000000,}, 
} 

TotalRankAward = 
{ 
{ 
{nExp_tl = 32e6}, 
{ 
{szName=" c�n kh�n song tuy�t b�i ",tbProp={6,1,2219,1,0,0},nRate = 5.0, nExpiredTime = 43200} 
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
szTitle = "<npc> ho�t ��ng th�i gian l� m�i ng�y 12:00, 19:00, 20:00, 21:00, t�t c� 120 c�p tr� l�n nh� ch�i c�ng c� th� t�m ta ghi danh , ghi danh th�i gian l� 10 ph�t , ghi danh mu�n ��ng 10 v�n l��ng . ho�t ��ng b�t ��u sau c� th� s� d�ng t� th�n k� n�ng tham chi�n , lo�n th�i chi�n �ang l�c l� 30 ph�n , m�i ng��i c� 5 l�n s�ng l�i c� h�i , ho�t ��ng sau khi k�t th�c c�n c� t�ch ph�n d�n t��ng ." 
tinsert(tbOpt, {"C�u ch�u c�c l� m�t c�i d�ng g� ��ch ��a ph��ng ", about, {1}}) 
tinsert(tbOpt, {"C� c�i g� ph�n th��ng sao ", about, {2}}) 
elseif nStep == 1 then 
szTitle = "<npc> C�u ch�u c�c l� n�m g�n ��y tri�u ��nh d�ng �� hu�n luy�n ��i n�i cao th� ��ch ��a ph��ng b� m�t , trong c�c c�n c� ti�n nh�n ��ch c�ch g�i l� chia l�m 9 c�i khu v�c ��ch C�u ch�u # t� v� b�t ��u sau , t� th� 3 b�t ��u , c�ch m�i 3 ph�t �em c� m�t c�i khu v�c b� ng�n n�m b�ng h�n bao g�m , n�u nh� kh�ng k�p l�c r�ch b�ng r�i �i s� b� ��ng c�ng ch�t . tr�n ��t 30 ph�t n�u nh� c�n kh�ng c� ph�n ra th�ng b�i , trong c�c ��ch t�t c� nh� ch�i s� b� ��ng b�ng . trong c�c quanh n�m tr�n ��y ��c bi�t l�nh s��ng v� . � s��ng l�nh trung h�n chi�n v�a b� b�ng s��ng uy hi�p ��ng th�i l�i kh�ng c� ngh�o nguy hi�m ." 
tinsert(tbOpt, {"��i tho�i tr� v� th��ng m�t t�ng ", about, {0}}) 
elseif nStep == 2 then 
szTitle = "<npc> m�i l�n ho�t ��ng ph�i c�n c� l�n n�y ��ch t�ch ph�n t�i d�n t��ng # n�u nh� ng��i l� cu�i c�ng duy nh�t ng��i may m�n c�n s�ng s�t , c�ng c� th� nh�n l�y cu�i c�ng d�ng s� ��ch ph�n th��ng . m�i ng�y �em c�n c� ban ng�y nh�n l�y ��ch t�ch ph�n ti�p t�c ��ng h�ng , tr��c m��i danh t��ng c� d�ng s� ph�n th��ng ." 
tinsert(tbOpt, {"��i tho�i tr� v� th��ng m�t t�ng ", about, {0}}) 
end 
tinsert(tbOpt, {"K�t th�c ��i tho�i "}) 
CreateNewSayEx(szTitle, tbOpt) 
end 

function check_rank() 

local szMsg = format("Ng��i t�ng t�ch ph�n l� <color=green>%d<color><enter>", GetPlayerTotalScores()) 

local szName, nValue = Ladder_GetLadderInfo(LadderId, 1); 

if (szName == nil or szName == "" or nValue == nil) then 
return Talk(1, "", szMsg.." t�m th�i c�n kh�ng c� tr��c m��i t�n ��ch b�ng x�p h�ng .") 
end 

szMsg = szMsg.." tr��c m��i t�n ��ch b�ng x�p h�ng : <enter>" 
szMsg = szMsg..format("%s%s%s<enter>", strfill_center("��ng h�ng ", 6, " "), strfill_center("T�n h� ", 10, " "), strfill_center("T�ng t�ch ph�n ", 8, " ")) 
for i=1, 10 do 
local szName, nValue = Ladder_GetLadderInfo(LadderId, i); 
if szName and szName ~= "" and nValue > 0 then 
szMsg = szMsg..format("%s%s%s<enter>", strfill_center(tostring(i), 6, " "), strfill_center(szName, 10, " "), strfill_center(tostring(nValue), 8, " ")) 
end 
end 
local tbOpt = 
{ 
{"Tr� v� ", dialog_main}, 
{"K�t th�c ��i tho�i "}, 
} 
CreateNewSayEx("<npc>"..szMsg, tbOpt) 
end 

function round_award() 
local pDungeon = DungeonList[MAP_ID] 
if pDungeon then 
return Talk(1, "","T� v� th�i gian kh�ng th� d�n t��ng ") 
end 
if not DaTuShaClass.Rank then 
return 
end 
local szCurName = GetName() 
if DaTuShaClass.Scores[szCurName] == nil or DaTuShaClass.Scores[szCurName] == 0 then 
return Talk(1, "","Ng��i c�n kh�ng c� tham gia C�u ch�u c�c th� luy�n ") 
end 

if DaTuShaClass.Scores[szCurName] < 0 then 
return Talk(1, "","Ng��i �� d�n qu� n�y ph�n th��ng .") 
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
Msg2Player(format("C�i n�y chi�n ng��i th� h�ng l� %d, ��y l� t�ng qu� cho ng��i xin/m�i nh�n l�y .", nRank)) 
local nAwardCount = getn(DaTuShaRankAward) 
local nExp = DaTuShaRankAward[nRank] 
if nRank > nAwardCount then 
nExp = DaTuShaRankAward[nAwardCount] 
end 
if nExp then 
tbAwardTemplet:Give({nExp_tl = nExp}, 1, {" lo�n chi�n C�u ch�u c�c ","C� ��nh t��ng th��ng "}) 
DaTuShaClass.Scores[szCurName] = -1 
end 
else 
Talk(1, "", format("Ng��i c�i n�y chi�n ��ch ��ng h�ng kh�ng c� � ��y %d danh s�ch trung ", MAX_AWARD_COUNT)) 
end 
end 

function last_man_award() 
local LastMan = DaTuShaClass.LastMan 
if LastMan and LastMan.szName and LastMan.szName == GetName() and LastMan.bFlag == nil then 
if CalcFreeItemCellCount() < 1 then 
return Talk(1, "", format("T�i �eo l�ng c�n <color=yellow>%d<color> kh�ng gian .", 1)) 
end 

tbAwardTemplet:Give(LastManAward, 1, {" lo�n chi�n C�u ch�u c�c ","Cu�i c�ng d�ng s� ��ch ph�n th��ng "}) 
LastMan.bFlag = 1 
else 
Talk(1, "","Ng��i kh�ng c� t� c�ch d�n t��ng ho�c l� �� d�n qua .") 
end 
end 

function final_award() 
local nHour = tonumber(GetLocalDate("%H")) 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 

if not(nHour > 21 and nHour < 24) then 
return Talk(1, "","B�y gi� kh�ng ph�i l� t�ng ��ng h�ng th� ��ch d�n t��ng th�i gian .") 
end 
if GetTask(TSK_FINAL_AWARD) == nDate then 
return Talk(1, "","Ng��i �� d�n qu� khen .") 
end 

if CalcFreeItemCellCount() < 1 then 
return Talk(1, "", format("T�i �eo l�ng ph�i c� <color=yellow>%d<color> kh�ng gian .", 1)) 
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
tbAwardTemplet:Give(TotalRankAward[nRank], 1, {" lo�n chi�n C�u ch�u c�c ","Cu�i c�ng d�ng s� ��ch ph�n th��ng "}) 
SetTask(TSK_FINAL_AWARD, nDate) 
else 
return Talk(1, "","Ng��i kh�ng c� � ��y tr��c m��i b�ng x�p h�ng trong .") 
end 
end 

function give_award() 
local szTitle = "<npc> m�i l�n ho�t ��ng ph�i c�n c� l�n n�y ��ch t�ch ph�n t�i d�n t��ng # n�u nh� ng��i l� cu�i c�ng duy nh�t ng��i may m�n c�n s�ng s�t , c�ng c� th� nh�n l�y cu�i c�ng d�ng s� ��ch ph�n th��ng . m�i ng�y �em c�n c� ban ng�y nh�n l�y ��ch t�ch ph�n ti�p t�c ��ng h�ng , tr��c m��i danh t��ng c� d�ng s� ph�n th��ng ." 
local tbOpt = 
{ 

{"Ta t�i nh�n l�y m�i chi�n ��ch ph�n th��ng ", round_award}, 
{"Ta t�i nh�n l�y [ cu�i c�ng d�ng s� ] ��ch ph�n th��ng " ,last_man_award}, 
{"Ta t�i d�n t�ng t�ch ph�n t��ng th��ng ", final_award}, 
{"K�t th�c ��i tho�i "}, 
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
return Msg2Player(format("C�p s� ph�i <color=yellow>%d<color>.", 120)) 
end 
-- script viet hoa By http://tranhba.com Change request July 13, 2011 - Modified by DinhHQ - 20110713 
-- script viet hoa By http://tranhba.com  if Pay(COST_MONEY) ~= 1 then 
-- script viet hoa By http://tranhba.com  return Talk(1, "", format("C�n n�p l�n %d hai ti�n ghi danh ", COST_MONEY)) 
-- script viet hoa By http://tranhba.com  end 
if PlayerFunLib:GetTaskDailyCount(2710) >= 1 then 
if (CalcItemCount(-1, 6, 1, 30117, -1) < 1 or ConsumeEquiproomItem(1, 6, 1, 30117, 1) ~= 1) then 
Talk(1, "","Ng��i �� mi�n ph� �� tham gia m�t l�n , l�n n�y tham gia ph�i c� 1 c� C�u ch�u l�m ") 
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
-- script viet hoa By http://tranhba.com Ghi log k� n�ng key - Modified By DinhHQ -20120410 
if PlayerFunLib:GetTaskDailyCount(2710) == 1 then 
tbLog:PlayerActionLog("TinhNangKey","BaoDanhLoanChienCuuChauCocMienPhi") 
else 
tbLog:PlayerActionLog("TinhNangKey","BaoDanhLoanChienCuuChauCocThuPhi") 
end 
end 

function dialog_main() 
local szTitle = "<npc> v� v� qu�n ��i ch�n l�a nh�n t�i , tri�u ��nh quy�t ��nh � d�n ch�ng tr�ng tuy�n ra m�t �t tr� d�ng song to�n cao th� . hoan ngh�nh c�c v� ghi danh tham gia ." 
local tbOpt = 
{ 
{"C�ng lo�n chi�n C�u ch�u c�c c� li�n quan ", about, {0}}, 
{"Ta mu�n xem ta t�ng t�ch ph�n c�ng tr��c m��i ��ng h�ng ", check_rank}, 
{"Ta t�i d�n t��ng ", give_award}, 
{"Ta ch�ng qua l� �i ngang qua "}, 
} 
local pDungeon = DungeonList[MAP_ID] 
if pDungeon then 
if pDungeon.nState == 1 then 
tinsert(tbOpt, 1, {"Ghi danh tham gia lo�n chi�n C�u ch�u c�c ", join_datusha, {}}) 
end 
end 


CreateNewSayEx(szTitle, tbOpt) 
end 

EventSys:GetType("AddNpcOption"):Reg("Th�p ��n cung n� ", " lo�n chi�n C�u ch�u c�c ", dialog_main) 
