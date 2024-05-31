--Thî rÌn th©n bÝ l©m an: edit by mcteam tho ren than bi lam an
Include( "\\script\\task\\system\\task_string.lua" );

-- script viet hoa By http://tranhba.com  ®óc l¹i 
Include("\\script\\global\\recoin_goldenequip.lua")
-- script viet hoa By http://tranhba.com  hoµn mü an bang ®å trang søc ®eo tay 
Include("\\script\\task\\equipex\\head.lua");
-- script viet hoa By http://tranhba.com  b¹ch kim trang bÞ 
Include("\\script\\global\\platina_upgrade.lua")
-- script viet hoa By http://tranhba.com  ®óc l¹i b¹ch kim trang bÞ 
-- script viet hoa By http://tranhba.com Include("\\script\\global\\recoin_platinaequip.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") -- script viet hoa By http://tranhba.com »ØÊÕ°ó¶¨ÎïÆ·
-- script viet hoa By http://tranhba.com  ®óc l¹i kim « trang bÞ 
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- script viet hoa By http://tranhba.com  ¶Ò»»¾«Á¶±¦Ïä
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- script viet hoa By http://tranhba.com  ¶Ò»»ÐÂ×°±¸ÁîÅÆ£¨×ÏòþµÈ£©
Include("\\script\\activitysys\\npcdailog.lua")

-- script viet hoa By http://tranhba.com  ®óc l¹i tö m·ng - By DinhHQ 
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

Include("\\script\\global\\tieungao\\anbanghoanmy.lua")
Include("\\script\\task\\equipex\\head.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\vng_feature\\nangcapvodanh\\main.lua")

function main() 

--dofile("script/½­ÄÏÇø/ÁÙ°²/ÁÙ°²/npc/Ö°ÄÜ_ÉñÃØÌú½³.lua");
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
tbDailog.szTitleMsg = "<dec><npc> kh«ng nghÜ tíi ta nhÉn tÝnh mai danh l©u nh­ vËy , vÉn bÞ ng­¬i t×m ®­îc , nãi vËy ng­¬i lµ v× chÕ t¹o <color=yellow>Hoµng Kim <color> mµ ®Õn ®i . " 
tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "") 

local aryDescribe = {}
if nangcapabhoanmy == 1 then
	tinsert(aryDescribe,"Ta muèn hái th¨m liªn quan tíi hoµn mü an bang/main_talk")
end

if tachgheptrangbihoangkim == 1 then
	tinsert(aryDescribe,"Ta muèn mêi xin ng­¬i gióp mét tay ph©n chia hoµng kim trang bÞ /split_entry")
	tinsert(aryDescribe,"Ta muèn dïng m¶nh vôn hîp thµnh mét Ýt hoµng kim trang bÞ /compose_entry")
	--tinsert(aryDescribe,"Ta muèn ®em m¶nh vôn ®æi thµnh gièng nhau hoµng kim trang bÞ /exchange_entry")
end

if trangbibachkim == 1 then
	tinsert(aryDescribe,"ChÕ t¹o trang bÞ b¹ch kim /platina_main")
end

