-- script viet hoa By http://tranhba.com  v� song h� ph� 

IncludeLib("TONG"); 
IncludeLib("TIMER"); 
Include("\\script\\tong\\tong_header.lua");


SECOND_FRAME_SUM = 18; -- script viet hoa By http://tranhba.com  1 gi�y ��ch tr�nh ��m 
HOUR_FRAME_SUM = SECOND_FRAME_SUM * 60 * 60; -- script viet hoa By http://tranhba.com  1 gi� ��ch tr�nh ��m 

WUSHUANG_DURATION = 1; -- script viet hoa By http://tranhba.com  c� hi�u l�c k�o d�i th�i gian 1 gi� 
WUSHUANG_DURATION_FRAME = WUSHUANG_DURATION * HOUR_FRAME_SUM; 
WUSHUANG_EFFECT_FRAME = SECOND_FRAME_SUM * 15 * 60; -- script viet hoa By http://tranhba.com  m�i l�n Timer x�c ph�t c� hi�u l�c th�i gian 

TIMERID_WUSHUANG = 78; -- script viet hoa By http://tranhba.com  ID , �i�n vi�t � \settings\timertask.txt 
TIMER_WUSHUANG_FREQ = 10; -- script viet hoa By http://tranhba.com  bu�ng th� t�n s� (10 gi�y ) 
TIMER_WUSHUANG_FREQ_FRAME = TIMER_WUSHUANG_FREQ * SECOND_FRAME_SUM; 
TIMER_WUSHUANG_COUNT = WUSHUANG_DURATION_FRAME / TIMER_WUSHUANG_FREQ_FRAME; 

PK_PUNISH_REDUCE_ADD = 50 -- script viet hoa By http://tranhba.com  PK kh�ng gia t�ng t� l� % 
PK_PUNISH_REDUCE_EXP = 50 -- script viet hoa By http://tranhba.com  PK kinh nghi�m tr�ng ph�t gi�m b�t so t� s� % 
PK_PUNISH_REDUCE_MONEY = 50 -- script viet hoa By http://tranhba.com  PK kim ti�n tr�ng ph�t gi�m b�t so t� s� % 

TASKID_FEATURE_ID = 1759; -- script viet hoa By http://tranhba.com  v� song h� ph� ��ch FeatureId 
TMPTASKID_WUSHUANG_IDX = 116; -- script viet hoa By http://tranhba.com  ghi ch�p s� d�ng v� song h� ph� ��ch ItemIdx 


function main(nItemIdx) 
local _, nTongID = GetTongName(); 
if (nTongID == 0 or TONGM_GetFigure(nTongID, GetTongMemberID()) > TONG_ELDER) then 
Say("Ch� c� bang ch� c�ng tr��ng l�o c� th� s� d�ng ", 1,"T�t /cancel"); 
return 1; 
end 
SetTaskTemp(TMPTASKID_WUSHUANG_IDX, nItemIdx); 
GiveItemUI("V� song h� ph� ","B� v�o m�t n� ", "process", "cancel"); 
return 1; 
end 

function process(nItemCount) 
if (nItemCount ~= 1) then 
Say("B� v�o v�t ph�m s� l��ng kh�ng ��ng ", 0); 
return 
end 
local nMaskItemIdx = GetGiveItemUnit(1); 
local nItemGenre, nDetailType, nParticualrType = GetItemProp(nMaskItemIdx); 
if (nItemGenre ~= 0 or nDetailType ~= 11) then 
Say("Ng��i b� v�o ��ch kh�ng ph�i l� m�t n� �i . ", 0); 
return 
end 
if (nParticualrType == 366) then 
Say("<color=yellow> ng�y trang m�t n� <color> kh�ng th� l�m v� song s�t tr�n t�o h�nh . ", 0); 
return 
end 
local nWuShuangItemIdx = GetTaskTemp(TMPTASKID_WUSHUANG_IDX); 
local nFeatureId = GetMaskFeature(nMaskItemIdx); 
Describe("<#><link=image[0,8]:#npcspr:?NPCSID="..tostring(nFeatureId).."?ACTION="..tostring(0).."><link> ng��i x�c nh�n s� d�ng , bi�n th�nh b� d�ng kia "..WUSHUANG_DURATION.." gi� ? ", 2,"X�c ��nh /#process_confirm("..nWuShuangItemIdx..","..nMaskItemIdx..","..nFeatureId..")","H�y b� /cancel"); 
end 

function process_confirm(nWuShuangItemIdx, nMaskItemIdx, nFeatureId) 
local _, nTongID = GetTongName(); 
if (nTongID == 0 or TONGM_GetFigure(nTongID, GetTongMemberID()) > TONG_ELDER) then 
return 
end 
if (RemoveItemByIndex(nWuShuangItemIdx) ~= 1 or 
RemoveItemByIndex(nMaskItemIdx) ~= 1) then 
WriteLog("[ERR] d� th��ng # v� song h� ph� th� ti�u t�i li�u th�t b�i #\t"..GetAccount().."("..GetName()..")"); 
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
Msg2Player("Ng��i �� r�i �i bang h�i , v� song h� ph� kh�ng c�ch n�o ti�p t�c c� hi�u l�c . "); 
SetTask(TASKID_FEATURE_ID, 0); 
return 
end 
local nRestCount = TM_GetRestCount(TIMERID_WUSHUANG); 
if (nRestCount <= 0) then 
Msg2Player("V� song h� ph� �� hao h�t . "); 
SetTask(TASKID_FEATURE_ID, 0); 
return 
end 
if (mod(nRestCount * TIMER_WUSHUANG_FREQ, 300) == 0) then 
Msg2Player("<color=yellow> v� song h� ph� <color> c�n c� th� t�c d�ng <color=yellow>"..floor(nRestCount * TIMER_WUSHUANG_FREQ / 3600).."<color> gi� <color=yellow>"..mod(floor(nRestCount * TIMER_WUSHUANG_FREQ / 60), 60).."<color> ph�t . "); 
end 
local tTongPlayer = GetMapPlayerList(nCamp, 1, nTongID); 
-- script viet hoa By http://tranhba.com  l�n l�ch , sau �� s� thi�t th��ng k� n�ng 
for i = 1, getn(tTongPlayer) do 
PlayerIndex = tTongPlayer[i]; 
if (PlayerIndex > 0) then 
SetPkReduceState(WUSHUANG_EFFECT_FRAME, PK_PUNISH_REDUCE_ADD, PK_PUNISH_REDUCE_EXP, PK_PUNISH_REDUCE_MONEY); 
ChangeOwnFeature(1, WUSHUANG_EFFECT_FRAME, nFeatureId); 
end 
end 
PlayerIndex = nOrgPlayerIdx; 
end
