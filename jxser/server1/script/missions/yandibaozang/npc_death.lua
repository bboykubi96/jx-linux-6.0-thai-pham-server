Include("\\script\\missions\\yandibaozang\\npc.lua")
Include("\\script\\missions\\yandibaozang\\include.lua")
Include("\\script\\missions\\yandibaozang\\saizi.lua")
Include("\\script\\missions\\yandibaozang\\readymap\\include.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\task_addplayerexp.lua")
--------------------------------------------------------------------
function YDBZ_award(index,ntype,nplayindex)
	local x, y, world = GetNpcPos(index);
	for x1,y1 in YDBZ_tbaward_item[ntype] do
		for i=1,y1[2] do
			local p = random(1,100)
			if p <= y1[1] then
				if y1[4] == 0 then
					DropItem(world, x, y, -1, y1[3][1], y1[3][2], y1[3][3], y1[3][4], y1[3][5], y1[3][6], 0, 0, 0, 0, 0, 0);
				elseif y1[4] == 1 then
						local idx= 0
						local pidx,nj
						
						local oldplayer = PlayerIndex
						PlayerIndex = nplayindex
						YDBZ_DiceDice(y1[3][1],y1[3][2],y1[3][3],20,y1[6])
						PlayerIndex = oldplayer	
				end
			end
		end
	end
end

function YDBZ_fun_award_byCount(nCount, szMsg)
	nCount = nCount or 0
	if nCount <= 0 then
		return 
	end
	local tbAward = {}
	tbAward[1] = YDBZ_tbaward_item_ex[1]
	
	szMsg = szMsg or ""
	local szLogTitle = format("%s award",szMsg)
	tbAwardTemplet:Give(tbAward, nCount, {"YDBZ", szLogTitle})
	Msg2Player("<color=yellow>Ch�c m�ng "..GetName().."nh�n ���c<color=yellow><Vi�m �� B� B�o><color>")
end

function YDBZ_fun_award_ydmibao(camp, nnpcway)
	local idx= 0
	local nCount = 1
	local pidx,nj, nTeamSize = GetTeamSize()
	for nj = 1, 10 do
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx,camp );
		if (pidx > 0 and nCount >= 1) then
			local sMsg = format("V��t qua �i th� %d",nnpcway)
			G_ACTIVITY:OnMessage("YDBZguoguan", pidx, nnpcway);
			-- C� qua �i 2,4,6,8,10 s� nh�n ���c 1 B�o r��ng vi�m �� - Modified - by AnhHH 20110724
			if (mod(nnpcway,2) == 0) then
				CallPlayerFunction(pidx,YDBZ_fun_award_byCount, nCount, sMsg)
			end
		end
		if (idx == 0) then
			break
		end
	end
