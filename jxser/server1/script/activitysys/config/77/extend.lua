Include("\\script\\activitysys\\config\\77\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {1005,1711,3282,},
		[2] = {1006,1758,3388,},
		[3] = {37,1721,3103,},
		[4] = {1006,1745,3374,},
		[5] = {1005,1704,3300,},
	}
	local tbNpc = {
		[1] = {	
			szName = "Th� L�m B�nh", 
			nLevel = 95,
			nNpcId = 301,
			nIsboss = 0,
                     szScriptPath = "\\script\\update_feature\\even3\\npc_sukien.lua",
		},
		[2] = {	
			szName = "Th� L�m B�nh", 
			nLevel = 95,
			nNpcId = 301,
			nIsboss = 0,
                    szScriptPath = "\\script\\update_feature\\even3\\npc_sukien.lua",
		},
		[3] = {	
			szName = "Th� L�m B�nh", 
			nLevel = 95,
			nNpcId = 301,
			nIsboss = 0,
			szScriptPath = "\\script\\update_feature\\even3\\npc_sukien.lua",
		},
		[4] = {	
			szName = "Vua H�ng", 
			nLevel = 95,
			nNpcId = 1430,
			nIsboss = 0,
			szScriptPath = "\\script\\update_feature\\even3\\npc_sukien_even.lua",
		},
		[5] = {
			szName = "Vua H�ng", 
			nLevel = 95,
			nNpcId = 1430,
			nIsboss = 0,
			szScriptPath = "\\script\\update_feature\\even3\\npc_sukien_even.lua",
		},
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
	end
end
---------------------------------------------------------------------------------------------------------------------------
function pActivity:GioHoaHong()
	local tbAward = {
		{szName="Gi� Hoa H�ng",tbProp={6,1,2306,1,0,0},nCount = 100, nExpiredTime=20210430},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"H�p Qu� ��c Bi�t")
end
---------------------------------------------------------------------------------------------------------------
function pActivity:GioDungHoa()
	local tbAward = {
		{szName="Gi� ��ng Hoa",tbProp={6,1,3123,1,0,0},nCount = 100, nExpiredTime=20200831},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"T�i L� Ph�m")
end
----------------------------------------------------------------------------------------------------------