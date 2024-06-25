Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function InitMission()
	for i = 1, 200 do 
		SetMissionV(i , 0);
	end
	worldid= SubWorldIdx2ID(SubWorld)
	ClearMapNpc(worldid)	
	ClearMapTrap(worldid) 
	ClearMapObj(worldid)
	StartMissionTimer(MISSIONID, 29, FLD_TIMER_1)		--20√Îº∆ ±
	StartMissionTimer(MISSIONID, 28, FLD_TIMER_2)		--»´≥°
end

function RunMission()
	for i=1, 30 do
		posx, posy = fld_getadata(npcthiefpos)
		local npcindex	= AddNpc(724, 95, SubWorld, posx, posy, 0, "ThÒy T∆c");
		--SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\shuizeideath.lua");
	end
	idx = 0
	for i = 1 , 200 do 
 		idx, pidx = GetNextPlayer(MISSIONID,idx, 0);

 		if (pidx > 0) then
   			PlayerIndex = pidx;
 		end
		--¥À ±Œ™GM∑¢≤º√¸¡Ó
		SetFightState(1)
		PutMessage("Thuy“n Æi rÂi! 30 phÛt sau sœ Æ’n bÍ Bæc Phong L®ng ßÈ.")
		if (idx == 0) then 
 			break
 		end 
 	end
 	JiluAttendCount()		--  ˝æ›¬Òµ„µ⁄“ª∆⁄
end

function JiluAttendCount()
	-- µ√µΩµ±«∞±®√˚µƒ»À ˝ 
 	local nCount = GetMSPlayerCount(MISSIONID, 0)
	local mapid = SubWorldIdx2ID(SubWorld)
	if (mapid == 337) then
		AddStatData("fld_chuan1canjiarenshu", nCount)
	elseif (mapid == 338) then
		AddStatData("fld_chuan2canjiarenshu", nCount)
	elseif (mapid == 339) then
		AddStatData("fld_chuan3canjiarenshu", nCount)
	end
end

function EndMission()
	StopMissionTimer(MISSIONID, 28)
	StopMissionTimer(MISSIONID ,29)
	Landing()
	for i = 1, 200 do 
		SetMissionV(i , 0);
	end
end

function OnLeave(RoleIndex)
	oldPlayerIndex = PlayerIndex
	PlayerIndex = RoleIndex
	Msg2MSAll(MISSIONID, GetName().."Bπn kh´ng may tˆ vong trong lÛc Æi thuy“n.")
	SetCreateTeam(1)
	ForbidEnmity(0);
--	SetTaskTemp(200,0);
	SetDeathScript("")
	SetFightState(0)		
	ForbidChangePK(0)
	SetPKFlag(0)
	PlayerIndex = oldPlayerIndex
end

function Landing()
	Msg2MSAll(MISSIONID, "Æ∑ Æ’n bÍ Bæc Phong L®ng ßÈ.")

	local nDate = tonumber(GetLocalDate("%Y%m%d"));		-- by bel µΩ∞∂“‘∫Û∑¢≥ˆ°∞œ˚√ÀÆ‘Ù°±ªÓ∂Øµƒ¡ÏΩ±π´∏Ê
	if (nDate >= jf0904_act_dateS and nDate < jf0904_act_dateE) then
		local szNews = "Quan phÒ vµ c∏c cao thÒ Æ∑ hoµn t t chi’n dﬁch ti™u di÷t ThÒy T∆c, h∑y nhanh ch„ng giao [Truy C´ng L÷nh] cho Thuy“n Phu Æ” nhÀn th≠Îng!";
		AddGlobalNews(szNews);
	end
	
	local tbPlayer = {}
	idx = 0
	for i = 1 , 200 do 
		idx, pidx = GetNextPlayer(MISSIONID,idx, 0)
		
		if (pidx > 0) then
   			tbPlayer[i] = pidx;
 		end
 		
		if (idx == 0) then 
	 		break
	 	end
	 	
	end
	
	worldid= SubWorldIdx2ID(SubWorld)
	
	G_ACTIVITY:OnMessage("FinishFengLingDu",tbPlayer);
	
 	for i= 1, getn(tbPlayer) do 
	 	PlayerIndex = tbPlayer[i]
		camp = GetCamp()
		SetCurCamp(camp)
		SetCreateTeam(1)
		SetDeathScript("")
