IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
----------------------------------------------
tbAward = {
[1] = {
		{szName="hoa phuong do",tbProp={6,1,3161,1,0,0},nCount=1000,nExpiredTime=20220528},

	},
	
	
}

function main(nItemIdx)
local nDate = tonumber(date("%Y%m%d"))

		if nDate > enddate then
			Say("VËt ph¶m qu¸ h¹n sö dông")
			return 0
		end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=1005 and nSubWorldID ~=1006  then
		Msg2Player("ChØ sö dông ë SAHARA HoÆc THANH CO nhÐ b¹n.");
		return 1
	end
local free = FindFreeRoomByWH(2, 3)
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end
	
	if (P == 3165) then
		if (free ~= 1) then
			Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang (6 x 6) ¤ Råi Më")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[1],"Tói xu")
	end

	

	
end
