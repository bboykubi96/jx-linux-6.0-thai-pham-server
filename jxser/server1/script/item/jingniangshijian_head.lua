-- script viet hoa By http://tranhba.com  c�m nang s� ki�n v�t ph�m lo�i 

-- script viet hoa By http://tranhba.com by zhongchaolong 2008-10-30 
-- script viet hoa By http://tranhba.com  c�n gia t�ng chuy�n � Dailog trong gia t�ng ��i tho�i nh�p kh�u 
-- script viet hoa By http://tranhba.com  c�ng � s� ki�n x� l� xong t�t sau c�n th� ��ng �i�u d�ng gi�m b�t s� d�ng s� l�n ��ch ch� th� � 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\task\\system\\task_string.lua");


-- script viet hoa By http://tranhba.com  m�i t�ng s� ki�n ��ch ��u v�n ki�n 


Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\killmonster\\killmonster.lua")
if not tbItemJingnianshijian then 
tbItemJingnianshijian = tbBaseClass:new() 
end 


local nMaxUseCount = 1000 -- script viet hoa By http://tranhba.com  cam ch�u l�n nh�t s� d�ng s� l�n 
local nExpiredTime = 20090907 



-- script viet hoa By http://tranhba.com  � ch� n�y gia t�ng s� ki�n ��i tho�i nh�p kh�u 
function tbItemJingnianshijian:Dailog(nItemIndex) 
local szMsg = self.szDescLink.." s� d�ng c�m nang s� ki�n ." 
local tbOpt = {} 
tinsert(tbOpt,"Bu�ng tha cho /OnCancel") 

Describe(szMsg, getn(tbOpt), tbOpt); 
end 

function tbItemJingnianshijian:_init() 
self.PARAM_ID_USEDATE = 1 
self.PARAM_ID_USECOUNT = 2 
	self.szDescLink			= "<link=image[0,0]:\\spr\\item\\script\\jingniangshijian.spr><link>" -- script viet hoa By http://tranhba.com ��֪���Ƕ�ȡ�ļ���Ϣ�û���д����
end 


-- script viet hoa By http://tranhba.com  n�u nh� v�t ph�m l� l�n ��u ti�n s� d�ng , nh� v�y thi�t th��ng s� d�ng nh�t k� ��ch h�n ch� c�ng , l�n nh�t s� d�ng s� l�n 
function tbItemJingnianshijian:ItemParamInit(nItemIndex) 
local nUseDate = GetItemParam(nItemIndex, self.PARAM_ID_USEDATE); 
local nUseCount = GetItemParam(nItemIndex, self.PARAM_ID_USECOUNT); 

if nUseDate == 0 and nUseCount == 0 then 
SetSpecItemParam(nItemIndex, self.PARAM_ID_USEDATE, %nExpiredTime ); 
SetSpecItemParam(nItemIndex, self.PARAM_ID_USECOUNT, %nMaxUseCount); 
SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  c�ng b��c kh�ch h�ng b�ng 
end 
end 

-- script viet hoa By http://tranhba.com  v�t ph�m s� d�ng l�c 
function tbItemJingnianshijian:OnUse(nItemIndex) 

self:ItemParamInit(nItemIndex); 

if self:CheckItem(nItemIndex) == nil then 
return 0 
end 
self:Dailog(nItemIndex) 


return 1 
end 

-- script viet hoa By http://tranhba.com  ki�m tra v�t ph�m l� hay kh�ng qu� h�n , kh�ng ph�i l� c�a m�nh , v�t ph�m n�i l�u 
function tbItemJingnianshijian:CheckItem(nItemIndex) 

if not nItemIndex or nItemIndex <= 0 then 
return nil; 
end 
if tonumber(GetLocalDate("%Y%m%d")) >= GetItemParam(nItemIndex, 1) then 
Talk(1,"","N�n v�t ph�m �� qua k� "); 
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
if nUseCount < 1 then -- script viet hoa By http://tranhba.com  n�i l�u �t h�n 1 th� ti�u 
RemoveItemByIndex(nItemIndex) 
Talk(1,"","N�n v�t ph�m �� qua b�o ch�t k� , bi�n ch�t .") 
return nil 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  gi�m b�t s� d�ng s� l�n 
function tbItemJingnianshijian:ReduceUseCount(nItemIndex) 
if nItemIndex and nItemIndex > 0 then 
local ng, nd, np = GetItemProp(nItemIndex); 

if (ng == 6 and nd == 1 and np == 1833 and IsMyItem(nItemIndex) == 1) then 

local nUseCount = GetItemParam(nItemIndex, self.PARAM_ID_USECOUNT) 
nUseCount = nUseCount - 1 
SetSpecItemParam(nItemIndex, self.PARAM_ID_USECOUNT, nUseCount) 
SyncItem(nItemIndex) -- script viet hoa By http://tranhba.com  c�ng b��c kh�ch h�ng b�ng 
if nUseCount < 1 then -- script viet hoa By http://tranhba.com  d�ng h�t r�i li�n th� ti�u 
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

return format("<color=green> s� d�ng s� l�n c�n l�i : %d<color>", nUseCount) 
end 
function OnCancel() 

end 

tbItemJingnianshijian:_init()
