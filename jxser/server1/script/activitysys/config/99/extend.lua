Include("\\script\\activitysys\\config\\99\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {1005,2067,3447,},
		[2] = {1006,1904,3590,},
		
	}
	local tbNpc = {
		[1] = {	
			szName = "C©y Ph­îng Khoe S¾c", 
			nLevel = 95,
			nNpcId = 1554,
			nIsboss = 0,
                     szScriptPath = "\\script\\update_feature\\even05\\npc_sukien.lua",
		},
		[2] = {	
			szName = "C©y Ph­îng Khoe S¾c", 
			nLevel = 95,
			nNpcId = 1554,
			nIsboss = 0,
                    szScriptPath = "\\script\\update_feature\\even05\\npc_sukien.lua",
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
		{szName="Giá Hoa Hång",tbProp={6,1,2306,1,0,0},nCount = 100, nExpiredTime=20210430},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Hép Quµ §Æc BiÖt")
end
---------------------------------------------------------------------------------------------------------------
function pActivity:GioDungHoa()
	local tbAward = {
		{szName="Giá §ùng Hoa",tbProp={6,1,3123,1,0,0},nCount = 100, nExpiredTime=20200831},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Tói LÔ PhÈm")
end
----------------------------------------------------------------------------------------------------------