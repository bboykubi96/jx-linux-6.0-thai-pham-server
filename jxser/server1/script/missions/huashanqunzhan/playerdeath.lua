Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")




function OnDeath(nNpcIndex)
--local nSilverCount = CalcEquiproomItemCount(4,417,1,-1) ;

tbItem =
{
--	{{szName="Thu�c",tbProp={1,2,0,5,0,0,0,0},nCount=10,},},
	-- {{szName="Xu",tbProp={4,417,1,1,0,0},nCount=10,},},
--	{{szName="Xu",tbProp={4,417,1,1,0,0},nCount=1,},},

	--{{szName="Bac",tbProp={4,1673,1,1,0},nCount=1,},},
	--{{szName="�� Ph�",tbProp={4,random(1497,1636),1,1,0},nCount=1,},},
}
-- tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem,TitleStr, 1)
	--ConsumeEquiproomItem(nSilverCount,4,417,1,-1)

	local nPlayerIndex	= NpcIdx2PIdx(nNpcIndex);
	if nPlayerIndex > 0 then
		
		local szDeadName	= GetName()
		local szKiller		= doFunByPlayer(nPlayerIndex, GetName)
		local nCount		= doFunByPlayer(nPlayerIndex, GetTask, tbMissionClass.TSK_Kills)
		szMsg		= format("<color=green>%s<color> �� h� <color=yellow>%s<color> trong ��u ��u Tr��ng Hoa S�n", szKiller, szDeadName)

		doFunByPlayer(nPlayerIndex, SetTask, tbMissionClass.TSK_Kills, nCount + 1)
		doFunByPlayer(nPlayerIndex, Msg2Player, format("S� ng��i �� ��nh b�i: %d", nCount + 1))
		doFunByPlayer(nPlayerIndex, Msg2Player, szMsg)
		Msg2Player(szMsg)
		doFunByPlayer(nPlayerIndex, TienXu)
	end
	local szNews = format("��i hi�p <color=green>"..GetName().."<color=yellow> B� h� trong <color=wood>��u Tr��ng Hoa S�n");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	tbMissionClass:GotoSignUpPlace()
	
	local nPlayerCount = tbMissionClass:GetMSPlayerCount(0)
	
	if nPlayerCount == 0 then
		tbMissionClass:OnClose()
	end
end

function TienXu()

	--tbAwardTemplet:GiveAwardByList({{szName="KNB",tbProp={6,1,1,30332,1,0,0},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="xu",tbProp={4,417,1,1,0,0},nCount=100,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName="bach nghe",tbProp={6,1,49004,1,0,0},nCount=10,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName="bach nghe",tbProp={6,1,30355,1,0,0},nCount=10,},}, "test", 1);
end





