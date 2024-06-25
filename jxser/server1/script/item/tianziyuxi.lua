-- script viet hoa By http://tranhba.com  thiªn tö ngäc tû 
-- script viet hoa By http://tranhba.com  ZhiDong 
IL("LEAGUE") 
IL("SETTING") 
IncludeLib("ITEM") 
IncludeLib("TASKSYS"); 
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\global\\login_head.lua")

-- script viet hoa By http://tranhba.com  cÊu t¹o 
if not tbItemTianZiYuXi then 
tbItemTianZiYuXi = tbBaseClass:new(); 
end 

-- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa 
function tbItemTianZiYuXi:init() 
self.ParamID_Blank_1 = 1 -- script viet hoa By http://tranhba.com  trèng kh«ng dÊu hiÖu vÞ 
self.ParamID_Blank_2 = 2 -- script viet hoa By http://tranhba.com  trèng kh«ng dÊu hiÖu vÞ 
self.ParamID_OverdueDate = 3 -- script viet hoa By http://tranhba.com  ghi chÐp ngäc tû ®Ých qu¸ h¹n nhËt kú 
self.ParamID_UsingDate = 4 -- script viet hoa By http://tranhba.com  ghi chÐp lÇn tr­íc sö dông ngäc tû ®Ých nhËt kú 
self.ParamID_TotalCount = 5 -- script viet hoa By http://tranhba.com  ghi chÐp tæng céng cßn cã thÓ sö dông sè lÇn 
self.ParamID_DayCount = 6 -- script viet hoa By http://tranhba.com  ghi chÐp ngµy ®ã cßn cã thÓ sö dông sè lÇn 
self.nMaxUseTotalCount = 12 -- script viet hoa By http://tranhba.com  ngäc tû ®Ých lín nhÊt sö dông tæng sè lÇn 
self.nMaxUseDayCount = 2 -- script viet hoa By http://tranhba.com  ngäc tû ®Ých mçi ngµy lín nhÊt sö dông sè lÇn 
self.nMinMsgLen = 4 -- script viet hoa By http://tranhba.com  ngäc tû ®Ých nhá nhÊt chiÒu dµi 
self.nMaxMsgLen = 80 -- script viet hoa By http://tranhba.com  ngäc tû ®Ých lín nhÊt chiÒu dµi 
self.nDetailType = 1 -- script viet hoa By http://tranhba.com  vËt phÈm lo¹i h×nh 
self.nParticualType = 2059 -- script viet hoa By http://tranhba.com  vËt phÈm lo¹i h×nh 
self.TempTask_HasYuXi = 252 -- script viet hoa By http://tranhba.com  t¹m thêi nhiÖm vô thay ®æi l­îng , ghi chÐp cã hay kh«ng cã ngäc tû 
self.szDescLink = "<link=image[0,0]:\\spr\\item\\tianziyuxi.spr><link>" 
self.szMsg = self.szDescLink.." thiªn tö ngäc tû , quèc gia b¶o vËt " 
self.tbForbidWord = {"<item=", "<link=", "<pic=", "<color=", "<bclr=", "<enter"} 
end 
tbItemTianZiYuXi:init(); 

-- script viet hoa By http://tranhba.com  khai ph¸t kh¶o nghiÖm sö dông hµm sè 
function tbItemTianZiYuXi:DeBug(nItemIndex) 

-- script viet hoa By http://tranhba.com  self:GiveCallBack(nItemIndex); 

local nBlank_1 = GetItemParam(nItemIndex, self.ParamID_Blank_1); -- script viet hoa By http://tranhba.com  trèng kh«ng dÊu hiÖu vÞ 
local nBlank_2 = GetItemParam(nItemIndex, self.ParamID_Blank_2); -- script viet hoa By http://tranhba.com  trèng kh«ng dÊu hiÖu vÞ 
local nOverdueDate = GetItemParam(nItemIndex, self.ParamID_OverdueDate); -- script viet hoa By http://tranhba.com  ngäc tû ®Ých qu¸ h¹n nhËt kú 
local nUsingDate = GetItemParam(nItemIndex, self.ParamID_UsingDate); -- script viet hoa By http://tranhba.com  lÇn tr­íc sö dông ngäc tû ®Ých nhËt kú 
local nTotalCount = GetItemParam(nItemIndex, self.ParamID_TotalCount); -- script viet hoa By http://tranhba.com  tæng céng cßn cã thÓ sö dông sè lÇn 
local nDayCount = GetItemParam(nItemIndex, self.ParamID_DayCount); -- script viet hoa By http://tranhba.com  ngµy ®ã cßn cã thÓ sö dông sè lÇn 

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

-- script viet hoa By http://tranhba.com  sö dông ngäc tû 
function tbItemTianZiYuXi:OnUse(nItemIndex) 

-- script viet hoa By http://tranhba.com  ®iÒu thÝ hµm sè 
-- script viet hoa By http://tranhba.com  self:DeBug(nItemIndex); 