--local aryDescribe = 
--{ 
--"Ta muèn hái th¨m liªn quan tíi hoµn mü an bang/main_talk", 
-- script viet hoa By http://tranhba.com " ta muèn mêi/xin ng­¬i chÕ t¹o b¹ch kim trang bÞ /platina_main", 
-- script viet hoa By http://tranhba.com " ta muèn mêi/xin ng­¬i ®óc l¹i b¹ch kim trang bÞ /recoin_platina_main", 
-- script viet hoa By http://tranhba.com Change request 04/06/2011, t¾t chÕ t¹o b¹ch kim trang bÞ - Modified by DinhHQ - 20110605 
-- script viet hoa By http://tranhba.com 
--"Ta muèn mêi xin ng­¬i gióp mét tay ph©n chia hoµng kim trang bÞ /split_entry", 
-- script viet hoa By http://tranhba.com 
--"Ta muèn dïng m¶nh vôn hîp thµnh mét Ýt hoµng kim trang bÞ /compose_entry", 
-- script viet hoa By http://tranhba.com " ta muèn ®æi thiÕt huyÕt ®an /exchange_tiexuedan", 
-- script viet hoa By http://tranhba.com " ta muèn tiÕn hµnh hoµn mü hång ¶nh ®å trang søc ®eo tay ®Ých luyÖn chÕ /perfect_hongying_main", 
-- script viet hoa By http://tranhba.com " ta chç nµy cã mét Ýt d­ thõa chÕ t¹o tµi liÖu /equipex_recycle_main", 
-- script viet hoa By http://tranhba.com 
--"Ta muèn ®em m¶nh vôn ®æi thµnh gièng nhau hoµng kim trang bÞ /exchange_entry", 
--"Ta muèn mêi xin ng­¬i ®óc l¹i kim « trang bÞ /refine_jinwu",
--"Ta muèn dïng trang bÞ ®æi lÊy tinh luyÖn b¶o r­¬ng /exchange_olditem", 
--"Ta muèn dïng tinh luyÖn b¶o r­¬ng ®æi lÊy trang bÞ lÖnh bµi /exchange_lingpai", 
--"Ta muèn dïng lÖnh bµi ®æi lÊy trang bÞ /exchange_lingpai2goldequip", 
--} 

-- script viet hoa By http://tranhba.com  nÆng luyÖn tö m·ng 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta muèn mêi ng­êi nÆng luyÖn tö m·ng trang bÞ ", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip}) 

if NangCapVoDanhCanKhon == 1 then
	 tbDailog:AddOptEntry("N©ng cÊp h¹ cÊp nhÉn V« Danh vµ nhÉn Cµn Kh«n", tbVnRingUpgrade.MainDialog, {tbVnRingUpgrade}) 
end
--	tinsert(aryDescribe,"Mua ThÇn BÝ Kho¸ng Th¹ch (50 Xu) /muathanbikhoangthach")
	--tinsert(aryDescribe,"§æi M¶nh ra Ngùa /doimanhrangua")
--	tinsert(aryDescribe,"§æi M¶nh ra Trang BÞ An Bang /doitrangbianbang")
--	tinsert(aryDescribe,"§æi M¶nh ra Trang BÞ §Þnh Quèc /doitrangbidinhquoc")
--	tinsert(aryDescribe,"§æi M¶nh ra Trang BÞ Nhu T×nh /doitrangbinhutinh")
--	tinsert(aryDescribe,"§æi M¶nh ra Trang BÞ HiÖp Cèt /doitrangbihiepcot")
--	tinsert(aryDescribe,"N©ng CÊp An Bang Th­êng --> An Bang Hoµn Mü/nangcapanbang")
--	tinsert(aryDescribe,"Trïng LuyÖn trang bÞ An Bang Hoµn Mü/trungluyenhoanmy")
--	tinsert(aryDescribe,"R· Trang BÞ Ra M¶nh/trungluyen")
--	tinsert(aryDescribe,"Xoay M¶nh Trang BÞ An Bang - HiÖp Cèt - Nhu T×nh - §Þnh Quèc (Xu) /doimanhxu")
--	tinsert(aryDescribe,"Xoay M¶nh Trang BÞ An Bang - HiÖp Cèt - Nhu T×nh (§iÓm Tèng Kim) /doimanhtongkim")
	
for i = 1, getn(aryDescribe) do 
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
local fn = getglobal(szFun)  
if fn then 
tbDailog:AddOptEntry(szOpt, fn); 
end 
end 

-- script viet hoa By http://tranhba.com  b¾n ra ®èi tho¹i khu«ng 
tbDailog:Show() 

-- script viet hoa By http://tranhba.com  nÕu nh­ nhËn hoµn mü an bang nhiÖm vô , c¾m vµo chän h¹ng 
-- script viet hoa By http://tranhba.com  local nNextStatus = check_nexttask_status(); 
-- script viet hoa By http://tranhba.com  if (check_nexttask_condition() == 1) then 
-- script viet hoa By http://tranhba.com  tinsert(aryDescribe, 2,"Ta muèn tiÕp tôc chÕ t¹o hoµn mü an bang ®å trang søc ®eo tay /nexttask_talk"); 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  tinsert(aryDescribe, 2,"Thu vÒ vÜnh cöu trãi ®Þnh trang bÞ /reclaimBindEquip_main"); 

