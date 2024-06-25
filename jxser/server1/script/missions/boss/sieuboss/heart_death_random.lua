Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {
		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=200},
		{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=10},
		{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=10},
		{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=10},
		{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=10},
		{szName="Thien Thach",tbProp={4,random(1317,1325),1,1,0,0},nCount=10},
}
}


function OnDeath(nNpcIndex)
	tenboss=GetNpcName(nNpcIndex)
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 50000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Admin"));
		end

		szName = GetName();
		PlayerFunLib:AddExp(50000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Admin"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 20000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
	end
	szNews = format("§¹i HiÖp <color=green>"..GetName().."<color> ®· ®¸nh b¹i <color=Cyan>§éc C« CÇu B¹i<color>, tªn tuæi sÏ vang väng giang hå !");
	AddGlobalNews(szNews);
	Msg2SubWorld(szNews);
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	


end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end
