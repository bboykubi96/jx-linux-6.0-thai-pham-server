Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {

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
		--	doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 50000000000, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi Admin"));
		end

		szName = GetName();
	--	PlayerFunLib:AddExp(50000000000, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi Admin"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		--doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 20000000000, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ¯ng g«n lÛc ßÈc C´ C«u Bπi bﬁ ti™u di÷t"));
	end



end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end