--		SetTaskTemp(200, 0)
		ForbidEnmity(0);
			tbAward = 
			{
			--{szName="ßi”m Kinh Nghi÷m",nExp = 10000000},
		--	{szName="M∂nh Ph´i T›m",tbProp={4,1622,1,1},nCount=2},
		--		{szName="M∂nh Gh–p R≠¨ng An Bang",tbProp={4,1624,1,1},nCount=2},
			--			{szName="Tinh Ng‰c",tbProp={6,1,4409,1,1,0},nCount=3},
		{szName="L÷nh bµi g‰i boss",tbProp={6,1,4489,1,1,0},nCount=1},
		--	{szName="R≠¨ng ßÂ PhÊ HKMP",tbProp={6,1,4403,1,1,0},nCount=5,nRate=30},
			}
		--	Add120SkillExp(1000000)
	--Clear120SkillExpLimit ()
	local nhour = tonumber(GetLocalDate("%H"))
	if nhour==23  then
		local rnnnn=random(1,2)
		if rnnnn==1 then
	--	tbAwardTemplet:Give(tbAward, 1, {"DT", "test"})
		end
	end
	--	tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=5},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "Ruong manh thien thach",tbProp={6,1,4455,1,1,0},nCount=5},}, "test", 1);
			--local tbAward1= {
	--{szName="T›n VÀt Phong L®ng ßÈ",tbProp={6,1,4424,1,1,0},nCount=1,nBindState=-2},
	--		}
--	tbAwardTemplet:GiveAwardByList(tbAward1,"Ph«n th≠Îng hoµn thµnh Phong L®ng ßÈ")	
	
		if (check_new_shuizeitask() == 1) then
			--tbAwardTemplet:GiveAwardByList({tbProp={6,1,2743,1,0,0},}, "fenglingdu_shuizeicaibao", 2)
		end
		
		local mapid = SubWorldIdx2ID(SubWorld)
		if (mapid == 337) then
			SetLogoutRV(0)
			NewWorld(fld_landingpos(1))
			SetFightState(1)
			DisabledUseTownP(1) -- œﬁ÷∆∆‰Ω¯»Î∑Á¡Í∂…±±∞∂ π”√ªÿ≥«∑˚
			SetRevPos(175,1)	--…Ë∂®À¿Õˆ÷ÿ…˙µ„Œ™Œ˜…Ω¥Â
			SetProtectTime(18*3) --»uAÎ±£ª§ ±º‰
			AddSkillState(963, 1, 0, 18*3)
		elseif (mapid == 338) then
			SetLogoutRV(0)
			NewWorld(fld_landingpos(2))
			SetFightState(1)
			DisabledUseTownP(1) -- œﬁ÷∆∆‰Ω¯»Î∑Á¡Í∂…±±∞∂ π”√ªÿ≥«∑˚
			SetRevPos(175,1)	--…Ë∂®À¿Õˆ÷ÿ…˙µ„Œ™Œ˜…Ω¥Â
			SetProtectTime(18*3) --»uAÎ±£ª§ ±º‰
			AddSkillState(963, 1, 0, 18*3)
		elseif (mapid == 339) then
			SetLogoutRV(0)
			NewWorld(fld_landingpos(3))
			SetFightState(1)
			DisabledUseTownP(1) -- œﬁ÷∆∆‰Ω¯»Î∑Á¡Í∂…±±∞∂ π”√ªÿ≥«∑˚
			SetRevPos(175,1)	--…Ë∂®À¿Õˆ÷ÿ…˙µ„Œ™Œ˜…Ω¥Â
			SetProtectTime(18*3) --»uAÎ±£ª§ ±º‰
			AddSkillState(963, 1, 0, 18*3)
		else
			print("error:i don't know why")
		end
		
	end
	
	ClearMapNpc(worldid)	
	ClearMapTrap(worldid) 
	ClearMapObj(worldid)
end

