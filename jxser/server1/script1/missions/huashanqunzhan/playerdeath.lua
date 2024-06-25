Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")




function OnDeath(nNpcIndex)
tbItem =
{
--{nExp_tl=5e6},
	--{{szName="ThuËc",tbProp={1,2,0,5,0,0,0,0},nCount=5,},},
	--{{szName="TÛi Nguy™n Li÷u",tbProp={6,1,4442,1,1,0},nCount=30,},},
	{{szName="Ti“n ÆÂng",tbProp={4,417,1,0,0,0},nCount=1},},
--	{{szName="ThuËc",tbProp={6,1,215,1,1},nCount=5,},},
	--{{szName="ßÂ PhÊ",tbProp={4,random(1497,1636),1,1,0},nCount=1,},},
}
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem,TitleStr, 1)
	local nPlayerIndex	= NpcIdx2PIdx(nNpcIndex);
	if nPlayerIndex > 0 then
		local szDeadName	= GetName()
		local szKiller		= doFunByPlayer(nPlayerIndex, GetName)
		local nCount		= doFunByPlayer(nPlayerIndex, GetTask, tbMissionClass.TSK_Kills)
		szMsg		= format("<color=green>%s<color> Æ∑ hπ ch·ng Æ›t <color=yellow>%s<color> trong Æ u tr≠Íng Hoa S¨n", szKiller, szDeadName)

		doFunByPlayer(nPlayerIndex, SetTask, tbMissionClass.TSK_Kills, nCount + 1)
		doFunByPlayer(nPlayerIndex, Msg2Player, format("SË ng≠Íi Æ∑ Æ∏nh bπi: %d", nCount + 1))
		doFunByPlayer(nPlayerIndex, Msg2Player, szMsg)
		Msg2Player(szMsg)
	end
	local szNews = format("ßπi hi÷p <color=green>"..GetName().."<color=yellow> Bﬁ hπ ch·ng Æ›t trong Æ u tr≠Íng <color=green>Hoa S¨n");
	--AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	tbMissionClass:GotoSignUpPlace()
	
	local nPlayerCount = tbMissionClass:GetMSPlayerCount(0)
	
	if nPlayerCount == 1 then
		tbMissionClass:OnClose()
	end
end


