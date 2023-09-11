-- ====================== 文件信息 ======================

-- 剑侠情缘网络版大陆版 - 擂台美女
-- 文件名　：npc_beauty.lua
-- 创建者　：子非魚
-- 创建时间：2011-05-03 10:26:19

-- ======================================================
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main(nNpcIndex)
	local szName = GetName();
	
	local nNpcIndex = GetLastDiagNpc()
	local szNpcName = GetNpcName(nNpcIndex)
	local nParam1 = GetNpcParam(nNpcIndex, 1);
	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<npc>H� n鉯 r籲g h� m� nghe ta d筼 xong kh骳 nh筩 n祔 u c秏 th蕐 kh秐g kh竔 tinh th莕, khi tu luy謓 c騨g l祄 t╪g m閠 ph莕 c玭g l鵦, ngi nghe th� xem qu� th藅 c� chuy謓 k� l� nh� v藋 sao?"
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	tinsert(tbDailog, {"L頸 h筰 n nh� v藋 sao, v藋 th� ta nghe th� xem.", onBeautyState, {szName, nParam1}});
	tinsert(tbDailog, {"Th玦 th玦, ta kh玭g c� th� v韎 m蕐 c竔 tr� n祔 u."})
	CreateNewSayEx(tbDailog.szTitleMsg, tbDailog)
	
end

function onBeautyState(szName, nParam1)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:AddDoubleState", szName, nParam1);
end

function OnTimer(nNpcIndex)
	DelNpc(nNpcIndex);
end