end
--------------------------------------------------------------Ph�n Th��ng Qua �i---------------------------------------------------------------------------------------------
function YDBZ_fun_award_exp(camp,ns)
	local idx= 0
	local pidx,nj
	local oldplayer = PlayerIndex
	for nj = 1, 10 do
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx,camp );
		if (pidx > 0) then
				PlayerIndex = pidx
				if ns == 1 then
					local nexp = YDBZ_AWARD_EXP
					for i = 1, getn(Master.tbAward[10][1][1]) do
						tbAwardTemplet:GiveAwardByList(Master.tbAward[10][1][1][i],"Ph�n Th��ng Qua �i Vi�m ��")
					end
					local szdstr = ""
					if YDBZ_sdl_getTaskByte(YDBZ_ITEM_YANDILING,1) == 1 then
						nexp = YDBZ_AWARD_EXP*2
						for i = 1, getn(Master.tbAward[10][1][2]) do
							tbAwardTemplet:GiveAwardByList(Master.tbAward[10][1][2][i],"Ph�n Th��ng X2 Qua �i Vi�m ��")
						end 
						szdstr = "<color=yellow>[Vi�m �� L�nh c� hi�u l�c]<color>"
					end
					--tl_addPlayerExp(nexp)
					Msg2Player(format("%s Ch�c M�ng T� ��i �� V��t Qua 1 �i B�o T�ng Vi�m ��",szdstr))
				elseif ns == 2 then
					local nexp = YDBZ_Faninl_AWARD_EXP
					for i = 1, getn(Master.tbAward[10][2][1]) do
						tbAwardTemplet:GiveAwardByList(Master.tbAward[10][2][1][i],"Ph�n Th��ng Boss �i 10 Vi�m ��")
					end
					local szdstr = ""
					if YDBZ_sdl_getTaskByte(YDBZ_ITEM_YANDILING,1) == 1 then
						nexp = YDBZ_Faninl_AWARD_EXP*2 
						for i = 1, getn(Master.tbAward[10][2][2]) do
							tbAwardTemplet:GiveAwardByList(Master.tbAward[10][2][2][i],"Ph�n Th��ng Boss �i 10 Vi�m ��")
						end
						szdstr = "<color=yellow>[Vi�m �� L�nh c� hi�u l�c]<color>"
					end
					--tl_addPlayerExp(nexp)
					Msg2Player(format("%s Ch�c M�ng T� ��i �� Ti�u Di�t Th�nh C�ng 1 Boss C� N� Kh� T�i �i 10 B�o T�ng Vi�m ��",szdstr))
				end
		end
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = oldplayer
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function YDBZ_savepaihang(camp)
	local teamname = GetMissionS(camp)
	local nstate = GetMissionV(YDBZ_VARV_STATE)
	local laddertime = YDBZ_LIMIT_FINISH - ( ((nstate-4)* YDBZ_LIMIT_BOARDTIME) + floor(GetMSRestTime(YDBZ_MISSION_MATCH,YDBZ_TIMER_MATCH)/18) )
	local bfind = 0
	local nteamsum = GetMissionV(YDBZ_TEAM_SUM)
	if nteamsum < 3 then
		return laddertime
	end
	if (laddertime > YDBZ_LIMIT_FINISH or laddertime < 0) then
		return laddertime
	end
	for i = 1, 10 do 
		name , value = Ladder_GetLadderInfo(YDBZ_PAIHANG_ID, i)
		if (name  == teamname) then
			bfind = 1
			if ( laddertime > value) then
				Ladder_NewLadder(YDBZ_PAIHANG_ID, teamname, laddertime,1)
				break
			end
		end
	end
	
	if (bfind == 0) then
		Ladder_NewLadder(YDBZ_PAIHANG_ID, teamname, laddertime, 1)
	end
	return laddertime
end

function YDBZ_award_finalboss_ex(camp, nTotalCount)
	local nNum = {}
	local nSize = GetMSPlayerCount(YDBZ_MISSION_MATCH, camp)
	for i = 1, nSize do
		nNum[i] = 1
	end
	
	for i = nSize + 1, nTotalCount do                     
		local p = random(1,nSize)
		nNum[p] = nNum[p] + 1
	end
	print("Nh�n S� ��i ng� =" .. nSize)
	local idx, pidx
	for nj = 1, nSize do
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx, camp );
		if (pidx > 0 and nNum[nj] >= 1) then
			local szMsg = format("V��t qua �i cu�i c�ng")
			print(format("pidx = %d, nNum[nj] = %d", pidx, nNum[nj]))
			CallPlayerFunction(pidx,YDBZ_fun_award_byCount, nNum[nj], szMsg)
		end
		if (idx == 0) then
			break
		end
	end
	
