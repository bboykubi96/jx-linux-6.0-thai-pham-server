Include("\\script\\activitysys\\config\\31\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {20,3546,6226,},
                [2] = {20,3539,6202,},
		
		
	}
	local tbNpc = {
		[1] = {	
			szName = "ChÒ Ti÷m Tπp H„a", 
			nLevel = 95,
			nNpcId = 286,
			nIsboss = 0,
                     szScriptPath = "\\script\\doldly\\event\\trungthu\\npc_sukien.lua",
		},	
		[2] = {	
			szName = "ChÒ Ti÷m Tπp H„a", 
			nLevel = 95,
			nNpcId = 286,
			nIsboss = 0,
                     szScriptPath = "\\script\\doldly\\event\\trungthu\\npc_sukien.lua",
		},	
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
	end
end
function pActivity:GiveBK(nEXP_Give_BK, TSK_Date_Give_BK)
	if (PlayerFunLib:CheckTaskDaily(TSK_Date_Give_BK,10,"MÁi ngµy chÿ c„ th” t∆ng 10 L«n Mai H∑y Quay Lπi","<") ~= 1) then
			return
	end
	if (ConsumeEquiproomItem(10, 6,1,2860,-1) ~= 1) then
		return
	end
	PlayerFunLib:AddTaskDaily(TSK_Date_Give_BK,1)
	AddOwnExp(nEXP_Give_BK)
       -- ConsumeEquiproomItem(10, 6,1,2860,-1)
	Msg2Player("Ban nhÀn Æ≠Óc 1 t˚ Æi”m kinh nghi÷m")
	WriteLog(date("%Y%m%d %H%M%S").."\t".."Event 20112010"..GetAccount().."\t"..GetName().."\t".."T∆ng B∏nh Kem")
end
---------------------------------------------------------------------------------------------------------------------------
function pActivity:TuiNenSinhNhat()
	local tbAward = {
		{szName="N’n Sinh NhÀt",tbProp={6,1,2857,1,0,0},nCount = 100, nExpiredTime=20181231},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng TÛi N’n Sinh NhÀt")
end
----------------------------------------------------------------------------------------------------
function pActivity:HopBanhSinhNhat()
	local tbAward = {
		{szName="B∏nh Sinh NhÀt ß∆c Bi÷t",tbProp={6,1,2861,1,0,0},nCount = 100, nExpiredTime=20181231},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng B∏nh Sinh NhÀt ß∆c Bi÷t")
end
---------------------------------------------------------------------------------------------------------------