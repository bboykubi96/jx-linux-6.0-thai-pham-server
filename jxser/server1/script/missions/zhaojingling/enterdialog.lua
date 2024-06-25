Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\missions\\zhaojingling\\head.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local tbPaiMingAward = 
{ 
[1] = 
{ 
nExp_tl = 20e6 
}, 
[2] = 
{ 
nExp_tl = 15e6 
}, 
[3] = 
{ 
nExp_tl = 13e6 
}, 
[4] = 
{ 
nExp_tl = 10e6 
}, 
[5] = 
{ 
nExp_tl = 8e6 
}, 
[6] = 
{ 
nExp_tl = 6e6 
}, 
[7] = 
{ 
nExp_tl = 5e6 
}, 
[8] = 
{ 
nExp_tl = 4e6 
}, 
[9] = 
{ 
nExp_tl = 3e6 
}, 
[10] = 
{ 
nExp_tl = 2e6 
}, 
} 

local tbAllPaiMingAward = 
{ 
[1]={ 
[1]={szName=" ch� t�n b� b�o ",tbProp={6,1,2375,1,0,0},nRate = 20.0,nCount = 3,}, 
[2]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 40.0,nCount = 4,}, 
[3]={nJxb=1,nRate = 20.0,nCount = 30000000,}, 
[4]={nExp_tl=1,nRate = 20.0,nCount = 60000000,}, 
}, 
[2]={ 
[1]={szName=" ch� t�n b� b�o ",tbProp={6,1,2375,1,0,0},nRate = 20.0,nCount = 2,}, 
[2]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 40.0,nCount = 3,}, 
[3]={nJxb=1,nRate = 20.0,nCount = 24000000,}, 
[4]={nExp_tl=1,nRate = 20.0,nCount = 48000000,}, 
}, 
[3]={ 
[1]={ 
[1]={szName=" ch� t�n b� b�o ",tbProp={6,1,2375,1,0,0},}, 
[2]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},}, 
nRate = 25.0, 
}, 
[2]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 25.0,}, 
[3]={nJxb=1,nRate = 25.0,nCount = 22000000,}, 
[4]={nExp_tl=1,nRate = 25.0,nCount = 44000000,}, 
}, 
[4]={ 
[1]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,nCount = 2,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 18000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 36000000,}, 
}, 
[5]={ 
[1]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,nCount = 2,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 16000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 32000000,}, 
}, 
[6]={ 
[1]={szName=" ch� t�n b� b�o ",tbProp={6,1,2375,1,0,0},nRate = 33.0,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 12000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 24000000,}, 
}, 
[7]={ 
[1]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 10000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 20000000,}, 
}, 
[8]={ 
[1]={szName=" n��c t�c t�i b�o ",tbProp={6,1,2376,1,0,0},nRate = 33.0,}, 
[2]={nJxb=1,nRate = 33.0,nCount = 8000000,}, 
[3]={nExp_tl=1,nRate = 34.0,nCount = 16000000,}, 
}, 
[9]={ 
[1]={nJxb=1,nRate = 50.0,nCount = 5000000,}, 
[2]={nExp_tl=1,nRate = 50.0,nCount = 10000000,}, 
}, 
[10]={ 
[1]={nJxb=1,nRate = 50.0,nCount = 3000000,}, 
[2]={nExp_tl=1,nRate = 50.0,nCount = 6000000,}, 
}, 
} 

local szRemoteScript = "\\script\\event\\zhaojingling\\event.lua"

function dialogmain() 
local tbOpt = {} 
local szTitleMsg = "<npc> ng��i tu�i tr� , ng��i ngh� hu�n luy�n m�nh ph�n �ng n�ng l�c sao ? th� t�m ���c c�ng nhi�u h�n <color=yellow> m�c nh�n <color> �em ��t ���c t��ng th��ng " 
local szTitleMsg = format("%s, m�i ng�y ng��i ch� c� <color=yellow>%d<color> l�n c� h�i c� th� mi�n ph� tham gia , c� g�ng luy�n t�p nga ", szTitleMsg, MAXGAMETIME) 
tinsert(tbOpt, {"Ta mu�n th� nh�n m�t ch�t ", onok}) 
tinsert(tbOpt, {"Nh�n l�y t��ng th��ng ", getaward}) 
-- script viet hoa By http://tranhba.com  tinsert(tbOpt, {"Tra x�t tr��c m�t ng�y tr��c m��i t�n ", querytopten}) 
tinsert(tbOpt, {" li�n quan t�i hu�n luy�n m�c nh�n m�t chuy�n ", detail}) 
tinsert(tbOpt, {"Tr��c m�t ta b� b�n nhi�u vi�c , ch� m�t ch�t tr� l�i .", oncancel}) 
CreateNewSayEx(szTitleMsg, tbOpt) 
end 

