--Th� r�n th�n b� l�m an: edit by mcteam tho ren than bi lam an
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

Include("\\script\\global\\tieungao\\anbanghoanmy.lua")
Include("\\script\\task\\equipex\\head.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\vng_feature\\nangcapvodanh\\main.lua")

function main() 

--dofile("script/������/�ٰ�/�ٰ�/npc/ְ��_��������.lua");
--dofile("script/task/equipex/head.lua");
--dofile("script/global/g7vn/g7configall.lua")
--dofile("script/vng_feature/nangcapvodanh/main.lua")

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
tbDailog.szTitleMsg = "<dec><npc> kh�ng ngh� t�i ta nh�n t�nh mai danh l�u nh� v�y , v�n b� ng��i t�m ���c , n�i v�y ng��i l� v� ch� t�o <color=yellow>Ho�ng Kim <color> m� ��n �i . " 
tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "") 

local aryDescribe = {}
if nangcapabhoanmy == 1 then
	tinsert(aryDescribe,"Ta mu�n h�i th�m li�n quan t�i ho�n m� an bang/main_talk")
end

if tachgheptrangbihoangkim == 1 then
	tinsert(aryDescribe,"Ta mu�n m�i xin ng��i gi�p m�t tay ph�n chia ho�ng kim trang b� /split_entry")
	tinsert(aryDescribe,"Ta mu�n d�ng m�nh v�n h�p th�nh m�t �t ho�ng kim trang b� /compose_entry")
	--tinsert(aryDescribe,"Ta mu�n �em m�nh v�n ��i th�nh gi�ng nhau ho�ng kim trang b� /exchange_entry")
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

if NangCapVoDanhCanKhon == 1 then
	 tbDailog:AddOptEntry("N�ng c�p h� c�p nh�n V� Danh v� nh�n C�n Kh�n", tbVnRingUpgrade.MainDialog, {tbVnRingUpgrade}) 
end
--	tinsert(aryDescribe,"Mua Th�n B� Kho�ng Th�ch (50 Xu) /muathanbikhoangthach")
	--tinsert(aryDescribe,"��i M�nh ra Ng�a /doimanhrangua")
