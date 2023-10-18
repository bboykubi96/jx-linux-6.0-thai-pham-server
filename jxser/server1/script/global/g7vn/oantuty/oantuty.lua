Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\g7vn\\oantuty\\head.lua")
TIMERID = 115;
TIMER_GAMEBET = 1;
TIMER_FRAME = 5;

tbAloneScriptGame.tbKindGame = {
	[1] = "KÐo",
	[2] = "Bóa",
	[3] = "Bao",
}

function tbAloneScriptGame:DialogMain()
	local szTitle = "Xin chµo!";
	local tbOption = {};
		tinsert(tbOption, {"Ta muèn O¼n Tï X×", self.StartGame, {self}})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:StartGame()
	local szCaptain = GetName();
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		Talk(1, "", "Ng­êi ch¬i ph¶i lËp tæ ®éi riªng vµ ph¶i cã ®ñ 2 ng­êi trong mét tæ ®éi.")
	return end
	
	if (IsCaptain() ~= 1) then
		Talk(1, "", "Ng­êi ch¬i ph¶i lµ ®éi tr­ëng cña mét tæ ®éi.")
	return end
	
	self.StateGame[szCaptain] = self.StateGame[szCaptain] or 0
	if (self.StateGame[szCaptain] > 0) then
		Talk(1, "", "Tæ ®éi cña b¹n ®ang O¼n Tï X×, chê hÕt l­ît råi h·y b¾t ®Çu tiÕp.")
	return end
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Trªn ng­êi b¹n kh«ng cã TiÒn §ång, kh«ng thÓ b¾t ®Çu.")
	return end
	
	g_AskClientNumberEx(1, nMoney, "NhËp sè tiÒn c­îc:", {self.SetMoneyGame, {self}})
end

function tbAloneScriptGame:SetMoneyGame(nCount)
	local szCaptain = GetName();
	Msg2Team(format("<color=green>Tr­ëng nhãm <color=yellow>%s<color> ®· khëi ®éng trß ch¬i o¼n tï tú!",szCaptain))
	
	local nPlayerOld = PlayerIndex;
	local tbTeam = {};
	for i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i);
			local szName = GetName();
				self.StateGame[szName] = 1;
				self.TotalTime[szName] = GetCurServerTime();
				SetTimer(1*18, TIMERID)
			local szTitle = format("TiÒn c­îc ®Ó tham gia o¼n tï x× lÇn nµy lµ <color=yellow>%d TiÒn §ång<color>, b¹n cã muèn tham gia kh«ng", nCount);
			local tbOption = {};
			tinsert(tbOption, {"Tham gia", self.PlayerPlayGame, {self,nCount,tbTeam}})
			tinsert(tbOption, {"Hñy bá.", self.CancelPlayGame, {self}})
			CreateNewSayEx(szTitle, tbOption)
		PlayerIndex = nPlayerOld;
	end
end

function tbAloneScriptGame:CancelPlayGame()
	local szPlayerName = GetName();
	Msg2Team(format("<color=green>Ng­êi ch¬i <color=yellow>%s<color> tõ chèi tham gia!", szPlayerName))
	self.StateGame[szPlayerName] = 0;
	self.TotalTime[szPlayerName] = 0;
	self.WatingBet[szPlayerName] = 0;
	LeaveTeam();
end

function tbAloneScriptGame:ClearnData()
	local szPlayerName = GetName();
	self.StateGame[szPlayerName] = 0;
	self.TotalTime[szPlayerName] = 0;
	self.WatingBet[szPlayerName] = 0;
end

function tbAloneScriptGame:PlayerPlayGame(nCount,tbTeam)
	local szPlayerName = GetName();
	
	if (self.StateGame[szPlayerName] == 0) then
		Talk(1, "", "O¼n tï x× ®· kÕt thóc råi!")
		self:ClearnData()
	return end
	
	self.StateGame[szPlayerName] = 2;
	
	if (GetTeamSize() ~= 2) then
		Talk(1, "", "Tæ ®éi kh«ng ®ñ ng­êi, b¾t buéc ph¶i ®óng 2 ng­êi trong tæ ®éi.")
		self:ClearnData()
	return end
	
	Msg2Team(format("Ng­êi ch¬i <color=yellow>%s<color> tham gia O¼n tï x×!", szPlayerName))
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney < nCount) then
		Talk(1, "", format("B¹n kh«ng ®ñ %d TiÒn §ång ®Ó tham gia, hÖ thèng kÝch khái tæ ®éi.", nCount))
		Msg2Team(format("Ng­êi ch¬i %s kh«ng ®ñ %d TiÒn §ång, tho¸t khái trß ch¬i.", GetName(), nCount))
		self:CancelPlayGame()
	return end
	
	ConsumeEquiproomItem(nCount, 4,417,1,-1);
	
	tbTeam[getn(tbTeam)+1] = {szPlayerName,PlayerIndex,nCount};
	self.WatingBet[szPlayerName] = nCount;
	if (getn(tbTeam) == GetTeamSize()) then
		for i = 1, GetTeamSize() do
			PlayerIndex = GetTeamMember(i);
				self:PlayerPlayGameDialog(tbTeam)
		end
	end
end

