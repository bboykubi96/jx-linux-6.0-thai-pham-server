-- script viet hoa By http://tranhba.com  cÈm nang sù kiÖn vËt phÈm lo¹i 

-- script viet hoa By http://tranhba.com by zhongchaolong 2008-10-30 
-- script viet hoa By http://tranhba.com  cÇn gia t¨ng chuyÖn ë Dailog trong gia t¨ng ®èi tho¹i nhËp khÈu 
-- script viet hoa By http://tranhba.com  còng ë sù kiÖn xö lý xong tÊt sau cÇn thñ ®éng ®iÒu dông gi¶m bít sö dông sè lÇn ®Ých chØ thÞ ‘ 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\task\\system\\task_string.lua");


-- script viet hoa By http://tranhba.com  míi t¨ng sù kiÖn ®Ých ®Çu v¨n kiÖn 


Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\killmonster\\killmonster.lua")
if not tbItemJingnianshijian then 
tbItemJingnianshijian = tbBaseClass:new() 
end 


local nMaxUseCount = 1000 -- script viet hoa By http://tranhba.com  cam chÞu lín nhÊt sö dông sè lÇn 
local nExpiredTime = 20090907 



-- script viet hoa By http://tranhba.com  ë chç nµy gia t¨ng sù kiÖn ®èi tho¹i nhËp khÈu 
function tbItemJingnianshijian:Dailog(nItemIndex) 
local szMsg = self.szDescLink.." sö dông cÈm nang sù kiÖn ." 
local tbOpt = {} 
tinsert(tbOpt,"Bu«ng tha cho /OnCancel") 

Describe(szMsg, getn(tbOpt), tbOpt); 
end 

function tbItemJingnianshijian:_init() 
self.PARAM_ID_USEDATE = 1 
self.PARAM_ID_USECOUNT = 2 
	self.szDescLink			= "<link=image[0,0]:\\spr\\item\\script\\jingniangshijian.spr><link>" -- script viet hoa By http://tranhba.com ²»ÖªµÀÊÇ¶ÁÈ¡ÎÄ¼þÐÅÏ¢ºÃ»¹ÊÇÐ´ËÀºÃ
end 


-- script viet hoa By http://tranhba.com  nÕu nh­ vËt phÈm lµ lÇn ®Çu tiªn sö dông , nh­ vËy thiÕt th­îng sö dông nhËt kú ®Ých h¹n chÕ cïng , lín nhÊt sö dông sè lÇn 
function tbItemJingnianshijian:ItemParamInit(nItemIndex) 
local nUseDate = GetItemParam(nItemIndex, self.PARAM_ID_USEDATE); 
local nUseCount = GetItemParam(nItemIndex, self.PARAM_ID_USECOUNT); 

if nUseDate == 0 and nUseCount == 0 then 
SetSpecItemParam(nItemIndex, self.PARAM_ID_USEDATE, %nExpiredTime ); 
SetSpecItemParam(nItemIndex, self.PARAM_ID_USECOUNT, %nMaxUseCount); 
SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  cïng b­íc kh¸ch hµng b­ng 
end 
end 

-- script viet hoa By http://tranhba.com  vËt phÈm sö dông lóc 
function tbItemJingnianshijian:OnUse(nItemIndex) 

self:ItemParamInit(nItemIndex); 

if self:CheckItem(nItemIndex) == nil then 
return 0 
end 
self:Dailog(nItemIndex) 


return 1 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra vËt phÈm lµ hay kh«ng qu¸ h¹n , kh«ng ph¶i lµ cña m×nh , vËt phÈm n¹i l©u 
function tbItemJingnianshijian:CheckItem(nItemIndex) 

if not nItemIndex or nItemIndex <= 0 then 
return nil; 
end 
if tonumber(GetLocalDate("%Y%m%d")) >= GetItemParam(nItemIndex, 1) then 
Talk(1,"","Nªn vËt phÈm ®· qua kú "); 
return nil 
end 


if IsMyItem(nItemIndex) ~= 1 then 
return 0 
end 

local ng, nd, np = GetItemProp(nItemIndex); 

if (ng ~= 6 or nd ~= 1 or np ~= 1833) then 
return 0 
end 

local nUseCount = GetItemParam(nItemIndex, self.PARAM_ID_USECOUNT) 
if nUseCount < 1 then -- script viet hoa By http://tranhba.com  n¹i l©u Ýt h¬n 1 thñ tiªu 
RemoveItemByIndex(nItemIndex) 
Talk(1,"","Nªn vËt phÈm ®· qua b¶o chÊt kú , biÕn chÊt .") 
return nil 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  gi¶m bít sö dông sè lÇn 
function tbItemJingnianshijian:ReduceUseCount(nItemIndex) 
if nItemIndex and nItemIndex > 0 then 
local ng, nd, np = GetItemProp(nItemIndex); 

if (ng == 6 and nd == 1 and np == 1833 and IsMyItem(nItemIndex) == 1) then 

local nUseCount = GetItemParam(nItemIndex, self.PARAM_ID_USECOUNT) 
nUseCount = nUseCount - 1 
SetSpecItemParam(nItemIndex, self.PARAM_ID_USECOUNT, nUseCount) 
SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  cïng b­íc kh¸ch hµng b­ng 
if nUseCount < 1 then -- script viet hoa By http://tranhba.com  dïng hÕt råi liÒn thñ tiªu 
RemoveItemByIndex(nItemIndex) 
end 
end 

end 
end 


function tbItemJingnianshijian:GetDesc(nItemIndex) 
local nUseDate = GetItemParam(nItemIndex, self.PARAM_ID_USEDATE); 

local nUseCount = GetItemParam(nItemIndex, self.PARAM_ID_USECOUNT); 

local nDate = %nExpiredTime 

if nUseDate == 0 and nUseCount == 0 then 
nUseCount = %nMaxUseCount 
end 

return format("<color=green> sö dông sè lÇn cßn l¹i : %d<color>", nUseCount) 
end 
function OnCancel() 

end 

tbItemJingnianshijian:_init()
