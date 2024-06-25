Include("\\script\\activitysys\\config\\46\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
----------------------------------------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		{53,1624,3198,},
	}
	local tbNpc = {	
			szName = "Thî May Hoµng Kim", 
			nLevel = 95,
			nNpcId = 1464,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	--for i=1,getn(tbNpcPos) do
	--	local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
	--	basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
--	end
end

