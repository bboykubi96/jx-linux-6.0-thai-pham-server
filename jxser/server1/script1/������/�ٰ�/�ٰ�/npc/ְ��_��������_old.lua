--Tho ren than bi lam an
Include( "\\script\\task\\system\\task_string.lua" );

-- script viet hoa By http://tranhba.com  ��c l�i 
Include("\\script\\global\\recoin_goldenequip.lua")
-- script viet hoa By http://tranhba.com  ho�n m� an bang �� trang s�c �eo tay 
Include("\\script\\task\\equipex\\head.lua");
-- script viet hoa By http://tranhba.com  b�ch kim trang b� 
Include("\\script\\global\\platina_upgrade.lua")
-- script viet hoa By http://tranhba.com  ��c l�i b�ch kim trang b� 
-- script viet hoa By http://tranhba.com Include("\\script\\global\\recoin_platinaequip.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") -- script viet hoa By http://tranhba.com ���հ���Ʒ
-- script viet hoa By http://tranhba.com  ��c l�i kim � trang b� 
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- script viet hoa By http://tranhba.com  �һ���������
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- script viet hoa By http://tranhba.com  �һ���װ�����ƣ������ȣ�
Include("\\script\\activitysys\\npcdailog.lua")

-- script viet hoa By http://tranhba.com  ��c l�i t� m�ng - By DinhHQ 
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

--Include("\\script\\global\\tieungao\\anbanghoanmy.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\task\\equipex\\head.lua")
Include("\\script\\event\\leize_upplatina\\platina_upgrade.lua")

function main() 

--dofile("script/������/�ٰ�/�ٰ�/npc/ְ��_��������.lua");
--dofile("script/task/equipex/head.lua")
--dofile("script/global/g7vn/g7configall.lua")
--dofile("script/event/leize_upplatina/platina_upgrade.lua")

if (CheckGlobalTradeFlag() == 0) then 
return 
end 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 
EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex) 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 
tbDailog.szTitleMsg = "<dec><npc> kh�ng ngh� t�i ta nh�n t�nh mai danh l�u nh� v�y , v�n b� ng��i t�m ���c , n�i v�y ng��i l� v� ch� t�o <color=yellow> b�ch kim trang b� <color> m� ��n �i . " 
tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "") 

local aryDescribe = {}
if nangcapabhoanmy == 1 then
	tinsert(aryDescribe,"Ta mu�n h�i th�m li�n quan t�i ho�n m� an bang/main_talk")
end
if tachgheptrangbihoangkim == 1 then
	tinsert(aryDescribe,"Ta mu�n m�i xin ng��i gi�p m�t tay ph�n chia ho�ng kim trang b� /split_entry")
	tinsert(aryDescribe,"Ta mu�n d�ng m�nh v�n h�p th�nh m�t �t ho�ng kim trang b� /compose_entry")
	tinsert(aryDescribe,"Ta mu�n �em m�nh v�n ��i th�nh gi�ng nhau ho�ng kim trang b� /exchange_entry")
end

if trangbibachkim == 1 then
	tinsert(aryDescribe,"Ch� t�o trang b� b�ch kim /platina_main")
end

--local aryDescribe = 
--{ 
--"Ta mu�n h�i th�m li�n quan t�i ho�n m� an bang/main_talk", 
-- script viet hoa By http://tranhba.com " ta mu�n m�i/xin ng��i ch� t�o b�ch kim trang b� /platina_main", 
-- script viet hoa By http://tranhba.com " ta mu�n m�i/xin ng��i ��c l�i b�ch kim trang b� /recoin_platina_main", 
-- script viet hoa By http://tranhba.com Change request 04/06/2011, t�t ch� t�o b�ch kim trang b� - Modified by DinhHQ - 20110605 
-- script viet hoa By http://tranhba.com 
--"Ta mu�n m�i xin ng��i gi�p m�t tay ph�n chia ho�ng kim trang b� /split_entry", 
-- script viet hoa By http://tranhba.com 
--"Ta mu�n d�ng m�nh v�n h�p th�nh m�t �t ho�ng kim trang b� /compose_entry", 
-- script viet hoa By http://tranhba.com " ta mu�n ��i thi�t huy�t �an /exchange_tiexuedan", 
-- script viet hoa By http://tranhba.com " ta mu�n ti�n h�nh ho�n m� h�ng �nh �� trang s�c �eo tay ��ch luy�n ch� /perfect_hongying_main", 
-- script viet hoa By http://tranhba.com " ta ch� n�y c� m�t �t d� th�a ch� t�o t�i li�u /equipex_recycle_main", 
-- script viet hoa By http://tranhba.com 
--"Ta mu�n �em m�nh v�n ��i th�nh gi�ng nhau ho�ng kim trang b� /exchange_entry", 
--"Ta mu�n m�i xin ng��i ��c l�i kim � trang b� /refine_jinwu",
--"Ta mu�n d�ng trang b� ��i l�y tinh luy�n b�o r��ng /exchange_olditem", 
--"Ta mu�n d�ng tinh luy�n b�o r��ng ��i l�y trang b� l�nh b�i /exchange_lingpai", 
--"Ta mu�n d�ng l�nh b�i ��i l�y trang b� /exchange_lingpai2goldequip", 
--} 

