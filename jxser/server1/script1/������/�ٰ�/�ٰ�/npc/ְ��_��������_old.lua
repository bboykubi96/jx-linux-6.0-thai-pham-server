--Tho ren than bi lam an
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

--Include("\\script\\global\\tieungao\\anbanghoanmy.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\task\\equipex\\head.lua")
Include("\\script\\event\\leize_upplatina\\platina_upgrade.lua")

function main() 

--dofile("script/½­ÄÏÇø/ÁÙ°²/ÁÙ°²/npc/Ö°ÄÜ_ÉñÃØÌú½³.lua");
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
tbDailog.szTitleMsg = "<dec><npc> kh«ng nghÜ tíi ta nhÉn tÝnh mai danh l©u nh­ vËy , vÉn bÞ ng­¬i t×m ®­îc , nãi vËy ng­¬i lµ v× chÕ t¹o <color=yellow> b¹ch kim trang bÞ <color> mµ ®Õn ®i . " 
tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "") 

local aryDescribe = {}
if nangcapabhoanmy == 1 then
	tinsert(aryDescribe,"Ta muèn hái th¨m liªn quan tíi hoµn mü an bang/main_talk")
end
if tachgheptrangbihoangkim == 1 then
	tinsert(aryDescribe,"Ta muèn mêi xin ng­¬i gióp mét tay ph©n chia hoµng kim trang bÞ /split_entry")
	tinsert(aryDescribe,"Ta muèn dïng m¶nh vôn hîp thµnh mét Ýt hoµng kim trang bÞ /compose_entry")
	tinsert(aryDescribe,"Ta muèn ®em m¶nh vôn ®æi thµnh gièng nhau hoµng kim trang bÞ /exchange_entry")
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
