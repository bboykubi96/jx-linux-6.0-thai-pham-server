Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\activitysys\\config\\32\\talkdailytask.lua")

function OnTimer()
	t = GetMissionV(MS_TIMEACC_20SEC) + 1
	SetMissionV(MS_TIMEACC_20SEC, t)
	local npcindex
	if (t == ENDSIGN_TIME) then		--����ʱ�����������
		RunMission(MISSIONID)
		Msg2MSAll(MISSIONID, "Thuy�n �i r�i! 30 ph�t sau s� ��n b� B�c Phong L�ng ��.")
		
		-- �ճ�����ˢ�¶Ի�NPC
		%tbTalkDailyTask:AddTalkNpc(SubWorldIdx2ID(SubWorld), SubWorldIdx2ID(SubWorld));
	end
	
	if (mod(t, 3) == 0) then				--ÿ���Ӽ���
		SetMissionV(MS_TIMEACC_1MIN, GetMissionV(MS_TIMEACC_1MIN) + 1)
	end
	
	if (t < ENDSIGN_TIME and mod(t, 9) == 0) then
		local bf_mint = 10 - GetMissionV(MS_TIMEACC_1MIN)
		Msg2MSAll(MISSIONID, "c�n "..bf_mint.." ph�t r�i b�n")
	end
	
	if (t >= ENDSIGN_TIME and mod(t, 15) == 0) then
		local mint = 39 - GetMissionV(MS_TIMEACC_1MIN)
		Msg2MSAll(MISSIONID, "c�n "..mint.." ph�t s� ��n b� B�c Phong L�ng ��")
	end
	
	if (t == REPORT_TIME) then
		local mint = 39 - GetMissionV(MS_TIMEACC_1MIN)
		Msg2MSAll(MISSIONID, "c�n "..mint.." ph�t s� ��n b� B�c Phong L�ng ��")
	end
	
	if (t == UPBOSS_TIME) then		-- 15����
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Th�y t�c ��u l�nh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		--Msg2MSAll(MISSIONID, "Th�y t�c ��u l�nh �� xu�t hi�n.")
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Th�y t�c ��u l�nh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		Msg2MSAll(MISSIONID, "Th�y t�c ��u l�nh �� xu�t hi�n.")
		local mapid = SubWorldIdx2ID(SubWorld)
		if (mapid == 337) then
		local hour = tonumber(date("%H"));
				if hour==23  then
				posx, posy = fld_getadata(npcthiefpos)
				npcindex = AddNpc(1692, 85, SubWorld, posx, posy, 1, "Th�y T�c ��i ��u L�nh", 1)
				SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeathdai.lua");
				Msg2MSAll(MISSIONID, "Th�y T�c ��i ��u L�nh xu�t hi�n r�i")
		end
		end
	end
	
	if (t == UPBOSS_TIME2) then		-- 20����
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Th�y t�c ��u l�nh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Th�y t�c ��u l�nh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		Msg2MSAll(MISSIONID, "Th�y t�c ��u l�nh �� xu�t hi�n.")
		local mapid = SubWorldIdx2ID(SubWorld)
		if (mapid == 337) then
		local hour = tonumber(date("%H"));
				if hour==23  then
				posx, posy = fld_getadata(npcthiefpos)
				npcindex = AddNpc(1692, 85, SubWorld, posx, posy, 1, "Th�y T�c ��i ��u L�nh", 1)
				SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeathdai.lua");
				Msg2MSAll(MISSIONID, "Th�y T�c ��i ��u L�nh xu�t hi�n r�i")
		end
		end
	end
	
	if (t == UPBOSS_TIME3) then
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Th�y t�c ��u l�nh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		posx, posy = fld_getadata(npcthiefpos)
		npcindex = AddNpc(725, 85, SubWorld, posx, posy, 1, "Th�y t�c ��u l�nh", 1)
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
		Msg2MSAll(MISSIONID, "Th�y t�c ��u l�nh �� xu�t hi�n.")
		local mapid = SubWorldIdx2ID(SubWorld)
		if (mapid == 337) then
		local hour = tonumber(date("%H"));
		if hour==23  then
				posx, posy = fld_getadata(npcthiefpos)
				npcindex = AddNpc(1692, 85, SubWorld, posx, posy, 1, "Th�y T�c ��i ��u L�nh", 1)
				SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeathdai.lua");
				Msg2MSAll(MISSIONID, "Th�y T�c ��i ��u L�nh xu�t hi�n r�i")
		end
		end
	end		
	
	-- ��Ծ��
	fld_addhuoyuedu(t)
end


function fld_addhuoyuedu(nPassedTime)
	local nMapId = SubWorldIdx2ID(SubWorld)
	if nMapId == boatMAPS[3] or nPassedTime ~= (ENDSIGN_TIME + HUOYUEDU_TIME) then
		return
	end
	
	local nIndex = 0
	local nPlayerIndex = 0
	local nCount = GetMSPlayerCount(MISSIONID, 0);
	for i=1, nCount do 
		nIndex, nPlayerIndex = GetNextPlayer(MISSIONID, nIndex, 0)
		if (nPlayerIndex > 0) then
			DynamicExecuteByPlayer(nPlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "fenglingdu")
 		end
		if (nIndex == 0) then
	 		break
	 	end
	end
end