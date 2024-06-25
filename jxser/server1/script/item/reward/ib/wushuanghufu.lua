-- script viet hoa By http://tranhba.com  v« song hæ phï 

IncludeLib("TONG"); 
IncludeLib("TIMER"); 
Include("\\script\\tong\\tong_header.lua");


SECOND_FRAME_SUM = 18; -- script viet hoa By http://tranhba.com  1 gi©y ®Ých tr¸nh ®Õm 
HOUR_FRAME_SUM = SECOND_FRAME_SUM * 60 * 60; -- script viet hoa By http://tranhba.com  1 giê ®Ých tr¸nh ®Õm 

WUSHUANG_DURATION = 1; -- script viet hoa By http://tranhba.com  cã hiÖu lùc kÐo dµi thêi gian 1 giê 
WUSHUANG_DURATION_FRAME = WUSHUANG_DURATION * HOUR_FRAME_SUM; 
WUSHUANG_EFFECT_FRAME = SECOND_FRAME_SUM * 15 * 60; -- script viet hoa By http://tranhba.com  mçi lÇn Timer xóc ph¸t cã hiÖu lùc thêi gian 

TIMERID_WUSHUANG = 78; -- script viet hoa By http://tranhba.com  ID , ®iÒn viÕt ë \settings\timertask.txt 
TIMER_WUSHUANG_FREQ = 10; -- script viet hoa By http://tranhba.com  bu«ng th¶ tÇn sè (10 gi©y ) 
TIMER_WUSHUANG_FREQ_FRAME = TIMER_WUSHUANG_FREQ * SECOND_FRAME_SUM; 
TIMER_WUSHUANG_COUNT = WUSHUANG_DURATION_FRAME / TIMER_WUSHUANG_FREQ_FRAME; 

PK_PUNISH_REDUCE_ADD = 50 -- script viet hoa By http://tranhba.com  PK kh«ng gia t¨ng tû lÖ % 
PK_PUNISH_REDUCE_EXP = 50 -- script viet hoa By http://tranhba.com  PK kinh nghiÖm trõng ph¹t gi¶m bít so tû sè % 
PK_PUNISH_REDUCE_MONEY = 50 -- script viet hoa By http://tranhba.com  PK kim tiÒn trõng ph¹t gi¶m bít so tû sè % 

TASKID_FEATURE_ID = 1759; -- script viet hoa By http://tranhba.com  v« song hæ phï ®Ých FeatureId 
TMPTASKID_WUSHUANG_IDX = 116; -- script viet hoa By http://tranhba.com  ghi chÐp sö dông v« song hæ phï ®Ých ItemIdx 


function main(nItemIdx) 
local _, nTongID = GetTongName(); 
if (nTongID == 0 or TONGM_GetFigure(nTongID, GetTongMemberID()) > TONG_ELDER) then 
Say("ChØ cã bang chñ cïng tr­ëng l·o cã thÓ sö dông ", 1,"Tèt /cancel"); 
return 1; 
end 
SetTaskTemp(TMPTASKID_WUSHUANG_IDX, nItemIdx); 
GiveItemUI("V« song hæ phï ","Bá vµo mÆt n¹ ", "process", "cancel"); 
return 1; 
end 

function process(nItemCount) 
if (nItemCount ~= 1) then 
Say("Bá vµo vËt phÈm sè l­îng kh«ng ®óng ", 0); 
return 
end 
local nMaskItemIdx = GetGiveItemUnit(1); 
local nItemGenre, nDetailType, nParticualrType = GetItemProp(nMaskItemIdx); 
if (nItemGenre ~= 0 or nDetailType ~= 11) then 
Say("Ng­¬i bá vµo ®Ých kh«ng ph¶i lµ mÆt n¹ ®i . ", 0); 
return 
end 
if (nParticualrType == 366) then 
Say("<color=yellow> ngôy trang mÆt n¹ <color> kh«ng thÓ lµm v« song s¸t trËn t¹o h×nh . ", 0); 
return 
end 
local nWuShuangItemIdx = GetTaskTemp(TMPTASKID_WUSHUANG_IDX); 
local nFeatureId = GetMaskFeature(nMaskItemIdx); 
Describe("<#><link=image[0,8]:#npcspr:?NPCSID="..tostring(nFeatureId).."?ACTION="..tostring(0).."><link> ng­¬i x¸c nhËn sö dông , biÕn thµnh bé d¸ng kia "..WUSHUANG_DURATION.." giê ? ", 2,"X¸c ®Þnh /#process_confirm("..nWuShuangItemIdx..","..nMaskItemIdx..","..nFeatureId..")","Hñy bá /cancel"); 
end 

function process_confirm(nWuShuangItemIdx, nMaskItemIdx, nFeatureId) 
local _, nTongID = GetTongName(); 
if (nTongID == 0 or TONGM_GetFigure(nTongID, GetTongMemberID()) > TONG_ELDER) then 
return 
end 
if (RemoveItemByIndex(nWuShuangItemIdx) ~= 1 or 
RemoveItemByIndex(nMaskItemIdx) ~= 1) then 
WriteLog("[ERR] dÞ th­êng # v« song hæ phï thñ tiªu tµi liÖu thÊt b¹i #\t"..GetAccount().."("..GetName()..")"); 
return 
end 
SetTask(TASKID_FEATURE_ID, nFeatureId); 
TM_SetTimer(TIMER_WUSHUANG_FREQ_FRAME, TIMERID_WUSHUANG, TIMER_WUSHUANG_COUNT, 1); 
OnTimer(); 
end 

function cancel() 
end 

function OnTimer() 
local nOrgPlayerIdx = PlayerIndex; 
local nCamp = GetCamp(); 
local nFeatureId = GetTask(TASKID_FEATURE_ID); 
local _, nTongID = GetTongName(); 
if (nTongID == 0) then 
Msg2Player("Ng­¬i ®· rêi ®i bang héi , v« song hæ phï kh«ng c¸ch nµo tiÕp tôc cã hiÖu lùc . "); 
SetTask(TASKID_FEATURE_ID, 0); 
return 
end 
local nRestCount = TM_GetRestCount(TIMERID_WUSHUANG); 
if (nRestCount <= 0) then 
Msg2Player("V« song hæ phï ®· hao hÕt . "); 
SetTask(TASKID_FEATURE_ID, 0); 
return 
end 
if (mod(nRestCount * TIMER_WUSHUANG_FREQ, 300) == 0) then 
Msg2Player("<color=yellow> v« song hæ phï <color> cßn cã thÓ t¸c dông <color=yellow>"..floor(nRestCount * TIMER_WUSHUANG_FREQ / 3600).."<color> giê <color=yellow>"..mod(floor(nRestCount * TIMER_WUSHUANG_FREQ / 60), 60).."<color> phót . "); 
end 
local tTongPlayer = GetMapPlayerList(nCamp, 1, nTongID); 
-- script viet hoa By http://tranhba.com  lÇn lÞch , sau ®ã sÏ thiÕt th­îng kü n¨ng 
for i = 1, getn(tTongPlayer) do 
PlayerIndex = tTongPlayer[i]; 
if (PlayerIndex > 0) then 
SetPkReduceState(WUSHUANG_EFFECT_FRAME, PK_PUNISH_REDUCE_ADD, PK_PUNISH_REDUCE_EXP, PK_PUNISH_REDUCE_MONEY); 
ChangeOwnFeature(1, WUSHUANG_EFFECT_FRAME, nFeatureId); 
end 
end 
PlayerIndex = nOrgPlayerIdx; 
end