end
---------------------------------------------------------Ph�n Th��ng Boss Cu�i---------------------------------------------------------
function YDBZ_award_finalboss(camp)	
	local idx= 0
	local pidx,nj
	local nplaynum = 0
	local tbAward_Item = YDBZ_tbaward_item[4]
	local szLogTitle = "Ph�n Th��ng Ti�u Di�t L���ng Mi Nhi"
	local oldplayer = PlayerIndex
	for nj = 1, 10 do
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx,camp );
		if (pidx > 0) then
			PlayerIndex = pidx
			for i = 1, getn(Master.tbAward[10][4]) do
				tbAwardTemplet:GiveAwardByList(Master.tbAward[10][4][i],"Ph�n Th��ng Boss Cu�i L��ng Mi Nhi")
                                 SetTask(5138,GetTask(5138)+1)
			end
			
		end
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = oldplayer
	SetMissionV(YDBZ_STATE_SIGN,4)
	local pname = GetMissionS(camp)
	local nmapid = SubWorldIdx2ID(SubWorld)
	broadcast(format("Ch�c m�ng t� ��i %s �� v��t �i vi�m �� th�nh c�ng, thu ���c ph�n th��ng v� c�ng qu� gi�.",pname))
	local ntime = YDBZ_savepaihang(camp)
	local szstr = format("[V��t �i b�o t�ng vi�m ��] th�i gian %s, chi�n ��i %s c�n l�i s� ng��i %s, s� hi�u b�n �� %s, tr�n doanh l� %s gi�t BOSS cu�i, d� th�i gian %s gi�y",GetLocalDate("%y-%m-%d %H:%M:%S"),pname,nplaynum,nmapid,camp,ntime) 
	WriteLog(szstr)
	StopMissionTimer(YDBZ_MISSION_MATCH, YDBZ_TIMER_MATCH);	
	StartMissionTimer(YDBZ_MISSION_MATCH,YDBZ_TIMER_FIGHTSTATE,YDBZ_TIME_WAIT_STATE3 * 18)
end