local tbOpt = {} 
local nDate = floor(FormatTime2Number(GetCurServerTime())/10000); -- script viet hoa By http://tranhba.com  tr­íc mÆt nhËt kú 
local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By http://tranhba.com  tr­íc mÆt giê 
local nOverdueDate = GetItemParam(nItemIndex, self.ParamID_OverdueDate); -- script viet hoa By http://tranhba.com  ngäc tû ®Ých qu¸ h¹n nhËt kú 
local nUsingDate = GetItemParam(nItemIndex, self.ParamID_UsingDate); -- script viet hoa By http://tranhba.com  lÇn tr­íc sö dông ngäc tû ®Ých nhËt kú 
local nTotalCount = GetItemParam(nItemIndex, self.ParamID_TotalCount); -- script viet hoa By http://tranhba.com  tæng céng cßn cã thÓ sö dông sè lÇn 
local nDayCount = GetItemParam(nItemIndex, self.ParamID_DayCount); -- script viet hoa By http://tranhba.com  ngµy ®ã cßn cã thÓ sö dông sè lÇn 

if (GetCamp() == 0 or GetCurCamp == 0) then 
Say("Kh«ng thÓ sö dông ngäc tû .") 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ngäc tû qu¸ h¹n 
if nDate > nOverdueDate or (nDate == nOverdueDate and nHour >= 21) then 
return 0; 
end 

-- script viet hoa By http://tranhba.com  mét ngµy míi , ®æi míi sö dông h¹n chÕ 
if nDate ~= nUsingDate then 
nUsingDate = nDate; 
nDayCount = self.nMaxUseDayCount; 
SetSpecItemParam(nItemIndex, self.ParamID_UsingDate, nUsingDate); 
SetSpecItemParam(nItemIndex, self.ParamID_DayCount, nDayCount); 
end 

