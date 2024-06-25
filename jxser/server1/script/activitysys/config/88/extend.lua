Include("\\script\\activitysys\\config\\88\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {1005,2056,3430,},
		[2] = {1006,1883,3578,},
		
	}
	local tbNpc = {
		[1] = {	
			szName = "Anh H�ng Li�t S�", 
			nLevel = 95,
			nNpcId = 1785,
			nIsboss = 0,
                     szScriptPath = "\\script\\update_feature\\even04\\npc_sukien.lua",
		},
		[2] = {	
			szName = "Anh H�ng Li�t S�", 
			nLevel = 95,
			nNpcId = 1785,
			nIsboss = 0,
                    szScriptPath = "\\script\\update_feature\\even04\\npc_sukien.lua",
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