function OnDeath(index)
	local oldworld = SubWorld
	local x, y,world = GetNpcPos(index);
	SubWorld = world
	local nband = GetNpcParam(index,1)
	local nband2 = GetNpcParam(index,2)
	local npccount = 0
	if nband == 0 then
		local nteam = floor((nband2-1)/10)+1
		local npctype = nband2 - 10*(nteam-1)
		local npcallsum = 0
		npcallsum = YDBZ_map_npc[npctype][1][YDBZ_NPC_ATTRIDX_COUNT]

		local npccount = GetMissionV(YDBZ_NPC_COUNT[nteam])
		local npcway = GetMissionV(YDBZ_NPC_WAY[nteam])

		if npccount + 1 == npcallsum then
			SetMissionV(YDBZ_NPC_COUNT[nteam],0)
			local file = YDBZ_map_posfiles[1][nteam][npcway+1]
			YDBZ_add_npc(file,nteam,npcway+1,2)
			if npcway + 1 == 3 or npcway + 1 == 6 then
				YDBZ_add_npc(file,nteam,npcway+1,21)
				SetMissionV(YDBZ_NPC_COUNT[nteam],2)
			else
				SetMissionV(YDBZ_NPC_COUNT[nteam],1)
			end
		else
			SetMissionV(YDBZ_NPC_COUNT[nteam],(npccount + 1))
		end

	elseif nband >= 1 and nband <= 30 then		
			local nteam = (floor((nband-1)/10))+1
			local npcway = nband - 10*(nteam-1)
			
			local nCount = GetMissionV(YDBZ_NPC_COUNT[nteam])
			if nCount == 1 then
				SetMissionV(YDBZ_NPC_COUNT[nteam], 0)
				SetMissionV(YDBZ_NPC_WAY[nteam],npcway)
			if npcway == 10 then
				if GetMissionV(YDNZ_STATE_SIGN) ~= 0 then
					Msg2MSAll(YDBZ_MISSION_MATCH,"�� b��c v�a giai �o�n tranh �o�t, c�a �i �� ��ng.")
					return 
					end
				end
			
			local mapfile = YDBZ_mapfile_trap[nteam][4].."trap"..npcway..".txt"
			YDBZ_bt_clearzhangai(mapfile)
			YDBZ_fun_award_exp(nteam,1)
			
			-- YDBZ_fun_award_ydmibao(nteam,npcway)
			YDBZ_award(index,2,PlayerIndex)
			local teamname = GetMissionS(YDBZ_TEAM_NAME[nteam])
			local szstr = format("<color=yellow>%s<color> �� th�nh c�ng v��t �i <color=yellow>th� %s<color>.",teamname,npcway)
			if npcway == 10 then
				szstr = szstr .. "Ti�n v�o n�i s�u nh�t c�a s�n ��ng."	
				else				
					local file = YDBZ_map_posfiles[1][nteam][npcway+1]
					YDBZ_add_npc(file,nteam,npcway+1,1)
				end
				Msg2MSAll(YDBZ_MISSION_MATCH,szstr)
			else
				YDBZ_fun_award_exp(nteam,1)
				YDBZ_award(index,2,PlayerIndex)
				SetMissionV(YDBZ_NPC_COUNT[nteam], nCount-1) 
			end
			
	elseif nband == 40 then
			npccount = GetMissionV(YDBZ_NPC_BOSS_COUNT)
			local nteam = GetCurCamp()
			SetMissionV(YDBZ_NPC_BOSS_COUNT,npccount-1)
			YDBZ_award(index,3,PlayerIndex)
			YDBZ_fun_award_exp(nteam,2)
			if npccount-1 == 0 then
				Msg2MSAll(YDBZ_MISSION_MATCH,"V��t �i b�o t�ng vi�m �� �� ti�n v�o <color=yellow>giai �o�n tranh �o�t<color>, <color=yellow>10 gi�y<color> sau s� tri�u g�i t�t c� th�nh vi�n trong t� ��i v�o b�n �� tranh �o�t, ch� c�n <color=yellow>1 t� ��i<color> m�i c� th� tri�u g�i BOSS cu�i.")
				SetMissionV(YDBZ_STATE_SIGN,1)
				for i=1,3 do 
					local trapfile = YDBZ_mapfile_trap[i][4].."trap10.txt"
					YDBZ_bt_addZhangai(trapfile)
				end
				StartMissionTimer(YDBZ_MISSION_MATCH,YDBZ_TIMER_FIGHTSTATE,YDBZ_TIME_WAIT_STATE1*18)
			end

	elseif nband == 50 then
			nteam = GetCurCamp()
			YDBZ_award_finalboss(nteam)
			G_ACTIVITY:OnMessage("YDBZ_KillMaxBoss", YDBZ_MISSION_MATCH, nteam);
	end
	SubWorld = oldworld
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Master = {}
Master.tbAward = {
	[10] = {--Ph�n Th��ng B�o T�ng Vi�m ��
		[1] = {--Ph�n Th��ng Qua �i
			[1] = {--x1
				{szName="Tri�u Kinh Nghi�m",nExp_tl=1000000,nCount=500},
				-- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=5},
				-- {szName="xu",tbProp={4,417,1,1,0,0},nCount=5},
			},
			[2] = {--x2
				{szName="Tri�u Kinh Nghi�m",nExp_tl=2000000,nCount=500},
		        -- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=5},
			},
		},
		[2] = {--3 Boss �i 10
			[1] = {--x1
				{szName="Tri�u Kinh Nghi�m",nExp_tl=1000000,nCount=500},
		        -- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=10},
                 {szName="xu",tbProp={4,417,1,1,0,0},nCount=5},
			},
			[2] = {--x2
				{szName="Tri�u Kinh Nghi�m",nExp_tl=2000000,nCount=500},
		        -- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=10},
                {szName="xu",tbProp={4,417,1,1,0,0},nCount=10},
			},
		},
		[3] = {--Gi�t 1 M�ng
			[1] = {--x1
				{szName="Tri�u Kinh Nghi�m",nExp_tl=1000000,nCount=500},
			},
			[2] = {--x2
				{szName="Tri�u Kinh Nghi�m",nExp_tl=2000000,nCount=500},
			},
		},
		[4] = {--phan thuong boss cuoi
			--{szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},
			{szName="Tri�u Kinh Nghi�m",nExp_tl=2e9,nCount=1},
			 {szName="xu",tbProp={4,417,1,1,0,0},nCount=1000},
			-- {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=150},
			-- {szName="knb",tbProp={4,1496,1,1,0,0},nCount=50},
			-- {szName = "B�ch Ngh� Tinh Ng�c",tbProp={6,1,49004,1,0,0},nCount=50},
			{

		--{szName="��i th�nh b� k�p 150 l�n C�p 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=5,CallBack= _Message},

		--{szName="��i th�nh b� k�p 150 l�n C�p 22",tbProp={6,1,4346,1,0,0},nCount=1,nRate=2,CallBack= _Message},
		
                     }
             
		},
	},

}
local _Message =  function (nItemIndex)
local Msg = format("<color=green>Ch�c M�ng Cao Th� <color=yellow>%s<color> �� May M�n Nh�n ���c <color=violet>[%s]<color>", GetName(), GetItemName(nItemIndex))
Msg2SubWorld(Msg)
end