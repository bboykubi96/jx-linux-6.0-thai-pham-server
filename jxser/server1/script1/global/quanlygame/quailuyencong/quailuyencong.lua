Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

KILLBOSSEXPAWARD = 0
KILLBOSSNEAREXPAWARD = 0
-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={
	{{szName="Ti“n ßÂng",tbProp={4,417,1,1,0,0},nCount=random(50,100)},},
	{{szName="ßÂ PhÊ Tinh S≠¨ng", tbProp ={6,1,4849,1,0,0}, nCount = 1},},
	{{szName="ßÂ PhÊ Nguy÷t Khuy’t", tbProp ={6,1,4850,1,0,0}, nCount = 1},},
	{{szName="R≠¨ng Nguy™n Li÷u", tbProp ={6,1,4837,1,0,0}, nCount = 100},},
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
	--		doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi BOSS hoµng kim"));
		end
	else -- “ª∏ˆ»À
		szName = GetName();
	--	PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi BOSS hoµng kim"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
	--	doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ¯ng g«n lÛc BOSS hoµng kim bﬁ ti™u di÷t"));
	end
	--szNews = format("ßπi hi÷p <color=yellow>"..GetName().."<color> tπi <color=yellow>Bi÷n Kinh<color> Æ∑ Æ∏nh bπi <color=yellow>§ng K—<color>. Xin chÛc mıng");
	--AddGlobalNews(szNews);
	--Msg2SubWorld(szNews);
--	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end
