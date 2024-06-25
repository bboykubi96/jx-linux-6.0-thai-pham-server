Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
local nDistance = 20 * 20

function OnDeath(nNpcIndex,nBelongerIndex)
	local szName = GetNpcName(nNpcIndex)
	local nX, nY, nMapIndex = GetNpcPos(nNpcIndex)
	local nMapId = SubWorldIdx2ID(nMapIndex)
	if (szName ~= "Ho�ng Nhan Qu�ng D��ng" or nMapId ~= 947) then
		return
	end
	--New drop award when boss down - Modified By DinhHQ - 20120405
	--Phan thuong boss Thien Tri Tang 4 - Modified By MC Team - 20160919
	local tbAwardForNew = 
	{
		{szName = "Huy�n tinh c�p 8", tbProp={6,1,147,8,0,0},nCount=1},		
		{szName = "Ch�a Kh�a Nh� �", tbProp={6,1,2744,1,0,0},nCount=1,},
		{szName = "L�nh b�i th�ng h�nh",tbProp={6,1,2590,1,0,0},nCount=5,},
		{szName = "Ti�n th�o l� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=7,},
		{szName = "Thi�t huy�t ��n",tbProp={6,1,2163,1,0,0},nCount=3,},
		{szName = "Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=20,},
	}
	--local nBelongerIndex = GetPlayerIndex(nNpcIndex)
	tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbAwardForNew, "Boss t�ng 4 Thi�n Tr� M�t C�nh r�i ra", 1)
	
	--Exp award for player or team who killed boss - Modified By DinhHQ - 20120405
	local nOldPlayer = PlayerIndex
	local tbExpAward = {szName = "�i�m Kinh Nghi�m", nExp = 50e6}
	local nNpcX, nNpcY, nNpcMapIdx = GetNpcPos(nNpcIndex) 
	if GetTeamSize() <= 1 then
		tbAwardTemplet:Give(tbExpAward, 1, {"ThienTriMatCanh", "KillBossExp"})
	else
		local nTeamSize = GetTeamSize()
		for i = 1, nTeamSize do
			PlayerIndex = GetTeamMember(i)
			local nX, nY, nMapIndex = GetPos()
			if PlayerIndex > 0 and GetLife(0) > 0 and CheckDistance(nNpcX, nNpcY, nX, nY) == 1 then
				tbAwardTemplet:Give(tbExpAward, 1, {"ThienTriMatCanh", "KillBossExp"})
			end
		end
	end
	PlayerIndex = nOldPlayer
end

function GetPlayerIndex(nNpcIndex)
	local nPlayerIndex = PlayerIndex
	local nTeamSize = CallPlayerFunction(nPlayerIndex, GetTeamSize)
	if nTeamSize == 0 then
		return nPlayerIndex
	else
		local tbTeamIndex = {}
		local nPlayerNum = 0
		local nNpcX, nNpcY, nNpcMapIdx = GetNpcPos(nNpcIndex)
		for i=1,nTeamSize do
			local nTeamMember = CallPlayerFunction(nPlayerIndex, GetTeamMember, i)
			local nX, nY, nMapIndex = CallPlayerFunction(nTeamMember, GetPos)
			if (nMapIndex >= 0 and nMapIndex == nNpcMapIdx) then			 
				if CheckDistance(nNpcX, nNpcY, nX, nY) == 1 then
					nPlayerNum = nPlayerNum + 1
					tbTeamIndex[nPlayerNum] = nTeamMember
				end		
			end
		end
		if nPlayerNum > 1 then
			local nRandomIdx = random(1, nPlayerNum)
			return tbTeamIndex[nRandomIdx]
		else
			return tbTeamIndex[1]
		end
	end
end

function CheckDistance(nX1, nY1, nX2, nY2)
	local nTempDis = ((nX1 - nX2)/32)^2 + ((nY1 - nY2)/32)^2
	if nTempDis <= %nDistance then
		return 1
	end
end