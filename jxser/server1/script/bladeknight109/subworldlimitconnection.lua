SubWorldLimitConnection = {};

SubWorldLimitConnection.Enable = 0

-- Khai bao map gioi han bang ma phan cung
SubWorldLimitConnection.ARY_LIMIT_MAP_HWID = {
	-- Map tuong duong gioi han 2 cua so game/HWID (PC)
	[78] = 2,	--Tuong Duong
}

-- Khai bao map gioi han bang ip
SubWorldLimitConnection.ARY_LIMIT_MAP_IP = {
	-- Map tuong duong gioi han 2 cua so game/IP
	[78] = 2,	--Tuong Duong
}

-- Khai bao map gioi han bang mon phai
SubWorldLimitConnection.ARY_LIMIT_MAP_FACTION = {
	-- Map tuong duong gioi han 1 nhan vat phai duong mon
	[78] = {	--Tuong Duong
		[2] = 1	--Duong Mon
	},
}

SubWorldLimitConnection.TASK_SAVE_LAST_SUBWORLD_ID = 5993	--Task luu id map
SubWorldLimitConnection.TASK_SAVE_LAST_POS_X = 5994	--Task luu toa do X
SubWorldLimitConnection.TASK_SAVE_LAST_POS_Y = 5995	--Task luu toa do Y

-- Map mac dinh
SubWorldLimitConnection.DEFAULT_SUBWORLD_ID = 53	--ID Map
SubWorldLimitConnection.DEFAULT_POS_X = 52032	--Toa do X
SubWorldLimitConnection.DEFAULT_POS_Y = 101696	--Toa do Y

function SubWorldLimitConnection:IsLimitHWID(nSubWorldID, szHardwareID)
	if nSubWorldID < 0 then
		return 0
	end
	
	if not szHardwareID then
		return 0
	end
	
	if not self.ARY_LIMIT_MAP_HWID[nSubWorldID] then
		return 0
	end
	
	if self.ARY_LIMIT_MAP_HWID[nSubWorldID] < 0 then
		return 0
	end
	
	local nCount = GetSubWorldConnectionByHWID(nSubWorldID, szHardwareID);
	if nCount > self.ARY_LIMIT_MAP_HWID[nSubWorldID] then
		return 1
	end
	
	return 0
end

function SubWorldLimitConnection:IsLimitIP(nSubWorldID, szIpAddress)
	if nSubWorldID < 0 then
		return 0
	end
	
	if not szIpAddress then
		return 0
	end
	
	if not self.ARY_LIMIT_MAP_IP[nSubWorldID] then
		return 0
	end
	
	if self.ARY_LIMIT_MAP_IP[nSubWorldID] < 0 then
		return 0
	end
	
	local nCount = GetSubWorldConnectionByIP(nSubWorldID, szIpAddress);
	if nCount > self.ARY_LIMIT_MAP_IP[nSubWorldID] then
		return 1
	end
	
	return 0
end

function SubWorldLimitConnection:IsLimitFaction(nSubWorldID, nFaction)
	if nSubWorldID < 0 then
		return 0
	end
	
	if nFaction < 0 then
		return 0
	end
	
	if not self.ARY_LIMIT_MAP_FACTION[nSubWorldID] then
		return 0
	end
	
	if not self.ARY_LIMIT_MAP_FACTION[nSubWorldID][nFaction] then
		return 0
	end
	
	if self.ARY_LIMIT_MAP_FACTION[nSubWorldID][nFaction] < 0 then
		return 0
	end
	
	local nCount = GetSubWorldConnectionByFaction(nSubWorldID, nFaction);
	if nCount > self.ARY_LIMIT_MAP_FACTION[nSubWorldID][nFaction] then
		return 1
	end
	
	return 0
end

function SubWorldLimitConnection:ResetLastPos()
	if self.Enable ~= 1 then
		return
	end
	
	if not self.TASK_SAVE_LAST_SUBWORLD_ID then
		return
	end
	
	if not self.TASK_SAVE_LAST_POS_X then
		return
	end
	
	if not self.TASK_SAVE_LAST_POS_Y then
		return
	end
	
	SetTask(self.TASK_SAVE_LAST_SUBWORLD_ID, 0);
	SetTask(self.TASK_SAVE_LAST_POS_X, 0);
	SetTask(self.TASK_SAVE_LAST_POS_Y, 0);
end