--	tinsert(aryDescribe,"��i M�nh ra Trang B� An Bang /doitrangbianbang")
--	tinsert(aryDescribe,"��i M�nh ra Trang B� ��nh Qu�c /doitrangbidinhquoc")
--	tinsert(aryDescribe,"��i M�nh ra Trang B� Nhu T�nh /doitrangbinhutinh")
--	tinsert(aryDescribe,"��i M�nh ra Trang B� Hi�p C�t /doitrangbihiepcot")
--	tinsert(aryDescribe,"N�ng C�p An Bang Th��ng --> An Bang Ho�n M�/nangcapanbang")
--	tinsert(aryDescribe,"Tr�ng Luy�n trang b� An Bang Ho�n M�/trungluyenhoanmy")
--	tinsert(aryDescribe,"R� Trang B� Ra M�nh/trungluyen")
--	tinsert(aryDescribe,"Xoay M�nh Trang B� An Bang - Hi�p C�t - Nhu T�nh - ��nh Qu�c (Xu) /doimanhxu")
--	tinsert(aryDescribe,"Xoay M�nh Trang B� An Bang - Hi�p C�t - Nhu T�nh (�i�m T�ng Kim) /doimanhtongkim")
	
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
function nangcapanbang()
			local tbSay = {
"N�ng C�p B�ng 4 Lo�i H�n Th�ch./#nang4loaihonthach()",
"N�ng C�p B�ng Ho�n M� �a H�n Th�ch./#nangdahonthach()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i ch�c n�ng n�o?",getn(tbSay),tbSay)
end
function nangdahonthach()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p trang b�.", "B� trang b� v�o.\nKh�ng b� nguy�n li�u v�o.\n- 1 Ho�n M� �a H�n Th�ch", "nangdahonthach_ok")
end
function nangdahonthach_ok(nCount)
if nCount~=1 then
	Say("Ch� B� Trang B� V�o, Nguy�n Li�u �� Ngo�i H�nh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	local bangtinh=CalcEquiproomItemCount(6,1,4505,-1)
	if nGoldEquipIdxFF<=167 and nGoldEquipIdxFF>=164  then	
		if bangtinh>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,4505,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "[Ho�n M�] An Bang",tbProp={0,nGoldEquipIdxFF+46},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Ho�n M� Nhu T�nh C�n Qu�c Ngh� Th��ng.<color> ph�c h�i 30-40")
		else
			Say("H�nh trang kh�ng �� nguy�n li�u")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� An Bang.")
		return
	end
end
function nang4loaihonthach()
			local tbSay = {
"Ho�n M� An Bang B�ng Tinh Th�ch H�ng Li�n./#doimanhdaychuyen()",
"Ho�n M� An Bang C�c Hoa Th�ch Ch� ho�n./#doimanhnhantren()",
"Ho�n M� An Bang �i�n Ho�ng Th�ch Ng�c B�i./#doimanhngocboi()",
"Ho�n M� An Bang K� Huy�t Th�ch Gi�i Ch�./#doimanhnhanduoi()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i l�y v�t ph�m n�o?",getn(tbSay),tbSay)
end
function doimanhnhanduoi()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p trang b�.", "B� trang b� v�o.\nKh�ng b� nguy�n li�u v�o.\n- 2 K� Huy�t Ho�n M� H�n Th�ch.\n-2 Kim T�\n-2 Th�n B� Kho�ng Th�ch\n-2 T� Th�y Tinh\n-1000 V�n L��ng", "doimanhnhanduoi_ok")
end

function doimanhnhanduoi_ok(nCount)
if nCount~=1 then
	Say("Ch� B� Trang B� V�o, Nguy�n Li�u �� Ngo�i H�nh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	local bangtinh=CalcEquiproomItemCount(6,1,4501,-1)
	local thanbi=CalcEquiproomItemCount(6,1,398,-1)
	local kimte=CalcEquiproomItemCount(4,979,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,239,1,1)
	if nGoldEquipIdxFF==167 then	
		if bangtinh>=2 and thanbi>=2 and kimte>=2 and tuthuytinh>=2 and GetCash()>=10000000 then
				Pay(10000000)
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(2,6,1,4501,-1)
				ConsumeEquiproomItem(2,6,1,398,-1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,979,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "[Ho�n M�] An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,213},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Ho�n M� Nhu T�nh C�n Qu�c Ngh� Th��ng.<color> ph�c h�i 30-40")
		else
			Say("H�nh trang kh�ng �� nguy�n li�u")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� An Bang K� Huy�t Th�ch Gi�i Ch�.")
		return
	end
end
function doimanhngocboi()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p trang b�.", "B� trang b� v�o.\nKh�ng b� nguy�n li�u v�o.\n- 2 �i�n Ho�ng Ho�n M� H�n Th�ch.\n-2 Kim T�\n-2 Th�n B� Kho�ng Th�ch\n-2 T� Th�y Tinh\n-1000 V�n L��ng", "doimanhngocboi_ok")
end

function doimanhngocboi_ok(nCount)
if nCount~=1 then
	Say("Ch� B� Trang B� V�o, Nguy�n Li�u �� Ngo�i H�nh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	local bangtinh=CalcEquiproomItemCount(6,1,4503,-1)
	local thanbi=CalcEquiproomItemCount(6,1,398,-1)
	local kimte=CalcEquiproomItemCount(4,979,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,239,1,1)
	if nGoldEquipIdxFF==166 then	
		if bangtinh>=2 and thanbi>=2 and kimte>=2 and tuthuytinh>=2 and GetCash()>=10000000 then
				Pay(10000000)
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(2,6,1,4503,-1)
				ConsumeEquiproomItem(2,6,1,398,-1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,979,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "[Ho�n M�] An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,212},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Ho�n M� Nhu T�nh C�n Qu�c Ngh� Th��ng.<color> ph�c h�i 30-40")
		else
			Say("H�nh trang kh�ng �� nguy�n li�u")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� An Bang �i�n Ho�ng Th�ch Ng�c B�i.")
		return
	end
end
function doimanhnhantren()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p trang b�.", "B� trang b� v�o.\nKh�ng b� nguy�n li�u v�o.\n- 2 C�c Hoa Ho�n M� H�n Th�ch.\n-2 Kim T�\n-2 Th�n B� Kho�ng Th�ch\n-2 T� Th�y Tinh\n-1000 V�n L��ng", "doimanhnhantren_ok")
end

function doimanhnhantren_ok(nCount)
if nCount~=1 then
	Say("Ch� B� Trang B� V�o, Nguy�n Li�u �� Ngo�i H�nh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	local bangtinh=CalcEquiproomItemCount(6,1,4502,-1)
	local thanbi=CalcEquiproomItemCount(6,1,398,-1)
	local kimte=CalcEquiproomItemCount(4,979,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,239,1,1)
	if nGoldEquipIdxFF==165 then	
		if bangtinh>=2 and thanbi>=2 and kimte>=2 and tuthuytinh>=2 and GetCash()>=10000000 then
				Pay(10000000)
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(2,6,1,4502,-1)
				ConsumeEquiproomItem(2,6,1,398,-1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,979,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "[Ho�n M�] An Bang C�c Hoa Th�ch Ch� ho�n",tbProp={0,211},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Ho�n M� Nhu T�nh C�n Qu�c Ngh� Th��ng.<color> ph�c h�i 30-40")
		else
			Say("H�nh trang kh�ng �� nguy�n li�u")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� An Bang C�c Hoa Th�ch Ch� ho�n.")
		return
	end
end
function doimanhdaychuyen()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("N�ng c�p trang b�.", "B� D�y Chuy�n An Bang v�o.\nKh�ng b� nguy�n li�u v�o.\n- 2 B�ng Tinh Ho�n M� H�n Th�ch.\n-2 Kim T�\n-2 Th�n B� Kho�ng Th�ch\n-2 T� Th�y Tinh\n-1000 V�n L��ng", "doimanhdaychuyen_ok")
end

function doimanhdaychuyen_ok(nCount)
if nCount~=1 then
	Say("Ch� B� Trang B� V�o, Nguy�n Li�u �� Ngo�i H�nh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng n�ng c�p ���c.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
	local bangtinh=CalcEquiproomItemCount(6,1,4504,-1)
	local thanbi=CalcEquiproomItemCount(6,1,398,-1)
	local kimte=CalcEquiproomItemCount(4,979,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,239,1,1)
	if nGoldEquipIdxFF==164 then	
		if bangtinh>=2 and thanbi>=2 and kimte>=2 and tuthuytinh>=2 and GetCash()>=10000000 then
				Pay(10000000)
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(2,6,1,4504,-1)
				ConsumeEquiproomItem(2,6,1,398,-1)
				ConsumeEquiproomItem(2,4,239,1,1)
				ConsumeEquiproomItem(2,4,979,1,1)
				tbAwardTemplet:GiveAwardByList({{szName = "[Ho�n M�] An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,210},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> n�ng c�p th�nh c�ng <color=yellow>Ho�n M� Nhu T�nh C�n Qu�c Ngh� Th��ng.<color> ph�c h�i 30-40")
		else
			Say("H�nh trang kh�ng �� nguy�n li�u")
			return
		end
	else
		Say("Trang b� ��i hi�p b� v�o kh�ng ph�i l� An Bang B�ng Tinh Th�ch H�ng Li�n.")
		return
	end
end



function doinguaovan()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1649,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1649,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a � V�n ��p Tuy�t c�n thi�t �� �p.")
		return
	end
end
function doinguaxichtho()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1648,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1648,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a X�ch Th� c�n thi�t �� �p.")
		return
	end
end
function doinguachieuda()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1647,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1647,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Chi�u D� Ng�c S� T�",tbProp={0,10,5,5,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a Chi�u D� c�n thi�t �� �p.")
		return
	end
end
function doinguatuyetanh()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1646,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1646,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ng�a Tuy�t �nh",tbProp={0,10,5,8,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a Tuy�t �nh c�n thi�t �� �p.")
		return
	end
end
function doinguadichlo()
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1645,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1645,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ng�a ��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 8 M�nh Ng�a ��ch L� c�n thi�t �� �p.")
		return
	end
end
function doimanhxu()
if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("��i M�nh.", "B� M�nh v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u:\n- 1 Xu \n- 1 V�n L��ng\n T� l� th�nh c�ng: 70%\n X�t m�t h�t nguy�n li�u + m�nh.", "doimanhxu_ok")
end
function doimanhxu_ok(nCount)
if nCount~=1 then
	Say("Ch� c�n b� 1 m�nh An bang - Nhu t�nh - Hi�p C�t.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
local szItemName = GetItemName(nItemIndex)
if nG==4 and nD>=1625 and nD<=1641 then
	if CalcEquiproomItemCount(4,417,1,1)>=1 and GetCash()>=10000 then
	local rannn=random(1,100)
	if rannn<=70 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Trang B�",tbProp={4,random(1625,1641),1,1},nCount=1},}, "test", 1);
	ConsumeEquiproomItem(1,4,417,1,1)
	Pay(10000)
	ConsumeEquiproomItem(1,4,nD,1,1)
	else
	ConsumeEquiproomItem(1,4,417,1,1)
	Pay(10000)
	ConsumeEquiproomItem(1,4,nD,1,1)
	end
	else
		Say("H�nh trang kh�ng c� 1 Xu + 1 V�n L��ng.")
		return
	end
else
	Say("Th� n�y kh�ng ph�i m�nh An Bang - Nhu T�nh - Hi�p C�t - ��nh Qu�c")
	return
end
end

function doimanhtongkim()
if CalcFreeItemCellCount() < 5 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("��i M�nh.", "B� 2 M�nh Trang B� v�o.\nKh�ng b� nguy�n li�u v�o.\nNguy�n Li�u:\n- 2000 �i�m T�ng Kim\n�i�m T�ng Kim hi�n t�i: "..GetTask(747)..".", "doimanhtongkim_ok")
end
function doimanhtongkim_ok(nCount)
if nCount~=1 then
	Say("Ch� c�n b� 1 lo�i m�nh An bang - Nhu t�nh - Hi�p C�t.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
local szItemName = GetItemName(nItemIndex)
if nG==4 and nD>=1625 and nD<=1636 then
	if CalcEquiproomItemCount(4,nD,1,1)>=2 and GetTask(747)>=2000 then
	if nD>=1625 and nD<=1628 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh An Bang",tbProp={4,random(1625,1628),1,1},nCount=1},}, "test", 1);
	elseif nD>=1629 and nD<=1632 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Hi�p C�t",tbProp={4,random(1629,1632),1,1},nCount=1},}, "test", 1);
	elseif nD>=1633 and nD<=1636 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Nhu T�nh",tbProp={4,random(1633,1636),1,1},nCount=1},}, "test", 1);
	end
	ConsumeEquiproomItem(2,4,nD,1,1)
	SetTask(747,GetTask(747)-2000)
	else
		Say("H�nh trang kh�ng �� 2 M�nh lo�i n�y + 2000 �i�m T�ng Kim.")
		return
	end
else
	Say("Th� n�y kh�ng ph�i m�nh An Bang - Nhu T�nh - Hi�p C�t")
	return
end
end

function muathanbikhoangthach()
if (CalcFreeItemCellCount() < 5) then 
Say("H�nh trang kh�ng �� 5 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
if CalcEquiproomItemCount(4,417,1,1) >= 50 then
	ConsumeEquiproomItem(50,4,417,1,1)
	tbAwardTemplet:GiveAwardByList({{szName = "Th�n B� Kho�ng Th�ch",tbProp={6,1,398,1,1},nCount=1},}, "test", 1);
	
else
	Say("H�nh trang kh�ng mang �� 50 Xu.")
	return
end
end



function Run_XoayManhHKMP(nCount)
local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, nCount do 
local nItemIdx = GetGiveItemUnit(i); 
local nG, nD, nP, nL, nS = GetItemProp(nItemIdx)

if nG == 4 and ( nD>= 1625 and nD<=1636) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
else
return
end 
end 
if scrollcount>50 then
	Say("M�t l�n xoay t�i �a 50 M�nh Trang B�.")
	return
end
if CalcEquiproomItemCount(4,417,1,1)<scrollcount then
	Say("H�nh trang ko �� "..(scrollcount).." Xu �� xoay")
	return
end
--if nG == 6 and (nP >= 4427 and nP<=4436) then 

		for i = 1, y do 
			RemoveItemByIndex(scrollidx[i]) 
		end 
		for t=1,scrollcount do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh Trang B�",tbProp={4,random(1625,1636),1,1},nCount=1},}, "test", 1);
		end
		ConsumeEquiproomItem(scrollcount,4,417,1,1)
--else
	--Say("Th� ng��i b� v�o kh�ng ph�i l� M�nh HKMP.")
	--return 1
--end
end
function trungluyenhoanmy()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("Tr�ng Luy�n Trang B�.", "B� trang b� v�o.\nKh�ng b� nguy�n li�u v�o.\n-2 H�n Th�ch C�ng Lo�i\n-1 KNB.", "trungluyenhoanmy_ok")
end

function trungluyenhoanmy_ok(nCount)
if nCount~=1 then
	Say("Ch� c�n b� 1 m�n trang b� c�n r� v�o.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
local szItemName = GetItemName(nItemIndex)
local nQuality = GetItemQuality(nItemIndex)
local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
local checkkhoa=GetItemBindState(nItemIndex)
if checkkhoa==-2 then 
Say("V�t Ph�m Kh�a Kh�ng Th� R�.");
return 0;
end
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng r� ���c.")
		return
	end
		if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end
if nQuality==1 and nGoldEquipIdx>=210 and nGoldEquipIdx<=213 then
	if nGoldEquipIdx==210 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4504,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4504,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Ho�n M� An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("H�nh trang kh�ng ��  2 B�ng Tinh Ho�n M� H�n Th�ch + 1 KNB")
				return
			end
	end
	if nGoldEquipIdx==211 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4502,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4502,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Ho�n M� An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("H�nh trang kh�ng ��  2 C�c Hoa Ho�n M� H�n Th�ch + 1 KNB")
				return
			end
	end
	if nGoldEquipIdx==212 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4503,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4503,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Ho�n M� An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("H�nh trang kh�ng ��  2 �i�n Ho�ng Ho�n M� H�n Th�ch + 1 KNB")
				return
			end
	end
	if nGoldEquipIdx==213 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4501,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4501,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Ho�n M� An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("H�nh trang kh�ng ��  2 K� Huy�t Ho�n M� H�n Th�ch + 1 KNB")
				return
			end
	end
else
	Say("Trang b� n�y kh�ng ph�i l� trang b� An Bang Ho�n M�.")
	return
end
end
function trungluyen()
if CalcFreeItemCellCount() < 20 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
GiveItemUI("R� Trang B�.", "B� trang b� v�o.\nKh�ng b� nguy�n li�u v�o.\n-1 Th�n b� kho�ng th�ch\n-1 Kim t� ( An bang c�n 2 Kim t�)\n- 1 T� Th�y Tinh\n-500 v�n l��ng.", "trungluyen_ok")
end

function trungluyen_ok(nCount)
if nCount~=1 then
	Say("Ch� c�n b� 1 m�n trang b� c�n r� v�o.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
local szItemName = GetItemName(nItemIndex)
local nQuality = GetItemQuality(nItemIndex)
local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
local checkkhoa=GetItemBindState(nItemIndex)
if checkkhoa==-2 then 
Say("V�t Ph�m Kh�a Kh�ng Th� R�.");
return 0;
end
	if (nItemTime > 0) then
		Talk(1,"","V�t ph�m c� th�i h�n kh�ng r� ���c.")
		return
	end
		if nQuality~=1 then
	Talk(1,"", "Th� n�y kh�ng ph�i l� trang b� ho�ng kim.")
		return
	end

if nQuality==1 and (nGoldEquipIdx>=186 and nGoldEquipIdx<=189) or (nGoldEquipIdx>=190 and nGoldEquipIdx<=193) or (nGoldEquipIdx>=159 and nGoldEquipIdx<=163) then
if GetCash()>=5000000 and CalcEquiproomItemCount(6,1,398,-1)>=1 and CalcEquiproomItemCount(4,979,1,1)>=1 and CalcEquiproomItemCount(4,239,1,1)>=1 then
	Pay(5000000)
	ConsumeEquiproomItem(1,6,1,398,-1)
	ConsumeEquiproomItem(1,4,979,1,1)
	ConsumeEquiproomItem(1,4,239,1,1)
	RemoveItemByIndex(nItemIndex)
	if nGoldEquipIdx==186 then
		for i=903,906 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==187 then
		for i=907,910 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==188 then
		for i=911,914 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==189 then
		for i=771,776 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==190 then
		for i=777,782 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==191 then
		for i=915,918 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==192 then
		for i=919,922 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==193 then
		for i=923,926 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==159 then
		for i=927,930 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==160 then
		for i=943,946 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==161 then
		for i=931,934 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==162 then
		for i=935,938 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==163 then
		for i=939,942 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	end
	--Msg2Player("Tr�ng luy�n th�nh c�ng.")
else
	Say("H�nh trang kh�ng �� nguy�n li�u.")
	return
end
elseif nQuality==1 and (nGoldEquipIdx>=164 and nGoldEquipIdx<=167) then
if GetCash()>=5000000 and CalcEquiproomItemCount(6,1,398,-1)>=1 and CalcEquiproomItemCount(4,979,1,1)>=2 and CalcEquiproomItemCount(4,239,1,1)>=1 then
	Pay(5000000)
	ConsumeEquiproomItem(1,6,1,398,-1)
	ConsumeEquiproomItem(2,4,979,1,1)
	ConsumeEquiproomItem(1,4,239,1,1)
	RemoveItemByIndex(nItemIndex)
	if nGoldEquipIdx==164 then
		for i=747,752 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==165 then
		for i=753,758 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==166 then
		for i=759,764 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==167 then
		for i=765,770 do
			tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	end
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
	--Msg2Player("Tr�ng luy�n th�nh c�ng.")
else
	Say("H�nh trang kh�ng �� nguy�n li�u. An Bang c�n 2 Kim T�.")
	return
end

else
	Say("Trang b� n�y kh�ng ph�i l� trang b� Hi�p C�t, Nhu T�nh, ��nh Qu�c, An Bang.")
	return
end
end

function muathanbikhoangthach()
if (CalcFreeItemCellCount() < 5) then 
Say("H�nh trang kh�ng �� 5 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
if CalcEquiproomItemCount(4,417,1,1) >= 50 then
	ConsumeEquiproomItem(50,4,417,1,1)
	tbAwardTemplet:GiveAwardByList({{szName = "Th�n B� Kho�ng Th�ch",tbProp={6,1,398,1,1},nCount=1},}, "test", 1);
	
else
	Say("H�nh trang kh�ng mang �� 50 Xu.")
	return
end
end
function doitrangbianbang()
			local tbSay = {
"An Bang B�ng Tinh Th�ch H�ng Li�n./#doitrangbianbang_ok_daychuyen(164)",
"An Bang C�c Hoa Th�ch Ch� ho�n./#doitrangbianbang_ok_nhantren(165)",
"An Bang �i�n Ho�ng Th�ch Ng�c B�i./#doitrangbianbang_ok_nhanduoi(166)",
"An Bang K� Huy�t Th�ch Gi�i Ch�./#doitrangbianbang_ok_ngocboi(167)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i l�y v�t ph�m n�o?",getn(tbSay),tbSay)
end
function doitrangbianbang_ok_ngocboi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,765,1,1)
	local manh2 = CalcEquiproomItemCount(4,766,1,1)
	local manh3 = CalcEquiproomItemCount(4,767,1,1)
	local manh4 = CalcEquiproomItemCount(4,768,1,1)
	local manh5 = CalcEquiproomItemCount(4,769,1,1)
	local manh6 = CalcEquiproomItemCount(4,770,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 and manh5>=1 and manh6>=1 then
		ConsumeEquiproomItem(1,4,765,1,1)
		ConsumeEquiproomItem(1,4,766,1,1)
		ConsumeEquiproomItem(1,4,767,1,1)
		ConsumeEquiproomItem(1,4,768,1,1)
		ConsumeEquiproomItem(1,4,769,1,1)
		ConsumeEquiproomItem(1,4,770,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 6 Lo�i M�nh An Bang K� Huy�t Th�ch Gi�i Ch� c�n thi�t �� �p.")
		return
	end
end
function doitrangbianbang_ok_nhanduoi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,759,1,1)
	local manh2 = CalcEquiproomItemCount(4,760,1,1)
	local manh3 = CalcEquiproomItemCount(4,761,1,1)
	local manh4 = CalcEquiproomItemCount(4,762,1,1)
	local manh5 = CalcEquiproomItemCount(4,763,1,1)
	local manh6 = CalcEquiproomItemCount(4,764,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 and manh5>=1 and manh6>=1 then
		ConsumeEquiproomItem(1,4,759,1,1)
		ConsumeEquiproomItem(1,4,760,1,1)
		ConsumeEquiproomItem(1,4,761,1,1)
		ConsumeEquiproomItem(1,4,762,1,1)
		ConsumeEquiproomItem(1,4,763,1,1)
		ConsumeEquiproomItem(1,4,764,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 6 Lo�i M�nh An Bang �i�n Ho�ng Th�ch Ng�c B�i c�n thi�t �� �p.")
		return
	end
end
function doitrangbianbang_ok_nhantren(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,753,1,1)
	local manh2 = CalcEquiproomItemCount(4,754,1,1)
	local manh3 = CalcEquiproomItemCount(4,755,1,1)
	local manh4 = CalcEquiproomItemCount(4,756,1,1)
	local manh5 = CalcEquiproomItemCount(4,757,1,1)
	local manh6 = CalcEquiproomItemCount(4,758,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 and manh5>=1 and manh6>=1 then
		ConsumeEquiproomItem(1,4,753,1,1)
		ConsumeEquiproomItem(1,4,754,1,1)
		ConsumeEquiproomItem(1,4,755,1,1)
		ConsumeEquiproomItem(1,4,756,1,1)
		ConsumeEquiproomItem(1,4,757,1,1)
		ConsumeEquiproomItem(1,4,758,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 6 Lo�i M�nh An Bang C�c Hoa Th�ch Ch� ho�n c�n thi�t �� �p.")
		return
	end
end
function doitrangbianbang_ok_daychuyen(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,747,1,1)
	local manh2 = CalcEquiproomItemCount(4,748,1,1)
	local manh3 = CalcEquiproomItemCount(4,749,1,1)
	local manh4 = CalcEquiproomItemCount(4,750,1,1)
	local manh5 = CalcEquiproomItemCount(4,751,1,1)
	local manh6 = CalcEquiproomItemCount(4,752,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 and manh5>=1 and manh6>=1 then
		ConsumeEquiproomItem(1,4,747,1,1)
		ConsumeEquiproomItem(1,4,748,1,1)
		ConsumeEquiproomItem(1,4,749,1,1)
		ConsumeEquiproomItem(1,4,750,1,1)
		ConsumeEquiproomItem(1,4,751,1,1)
		ConsumeEquiproomItem(1,4,752,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 6 Lo�i M�nh An Bang B�ng Tinh Th�ch H�ng Li�n c�n thi�t �� �p.")
		return
	end
end
function doitrangbihiepcot()
			local tbSay = {
"Hi�p C�t Thi�t Huy�t Sam./#doitrangbihiepcot_ok_ao(186)",
"Hi�p C�t �a T�nh Ho�n./#doitrangbihiepcot_ok_nhantren(187)",
"Hi�p C�t �an T�m Gi�i./#doitrangbihiepcot_ok_nhanduoi(188)",
"Hi�p C�t T�nh � K�t./#doitrangbihiepcot_ok_ngocboi(189)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i l�y v�t ph�m n�o?",getn(tbSay),tbSay)
end
function doitrangbihiepcot_ok_ao(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,903,1,1)
	local manh2 = CalcEquiproomItemCount(4,904,1,1)
	local manh3 = CalcEquiproomItemCount(4,905,1,1)
	local manh4 = CalcEquiproomItemCount(4,906,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 then
		ConsumeEquiproomItem(1,4,903,1,1)
		ConsumeEquiproomItem(1,4,904,1,1)
		ConsumeEquiproomItem(1,4,905,1,1)
		ConsumeEquiproomItem(1,4,906,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Hi�p C�t",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh Hi�p C�t Thi�t Huy�t Sam c�n thi�t �� �p.")
		return
	end
end
function doitrangbihiepcot_ok_nhantren(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,907,1,1)
	local manh2 = CalcEquiproomItemCount(4,908,1,1)
	local manh3 = CalcEquiproomItemCount(4,909,1,1)
	local manh4 = CalcEquiproomItemCount(4,910,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 then
		ConsumeEquiproomItem(1,4,907,1,1)
		ConsumeEquiproomItem(1,4,908,1,1)
		ConsumeEquiproomItem(1,4,909,1,1)
		ConsumeEquiproomItem(1,4,910,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Hi�p C�t",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh Hi�p C�t �a T�nh Ho�n c�n thi�t �� �p.")
		return
	end
end
function doitrangbihiepcot_ok_nhanduoi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,911,1,1)
	local manh2 = CalcEquiproomItemCount(4,912,1,1)
	local manh3 = CalcEquiproomItemCount(4,913,1,1)
	local manh4 = CalcEquiproomItemCount(4,914,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 then
		ConsumeEquiproomItem(1,4,911,1,1)
		ConsumeEquiproomItem(1,4,912,1,1)
		ConsumeEquiproomItem(1,4,913,1,1)
		ConsumeEquiproomItem(1,4,914,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Hi�p C�t",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh Hi�p C�t �an T�m Gi�i c�n thi�t �� �p.")
		return
	end
end
function doitrangbihiepcot_ok_ngocboi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,771,1,1)
	local manh2 = CalcEquiproomItemCount(4,772,1,1)
	local manh3 = CalcEquiproomItemCount(4,773,1,1)
	local manh4 = CalcEquiproomItemCount(4,774,1,1)
	local manh5 = CalcEquiproomItemCount(4,775,1,1)
	local manh6 = CalcEquiproomItemCount(4,776,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 and manh5>=1 and manh6>=1 then
		ConsumeEquiproomItem(1,4,771,1,1)
		ConsumeEquiproomItem(1,4,772,1,1)
		ConsumeEquiproomItem(1,4,773,1,1)
		ConsumeEquiproomItem(1,4,774,1,1)
		ConsumeEquiproomItem(1,4,775,1,1)
		ConsumeEquiproomItem(1,4,776,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Hi�p C�t",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 6 Lo�i M�nh Hi�p C�t T�nh � K�t c�n thi�t �� �p.")
		return
	end
end



function doitrangbinhutinh()
			local tbSay = {
"Nhu T�nh C�n Qu�c Ngh� Th��ng./#doitrangbinhutinh_ok_ao(190)",
"Nhu T�nh Th�c N� H�ng Li�n./#doitrangbinhutinh_ok_daychuyen(191)",
"Nhu T�nh  Ph�ng Nghi Gi�i Ch� ./#doitrangbinhutinh_ok_nhantren(192)",
"Nhu T�nh  Tu� T�m Ng�c B�i./#doitrangbinhutinh_ok_ngocboi(193)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i l�y v�t ph�m n�o?",getn(tbSay),tbSay)
end
function doitrangbinhutinh_ok_ngocboi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,923,1,1)
	local manh2 = CalcEquiproomItemCount(4,924,1,1)
	local manh3 = CalcEquiproomItemCount(4,925,1,1)
	local manh4 = CalcEquiproomItemCount(4,926,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 then
		ConsumeEquiproomItem(1,4,923,1,1)
		ConsumeEquiproomItem(1,4,924,1,1)
		ConsumeEquiproomItem(1,4,925,1,1)
		ConsumeEquiproomItem(1,4,926,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Nhu T�nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh Nhu T�nh Tu� T�m Ng�c B�i c�n thi�t �� �p.")
		return
	end
end
function doitrangbinhutinh_ok_nhantren(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,919,1,1)
	local manh2 = CalcEquiproomItemCount(4,920,1,1)
	local manh3 = CalcEquiproomItemCount(4,921,1,1)
	local manh4 = CalcEquiproomItemCount(4,922,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 then
		ConsumeEquiproomItem(1,4,919,1,1)
		ConsumeEquiproomItem(1,4,920,1,1)
		ConsumeEquiproomItem(1,4,921,1,1)
		ConsumeEquiproomItem(1,4,922,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Nhu T�nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh Nhu T�nh Ph�ng Nghi Gi�i Ch� c�n thi�t �� �p.")
		return
	end
end
function doitrangbinhutinh_ok_daychuyen(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,915,1,1)
	local manh2 = CalcEquiproomItemCount(4,916,1,1)
	local manh3 = CalcEquiproomItemCount(4,917,1,1)
	local manh4 = CalcEquiproomItemCount(4,918,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 then
		ConsumeEquiproomItem(1,4,915,1,1)
		ConsumeEquiproomItem(1,4,916,1,1)
		ConsumeEquiproomItem(1,4,917,1,1)
		ConsumeEquiproomItem(1,4,918,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Nhu T�nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh Nhu T�nh Th�c N� H�ng Li�n c�n thi�t �� �p.")
		return
	end
end
function doitrangbinhutinh_ok_ao(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,777,1,1)
	local manh2 = CalcEquiproomItemCount(4,778,1,1)
	local manh3 = CalcEquiproomItemCount(4,779,1,1)
	local manh4 = CalcEquiproomItemCount(4,780,1,1)
	local manh5 = CalcEquiproomItemCount(4,781,1,1)
	local manh6 = CalcEquiproomItemCount(4,782,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1 and manh5>=1 and manh6>=1 then
		ConsumeEquiproomItem(1,4,777,1,1)
		ConsumeEquiproomItem(1,4,778,1,1)
		ConsumeEquiproomItem(1,4,779,1,1)
		ConsumeEquiproomItem(1,4,780,1,1)
		ConsumeEquiproomItem(1,4,781,1,1)
		ConsumeEquiproomItem(1,4,782,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� Nhu T�nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 6 Lo�i M�nh Nhu T�nh C�n Qu�c Ngh� Th��ng c�n thi�t �� �p.")
		return
	end
end




function doitrangbidinhquoc()
			local tbSay = {
"��nh Qu�c Thanh Sa Tr��ng Sam./#doitrangbidinhquoc_ok_ao(159)",
"��nh Qu�c � Sa Ph�t Qu�n./#doitrangbidinhquoc_ok_non(160)",
"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa./#doitrangbidinhquoc_ok_giay(161)",
"��nh Qu�c T� ��ng H� uy�n./#doitrangbidinhquoc_ok_baotay(162)",
"��nh Qu�c Ng�n T�m Y�u ��i./#doitrangbidinhquoc_ok_houyen(163)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n mu�n ��i l�y v�t ph�m n�o?",getn(tbSay),tbSay)
end
function doitrangbidinhquoc_ok_houyen(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,939,1,1)
	local manh2 = CalcEquiproomItemCount(4,940,1,1)
	local manh3 = CalcEquiproomItemCount(4,941,1,1)
	local manh4 = CalcEquiproomItemCount(4,942,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1then
		ConsumeEquiproomItem(1,4,939,1,1)
		ConsumeEquiproomItem(1,4,940,1,1)
		ConsumeEquiproomItem(1,4,941,1,1)
		ConsumeEquiproomItem(1,4,942,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� ��nh Qu�c",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh ��nh Qu�c ��nh Qu�c Ng�n T�m Y�u ��i c�n thi�t �� �p.")
		return
	end
end
function doitrangbidinhquoc_ok_baotay(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,935,1,1)
	local manh2 = CalcEquiproomItemCount(4,936,1,1)
	local manh3 = CalcEquiproomItemCount(4,937,1,1)
	local manh4 = CalcEquiproomItemCount(4,938,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1then
		ConsumeEquiproomItem(1,4,936,1,1)
		ConsumeEquiproomItem(1,4,937,1,1)
		ConsumeEquiproomItem(1,4,938,1,1)
		ConsumeEquiproomItem(1,4,935,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� ��nh Qu�c",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh ��nh Qu�c T� ��ng H� uy�n c�n thi�t �� �p.")
		return
	end
end
function doitrangbidinhquoc_ok_giay(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,931,1,1)
	local manh2 = CalcEquiproomItemCount(4,932,1,1)
	local manh3 = CalcEquiproomItemCount(4,933,1,1)
	local manh4 = CalcEquiproomItemCount(4,934,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1then
		ConsumeEquiproomItem(1,4,931,1,1)
		ConsumeEquiproomItem(1,4,932,1,1)
		ConsumeEquiproomItem(1,4,933,1,1)
		ConsumeEquiproomItem(1,4,934,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� ��nh Qu�c",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa c�n thi�t �� �p.")
		return
	end
end
function doitrangbidinhquoc_ok_non(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,943,1,1)
	local manh2 = CalcEquiproomItemCount(4,944,1,1)
	local manh3 = CalcEquiproomItemCount(4,945,1,1)
	local manh4 = CalcEquiproomItemCount(4,946,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1then
		ConsumeEquiproomItem(1,4,943,1,1)
		ConsumeEquiproomItem(1,4,944,1,1)
		ConsumeEquiproomItem(1,4,945,1,1)
		ConsumeEquiproomItem(1,4,946,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� ��nh Qu�c",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh ��nh Qu�c � Sa Ph�t Qu�n c�n thi�t �� �p.")
		return
	end
end
function doitrangbidinhquoc_ok_ao(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("H�nh trang kh�ng �� 10 � tr�ng. Vui l�ng s�p x�p l�i h�nh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,927,1,1)
	local manh2 = CalcEquiproomItemCount(4,928,1,1)
	local manh3 = CalcEquiproomItemCount(4,929,1,1)
	local manh4 = CalcEquiproomItemCount(4,930,1,1)
	if manh1>=1 and manh2>=1 and manh4>=1 and manh3>=1then
		ConsumeEquiproomItem(1,4,927,1,1)
		ConsumeEquiproomItem(1,4,928,1,1)
		ConsumeEquiproomItem(1,4,929,1,1)
		ConsumeEquiproomItem(1,4,930,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Trang B� ��nh Qu�c",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� ��i th�nh c�ng <color=yellow>Hi�p C�t Thi�t Huy�t Sam.<color>")
	else
		Say("H�nh trang kh�ng �� 4 Lo�i M�nh ��nh Qu�c Thanh Sa Tr��ng Sam c�n thi�t �� �p.")
		return
	end
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
