IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\misc\\eventsys\\type\\map.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\global\\signet_head.lua")

IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")


function OnTimer()
	Msg2Player("OK")
	local tbRoundPlayer, nCount = GetAroundPlayerList( 20);

	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 300000, 0, format("%s phÇn th­ëng","Kinh nghiÖm §øng Xung Quanh Long Tru"));
	end
end