function SubWorldLimitConnection:SaveLastPos()
	if self.Enable ~= 1 then
		return
	end
	
	if not self.TASK_SAVE_LAST_SUBWORLD_ID then
		return
	end
	
	if not self.TASK_SAVE_LAST_POS_X then
		return
	end
	
	if not self.TASK_SAVE_LAST_POS_Y then
		return
	end
	
	local nSubWorldID, nPosX, nPosY = GetWorldPos();
	SetTask(self.TASK_SAVE_LAST_SUBWORLD_ID, nSubWorldID);
	SetTask(self.TASK_SAVE_LAST_POS_X, nPosX);
	SetTask(self.TASK_SAVE_LAST_POS_Y, nPosY);
end

function SubWorldLimitConnection:RollBackLastPos()
	if self.Enable ~= 1 then
		return
	end
	
	if (self.TASK_SAVE_LAST_SUBWORLD_ID and self.TASK_SAVE_LAST_POS_X and self.TASK_SAVE_LAST_POS_Y) then
		if (self.TASK_SAVE_LAST_SUBWORLD_ID > 0 and self.TASK_SAVE_LAST_POS_X > 0 and self.TASK_SAVE_LAST_POS_Y > 0) then
			local nSubWorldID = GetTask(self.TASK_SAVE_LAST_SUBWORLD_ID);
			local nPosX = GetTask(self.TASK_SAVE_LAST_POS_X);
			local nPosY = GetTask(self.TASK_SAVE_LAST_POS_Y);
			
			self:ResetLastPos();
			
			NewWorld(nSubWorldID, nPosX, nPosY);
			return
		end
	end
	
	if (self.DEFAULT_SUBWORLD_ID and self.DEFAULT_POS_X and self.DEFAULT_POS_Y) then
		if (self.DEFAULT_SUBWORLD_ID > 0 and self.DEFAULT_POS_X > 0 and self.DEFAULT_POS_Y > 0) then
			NewWorld(self.DEFAULT_SUBWORLD_ID, self.DEFAULT_POS_X, self.DEFAULT_POS_Y);
		end
	end
end

function SubWorldLimitConnection:GetFactionString(nFaction)
	local szFaction="Ch­a gia nhËp m«n ph¸i"
	if nFaction == 0 then szFaction = "ThiÕu L©m" 
		elseif nFaction == 1 then szFaction = "Thiªn V­¬ng"
		elseif nFaction == 2 then szFaction = "§­êng M«n" 
		elseif nFaction == 3 then szFaction = "Ngò §éc" 
		elseif nFaction == 4 then szFaction = "Nga My" 
		elseif nFaction == 5 then szFaction = "Thóy Yªn" 
		elseif nFaction == 6 then szFaction = "C¸i Bang" 
		elseif nFaction == 7 then szFaction = "Thiªn NhÉn" 
		elseif nFaction == 8 then szFaction = "Vâ §ang" 
		elseif nFaction == 9 then szFaction = "C«n L«n" 
	end
	return szFaction;
end

function SubWorldLimitConnection:Check()
	if self.Enable ~= 1 then
		return
	end

	local mapid,x,y = GetWorldPos();
	local szHWID = GetHardwareID();
	local szIP = GetRealIP();
	local nFaction = GetLastFactionNumber();
	local szMapName = SubWorldName(SubWorldID2Idx(mapid));
	
	if self:IsLimitHWID(mapid, szHWID) == 1 then
		Talk(1,"OnRollBackLastPos","M· phÇn cøng cña b¹n bÞ giíi h¹n t¹i b¶n ®å "..szMapName);
		return
	end
	
	if self:IsLimitIP(mapid, szIP) == 1 then
		Talk(1,"OnRollBackLastPos","§Þa chØ IP: "..szIP.." bÞ giíi h¹n t¹i b¶n ®å "..szMapName);
		return
	end
	
	if self:IsLimitFaction(mapid, nFaction) == 1 then
		Talk(1,"OnRollBackLastPos","B¶n ®å "..szMapName.." ®· ®ñ sè l­îng ph¸i "..self:GetFactionString(nFaction));
		return
	end
	
	-- Talk(1,"","Kh«ng bÞ giíi h¹n t¹i b¶n ®å "..szMapName);
	self:ResetLastPos();
end

function OnRollBackLastPos()
	SubWorldLimitConnection:RollBackLastPos();
end