-- script viet hoa By http://tranhba.com  tæng sè lÇn v­ît qua h¹n chÕ 
if nTotalCount <= 0 then 
tinsert(tbOpt,"Ngäc tû ®· vÈn ®ôc , sî lµ kh«ng thÓ n÷a ph¸t ra may m¾n ¸nh s¸ng /OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ngµy ®ã sè lÇn v­ît qua h¹n chÕ 
if nDayCount <= 0 then 
tinsert(tbOpt,"Ngäc tû ®· cã ¸nh s¸ng , nh­ng lµ , vÉn kh«ng cã ph¶n øng g× /OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  cã thÓ sö dông 
AskClientForString("SendMsg2AllServer", "", self.nMinMsgLen, self.nMaxMsgLen,"Muèn nh­ thÕ nµo c¸o kú d©n chóng ?"); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  gëi tin tøc 
function tbItemTianZiYuXi:SendMsg2AllServer(szMsg) 

local tbOpt = {} 
local nItemIndex = FindSpecItemParam2(self.nDetailType, self.nParticualType, 0, 0); 

if (ST_CheckTextFilter(szMsg) ~= 1) then 
tinsert(tbOpt,"ChiÕu s¸ch cã chót tõ kh«ng æn , xin/mêi thiªn tö nh¾c nhë ./OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 

for i = 1, getn(self.tbForbidWord) do 
local bp = strfind(szMsg, self.tbForbidWord[i]) 
if (bp ~= nil) then 
tinsert(tbOpt,"ChiÕu s¸ch cã chót tõ kh«ng æn , xin/mêi thiªn tö nh¾c nhë ./OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 
end 

if (nItemIndex <= 0) then 
tinsert(tbOpt,"Cã thiªn tö ngäc tû míi cã thÓ nh¾n nhñ chiÕu s¸ch /OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 

-- script viet hoa By http://tranhba.com  gi¶m bít sö dông sè lÇn 
local nTotalCount = GetItemParam(nItemIndex, self.ParamID_TotalCount) - 1; -- script viet hoa By http://tranhba.com  tæng céng cßn cã thÓ sö dông sè lÇn 
local nDayCount = GetItemParam(nItemIndex, self.ParamID_DayCount) - 1; -- script viet hoa By http://tranhba.com  ngµy ®ã cßn cã thÓ sö dông sè lÇn 
SetSpecItemParam(nItemIndex, self.ParamID_TotalCount, nTotalCount); 
SetSpecItemParam(nItemIndex, self.ParamID_DayCount, nDayCount); 
Msg2Player(format("Xem ra , h«m nay cßn cã thÓ sö dông %d lÇn , tæng céng cßn cã thÓ sö dông %d lÇn ", nDayCount, nTotalCount)); 

-- script viet hoa By http://tranhba.com  ban bè tin tøc 
AddLocalNews(format("Chiªu c¸o thiªn h¹ : %s", szMsg)); 
AddLocalNews(format("Chiªu c¸o thiªn h¹ : %s", szMsg)); 
AddLocalNews(format("Chiªu c¸o thiªn h¹ : %s", szMsg)); 
	LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", format("ÕÑ¸æÌìÏÂ:%s", szMsg), "", "");
tinsert(tbOpt,"Ngäc tû ®ét nhiªn ph¸t ra mét ®¹o hµo quang h­íng ra phÝa ngoµi b¾n ra bèn phÝa ./OnCancel") 
Describe(self.szMsg, getn(tbOpt), tbOpt); 
return 
end 

-- script viet hoa By http://tranhba.com  th­îng tuyÕn th«ng b¸o 
function tbItemTianZiYuXi:LoginMsg() 

local nItemIndex = FindSpecItemParam2(self.nDetailType, self.nParticualType, 0, 0); 
if (nItemIndex <= 0) then 
return 
end 

SetTaskTemp(self.TempTask_HasYuXi, 1); -- script viet hoa By http://tranhba.com  dÊu hiÖu v× cã ngäc tû 
local szMsg = format("Giang hå t­¬ng truyÒn #%s mang truyÒn quèc ngäc tû lªn nÕt .", GetName()); 

if (GetCamp() == 0 or GetCurCamp == 0) then 
return 
end 

AddLocalNews(szMsg); 
end 

-- script viet hoa By http://tranhba.com  thiÕt ®æi b¶n ®å th«ng b¸o 
function tbItemTianZiYuXi:ChangeMapMsg() 

-- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ bang héi tuyªn chiÕn b¶n ®å 
if IsTongWarMap(SubWorld) ~= 1 then 
return 
end 

-- script viet hoa By http://tranhba.com  b­íc ®Çu kiÓm tra cã hay kh«ng cã ngäc tû 
if GetTaskTemp(self.TempTask_HasYuXi) ~= 1 then 
return 
end 

-- script viet hoa By http://tranhba.com  b¹ch tªn bÊt c«ng c¸o 
if (GetCamp() == 0 or GetCurCamp == 0) then 
return 
end 

-- script viet hoa By http://tranhba.com  thùc tÕ kiÓm tra cã hay kh«ng cã ngäc tû 
local nItemIndex = FindSpecItemParam2(self.nDetailType, self.nParticualType, 0, 0); 
if (nItemIndex <= 0) then 
SetTaskTemp(self.TempTask_HasYuXi, 0); -- script viet hoa By http://tranhba.com  dÊu hiÖu v× kh«ng cã ngäc tû 
return 
end 

local szMsg = format("Giang hå t­¬ng truyÒn : %s mang ngäc tû ®Õn %s.", GetName(), SubWorldName(SubWorld)); 
	LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "");

end 

-- script viet hoa By http://tranhba.com  nhÆt lªn ngäc tû 
function tbItemTianZiYuXi:PickUp( nItemIndex, nPlayerIndex ) 

local oldPlyIdx = PlayerIndex; 
PlayerIndex = nPlayerIndex; 

SetTaskTemp(self.TempTask_HasYuXi, 1); -- script viet hoa By http://tranhba.com  dÊu hiÖu v× cã ngäc tû 
NW_OwnSeal(GetName()); -- script viet hoa By http://tranhba.com  ghi chÐp ngäc tû ®Ých ng­êi chñ 


local szMsg = format("Giang hå t­¬ng truyÒn # %s nhÆt ®­îc truyÒn quèc ngäc tû ", GetName()); 
	LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "");

PlayerIndex = oldPlyIdx; 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ph¸t ra ngäc tû lóc ®Ých trë vÒ ®iÒu hµm sè , cho ngäc tû thiÕt trÝ t­¬ng øng míi b¾t ®Çu trÞ gi¸ 
function tbItemTianZiYuXi:GiveCallBack(nItemIndex) 

SetTaskTemp(self.TempTask_HasYuXi, 1); -- script viet hoa By http://tranhba.com  dÊu hiÖu v× cã ngäc tû 
NW_OwnSeal(GetName()); -- script viet hoa By http://tranhba.com  ghi chÐp ngäc tû ®Ých ng­êi chñ 

local nDate = floor(FormatTime2Number(GetCurServerTime())/10000); -- script viet hoa By http://tranhba.com  tr­íc mÆt nhËt kú 
local nWeek = tonumber(GetLocalDate("%w")); -- script viet hoa By http://tranhba.com  tr­íc mÆt tuÇn lÔ 
local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By http://tranhba.com  tr­íc mÆt giê 

-- script viet hoa By http://tranhba.com  chñ nhËt 
if nWeek == 0 then 
nWeek = 7; 
end 

-- script viet hoa By http://tranhba.com  thø hai th¶ v× l·o ®Ých mét cuéc 
if nWeek == 1 and nHour < 21 then 
nWeek = 8; 
end 

 	local nEndDate = floor(FormatTime2Number((8 - nWeek) * 24 * 60 *60 + GetCurServerTime())/10000);	-- script viet hoa By http://tranhba.com  ½áÊøÈÕÆÚ

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
Say("Tói ®eo l­ng kh«ng gian ch­a ®ñ , xin/mêi söa sang l¹i tói ®eo l­ng sau n÷a thËp lÊy . ") 
PlayerIndex = oldPlyIdx; 
return 0; 
end 

if (GetCamp() == 0 or GetCurCamp == 0) then 
Say("B¹ch tªn kh«ng thÓ thËp lÊy ngäc tû . ") 
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

-- script viet hoa By http://tranhba.com  nh¶y qua dïng/uèng tíi ®­îc còng kh«ng cÇn nh¾c l¹i kú liÔu 
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
