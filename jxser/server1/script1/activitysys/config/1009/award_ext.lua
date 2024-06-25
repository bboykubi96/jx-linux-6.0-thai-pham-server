Include("\\script\\lib\\log.lua")
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green>", GetName(), strItemName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function pContributionAward(nCount)
	local _ , nTongID = GetTongName()
	if (nTongID > 0) then
		AddContribution(nCount)
		Msg2Player("B�n nh�n ���c "..nCount.." �i�m c�ng hi�n bang h�i")
		%tbLog:PlayerActionLog(%EVENT_LOG_TITLE, "SuDungVatPham", nCount.." �i�m c�ng hi�n bang h�i")
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