function onok() 
local tbOpt = {} 
tinsert(tbOpt, {"C� th� !", wantjoin}) 
tinsert(tbOpt, {"Ta c� vi�c g�p , ch� ta m�t ch�t ", oncancel}) 
CreateNewSayEx("<npc> ng��i �i b�n kia chu�n b� �i , ch� m�t l�t �em b�t ��u trang b� ", tbOpt) 
end 

function wantjoin() 
if checkjoingame() ~= 1 then 
return 
end 
dojoingame() 
end 

function detail() 
local tbOpt = {} 
tinsert(tbOpt, {"Ta bi�t !", oncancel}) 
CreateNewSayEx("<npc> hu�n luy�n m�c nh�n m�t cu�c l� <color=yellow>15<color> ph�t , trong �� , <color=yellow>5<color> ph�t chu�n b� , ghi danh tham gia sau , ng��i s� b� ��nh ��n chu�n b� khu , ho�t ��ng b�t ��u sau , ng��i �em b� mang v�o tu�n tra xe , n�u nh� � n�i n�o ng��i th�y <color=yellow> m�c nh�n <color> ch� c�n d�ng con chu�t <color=yellow> �i�m k�ch b�n tr�i ki�n <color> ��n ph�a tr�n l� ���c , b�t qu� , ng��i s� b� ng��i kh�c ng�n tr� , l�c n�y , ng��i c� th� s� d�ng ��o c� t�i ��i ph� t�nh hu�ng nh� th� , ch� c�n ng��i t�m ���c r�t nhi�u <color=yellow> m�c nh�n <color> �em ��t ���c t��ng �ng t��ng th��ng ", tbOpt) 
end 

function oncancel() 
end 

function checkjoingame() 
if PlayerFunLib:CheckTotalLevel(MINLEVEL, "125 c�p c�ng 125 c�p tr� l�n ho�c l� �� s�ng l�i ��ch tr�ng s� , m�i c� th� tham gia m�c nh�n ho�t ��ng ", ">=") ~= 1 then 
return 
end 
local nCurHour = tonumber(GetLocalDate("%H")) 
if nCurHour >= 0 and nCurHour < 12 then 
Talk(1, "","M�i ng�y 12 l�c ��n 24 l�c , b�t ��u b�t m�c nh�n ho�t ��ng , tr��c m�t kh�ng ph�i l� ho�t ��ng th�i gian ") 
return 
end 
local nTimes = GetTaskA(TSK_PLAYTIMES, TSK_DAYKEY) 
if nTimes >= MAXGAMETIME then 
Talk(1, "","M�i ng�y ch� c� th� tham gia 3 tr�ng , ng�y mai tr� l�i �i . ") 
return 
end 

if GetTask(TSK_RANK) ~= 0 and GetTask(TSK_COUNT_ONETIME) > 0 then 
Talk(1, "","C�n nh�n l�y ng�y h�m qua ��u tr��ng l�n t��ng th��ng m�i c� th� ti�p t�c tham gia , nhanh �i d�n t��ng �i . ") 
return 
end 

return 1 
end 

function dojoingame() 
local nMapId, nX, nY = GetWorldPos() 
SetTask(TSK_LEAVERMAPID, nMapId) 
SetTask(TSK_LEAVERPOSX, nX) 
SetTask(TSK_LEAVERPOSY, nY) 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\zhaojingling\\templet\\gametemplet.lua", "GameTemplet:MoveTo", PREPARE_MAP, POSPATH, 2, PREPAREPOSENDLINE)	
end 

function getaward() 
local tbOpt = {} 
tinsert(tbOpt, {"Nh�n l�y m�i tr�ng ��ng h�ng t��ng th��ng ", getonetimeaward}) 
-- script viet hoa By http://tranhba.com Change request 14/7/2011 - Modified by DinhHQ - 20110714 
-- script viet hoa By http://tranhba.com  tinsert(tbOpt, {"M�i ng�y t�ng ��ng h�ng t��ng th��ng ", getallpaimingaward}) 
CreateNewSayEx("<npc> xin/m�i d�n ho�n tr��c tr�ng l�n t��ng th��ng sau m�i c� th� ti�p t�c tham gia ph�a d��i tranh t�i ", tbOpt) 
end 

