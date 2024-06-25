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
--��ȡ��������� - modified by DinhHQ - 20110921
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
	--do Say("V�ng s�ng huy�t chi�n v�n ch�a m�. Xin quay l�i sau 3 ng�y n�a") return end
local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	--tbDailog.szTitleMsg = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
	if GetAccount()=="testgame4"   then
	tbDailog:AddOptEntry("Ki�m tra �i�m Huy�t Chi�n.", checkdiem);
	tbDailog:AddOptEntry("K�ch ho�t v�ng s�ng Huy�t Chi�n.", tbvongsang);

	end
	tbDailog:Show()
end

function checkdiem()
	Say("�i�m Huy�t Chi�n hi�n t�i c�a B�n l�: <color=red>"..GetTask(3002).."<color> �i�m")
end

function tbvongsang()

	local tbOpt =
	{
		{"V�ng s�ng th��ng h�ng", vsth},	
		{"V�ng s�ng Lang h�o", vslh},
		{"V�ng s�ng Tri�u m�nh", vstm},
		{"Tho�t.",no},
	}
	CreateNewSayEx("<npc> Ng��i mu�n mua v�ng n�o?", tbOpt)
end
function vsth()
	local th = GetSkillState(1640)
	local lh = GetSkillState(1641)
	local tm = GetSkillState(1642)
	local n_title = 249
	local ntime=18*60*60*24*14
	if th >=1 then
		Say("C�c h� �� c� V�ng S�ng Th��ng H�ng r�i")
		return
	else if lh >= 1 then
		Say("C�c h� �� c� V�ng S�ng Lang H�o r�i")
		return
	else if tm >= 1 then
		Say("C�c h� �� c� V�ng S�ng Tri�u M�nh r�i")
		return
	end
	end
	end
	if(GetTask(3002)<70000) then
		Say("C�c h� kh�ng �� 70.000 �i�m Huy�t Chi�n.")
		return
	end
	if(CalcEquiproomItemCount(6, 1, 4416, -1) <1) then
		Say("H�nh trang c�n c� 1 Th��ng H�ng Thi�n Th�ch.")
	end
	ConsumeEquiproomItem(1, 6, 1, 4416, -1)
	--Title_AddTitle(n_title, 2, ntime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1640,20,3,ntime,1)
	SetTask(3002,GetTask(3002)-70000)
	Msg2Player("�� nh�n th�nh c�ng V�ng S�ng Th��ng H�ng." )
	Msg2SubWorld("<color=green> Ch�c m�ng  <color=red>"..GetName().." <color=green> �� nh�n th�nh c�ng <color=yellow>V�ng S�ng Th��ng H�ng.")
end
function vslh()
	local lh = GetSkillState(1641)
	local tm = GetSkillState(1642)
	local n_title = 191
	local ntime=18*60*60*24*14
	if lh >= 1 then
		Say("C�c h� �� c� V�ng S�ng Lang H�o r�i")
		return
	else if tm >= 1 then
		Say("C�c h� �� c� V�ng S�ng Tri�u M�nh r�i")
		return
	end
	end
	if(GetTask(3002)<150000) then
		Say("C�c h� kh�ng �� 150.000 �i�m Huy�t Chi�n.")
		return
	end
	if(CalcEquiproomItemCount(6, 1, 4417, -1) <1) then
		Say("H�nh trang c�n c� 1 Lang H�o Thi�n Th�ch.")
	end
	RemoveSkillState(1640,20,3,559872000,1) 
		
	ConsumeEquiproomItem(1, 6, 1, 4417, -1)
	--Title_AddTitle(n_title, 2, ntime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1641,20,3,ntime,1)
	SetTask(3002,GetTask(3002)-150000)
	Msg2Player("�� nh�n th�nh c�ng V�ng S�ng Lang H�o." )
	Msg2SubWorld("<color=green> Ch�c m�ng  <color=red>"..GetName().." <color=green> �� nh�n th�nh c�ng <color=yellow>V�ng S�ng Lang H�o.")
end
function vstm()
	local tm = GetSkillState(1642)
	local n_title = 247
	local ntime=18*60*60*24*14
	if tm >= 1 then
		Say("C�c h� �� c� V�ng S�ng Tri�u M�nh r�i")
		return
	end
	if(GetTask(3002)<320000) then
		Say("C�c h� kh�ng �� 320.000 �i�m Huy�t Chi�n.")
		return
	end
	if(CalcEquiproomItemCount(6, 1, 4418, -1) <1) then
		Say("H�nh trang c�n c� 1 Tri�u M�nh Thi�n Th�ch.")
	end
	RemoveSkillState(1640,20,3,559872000,1)
	RemoveSkillState(1641,20,3,559872000,1) 	
	ConsumeEquiproomItem(1, 6, 1, 4418, -1)
	--Title_AddTitle(n_title, 2, ntime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1642,20,3,ntime,1)
	SetTask(3002,GetTask(3002)-320000)
	Msg2Player("�� nh�n th�nh c�ng V�ng S�ng Tri�u M�nh." )
	Msg2SubWorld("<color=green> Ch�c m�ng  <color=red>"..GetName().." <color=green> �� nh�n th�nh c�ng <color=yellow>V�ng S�ng Tri�u M�nh.")
end