Include("\\script\\activitysys\\config\\47\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
----------------------------------------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		--{78,1572,3239,},
		{53,1619,3215,},
	}
	local tbNpc = {	
			szName = "¤ng L·o Nu«i Ngùa", 
			nLevel = 95,
			nNpcId = 229,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end

