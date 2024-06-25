Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\g7vn\\oantuty\\head.lua")
TIMERID = 115;
TIMER_GAMEBET = 1;
TIMER_FRAME = 5;

tbAloneScriptGame.tbKindGame = {
	[1] = "K�o",
	[2] = "B�a",
	[3] = "Bao",
}

function tbAloneScriptGame:DialogMain()
	local szTitle = "Xin ch�o!";
	local tbOption = {};
		tinsert(tbOption, {"Ta mu�n O�n T� X�", self.StartGame, {self}})
		tinsert(tbOption, {"��ng."})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:StartGame()
	local szCaptain = GetName();
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		Talk(1, "", "Ng��i ch�i ph�i l�p t� ��i ri�ng v� ph�i c� �� 2 ng��i trong m�t t� ��i.")
	return end
	
	if (IsCaptain() ~= 1) then
		Talk(1, "", "Ng��i ch�i ph�i l� ��i tr��ng c�a m�t t� ��i.")
	return end
	
	self.StateGame[szCaptain] = self.StateGame[szCaptain] or 0
	if (self.StateGame[szCaptain] > 0) then
		Talk(1, "", "T� ��i c�a b�n �ang O�n T� X�, ch� h�t l��t r�i h�y b�t ��u ti�p.")
	return end
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Tr�n ng��i b�n kh�ng c� Ti�n ��ng, kh�ng th� b�t ��u.")
	return end
	
	g_AskClientNumberEx(1, nMoney, "Nh�p s� ti�n c��c:", {self.SetMoneyGame, {self}})
end

function tbAloneScriptGame:SetMoneyGame(nCount)
	local szCaptain = GetName();
	Msg2Team(format("<color=green>Tr��ng nh�m <color=yellow>%s<color> �� kh�i ��ng tr� ch�i o�n t� t�!",szCaptain))
	
	local nPlayerOld = PlayerIndex;
	local tbTeam = {};
	for i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i);
			local szName = GetName();
				self.StateGame[szName] = 1;
				self.TotalTime[szName] = GetCurServerTime();
				SetTimer(1*18, TIMERID)
			local szTitle = format("Ti�n c��c �� tham gia o�n t� x� l�n n�y l� <color=yellow>%d Ti�n ��ng<color>, b�n c� mu�n tham gia kh�ng", nCount);
			local tbOption = {};
			tinsert(tbOption, {"Tham gia", self.PlayerPlayGame, {self,nCount,tbTeam}})
			tinsert(tbOption, {"H�y b�.", self.CancelPlayGame, {self}})
			CreateNewSayEx(szTitle, tbOption)
		PlayerIndex = nPlayerOld;
	end
end

function tbAloneScriptGame:CancelPlayGame()
	local szPlayerName = GetName();
	Msg2Team(format("<color=green>Ng��i ch�i <color=yellow>%s<color> t� ch�i tham gia!", szPlayerName))
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
		Talk(1, "", "O�n t� x� �� k�t th�c r�i!")
		self:ClearnData()
	return end
	
	self.StateGame[szPlayerName] = 2;
	
	if (GetTeamSize() ~= 2) then
		Talk(1, "", "T� ��i kh�ng �� ng��i, b�t bu�c ph�i ��ng 2 ng��i trong t� ��i.")
		self:ClearnData()
	return end
	
	Msg2Team(format("Ng��i ch�i <color=yellow>%s<color> tham gia O�n t� x�!", szPlayerName))
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney < nCount) then
		Talk(1, "", format("B�n kh�ng �� %d Ti�n ��ng �� tham gia, h� th�ng k�ch kh�i t� ��i.", nCount))
		Msg2Team(format("Ng��i ch�i %s kh�ng �� %d Ti�n ��ng, tho�t kh�i tr� ch�i.", GetName(), nCount))
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
	local szTitle = "M�i b�n ch�n:";
	local tbOption = {};
		tinsert(tbOption, {"K�o", self.PlayerBetGame, {self,tbTeam,1}})
		tinsert(tbOption, {"B�a", self.PlayerBetGame, {self,tbTeam,2}})
		tinsert(tbOption, {"Bao", self.PlayerBetGame, {self,tbTeam,3}})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:PlayerBetGame(tbTeam,nKind)
	local szPlayerName = GetName();
	local szKindGame = self.tbKindGame[nKind];
	local nNumPlayer = 0;
	
	if (self.StateGame[szPlayerName] == 0) then
		Talk(1, "", "O�n t� x� �� k�t th�c r�i!")
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
				Msg2Player(format("Ch�c m�ng b�n �� ��nh o�n t� x� th�ng ���c %d Ti�n ��ng,Admin Thu Ti�n H� 1 Xu",nNum-1))
				Msg2SubWorld(format("<color=green>O�n t� x�, <color=yellow>%s<color> ��nh %s v� <color=yellow>%s<color> ��nh %s. K�t qu� <color=yellow>%s<color> th�ng, nh�n ���c %d Ti�n ��ng.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]],tbPlayer[1],nNum))
			end
			self.StateGame[tbTeam[i][1]] = 4;
			self.TotalTime[tbTeam[i][1]] = 0;
		end
	elseif (nResult == 0) then
		Msg2SubWorld(format("<color=green>O�n t� x�, <color=yellow>%s<color> ��nh %s v� <color=yellow>%s<color> ��nh %s. K�t qu� h�a nhau, m�i b�n nh�n ���c %d Ti�n ��ng.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]], tbTeam[1][4]))
		for i = 1, getn(tbTeam) do
			PlayerIndex = tbTeam[i][2];
				local nNum = tbTeam[i][3];
				tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=nNum},1)
				--for k = 1, nNum do
				--	AddItem(4,417,1,0,0,0)
				--end
			Msg2Player(format("B�n �� ��nh o�n t� x� h�a nh�n l�i ���c %d Ti�n ��ng",nNum))
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
			Msg2Player(format("O�n t� x� b� h�y, b�n nh�n l�i ���c %d Ti�n ��ng", nCount))
		end
		tbAloneScriptGame.WatingBet[szPlayerName] = 0;
		tbAloneScriptGame.TotalTime[szPlayerName] = 0;
		tbAloneScriptGame.StateGame[szPlayerName] = 0;
		StopTimer(TIMERID)
	end
end
