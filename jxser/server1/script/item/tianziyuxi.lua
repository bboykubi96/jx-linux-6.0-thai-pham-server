-- script viet hoa By http://tranhba.com  thi�n t� ng�c t� 
-- script viet hoa By http://tranhba.com  ZhiDong 
IL("LEAGUE") 
IL("SETTING") 
IncludeLib("ITEM") 
IncludeLib("TASKSYS"); 
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\global\\login_head.lua")

-- script viet hoa By http://tranhba.com  c�u t�o 
if not tbItemTianZiYuXi then 
tbItemTianZiYuXi = tbBaseClass:new(); 
end 

-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a 
function tbItemTianZiYuXi:init() 
self.ParamID_Blank_1 = 1 -- script viet hoa By http://tranhba.com  tr�ng kh�ng d�u hi�u v� 
self.ParamID_Blank_2 = 2 -- script viet hoa By http://tranhba.com  tr�ng kh�ng d�u hi�u v� 
self.ParamID_OverdueDate = 3 -- script viet hoa By http://tranhba.com  ghi ch�p ng�c t� ��ch qu� h�n nh�t k� 
self.ParamID_UsingDate = 4 -- script viet hoa By http://tranhba.com  ghi ch�p l�n tr��c s� d�ng ng�c t� ��ch nh�t k� 
self.ParamID_TotalCount = 5 -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng c�n c� th� s� d�ng s� l�n 
self.ParamID_DayCount = 6 -- script viet hoa By http://tranhba.com  ghi ch�p ng�y �� c�n c� th� s� d�ng s� l�n 
self.nMaxUseTotalCount = 12 -- script viet hoa By http://tranhba.com  ng�c t� ��ch l�n nh�t s� d�ng t�ng s� l�n 
self.nMaxUseDayCount = 2 -- script viet hoa By http://tranhba.com  ng�c t� ��ch m�i ng�y l�n nh�t s� d�ng s� l�n 
self.nMinMsgLen = 4 -- script viet hoa By http://tranhba.com  ng�c t� ��ch nh� nh�t chi�u d�i 
self.nMaxMsgLen = 80 -- script viet hoa By http://tranhba.com  ng�c t� ��ch l�n nh�t chi�u d�i 
self.nDetailType = 1 -- script viet hoa By http://tranhba.com  v�t ph�m lo�i h�nh 
self.nParticualType = 2059 -- script viet hoa By http://tranhba.com  v�t ph�m lo�i h�nh 
self.TempTask_HasYuXi = 252 -- script viet hoa By http://tranhba.com  t�m th�i nhi�m v� thay ��i l��ng , ghi ch�p c� hay kh�ng c� ng�c t� 
self.szDescLink = "<link=image[0,0]:\\spr\\item\\tianziyuxi.spr><link>" 
self.szMsg = self.szDescLink.." thi�n t� ng�c t� , qu�c gia b�o v�t " 
self.tbForbidWord = {"<item=", "<link=", "<pic=", "<color=", "<bclr=", "<enter"} 
end 
tbItemTianZiYuXi:init(); 

-- script viet hoa By http://tranhba.com  khai ph�t kh�o nghi�m s� d�ng h�m s� 
function tbItemTianZiYuXi:DeBug(nItemIndex) 

-- script viet hoa By http://tranhba.com  self:GiveCallBack(nItemIndex); 

local nBlank_1 = GetItemParam(nItemIndex, self.ParamID_Blank_1); -- script viet hoa By http://tranhba.com  tr�ng kh�ng d�u hi�u v� 
local nBlank_2 = GetItemParam(nItemIndex, self.ParamID_Blank_2); -- script viet hoa By http://tranhba.com  tr�ng kh�ng d�u hi�u v� 
local nOverdueDate = GetItemParam(nItemIndex, self.ParamID_OverdueDate); -- script viet hoa By http://tranhba.com  ng�c t� ��ch qu� h�n nh�t k� 
local nUsingDate = GetItemParam(nItemIndex, self.ParamID_UsingDate); -- script viet hoa By http://tranhba.com  l�n tr��c s� d�ng ng�c t� ��ch nh�t k� 
local nTotalCount = GetItemParam(nItemIndex, self.ParamID_TotalCount); -- script viet hoa By http://tranhba.com  t�ng c�ng c�n c� th� s� d�ng s� l�n 
local nDayCount = GetItemParam(nItemIndex, self.ParamID_DayCount); -- script viet hoa By http://tranhba.com  ng�y �� c�n c� th� s� d�ng s� l�n 

