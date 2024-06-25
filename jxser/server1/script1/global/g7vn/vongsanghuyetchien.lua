Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--ªª»°––œ¿¡Ó≥ˆ¥Ì - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
--Include("\\script\\thoren\\danglong_config.lua")
--Include("\\script\\thoren\\tinhsuong_config.lua")
--Include("\\script\\thoren\\hoason_config.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("TASKSYS");
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/vongsanghuyetchien.lua")
	--do Say("Vﬂng s∏ng huy’t chi’n v…n ch≠a mÎ. Xin quay lπi sau 3 ngµy n˜a") return end
local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	--tbDailog.szTitleMsg = "<#><npc> N¨i nµy Æ“u lµ k˙ tr©n dﬁ b∂o! ßπi hi÷p c«n g◊!?"
	if GetAccount()=="testgame4"   then
	tbDailog:AddOptEntry("Ki”m tra Æi”m Huy’t Chi’n.", checkdiem);
	tbDailog:AddOptEntry("K›ch hoπt vﬂng s∏ng Huy’t Chi’n.", tbvongsang);

	end
	tbDailog:Show()
end

function checkdiem()
	Say("ßi”m Huy’t Chi’n hi÷n tπi cÒa Bπn lµ: <color=red>"..GetTask(3002).."<color> Æi”m")
end

function tbvongsang()

	local tbOpt =
	{
		{"Vﬂng s∏ng th≠¨ng hÂng", vsth},	
		{"Vﬂng s∏ng Lang hπo", vslh},
		{"Vﬂng s∏ng Tri÷u m∑nh", vstm},
		{"Tho∏t.",no},
	}
	CreateNewSayEx("<npc> Ng≠¨i muËn mua vﬂng nµo?", tbOpt)
end
function vsth()
	local th = GetSkillState(1640)
	local lh = GetSkillState(1641)
	local tm = GetSkillState(1642)
	local n_title = 249
	local ntime=18*60*60*24*14
	if th >=1 then
		Say("C∏c hπ Æ∑ c„ Vﬂng S∏ng Th≠¨ng HÂng rÂi")
		return
	else if lh >= 1 then
		Say("C∏c hπ Æ∑ c„ Vﬂng S∏ng Lang Hπo rÂi")
		return
	else if tm >= 1 then
		Say("C∏c hπ Æ∑ c„ Vﬂng S∏ng Tri÷u M∑nh rÂi")
		return
	end
	end
	end
	if(GetTask(3002)<70000) then
		Say("C∏c hπ kh´ng ÆÒ 70.000 Æi”m Huy’t Chi’n.")
		return
	end
	if(CalcEquiproomItemCount(6, 1, 4416, -1) <1) then
		Say("Hµnh trang c«n c„ 1 Th≠¨ng HÂng Thi™n Thπch.")
	end
	ConsumeEquiproomItem(1, 6, 1, 4416, -1)
	--Title_AddTitle(n_title, 2, ntime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1640,20,3,ntime,1)
	SetTask(3002,GetTask(3002)-70000)
	Msg2Player("ß∑ nhÀn thµnh c´ng Vﬂng S∏ng Th≠¨ng HÂng." )
	Msg2SubWorld("<color=green> ChÛc mıng  <color=red>"..GetName().." <color=green> Æ∑ nhÀn thµnh c´ng <color=yellow>Vﬂng S∏ng Th≠¨ng HÂng.")
end
function vslh()
	local lh = GetSkillState(1641)
	local tm = GetSkillState(1642)
	local n_title = 191
	local ntime=18*60*60*24*14
	if lh >= 1 then
		Say("C∏c hπ Æ∑ c„ Vﬂng S∏ng Lang Hπo rÂi")
		return
	else if tm >= 1 then
		Say("C∏c hπ Æ∑ c„ Vﬂng S∏ng Tri÷u M∑nh rÂi")
		return
	end
	end
	if(GetTask(3002)<150000) then
		Say("C∏c hπ kh´ng ÆÒ 150.000 Æi”m Huy’t Chi’n.")
		return
	end
	if(CalcEquiproomItemCount(6, 1, 4417, -1) <1) then
		Say("Hµnh trang c«n c„ 1 Lang Hπo Thi™n Thπch.")
	end
	RemoveSkillState(1640,20,3,559872000,1) 
		
	ConsumeEquiproomItem(1, 6, 1, 4417, -1)
	--Title_AddTitle(n_title, 2, ntime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1641,20,3,ntime,1)
	SetTask(3002,GetTask(3002)-150000)
	Msg2Player("ß∑ nhÀn thµnh c´ng Vﬂng S∏ng Lang Hπo." )
	Msg2SubWorld("<color=green> ChÛc mıng  <color=red>"..GetName().." <color=green> Æ∑ nhÀn thµnh c´ng <color=yellow>Vﬂng S∏ng Lang Hπo.")
end
function vstm()
	local tm = GetSkillState(1642)
	local n_title = 247
	local ntime=18*60*60*24*14
	if tm >= 1 then
		Say("C∏c hπ Æ∑ c„ Vﬂng S∏ng Tri÷u M∑nh rÂi")
		return
	end
	if(GetTask(3002)<320000) then
		Say("C∏c hπ kh´ng ÆÒ 320.000 Æi”m Huy’t Chi’n.")
		return
	end
	if(CalcEquiproomItemCount(6, 1, 4418, -1) <1) then
		Say("Hµnh trang c«n c„ 1 Tri÷u M∑nh Thi™n Thπch.")
	end
	RemoveSkillState(1640,20,3,559872000,1)
	RemoveSkillState(1641,20,3,559872000,1) 	
	ConsumeEquiproomItem(1, 6, 1, 4418, -1)
	--Title_AddTitle(n_title, 2, ntime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1642,20,3,ntime,1)
	SetTask(3002,GetTask(3002)-320000)
	Msg2Player("ß∑ nhÀn thµnh c´ng Vﬂng S∏ng Tri÷u M∑nh." )
	Msg2SubWorld("<color=green> ChÛc mıng  <color=red>"..GetName().." <color=green> Æ∑ nhÀn thµnh c´ng <color=yellow>Vﬂng S∏ng Tri÷u M∑nh.")
end