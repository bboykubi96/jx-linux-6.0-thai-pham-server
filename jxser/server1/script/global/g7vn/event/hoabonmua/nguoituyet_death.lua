----------------***Heart*Doldly***----------------------
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------------------------------


--Ph«n Th≠Îng R¨i Ra Tı Boss Hoµng Kim
local tbVnNewItemDropAward = {
	[1] = {
		{szName="Ti“n ßÂng",tbProp={4,417,1,1},nCount=10},
		{szName="C©y Th´ng",tbProp={6,1,3065,1,1,0},nCount=10},
			--	{szName="M∏u TËng Kim",tbProp={6,1,215,1,1,0},nCount=500},
	},
}

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VÀt ph»m <color=pink><%s><color=green><enter> vıa r¨i tı <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function OnDeath( nNpcIndex )
dofile("script/global/g7vn/event/hoabonmua/nguoituyet_death.lua")
if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
 tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOSS Xu t Hi÷n

end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end