end 
function nangcapanbang()
			local tbSay = {
"N©ng CÊp B»ng 4 Lo¹i Hån Th¹ch./#nang4loaihonthach()",
"N©ng CÊp B»ng Hoµn Mü §a Hån Th¹ch./#nangdahonthach()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi chøc n¨ng nµo?",getn(tbSay),tbSay)
end
function nangdahonthach()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp trang bÞ.", "Bá trang bÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\n- 1 Hoµn Mü §a Hån Th¹ch", "nangdahonthach_ok")
end
function nangdahonthach_ok(nCount)
if nCount~=1 then
	Say("ChØ Bá Trang BÞ Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
	local bangtinh=CalcEquiproomItemCount(6,1,4505,-1)
	if nGoldEquipIdxFF<=167 and nGoldEquipIdxFF>=164  then	
		if bangtinh>=1 then
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1,6,1,4505,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "[Hoµn Mü] An Bang",tbProp={0,nGoldEquipIdxFF+46},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Hoµn Mü Nhu T×nh C©n Quèc Nghª Th­êng.<color> phôc håi 30-40")
		else
			Say("Hµnh trang kh«ng ®ñ nguyªn liÖu")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ An Bang.")
		return
	end
end
function nang4loaihonthach()
			local tbSay = {
"Hoµn Mü An Bang B¨ng Tinh Th¹ch H¹ng Liªn./#doimanhdaychuyen()",
"Hoµn Mü An Bang Cóc Hoa Th¹ch ChØ hoµn./#doimanhnhantren()",
"Hoµn Mü An Bang §iÒn Hoµng Th¹ch Ngäc Béi./#doimanhngocboi()",
"Hoµn Mü An Bang Kª HuyÕt Th¹ch Giíi ChØ./#doimanhnhanduoi()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi lÊy vËt phÈm nµo?",getn(tbSay),tbSay)
end
function doimanhnhanduoi()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp trang bÞ.", "Bá trang bÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\n- 2 Kª HuyÕt Hoµn Mü Hån Th¹ch.\n-2 Kim Tª\n-2 ThÇn BÝ Kho¸ng Th¹ch\n-2 Tö Thñy Tinh\n-1000 V¹n L­îng", "doimanhnhanduoi_ok")
end

function doimanhnhanduoi_ok(nCount)
if nCount~=1 then
	Say("ChØ Bá Trang BÞ Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
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
				tbAwardTemplet:GiveAwardByList({{szName = "[Hoµn Mü] An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,213},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Hoµn Mü Nhu T×nh C©n Quèc Nghª Th­êng.<color> phôc håi 30-40")
		else
			Say("Hµnh trang kh«ng ®ñ nguyªn liÖu")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ An Bang Kª HuyÕt Th¹ch Giíi ChØ.")
		return
	end
end
function doimanhngocboi()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp trang bÞ.", "Bá trang bÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\n- 2 §iÒn Hoµng Hoµn Mü Hån Th¹ch.\n-2 Kim Tª\n-2 ThÇn BÝ Kho¸ng Th¹ch\n-2 Tö Thñy Tinh\n-1000 V¹n L­îng", "doimanhngocboi_ok")
end

function doimanhngocboi_ok(nCount)
if nCount~=1 then
	Say("ChØ Bá Trang BÞ Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
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
				tbAwardTemplet:GiveAwardByList({{szName = "[Hoµn Mü] An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,212},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Hoµn Mü Nhu T×nh C©n Quèc Nghª Th­êng.<color> phôc håi 30-40")
		else
			Say("Hµnh trang kh«ng ®ñ nguyªn liÖu")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ An Bang §iÒn Hoµng Th¹ch Ngäc Béi.")
		return
	end
end
function doimanhnhantren()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp trang bÞ.", "Bá trang bÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\n- 2 Cóc Hoa Hoµn Mü Hån Th¹ch.\n-2 Kim Tª\n-2 ThÇn BÝ Kho¸ng Th¹ch\n-2 Tö Thñy Tinh\n-1000 V¹n L­îng", "doimanhnhantren_ok")
end

function doimanhnhantren_ok(nCount)
if nCount~=1 then
	Say("ChØ Bá Trang BÞ Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
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
				tbAwardTemplet:GiveAwardByList({{szName = "[Hoµn Mü] An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={0,211},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Hoµn Mü Nhu T×nh C©n Quèc Nghª Th­êng.<color> phôc håi 30-40")
		else
			Say("Hµnh trang kh«ng ®ñ nguyªn liÖu")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ An Bang Cóc Hoa Th¹ch ChØ hoµn.")
		return
	end
end
function doimanhdaychuyen()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("N©ng cÊp trang bÞ.", "Bá D©y ChuyÒn An Bang vµo.\nKh«ng bá nguyªn liÖu vµo.\n- 2 B¨ng Tinh Hoµn Mü Hån Th¹ch.\n-2 Kim Tª\n-2 ThÇn BÝ Kho¸ng Th¹ch\n-2 Tö Thñy Tinh\n-1000 V¹n L­îng", "doimanhdaychuyen_ok")
end

function doimanhdaychuyen_ok(nCount)
if nCount~=1 then
	Say("ChØ Bá Trang BÞ Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
	local countxu= CalcEquiproomItemCount(4,417,1,1)
	local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
	local nItemTime = ITEM_GetExpiredTime(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng n©ng cÊp ®­îc.")
		return
	end
	local bindState = GetItemBindState(nItemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
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
				tbAwardTemplet:GiveAwardByList({{szName = "[Hoµn Mü] An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,210},nQuality=1,nCount=1},}, "test", 1);
				--Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> n©ng cÊp thµnh c«ng <color=yellow>Hoµn Mü Nhu T×nh C©n Quèc Nghª Th­êng.<color> phôc håi 30-40")
		else
			Say("Hµnh trang kh«ng ®ñ nguyªn liÖu")
			return
		end
	else
		Say("Trang bÞ ®¹i hiÖp bá vµo kh«ng ph¶i lµ An Bang B¨ng Tinh Th¹ch H¹ng Liªn.")
		return
	end
end



function doinguaovan()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1649,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1649,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "¤ V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa ¤ V©n §¹p TuyÕt cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguaxichtho()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1648,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1648,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa XÝch Thè cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguachieuda()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1647,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1647,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "ChiÕu D¹ Ngäc S­ Tö",tbProp={0,10,5,5,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa ChiÕu D¹ cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguatuyetanh()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1646,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1646,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ngùa TuyÕt ¶nh",tbProp={0,10,5,8,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa TuyÕt ¶nh cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doinguadichlo()
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
	local manh1 = CalcEquiproomItemCount(4,1645,1,1)
	if manh1>=8 then
		ConsumeEquiproomItem(8,4,1645,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ngùa §Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 8 M¶nh Ngùa §Ých L« cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doimanhxu()
if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("§æi M¶nh.", "Bá M¶nh vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu:\n- 1 Xu \n- 1 V¹n L­îng\n Tû lÖ thµnh c«ng: 70%\n XÞt mÊt hÕt nguyªn liÖu + m¶nh.", "doimanhxu_ok")
end
function doimanhxu_ok(nCount)
if nCount~=1 then
	Say("ChØ cÇn bá 1 m¶nh An bang - Nhu t×nh - HiÖp Cèt.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
local szItemName = GetItemName(nItemIndex)
if nG==4 and nD>=1625 and nD<=1641 then
	if CalcEquiproomItemCount(4,417,1,1)>=1 and GetCash()>=10000 then
	local rannn=random(1,100)
	if rannn<=70 then
		tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Trang BÞ",tbProp={4,random(1625,1641),1,1},nCount=1},}, "test", 1);
	ConsumeEquiproomItem(1,4,417,1,1)
	Pay(10000)
	ConsumeEquiproomItem(1,4,nD,1,1)
	else
	ConsumeEquiproomItem(1,4,417,1,1)
	Pay(10000)
	ConsumeEquiproomItem(1,4,nD,1,1)
	end
	else
		Say("Hµnh trang kh«ng cã 1 Xu + 1 V¹n L­îng.")
		return
	end
else
	Say("Thø nµy kh«ng ph¶i m¶nh An Bang - Nhu T×nh - HiÖp Cèt - §Þnh Quèc")
	return
end
end

function doimanhtongkim()
if CalcFreeItemCellCount() < 5 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 5 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("§æi M¶nh.", "Bá 2 M¶nh Trang BÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\nNguyªn LiÖu:\n- 2000 §iÓm Tèng Kim\n§iÓm Tèng Kim hiÖn t¹i: "..GetTask(747)..".", "doimanhtongkim_ok")
end
function doimanhtongkim_ok(nCount)
if nCount~=1 then
	Say("ChØ cÇn bá 1 lo¹i m¶nh An bang - Nhu t×nh - HiÖp Cèt.")
	return
end
local nItemIndex = GetGiveItemUnit(1)
local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
local szItemName = GetItemName(nItemIndex)
if nG==4 and nD>=1625 and nD<=1636 then
	if CalcEquiproomItemCount(4,nD,1,1)>=2 and GetTask(747)>=2000 then
	if nD>=1625 and nD<=1628 then
		tbAwardTemplet:GiveAwardByList({{szName = "M¶nh An Bang",tbProp={4,random(1625,1628),1,1},nCount=1},}, "test", 1);
	elseif nD>=1629 and nD<=1632 then
		tbAwardTemplet:GiveAwardByList({{szName = "M¶nh HiÖp Cèt",tbProp={4,random(1629,1632),1,1},nCount=1},}, "test", 1);
	elseif nD>=1633 and nD<=1636 then
		tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Nhu T×nh",tbProp={4,random(1633,1636),1,1},nCount=1},}, "test", 1);
	end
	ConsumeEquiproomItem(2,4,nD,1,1)
	SetTask(747,GetTask(747)-2000)
	else
		Say("Hµnh trang kh«ng ®ñ 2 M¶nh lo¹i nµy + 2000 §iÓm Tèng Kim.")
		return
	end
else
	Say("Thø nµy kh«ng ph¶i m¶nh An Bang - Nhu T×nh - HiÖp Cèt")
	return
end
end

function muathanbikhoangthach()
if (CalcFreeItemCellCount() < 5) then 
Say("Hµnh trang kh«ng ®ñ 5 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
if CalcEquiproomItemCount(4,417,1,1) >= 50 then
	ConsumeEquiproomItem(50,4,417,1,1)
	tbAwardTemplet:GiveAwardByList({{szName = "ThÇn BÝ Kho¸ng Th¹ch",tbProp={6,1,398,1,1},nCount=1},}, "test", 1);
	
else
	Say("Hµnh trang kh«ng mang ®ñ 50 Xu.")
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
	Say("Mét lÇn xoay tèi ®a 50 M¶nh Trang BÞ.")
	return
end
if CalcEquiproomItemCount(4,417,1,1)<scrollcount then
	Say("Hµnh trang ko ®ñ "..(scrollcount).." Xu ®Ó xoay")
	return
end
--if nG == 6 and (nP >= 4427 and nP<=4436) then 

		for i = 1, y do 
			RemoveItemByIndex(scrollidx[i]) 
		end 
		for t=1,scrollcount do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Trang BÞ",tbProp={4,random(1625,1636),1,1},nCount=1},}, "test", 1);
		end
		ConsumeEquiproomItem(scrollcount,4,417,1,1)
--else
	--Say("Thø ng­¬i bá vµo kh«ng ph¶i lµ M¶nh HKMP.")
	--return 1
--end
end
function trungluyenhoanmy()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("Trïng LuyÖn Trang BÞ.", "Bá trang bÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\n-2 Hån Th¹ch Cïng Lo¹i\n-1 KNB.", "trungluyenhoanmy_ok")
end

function trungluyenhoanmy_ok(nCount)
if nCount~=1 then
	Say("ChØ cÇn bá 1 mãn trang bÞ cÇn r· vµo.")
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
Say("VËt PhÈm Khãa Kh«ng ThÓ R·.");
return 0;
end
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng r· ®­îc.")
		return
	end
		if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
		return
	end
if nQuality==1 and nGoldEquipIdx>=210 and nGoldEquipIdx<=213 then
	if nGoldEquipIdx==210 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4504,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4504,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Hoµn Mü An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("Hµnh trang kh«ng ®ñ  2 B¨ng Tinh Hoµn Mü Hån Th¹ch + 1 KNB")
				return
			end
	end
	if nGoldEquipIdx==211 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4502,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4502,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Hoµn Mü An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("Hµnh trang kh«ng ®ñ  2 Cóc Hoa Hoµn Mü Hån Th¹ch + 1 KNB")
				return
			end
	end
	if nGoldEquipIdx==212 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4503,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4503,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Hoµn Mü An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("Hµnh trang kh«ng ®ñ  2 §iÒn Hoµng Hoµn Mü Hån Th¹ch + 1 KNB")
				return
			end
	end
	if nGoldEquipIdx==213 then
			if CalcEquiproomItemCount(4,343,1,1)>=1 and CalcEquiproomItemCount(6,1,4501,-1)>=2 then
				ConsumeEquiproomItem(1,4,343,1,1)
				ConsumeEquiproomItem(2,6,1,4501,-1)
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName = "Hoµn Mü An Bang",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
			else
				Say("Hµnh trang kh«ng ®ñ  2 Kª HuyÕt Hoµn Mü Hån Th¹ch + 1 KNB")
				return
			end
	end
else
	Say("Trang bÞ nµy kh«ng ph¶i lµ trang bÞ An Bang Hoµn Mü.")
	return
end
end
function trungluyen()
if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
GiveItemUI("R· Trang BÞ.", "Bá trang bÞ vµo.\nKh«ng bá nguyªn liÖu vµo.\n-1 ThÇn bÝ kho¸ng th¹ch\n-1 Kim tª ( An bang cÇn 2 Kim tª)\n- 1 Tö Thñy Tinh\n-500 v¹n l­îng.", "trungluyen_ok")
end

function trungluyen_ok(nCount)
if nCount~=1 then
	Say("ChØ cÇn bá 1 mãn trang bÞ cÇn r· vµo.")
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
Say("VËt PhÈm Khãa Kh«ng ThÓ R·.");
return 0;
end
	if (nItemTime > 0) then
		Talk(1,"","VËt phÈm cã thêi h¹n kh«ng r· ®­îc.")
		return
	end
		if nQuality~=1 then
	Talk(1,"", "Thø nµy kh«ng ph¶i lµ trang bÞ hoµng kim.")
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
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==187 then
		for i=907,910 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==188 then
		for i=911,914 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==189 then
		for i=771,776 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==190 then
		for i=777,782 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==191 then
		for i=915,918 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==192 then
		for i=919,922 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==193 then
		for i=923,926 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==159 then
		for i=927,930 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==160 then
		for i=943,946 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==161 then
		for i=931,934 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==162 then
		for i=935,938 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==163 then
		for i=939,942 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	end
	--Msg2Player("Trïng luyÖn thµnh c«ng.")
else
	Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
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
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==165 then
		for i=753,758 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==166 then
		for i=759,764 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	elseif nGoldEquipIdx==167 then
		for i=765,770 do
			tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,i,1,1},nCount=1},}, "test", 1);
		end
	end
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdx},nCount=1,nQuality=1},}, "test", 1);
	--Msg2Player("Trïng luyÖn thµnh c«ng.")
else
	Say("Hµnh trang kh«ng ®ñ nguyªn liÖu. An Bang cÇn 2 Kim Tª.")
	return
end

else
	Say("Trang bÞ nµy kh«ng ph¶i lµ trang bÞ HiÖp Cèt, Nhu T×nh, §Þnh Quèc, An Bang.")
	return
end
end

function muathanbikhoangthach()
if (CalcFreeItemCellCount() < 5) then 
Say("Hµnh trang kh«ng ®ñ 5 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
return 
end 
if CalcEquiproomItemCount(4,417,1,1) >= 50 then
	ConsumeEquiproomItem(50,4,417,1,1)
	tbAwardTemplet:GiveAwardByList({{szName = "ThÇn BÝ Kho¸ng Th¹ch",tbProp={6,1,398,1,1},nCount=1},}, "test", 1);
	
else
	Say("Hµnh trang kh«ng mang ®ñ 50 Xu.")
	return
end
end
function doitrangbianbang()
			local tbSay = {
"An Bang B¨ng Tinh Th¹ch H¹ng Liªn./#doitrangbianbang_ok_daychuyen(164)",
"An Bang Cóc Hoa Th¹ch ChØ hoµn./#doitrangbianbang_ok_nhantren(165)",
"An Bang §iÒn Hoµng Th¹ch Ngäc Béi./#doitrangbianbang_ok_nhanduoi(166)",
"An Bang Kª HuyÕt Th¹ch Giíi ChØ./#doitrangbianbang_ok_ngocboi(167)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi lÊy vËt phÈm nµo?",getn(tbSay),tbSay)
end
function doitrangbianbang_ok_ngocboi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 6 Lo¹i M¶nh An Bang Kª HuyÕt Th¹ch Giíi ChØ cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbianbang_ok_nhanduoi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 6 Lo¹i M¶nh An Bang §iÒn Hoµng Th¹ch Ngäc Béi cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbianbang_ok_nhantren(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 6 Lo¹i M¶nh An Bang Cóc Hoa Th¹ch ChØ hoµn cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbianbang_ok_daychuyen(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ An Bang",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 6 Lo¹i M¶nh An Bang B¨ng Tinh Th¹ch H¹ng Liªn cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbihiepcot()
			local tbSay = {
"HiÖp Cèt ThiÕt HuyÕt Sam./#doitrangbihiepcot_ok_ao(186)",
"HiÖp Cèt §a T×nh Hoµn./#doitrangbihiepcot_ok_nhantren(187)",
"HiÖp Cèt §an T©m Giíi./#doitrangbihiepcot_ok_nhanduoi(188)",
"HiÖp Cèt T×nh ý KÕt./#doitrangbihiepcot_ok_ngocboi(189)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi lÊy vËt phÈm nµo?",getn(tbSay),tbSay)
end
function doitrangbihiepcot_ok_ao(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HiÖp Cèt",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh HiÖp Cèt ThiÕt HuyÕt Sam cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbihiepcot_ok_nhantren(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HiÖp Cèt",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh HiÖp Cèt §a T×nh Hoµn cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbihiepcot_ok_nhanduoi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HiÖp Cèt",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh HiÖp Cèt §an T©m Giíi cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbihiepcot_ok_ngocboi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HiÖp Cèt",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 6 Lo¹i M¶nh HiÖp Cèt T×nh ý KÕt cÇn thiÕt ®Ó Ðp.")
		return
	end
end



function doitrangbinhutinh()
			local tbSay = {
"Nhu T×nh C©n Quèc Nghª Th­êng./#doitrangbinhutinh_ok_ao(190)",
"Nhu T×nh Thôc N÷ H¹ng Liªn./#doitrangbinhutinh_ok_daychuyen(191)",
"Nhu T×nh  Phông Nghi Giíi ChØ ./#doitrangbinhutinh_ok_nhantren(192)",
"Nhu T×nh  TuÖ T©m Ngäc Béi./#doitrangbinhutinh_ok_ngocboi(193)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi lÊy vËt phÈm nµo?",getn(tbSay),tbSay)
end
function doitrangbinhutinh_ok_ngocboi(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ Nhu T×nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh Nhu T×nh TuÖ T©m Ngäc Béi cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbinhutinh_ok_nhantren(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ Nhu T×nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh Nhu T×nh Phông Nghi Giíi ChØ cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbinhutinh_ok_daychuyen(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ Nhu T×nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh Nhu T×nh Thôc N÷ H¹ng Liªn cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbinhutinh_ok_ao(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ Nhu T×nh",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 6 Lo¹i M¶nh Nhu T×nh C©n Quèc Nghª Th­êng cÇn thiÕt ®Ó Ðp.")
		return
	end
end




function doitrangbidinhquoc()
			local tbSay = {
"§Þnh Quèc Thanh Sa Tr­êng Sam./#doitrangbidinhquoc_ok_ao(159)",
"§Þnh Quèc ¤ Sa Ph¸t Qu¸n./#doitrangbidinhquoc_ok_non(160)",
"§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa./#doitrangbidinhquoc_ok_giay(161)",
"§Þnh Quèc Tö §»ng Hé uyÓn./#doitrangbidinhquoc_ok_baotay(162)",
"§Þnh Quèc Ng©n Tµm Yªu ®¸i./#doitrangbidinhquoc_ok_houyen(163)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n muèn ®æi lÊy vËt phÈm nµo?",getn(tbSay),tbSay)
end
function doitrangbidinhquoc_ok_houyen(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ §Þnh Quèc",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh §Þnh Quèc §Þnh Quèc Ng©n Tµm Yªu ®¸i cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbidinhquoc_ok_baotay(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ §Þnh Quèc",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh §Þnh Quèc Tö §»ng Hé uyÓn cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbidinhquoc_ok_giay(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ §Þnh Quèc",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbidinhquoc_ok_non(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ §Þnh Quèc",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh §Þnh Quèc ¤ Sa Ph¸t Qu¸n cÇn thiÕt ®Ó Ðp.")
		return
	end
end
function doitrangbidinhquoc_ok_ao(nID)
if (CalcFreeItemCellCount() < 10) then 
Say("Hµnh trang kh«ng ®ñ 10 « trèng. Vui lßng s¾p xÕp l¹i hµnh trang. ", 0); 
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
		tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ §Þnh Quèc",tbProp={0,nID},nCount=1,nQuality=1},}, "test", 1);
		--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®¶ ®æi thµnh c«ng <color=yellow>HiÖp Cèt ThiÕt HuyÕt Sam.<color>")
	else
		Say("Hµnh trang kh«ng ®ñ 4 Lo¹i M¶nh §Þnh Quèc Thanh Sa Tr­êng Sam cÇn thiÕt ®Ó Ðp.")
		return
	end
end

function exchange_tiexuedan() 
if (CalcFreeItemCellCount() < 2) then 
Say("V× b¶o ®¶m vËt phÈm ®Ých an toµn , xin/mêi chõa l¹i 2 c¸ trë lªn v« Ých c¸ch ", 0); 
return 
end 
GiveItemUI("§æi thiÕt huyÕt ®an ","Xin ®em tïy ý 1 bé/vá m«n ph¸i hoµng kim trang bÞ ®Æt ë phÝa d­íi ", "do_exchange_tiexuedan", "onCancel") 
end 

function do_exchange_tiexuedan(nCount) 
if nCount ~= 1 then 
CreateTaskSay({"Bá vµo vËt phÈm ®Ých sè l­îng kh«ng hîp yªu cÇu ","ThËt kh«ng cã ý , ta lÇn n÷a söa sang l¹i /exchange_tiexuedan","ThËt kh«ng cã ý , ta mét håi trë l¹i ./onCancel"}); 
return 
end 

local nItemIndex = GetGiveItemUnit(1) 
local nQuality = GetItemQuality(nItemIndex); -- script viet hoa By http://tranhba.com  phÈm chÊt 

if (nQuality ~= 1 or GetGlodEqIndex(nItemIndex) > 140) then 
CreateTaskSay({"Muèn dÉn cho ta 1 bé/vá m«n ph¸i hoµng kim trang bÞ ","ThËt kh«ng cã ý , ta lÇn n÷a söa sang l¹i /exchange_tiexuedan","ThËt kh«ng cã ý , ta mét håi trë l¹i ./onCancel"}); 
return 
end 

if (RemoveItemByIndex(nItemIndex) ~= 1) then 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s", 
" ®æi thiÕt huyÕt ®an Error", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
" thanh trõ m«n ph¸i hoµng kim trang bÞ thÊt b¹i :\t"..GetItemName(nCurItemIdx))); 
end 


for i = 1, 20 do 
AddItem(6, 1, 2163, 1, 1, 0); 
end 
Msg2Player("Chóc mõng ng­¬i lÊy ®­îc 20 viªn thiÕt huyÕt ®an !"); 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t %s", 
" ®æi thiÕt huyÕt ®an Success", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
format("§æi %s lÊy ®­îc thiÕt huyÕt ®an ", GetItemName(nItemIndex)))); 
end 
