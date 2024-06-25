Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
tbMazeExtAward = {};
tbMazeExtAward.	tbTSK_GetBaoRuong = 3076;
tbMazeExtAward.tbExpAward = {szName = "§iÓm Kinh NghiÖm", nExp = 2e6}
tbMazeExtAward.tbServerAward = {-- Phan thuong server cu
	[1] = {
		{szName = "§iÓm Kinh NghiÖm", nExp = 10e7},
             {szName="XU  ",tbProp={4,417,1,1,0,0},nCount=5},
	},
	[2] = {
			--{{szName="chiakhoavang",tbProp={6,1,2744,1,0,0},nCount=1,nRate=3},},
                    -- {{szName="chiakhoavang",tbProp={6,1,4877,1,0,0},nCount=1,nRate=1},},
	},		
}

-- kevin109 phÇn th­ëng ¶i cuèi
function tbMazeExtAward:MazeBossAward(mate)
 local tbMazeBoss = {
			{szName = "§iÓm Kinh NghiÖm", nExp = 2e9},
			{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0,0},nCount=10},
			-- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=50},
			-- {szName="knb",tbProp={4,1496,1,1,0,0},nCount=50},
			{szName="Xu",tbProp={4,417,1,1,0,0},nCount=300}, 
                   -- {szName = "Vinh Dù Hoµng Kim ThÇn Méc LÖnh",tbProp={6,1,63019,1,0,0},nCount=2,nBindState = -2,nExpiredTime=1440},
		}
	local nOldPlayer = PlayerIndex
	PlayerIndex = mate.m_PlayerIndex
	tbAwardTemplet:Give(tbMazeBoss, 1, {"KiemGiaMeCung", "KillBossLongCuuThienAward"})
          SetTask(5141,GetTask(5141)+1)
	PlayerIndex = nOldPlayer
end

function tbMazeExtAward:_Message(CaptainName)
	local strMessage = format("Tæ ®éi cña <color=green> %s <color>®· tiªu diÖt thµnh c«ng Boss Long Cöu Thiªn t¹i ThÝ KiÕm Cèc",CaptainName)
	AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function tbMazeExtAward:MazeStepFinishAward(mate)
		local tbMazeAward = {
		{szName = "§iÓm Kinh NghiÖm", nExp = 500000000},
		-- {szName="Tinh Ngoc",tbProp={6,1,4806,1,0,0},nCount=2},
		{szName="xu",tbProp={4,417,1,1,0,0},nCount=50},
		}
		local nOldPlayer = PlayerIndex
		PlayerIndex = mate.m_PlayerIndex
		if PlayerFunLib:CheckTaskDaily(self.tbTSK_GetBaoRuong, 60, format("H«m nay ng­¬i ®· nhËn<color=yellow> 60 <color>lÇn phÇn th­ëng nµy, kh«ng thÓ nhËn thªm."), "<") then
			PlayerFunLib:AddTaskDaily(self.tbTSK_GetBaoRuong, 1)
			tbAwardTemplet:Give(tbMazeAward, 1, {"KiemGiaMeCung", "KillBossAward"})
		end	
		PlayerIndex = nOldPlayer
end

