Include("\\script\\activitysys\\config\\53\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
		{78,1571,3228,},
		{53,1616,3188,},
	}
	local tbNpc = {	
			szName = "B�nh Sinh Nh�t", 
			nLevel = 95,
			nNpcId = 1797,
			nIsboss = 0,
			szScriptPath = "\\script\\doldly\\event\\sinhnhatvltk\\npc_sukien.lua",
	}
	
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
	--	basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end

--T�ng B�nh Sinh Nh�t
function pActivity:GiveHPT(nEXP_Give_HPT, TSK_Date_Give_HPT)
	
	if (PlayerFunLib:CheckTaskDaily(TSK_Date_Give_HPT,15,"M�i ng�y ch� c� th� t�ng 15 L�n Mai H�y Quay L�i","<") ~= 1) then
			return
	end
	if (ConsumeEquiproomItem(1, 6,1,2861,-1) ~= 1) then
		return
	end
	PlayerFunLib:AddTaskDaily(TSK_Date_Give_HPT,1)
	AddOwnExp(nEXP_Give_HPT)
	Msg2Player("Ban nh�n ���c 500000000 �i�m kinh nghi�m")
	WriteLog(date("%Y%m%d %H%M%S").."\t".."Event 20112010"..GetAccount().."\t"..GetName().."\t".."T�ng B�nh Sinh Nh�t ��c Bi�t")
end
---------------------------------------------------------------------------------------------------------------------------