-- script viet hoa By http://tranhba.com  n�ng luy�n t� m�ng 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta mu�n m�i ng��i n�ng luy�n t� m�ng trang b� ", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip}) 

for i = 1, getn(aryDescribe) do 
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
local fn = getglobal(szFun) 
if fn then 
tbDailog:AddOptEntry(szOpt, fn); 
end 
end 

-- script viet hoa By http://tranhba.com  b�n ra ��i tho�i khu�ng 
tbDailog:Show() 

-- script viet hoa By http://tranhba.com  n�u nh� nh�n ho�n m� an bang nhi�m v� , c�m v�o ch�n h�ng 
-- script viet hoa By http://tranhba.com  local nNextStatus = check_nexttask_status(); 
-- script viet hoa By http://tranhba.com  if (check_nexttask_condition() == 1) then 
-- script viet hoa By http://tranhba.com  tinsert(aryDescribe, 2,"Ta mu�n ti�p t�c ch� t�o ho�n m� an bang �� trang s�c �eo tay /nexttask_talk"); 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  tinsert(aryDescribe, 2,"Thu v� v�nh c�u tr�i ��nh trang b� /reclaimBindEquip_main"); 

end 

function exchange_tiexuedan() 
if (CalcFreeItemCellCount() < 2) then 
Say("V� b�o ��m v�t ph�m ��ch an to�n , xin/m�i ch�a l�i 2 c� tr� l�n v� �ch c�ch ", 0); 
return 
end 
GiveItemUI("��i thi�t huy�t �an ","Xin �em t�y � 1 b�/v� m�n ph�i ho�ng kim trang b� ��t � ph�a d��i ", "do_exchange_tiexuedan", "onCancel") 
end 

function do_exchange_tiexuedan(nCount) 
if nCount ~= 1 then 
CreateTaskSay({"B� v�o v�t ph�m ��ch s� l��ng kh�ng h�p y�u c�u ","Th�t kh�ng c� � , ta l�n n�a s�a sang l�i /exchange_tiexuedan","Th�t kh�ng c� � , ta m�t h�i tr� l�i ./onCancel"}); 
return 
end 

local nItemIndex = GetGiveItemUnit(1) 
local nQuality = GetItemQuality(nItemIndex); -- script viet hoa By http://tranhba.com  ph�m ch�t 

if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then 
CreateTaskSay({"Mu�n d�n cho ta 1 b�/v� m�n ph�i ho�ng kim trang b� ","Th�t kh�ng c� � , ta l�n n�a s�a sang l�i /exchange_tiexuedan","Th�t kh�ng c� � , ta m�t h�i tr� l�i ./onCancel"}); 
return 
end 

if (RemoveItemByIndex(nItemIndex) ~= 1) then 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s", 
" ��i thi�t huy�t �an Error", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
" thanh tr� m�n ph�i ho�ng kim trang b� th�t b�i :\t"..GetItemName(nCurItemIdx))); 
end 


for i = 1, 20 do 
AddItem(6, 1, 2163, 1, 1, 0); 
end 
Msg2Player("Ch�c m�ng ng��i l�y ���c 20 vi�n thi�t huy�t �an !"); 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s", 
" ��i thi�t huy�t �an Success", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
format("��i %s l�y ���c thi�t huy�t �an ", GetItemName(nItemIndex)))); 
end 
