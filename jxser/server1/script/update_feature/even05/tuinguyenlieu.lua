IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")
------------------------------------------
	
tbAward = {
	{szName="Even",tbProp={6,1,3157,1,0,0},nCount=1,nExpiredTime=20220528,nRate=25},
	{szName="Even",tbProp={6,1,3158,1,0,0},nCount=1,nExpiredTime=20220528,nRate=25},
        {szName="Even",tbProp={6,1,3159,1,0,0},nCount=1,nExpiredTime=20220528,nRate=25},
	{szName="Even",tbProp={6,1,3160,1,0,0},nCount=1,nExpiredTime=20220528,nRate=25},

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
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)
if (G ~= 6) then return 1 end
	if (P == 3164) then
		if (Free >= 4) then
			tbAwardTemplet:GiveAwardByList(tbAward,1)
		else
			Talk(1,"","H�nh Trang Kh�ng �� 4 � Tr�ng")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
