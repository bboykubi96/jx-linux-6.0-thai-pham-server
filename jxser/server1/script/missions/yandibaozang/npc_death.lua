Include("\\script\\missions\\yandibaozang\\npc.lua")
Include("\\script\\missions\\yandibaozang\\include.lua")
Include("\\script\\missions\\yandibaozang\\saizi.lua")
Include("\\script\\missions\\yandibaozang\\readymap\\include.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\yandibaozang\\doubleexp.lua")
---------------------------------------------------------------------------------------------
Include("\\script\\task\\task_addplayerexp.lua")
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
	
	--tbAwardTemplet:GiveAwardByList({{szName = "M�nh Gh�p R��ng An Bang",tbProp={4,1624,1,1},nCount=2},}, "test", 1);
	--Msg2Player("<color=yellow>Ch�c m�ng "..GetName().."nh�n ���c<color=yellow><2 M�nh Gh�p R��ng An Bang><color>")
end

function YDBZ_fun_award_ydmibao(camp, nnpcway)
	--Phong V�n L�nh B�i t� ��i h� tr� t�n th� - Modified By DinhHQ - 20110916
	local tbAllPlayers = {}
	
	local idx= 0
	local nCount = 1
	local pidx,nj, nTeamSize = GetTeamSize()
	for nj = 1, 10 do
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx,camp );
		if (pidx > 0 and nCount >= 1) then
			local sMsg = format("V��t qua �i th� %d",nnpcway)
			G_ACTIVITY:OnMessage("YDBZguoguan", pidx, nnpcway);
			
			-- C� qua �i 2,4,6,8,10 s� nh�n ���c 1 B�o r��ng vi�m �� - Modified - by AnhHH 20110724
			if npcway ==7 then
			--	CallPlayerFunction(pidx,YDBZ_fun_award_byCount, nCount, sMsg)
			--	tbAwardTemplet:GiveAwardByList({{szName = "R��ng m�nh thi�n th�ch",tbProp={6,1,4455,1,1,0},nCount=5},}, "test", 1);
			end
			--if (mod(nnpcway,2) == 0) then
			--	CallPlayerFunction(pidx,YDBZ_fun_award_byCount, nCount, sMsg)
			--end
		end
		if (idx == 0) then
			break
		end
	end
