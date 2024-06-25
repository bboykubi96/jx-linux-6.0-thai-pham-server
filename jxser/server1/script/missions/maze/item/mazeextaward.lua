Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
tbMazeExtAward = {};
tbMazeExtAward.	tbTSK_GetBaoRuong = 3076;
tbMazeExtAward.tbExpAward = {szName = "�i�m Kinh Nghi�m", nExp = 2e6}
tbMazeExtAward.tbServerAward = {-- Phan thuong server cu
	[1] = {
		{szName = "�i�m Kinh Nghi�m", nExp = 10e7},
             {szName="XU  ",tbProp={4,417,1,1,0,0},nCount=5},
	},
	[2] = {
			--{{szName="chiakhoavang",tbProp={6,1,2744,1,0,0},nCount=1,nRate=3},},
                    -- {{szName="chiakhoavang",tbProp={6,1,4877,1,0,0},nCount=1,nRate=1},},
	},		
}

-- kevin109 ph�n th��ng �i cu�i
function tbMazeExtAward:MazeBossAward(mate)
 local tbMazeBoss = {
			{szName = "�i�m Kinh Nghi�m", nExp = 2e9},
			{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0,0},nCount=10},
			-- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=50},
			-- {szName="knb",tbProp={4,1496,1,1,0,0},nCount=50},
			{szName="Xu",tbProp={4,417,1,1,0,0},nCount=300}, 
                   -- {szName = "Vinh D� Ho�ng Kim Th�n M�c L�nh",tbProp={6,1,63019,1,0,0},nCount=2,nBindState = -2,nExpiredTime=1440},
		}
	local nOldPlayer = PlayerIndex
	PlayerIndex = mate.m_PlayerIndex
	tbAwardTemplet:Give(tbMazeBoss, 1, {"KiemGiaMeCung", "KillBossLongCuuThienAward"})
          SetTask(5141,GetTask(5141)+1)
	PlayerIndex = nOldPlayer
end

function tbMazeExtAward:_Message(CaptainName)
	local strMessage = format("T� ��i c�a <color=green> %s <color>�� ti�u di�t th�nh c�ng Boss Long C�u Thi�n t�i Th� Ki�m C�c",CaptainName)
	AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function tbMazeExtAward:MazeStepFinishAward(mate)
		local tbMazeAward = {
		{szName = "�i�m Kinh Nghi�m", nExp = 500000000},
		-- {szName="Tinh Ngoc",tbProp={6,1,4806,1,0,0},nCount=2},
		{szName="xu",tbProp={4,417,1,1,0,0},nCount=50},
		}
		local nOldPlayer = PlayerIndex
		PlayerIndex = mate.m_PlayerIndex
		if PlayerFunLib:CheckTaskDaily(self.tbTSK_GetBaoRuong, 60, format("H�m nay ng��i �� nh�n<color=yellow> 60 <color>l�n ph�n th��ng n�y, kh�ng th� nh�n th�m."), "<") then
			PlayerFunLib:AddTaskDaily(self.tbTSK_GetBaoRuong, 1)
			tbAwardTemplet:Give(tbMazeAward, 1, {"KiemGiaMeCung", "KillBossAward"})
		end	
		PlayerIndex = nOldPlayer
end