function checkbox() 
local nWidth = 1 
local nHeight = 1 
local nCount = 2 
if CountFreeRoomByWH(nWidth, nHeight) >= nCount then 
return 1 
else 
local szMsg = format("V� b�o v� ��i hi�p ��ch t�i s�n , xin/m�i l�u l�i %d %dx%d trang b� ch� tr�ng ", nCount, nWidth, nHeight) 
Talk(1,"", szMsg) 
return 
end 
end 

function getonetimeaward() 
local nRank = GetTask(TSK_RANK) 
local nCount = GetTask(TSK_COUNT_ONETIME) 
if nRank <= 0 or nRank > 10 then 
Talk(1, "","Kh�ng c� m�u ch�t ��ch t��ng th��ng ") 
return 
end 
if nCount <= 0 then 
Talk(1, "","Kh�ng c� m�u ch�t ��ch t��ng th��ng ") 
return 
end 

if checkbox() ~= 1 then 
return 
end 
tbAwardTemplet:GiveAwardByList(%tbPaiMingAward[nRank],"Nh�n l�y m�i tu�n m�i ng��i ho�t ��ng ��ng h�ng t��ng th��ng ") 
SetTask(TSK_RANK, 0) 
end 

function getallpaimingaward() 
local nIsAward = GetTaskA(TSK_IS_AWARD, TSK_IS_AWARD_DAYKEY) 
if nIsAward > 0 then 
Talk(1, "","T�ng ��ng h�ng t��ng th��ng �� l�nh ") 
return 
end 
local obj = ObjBuffer:New() 
obj:Push(GetName()) 
	DynamicExecute("\\script\\missions\\zhaojingling\\enterdialog.lua",
"RemoteExecute", %szRemoteScript, "tbJingLing:g2s_GetFormerPaiMing", obj.m_Handle, "receivepaiming", 0) 
obj:Destroy() 
end 

function receivepaiming(nParam, ResultHandle) 
local szName = ObjBuffer:PopObject(ResultHandle) 
local nPaiMing = ObjBuffer:PopObject(ResultHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex == nil or nPlayerIndex <= 0 then 
return 
end 
if nPaiMing ~= nil and nPaiMing <= 10 then 
if dogetallpaimingaward(nPlayerIndex, nPaiMing) == 1 then 
CallPlayerFunction(nPlayerIndex, AddTaskA, TSK_IS_AWARD, TSK_IS_AWARD_DAYKEY, 1) 
CallPlayerFunction(nPlayerIndex, Msg2Player, format("Nh�n l�y t�ng ��ng h�ng t��ng th��ng %s", nPaiMing)) 
end 
else 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Kh�ng c� m�u ch�t ��ch t��ng th��ng ") 
end 
end 

function dogetallpaimingaward(nPlayerIndex, nPaiMing) 
if CallPlayerFunction(nPlayerIndex, checkbox) ~= 1 then 
return 
end 
CallPlayerFunction(nPlayerIndex, tbAwardTemplet.GiveAwardByList, tbAwardTemplet, %tbAllPaiMingAward[nPaiMing],"Nh�n l�y m�i ng�y m�c nh�n ho�t ��ng ��ng h�ng t��ng th��ng ") 
return 1 
end 

function querytopten() 
local obj = ObjBuffer:New() 
obj:Push(GetName()) 
	DynamicExecute("\\script\\missions\\zhaojingling\\enterdialog.lua",
"RemoteExecute", %szRemoteScript, "tbJingLing:g2s_QueryTopTen", obj.m_Handle, "displaytopten", 0) 
obj:Destroy() 
end 

function displaytopten(nParam, ResultHandle) 
local szName = ObjBuffer:PopObject(ResultHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex == nil or nPlayerIndex <= 0 then 
return 
end 

local tbTopTen = ObjBuffer:PopObject(ResultHandle) 
if tbTopTen == nil then 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Tr��c m�t c�n kh�ng c� ��ng h�ng ") 
return 
end 
local nCount = getn(tbTopTen) 
if nCount == 0 then 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Tr��c m�t c�n kh�ng c� ��ng h�ng ") 
return 
end 
local szMsg = format("%-32s%-10s\n","T�n ","Ph�n s� ") 
for i=1, nCount do 
local szTemp = format("%-32s%-10d\n", tbTopTen[i][1], tbTopTen[i][2]) 
szMsg = szMsg.. szTemp 
end 
CallPlayerFunction(nPlayerIndex, CreateNewSayEx, szMsg, {{"K�t th�c ��i tho�i "}}) 
end 
