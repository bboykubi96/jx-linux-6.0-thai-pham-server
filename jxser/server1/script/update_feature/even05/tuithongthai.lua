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
			Say("V�t ph�m qu� h�n s� d�ng")
			return 0
		end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=1005 and nSubWorldID ~=1006  then
		Msg2Player("Ch� s� d�ng � SAHARA Ho�c THANH CO nh� b�n.");
		return 1
	end
local free = FindFreeRoomByWH(2, 3)
local G,D,P,nLevel = GetItemProp(nItemIdx)
	if (G ~= 6) then
		return 1
	end
	
	if (P == 3165) then
		if (free ~= 1) then
			Talk(1,"","H�y S�p X�p L�i H�nh Trang (6 x 6) � R�i M�")
			return 1
		end
		tbAwardTemplet:GiveAwardByList(tbAward[1],"T�i xu")
	end

	

	
end