Msg2Player("^^^^^^^^^^^^^^^^^^^^^"); 
Msg2Player("nItemIndex: "..nItemIndex); 
Msg2Player("nBlank_1: "..nBlank_1); 
Msg2Player("nBlank_2: "..nBlank_2); 
Msg2Player("nOverdueDate: "..nOverdueDate); 
Msg2Player("nUsingDate: "..nUsingDate); 
Msg2Player("nTotalCount: "..nTotalCount); 
Msg2Player("nDayCount: "..nDayCount); 
Msg2Player("^^^^^^^^^^^^^^^^^^^^^"); 
end 

-- script viet hoa By http://tranhba.com  s� d�ng ng�c t� 
function tbItemTianZiYuXi:OnUse(nItemIndex) 

-- script viet hoa By http://tranhba.com  �i�u th� h�m s� 
-- script viet hoa By http://tranhba.com  self:DeBug(nItemIndex); 

local tbOpt = {} 
local nDate = floor(FormatTime2Number(GetCurServerTime())/10000); -- script viet hoa By http://tranhba.com  tr��c m�t nh�t k� 
local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By http://tranhba.com  tr��c m�t gi� 
local nOverdueDate = GetItemParam(nItemIndex, self.ParamID_OverdueDate); -- script viet hoa By http://tranhba.com  ng�c t� ��ch qu� h�n nh�t k� 
local nUsingDate = GetItemParam(nItemIndex, self.ParamID_UsingDate); -- script viet hoa By http://tranhba.com  l�n tr��c s� d�ng ng�c t� ��ch nh�t k� 
local nTotalCount = GetItemParam(nItemIndex, self.ParamID_TotalCount); -- script viet hoa By http://tranhba.com  t�ng c�ng c�n c� th� s� d�ng s� l�n 
local nDayCount = GetItemParam(nItemIndex, self.ParamID_DayCount); -- script viet hoa By http://tranhba.com  ng�y �� c�n c� th� s� d�ng s� l�n 

if (GetCamp() == 0 or GetCurCamp == 0) then 
Say("Kh�ng th� s� d�ng ng�c t� .") 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ng�c t� qu� h�n 
if nDate > nOverdueDate or (nDate == nOverdueDate and nHour >= 21) then 
return 0; 
end 

-- script viet hoa By http://tranhba.com  m�t ng�y m�i , ��i m�i s� d�ng h�n ch� 
if nDate ~= nUsingDate then 
nUsingDate = nDate; 
nDayCount = self.nMaxUseDayCount; 
SetSpecItemParam(nItemIndex, self.ParamID_UsingDate, nUsingDate); 
SetSpecItemParam(nItemIndex, self.ParamID_DayCount, nDayCount); 
end 

