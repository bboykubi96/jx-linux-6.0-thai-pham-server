Include("\\script\\lib\\log.lua")
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green>", GetName(), strItemName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function pContributionAward(nCount)
	local _ , nTongID = GetTongName()
	if (nTongID > 0) then
		AddContribution(nCount)
		Msg2Player("B¹n nhËn ®­îc "..nCount.." ®iÓm cèng hiÕn bang héi")
		%tbLog:PlayerActionLog(%EVENT_LOG_TITLE, "SuDungVatPham", nCount.." ®iÓm cèng hiÕn bang héi")
	end
end

tbAward_Ext = {
	["award2000"] = 
	{
	},
	["awardspecial"] = 
	{ 
	},
	["awardnomal"] =
	{ 
	},
}	