function tbAloneScriptGame:PlayerPlayGameDialog(tbTeam)
	local szTitle = "Mêi b¹n chän:";
	local tbOption = {};
		tinsert(tbOption, {"KÐo", self.PlayerBetGame, {self,tbTeam,1}})
		tinsert(tbOption, {"Bóa", self.PlayerBetGame, {self,tbTeam,2}})
		tinsert(tbOption, {"Bao", self.PlayerBetGame, {self,tbTeam,3}})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:PlayerBetGame(tbTeam,nKind)
	local szPlayerName = GetName();
	local szKindGame = self.tbKindGame[nKind];
	local nNumPlayer = 0;
	
	if (self.StateGame[szPlayerName] == 0) then
		Talk(1, "", "O¼n tï x× ®· kÕt thóc råi!")
		self:ClearnData()
	return end
	
	self.StateGame[szPlayerName] = 3;
	
	for i = 1, getn(tbTeam) do
		if (tbTeam[i][1] == szPlayerName) then
			nNumPlayer = i;
			break
		end;
	end;
	
	tbTeam[nNumPlayer] = {tbTeam[nNumPlayer][1],tbTeam[nNumPlayer][2],tbTeam[nNumPlayer][3],nKind}
	
	local nNumBet = 0;
	for i = 1, getn(tbTeam) do
		if (tbTeam[i][4]) then
			nNumBet = nNumBet + 1;
		end
	end
	
	if (nNumBet == GetTeamSize()) then
		self:ResultGame(tbTeam)
	end
end

function tbAloneScriptGame:ResultGame(tbTeam)
	local nResult, tbPlayer = self:SystemResult(tbTeam)
	local nPlayerIndex = 0;
	if (nResult == 1) and (tbPlayer) then
		for i = 1, getn(tbTeam) do
			if (tbTeam[i][1] == tbPlayer[1]) then
				PlayerIndex = tbTeam[i][2];
					local nNum = tbTeam[i][3]*getn(tbTeam);
					tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=nNum-1},1)
					--for k = 1, nNum do
					--	AddItem(4,417,1,0,0,0)
					--end
				Msg2Player(format("Chóc mõng b¹n ®· ®¸nh o¼n tï x× th¾ng ®­îc %d TiÒn §ång,Admin Thu TiÒn Hå 1 Xu",nNum-1))
				Msg2SubWorld(format("<color=green>O¼n tï x×, <color=yellow>%s<color> ®¸nh %s vµ <color=yellow>%s<color> ®¸nh %s. KÕt qu¶ <color=yellow>%s<color> th¾ng, nhËn ®­îc %d TiÒn §ång.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]],tbPlayer[1],nNum))
			end
			self.StateGame[tbTeam[i][1]] = 4;
			self.TotalTime[tbTeam[i][1]] = 0;
		end
	elseif (nResult == 0) then
		Msg2SubWorld(format("<color=green>O¼n tï x×, <color=yellow>%s<color> ®¸nh %s vµ <color=yellow>%s<color> ®¸nh %s. KÕt qu¶ hßa nhau, mçi bªn nhËn ®­îc %d TiÒn §ång.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]], tbTeam[1][4]))
		for i = 1, getn(tbTeam) do
			PlayerIndex = tbTeam[i][2];
				local nNum = tbTeam[i][3];
				tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=nNum},1)
				--for k = 1, nNum do
				--	AddItem(4,417,1,0,0,0)
				--end
			Msg2Player(format("B¹n ®· ®¸nh o¼n tï x× hßa nhËn l¹i ®­îc %d TiÒn §ång",nNum))
			self.StateGame[tbTeam[i][1]] = 4;
			self.TotalTime[tbTeam[i][1]] = 0;
		end
	end
	
end

function tbAloneScriptGame:SystemResult(tbTeam)
	if (getn(tbTeam) == 2) then
		if (tbTeam[1][4] == 1) then
			if (tbTeam[2][4] == 1) then
				return 0,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 2) then
				return 1,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 3) then
				return 1,{tbTeam[1][1],tbTeam[1][4],tbTeam[2][1],tbTeam[2][4]};
			end
		elseif (tbTeam[1][4] == 2) then
			if (tbTeam[2][4] == 1) then
				return 1,{tbTeam[1][1],tbTeam[1][4],tbTeam[2][1],tbTeam[2][4]};
			elseif (tbTeam[2][4] == 2) then
				return 0,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 3) then 
				return 1,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			end
		elseif (tbTeam[1][4] == 3) then
			if (tbTeam[2][4] == 1) then
				return 1,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 2) then
				return 1,{tbTeam[1][1],tbTeam[1][4],tbTeam[2][1],tbTeam[2][4]};
			elseif (tbTeam[2][4] == 3) then
				return 0,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			end
		end
	end
end

function OnTimer()
	local nCurTime = GetCurServerTime();
	local szPlayerName = GetName();
	local nTime = (tbAloneScriptGame.TotalTime[szPlayerName]+10)-nCurTime
	print(nTime)
	if nTime <= 0 then
		if (tbAloneScriptGame.StateGame[szPlayerName] == 2) or (tbAloneScriptGame.StateGame[szPlayerName] == 3) then
			local nCount = tbAloneScriptGame.WatingBet[szPlayerName];
			tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=nCount},1)
			--for i = 1, nCount do
			--	AddItem(4,417,1,0,0,0);
			--end
			Msg2Player(format("O¼n tï x× bÞ hñy, b¹n nhËn l¹i ®­îc %d TiÒn §ång", nCount))
		end
		tbAloneScriptGame.WatingBet[szPlayerName] = 0;
		tbAloneScriptGame.TotalTime[szPlayerName] = 0;
		tbAloneScriptGame.StateGame[szPlayerName] = 0;
		StopTimer(TIMERID)
	end
end