-- script viet hoa By http://tranhba.com  t�ng s� l�n v��t qua h�n ch� 
if nTotalCount <= 0 then 
tinsert(tbOpt,"Ng�c t� �� v�n ��c , s� l� kh�ng th� n�a ph�t ra may m�n �nh s�ng /OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ng�y �� s� l�n v��t qua h�n ch� 
if nDayCount <= 0 then 
tinsert(tbOpt,"Ng�c t� �� c� �nh s�ng , nh�ng l� , v�n kh�ng c� ph�n �ng g� /OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  c� th� s� d�ng 
AskClientForString("SendMsg2AllServer", "", self.nMinMsgLen, self.nMaxMsgLen,"Mu�n nh� th� n�o c�o k� d�n ch�ng ?"); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  g�i tin t�c 
function tbItemTianZiYuXi:SendMsg2AllServer(szMsg) 

local tbOpt = {} 
local nItemIndex = FindSpecItemParam2(self.nDetailType, self.nParticualType, 0, 0); 

if (ST_CheckTextFilter(szMsg) ~= 1) then 
tinsert(tbOpt,"Chi�u s�ch c� ch�t t� kh�ng �n , xin/m�i thi�n t� nh�c nh� ./OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 

for i = 1, getn(self.tbForbidWord) do 
local bp = strfind(szMsg, self.tbForbidWord[i]) 
if (bp ~= nil) then 
tinsert(tbOpt,"Chi�u s�ch c� ch�t t� kh�ng �n , xin/m�i thi�n t� nh�c nh� ./OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 
end 

if (nItemIndex <= 0) then 
tinsert(tbOpt,"C� thi�n t� ng�c t� m�i c� th� nh�n nh� chi�u s�ch /OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 

-- script viet hoa By http://tranhba.com  gi�m b�t s� d�ng s� l�n 
local nTotalCount = GetItemParam(nItemIndex, self.ParamID_TotalCount) - 1; -- script viet hoa By http://tranhba.com  t�ng c�ng c�n c� th� s� d�ng s� l�n 
local nDayCount = GetItemParam(nItemIndex, self.ParamID_DayCount) - 1; -- script viet hoa By http://tranhba.com  ng�y �� c�n c� th� s� d�ng s� l�n 
SetSpecItemParam(nItemIndex, self.ParamID_TotalCount, nTotalCount); 
SetSpecItemParam(nItemIndex, self.ParamID_DayCount, nDayCount); 
Msg2Player(format("Xem ra , h�m nay c�n c� th� s� d�ng %d l�n , t�ng c�ng c�n c� th� s� d�ng %d l�n ", nDayCount, nTotalCount)); 

-- script viet hoa By http://tranhba.com  ban b� tin t�c 
AddLocalNews(format("Chi�u c�o thi�n h� : %s", szMsg)); 
AddLocalNews(format("Chi�u c�o thi�n h� : %s", szMsg)); 
AddLocalNews(format("Chi�u c�o thi�n h� : %s", szMsg)); 
	LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", format("�Ѹ�����:%s", szMsg), "", "");
tinsert(tbOpt,"Ng�c t� ��t nhi�n ph�t ra m�t ��o h�o quang h��ng ra ph�a ngo�i b�n ra b�n ph�a ./OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 

-- script viet hoa By http://tranhba.com  th��ng tuy�n th�ng b�o 
function tbItemTianZiYuXi:LoginMsg() 

local nItemIndex = FindSpecItemParam2(self.nDetailType, self.nParticualType, 0, 0); 
if (nItemIndex <= 0) then 
return 
end 

SetTaskTemp(self.TempTask_HasYuXi, 1); -- script viet hoa By http://tranhba.com  d�u hi�u v� c� ng�c t� 
local szMsg = format("Giang h� t��ng truy�n #%s mang truy�n qu�c ng�c t� l�n n�t .", GetName()); 

if (GetCamp() == 0 or GetCurCamp == 0) then 
return 
end 

AddLocalNews(szMsg); 
end 

-- script viet hoa By http://tranhba.com  thi�t ��i b�n �� th�ng b�o 
function tbItemTianZiYuXi:ChangeMapMsg() 

-- script viet hoa By http://tranhba.com  kh�ng ph�i l� bang h�i tuy�n chi�n b�n �� 
if IsTongWarMap(SubWorld) ~= 1 then 
return 
end 

-- script viet hoa By http://tranhba.com  b��c ��u ki�m tra c� hay kh�ng c� ng�c t� 
if GetTaskTemp(self.TempTask_HasYuXi) ~= 1 then 
return 
end 

-- script viet hoa By http://tranhba.com  b�ch t�n b�t c�ng c�o 
if (GetCamp() == 0 or GetCurCamp == 0) then 
return 
end 

-- script viet hoa By http://tranhba.com  th�c t� ki�m tra c� hay kh�ng c� ng�c t� 
local nItemIndex = FindSpecItemParam2(self.nDetailType, self.nParticualType, 0, 0); 
if (nItemIndex <= 0) then 
SetTaskTemp(self.TempTask_HasYuXi, 0); -- script viet hoa By http://tranhba.com  d�u hi�u v� kh�ng c� ng�c t� 
return 
end 

local szMsg = format("Giang h� t��ng truy�n : %s mang ng�c t� ��n %s.", GetName(), SubWorldName(SubWorld)); 
	LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "");

end 

-- script viet hoa By http://tranhba.com  nh�t l�n ng�c t� 
function tbItemTianZiYuXi:PickUp( nItemIndex, nPlayerIndex ) 

local oldPlyIdx = PlayerIndex; 
PlayerIndex = nPlayerIndex; 

SetTaskTemp(self.TempTask_HasYuXi, 1); -- script viet hoa By http://tranhba.com  d�u hi�u v� c� ng�c t� 
NW_OwnSeal(GetName()); -- script viet hoa By http://tranhba.com  ghi ch�p ng�c t� ��ch ng��i ch� 


local szMsg = format("Giang h� t��ng truy�n # %s nh�t ���c truy�n qu�c ng�c t� ", GetName()); 
	LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "");

PlayerIndex = oldPlyIdx; 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ph�t ra ng�c t� l�c ��ch tr� v� �i�u h�m s� , cho ng�c t� thi�t tr� t��ng �ng m�i b�t ��u tr� gi� 
function tbItemTianZiYuXi:GiveCallBack(nItemIndex) 

SetTaskTemp(self.TempTask_HasYuXi, 1); -- script viet hoa By http://tranhba.com  d�u hi�u v� c� ng�c t� 
NW_OwnSeal(GetName()); -- script viet hoa By http://tranhba.com  ghi ch�p ng�c t� ��ch ng��i ch� 

local nDate = floor(FormatTime2Number(GetCurServerTime())/10000); -- script viet hoa By http://tranhba.com  tr��c m�t nh�t k� 
local nWeek = tonumber(GetLocalDate("%w")); -- script viet hoa By http://tranhba.com  tr��c m�t tu�n l� 
local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By http://tranhba.com  tr��c m�t gi� 

-- script viet hoa By http://tranhba.com  ch� nh�t 
if nWeek == 0 then 
nWeek = 7; 
end 

-- script viet hoa By http://tranhba.com  th� hai th� v� l�o ��ch m�t cu�c 
if nWeek == 1 and nHour < 21 then 
nWeek = 8; 
end 

 	local nEndDate = floor(FormatTime2Number((8 - nWeek) * 24 * 60 *60 + GetCurServerTime())/10000);	-- script viet hoa By http://tranhba.com  ��������

SetSpecItemParam(nItemIndex, self.ParamID_Blank_1, 0 ); 
SetSpecItemParam(nItemIndex, self.ParamID_Blank_2, 0 ); 
SetSpecItemParam(nItemIndex, self.ParamID_OverdueDate, nEndDate ); 
SetSpecItemParam(nItemIndex, self.ParamID_UsingDate, nDate); 
SetSpecItemParam(nItemIndex, self.ParamID_TotalCount, self.nMaxUseTotalCount); 
SetSpecItemParam(nItemIndex, self.ParamID_DayCount, self.nMaxUseDayCount); 

	local nExpiredDate = FormatTime2Date((8 - nWeek) * 24 * 60 *60 + GetCurServerTime());
ITEM_SetExpiredTime(nItemIndex, nExpiredDate, 120000); 
SyncItem(nItemIndex) 
end 




function OnCancel() 

end 

function main(nItemIndex) 
return tbItemTianZiYuXi:OnUse(nItemIndex); 
end 

function IsPickable( nItemIndex, nPlayerIndex ) 

local oldPlyIdx = PlayerIndex; 
PlayerIndex = nPlayerIndex; 

local free = CalcFreeItemCellCount() 
if (free == 0) then 
Say("T�i �eo l�ng kh�ng gian ch�a �� , xin/m�i s�a sang l�i t�i �eo l�ng sau n�a th�p l�y . ") 
PlayerIndex = oldPlyIdx; 
return 0; 
end 

if (GetCamp() == 0 or GetCurCamp == 0) then 
Say("B�ch t�n kh�ng th� th�p l�y ng�c t� . ") 
PlayerIndex = oldPlyIdx; 
return 0; 
end 

PlayerIndex = oldPlyIdx; 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
return tbItemTianZiYuXi:PickUp( nItemIndex, nPlayerIndex ); 
end 

function SendMsg2AllServer(szMsg) 
return tbItemTianZiYuXi:SendMsg2AllServer(szMsg); 
end 

function LoginMsg(bExchangeIn) 

-- script viet hoa By http://tranhba.com  nh�y qua d�ng/u�ng t�i ���c c�ng kh�ng c�n nh�c l�i k� li�u 
if (bExchangeIn == 1) then 
return 
end 

tbItemTianZiYuXi:LoginMsg(); 
return 
end 

function YuXiChangeMapMsg() 
return tbItemTianZiYuXi:ChangeMapMsg(); 
end 


if login_add then login_add(LoginMsg, 2) end