end
--------------------------------------------------------------Ph�n Th��ng Qua �i---------------------------------------------------------------------------------------------
function YDBZ_fun_award_exp(camp,ns)
	local teamname = GetMissionS(camp)
	local idx= 0
	local pidx,nj
	local oldplayer = PlayerIndex
	local tbAward = YDBZ_tbaward_item[5]
	for nj = 1, 10 do
		
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx,camp );
		if (pidx > 0) then
				PlayerIndex = pidx
				if ns == 1 then
					local nexp = YDBZ_AWARD_EXP
					local szdstr = ""
					if YDBZ_sdl_getTaskByte(YDBZ_ITEM_YANDILING,1) == 1 then
						 nexp = YDBZ_AWARD_EXP*2 
						 szdstr = "<color=yellow>[Vi�m �� L�nh c� hi�u l�c]<color>"
					end
					nexp = YDBZ_checkdoubleexp(nexp)
					AddOwnExp(nexp)
					Add120SkillExp(nexp/10)
				Clear120SkillExpLimit ()
					tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng Ti�u Di�t Boss")
					Msg2Player(format("%s ch�c m�ng v��t �i th� nh�t, thu ���c <color=yellow>%s<color> kinh nghi�m",szdstr,nexp))
				elseif ns == 2 then
					local nexp = YDBZ_Faninl_AWARD_EXP
					local szdstr = ""
					if YDBZ_sdl_getTaskByte(YDBZ_ITEM_YANDILING,1) == 1 then
						 nexp = YDBZ_Faninl_AWARD_EXP*2 
						 szdstr = "<color=yellow>[Vi�m �� L�nh c� hi�u l�c]<color>"
					end
					nexp = YDBZ_checkdoubleexp(nexp)
					AddOwnExp(nexp)
					Msg2Player(format("%s ch�c m�ng t� ��i �� gi�t th�nh c�ng 1 boss c� n� kh�, thu ���c <color=yellow>%s<color> kinh nghi�m",szdstr,nexp))
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
	--local tbAward = YDBZ_tbaward_item[4]
	local szLogTitle = "GietBossCuoiTinhNangViemDe"
	local oldplayer = PlayerIndex
	for nj = 1, 10 do
		idx , pidx = GetNextPlayer(YDBZ_MISSION_MATCH, idx,camp );
		if (pidx > 0) then
			PlayerIndex = pidx
			--tbAwardTemplet:Give(tbAward, 1, {"YDBZ", szLogTitle})		
	local tbAward= {
		[1] = {
	{szName="R��ng �� xanh",tbProp={6,1,4476,1,1,0},nCount=5},
		--	{szName="M�nh �o Nhu T�nh",tbProp={4,1619,1,1,0,0},nCount=2},
				{szName="D� t�u chi l�nh",tbProp={6,1,4407,1,1,0},nCount=5},
		--		{szName="H� Ti�u L�nh",tbProp={6,1,30317,1,0,0},nCount=2},	
		--		{szName="Ho�ng Kim Ng�c B�i",tbProp={4,1326,1,1},nCount=1},
--{szName="L�nh b�i g�i boss ti�u",tbProp={6,1,4459,1,1,0},nCount=1},		
--	{szName="Xu",tbProp={4,417,1,1,0,0},nCount=5},
--	{szName = "Thu� Tinh",tbProp={4,random(238,240),1,1},nCount=1},
	--{szName="T�n V�t Vi�m ��",tbProp={6,1,4422,1,1,0},nCount=1,nBindState=-2},
	--	{szName = "H� Ti�u L�nh",tbProp={6,1,30317,1,0,0},nCount=2},
--	{szName="Vi�m �� �� ��ng",tbProp={4,1642,1,1},nCount=1},
--	{szName="M�nh Gh�p R��ng An Bang",tbProp={4,1624,1,1},nCount=5},
	--		{szName="Tinh Ng�c",tbProp={6,1,4409,1,1,0},nCount=5},
	--	{szName="B� C�",tbProp={6,1,4415,1,1,0},nCount=5},
	
			},
		[2] = {
	--					{szName = "Ph�c Duy�n ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=15},
	--		{szName = "Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nRate=15},
	--		{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,0,0},nCount=1,nRate=15},
	--		{szName = "Thi�t La H�n",tbProp={6,1,23,1,0,0},nCount=1,nRate=15},
	--		{szName = "Thu� Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=5},
	--		{szName = "Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=1,nRate=5},
		--			{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,3,0},nCount=1,nRate=15},
	--	{szName="Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,4,0},nCount=1,nRate=15},
			},
			}
			AddOwnExp(5000000)
	--		Add120SkillExp(2000000)
	--		Clear120SkillExpLimit ()
			tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng Ti�u Di�t Boss C� Nh�n")		
		--	Msg2SubWorld("Ph�n th��ng Vi�m ��: <color=green>100 tri�u KN, 20 V�n B�o R��ng, 10 S� C� La, 20 T� Tinh Kho�ng Th�ch")
			--Msg2Player("Ph�n th��ng �i cu�i: <color=green>100 tri�u KN, 20 V�n B�o R��ng, 10 S� C� La, 20 T� Tinh Kho�ng Th�ch")
			if (GetTask(5918) < 2) then SetTask(5918,GetTask(5918)+1) end
		end
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = oldplayer
	SetMissionV(YDBZ_STATE_SIGN,4)
	local pname = GetMissionS(camp)
	local nmapid = SubWorldIdx2ID(SubWorld)
	broadcast(format("Ch�c m�ng t� ��i %s �� v��t �i vi�m �� th�nh c�ng, thu ���c ph�n th��ng gi� tr�.",pname))
	local ntime = YDBZ_savepaihang(camp)
	local szstr = format("[V��t �i b�o t�ng vi�m ��] th�i gian %s, chi�n ��i %s c�n l�i s� ng��i %s, s� hi�u b�n �� %s, tr�n doanh l� %s gi�t BOSS cu�i, d� th�i gian %s gi�y",GetLocalDate("%y-%m-%d %H:%M:%S"),pname,nplaynum,nmapid,camp,ntime) 
	WriteLog(szstr)

	StopMissionTimer(YDBZ_MISSION_MATCH, YDBZ_TIMER_MATCH);	
	StartMissionTimer(YDBZ_MISSION_MATCH,YDBZ_TIMER_FIGHTSTATE,YDBZ_TIME_WAIT_STATE3 * 18)
end
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44> <color=cyan>%s<color> <color=red>�� nh�t ���c v�t ph�m <color=pink><%s><color=green><enter> v�a r�i trong <color=yellow>Vi�m �� B�o T�ng<color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
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
			
			YDBZ_fun_award_ydmibao(nteam,npcway)
			YDBZ_award(index,2,PlayerIndex)
			local teamname = GetMissionS(YDBZ_TEAM_NAME[nteam])
			local szstr = format("<color=yellow>%s<color>�� th�nh c�ng v��t �i <color=yellow>th� %s<color>.",teamname,npcway)
		--	if npcway == 8 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "B� C�",tbProp={6,1,4415,1,1,0},nCount=2},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "D�y Th�ng",tbProp={6,1,4416,1,1,0},nCount=2},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName="T�n V�t Vi�m ��",tbProp={6,1,4422,1,1,0},nCount=1,nBindState=-2},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=1},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "T�i Qu� S� Ki�n",tbProp={6,1,30324,1,0,0},nCount=100},}, "test", 1);
		--	Msg2SubWorld("Ch�c m�ng t� ��i <color=yellow>"..teamname.."<color> �� v��t �i <color=yellow>8<color> vi�m �� , thu ���c ph�n th��ng <color=red>2 D�y Th�ng + 2 B� C� + 1 T�n V�t Vi�m �� + 1xu<color>.")
	--	end
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
local _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=42><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Vi�m ��<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end