-------------------------------------------------------------------------
-- FileName		:	logout.lua
-- Author		:	lailigao
-- CreateTime	:	2005-04-06 23:17:18
-- Desc			:	��ҵǳ��ű�(���˳���Ϸ����ǰ����)
-------------------------------------------------------------------------
CP_TASKID_LOGOUT = 1094		--���ִ��Ԥѡ�� 0: �ѱ��������������� 1��δ����

Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")
Include("\\script\\task\\tollgate\\messenger\\messenger_lievegame.lua")
Include("\\script\\event\\storm\\logout.lua")	--Storm
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\logout_head.lua")
--Include("\\script\\t9team\\t9_hwid_head.lua")
Include("\\script\\miniskill\\init_miniskill.lua")

Include("\\script\\global\\g7vn\\limitaccountperip.lua");
Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")

function main()
	del_timer_mns()
dofile("script/global/logout.lua")
	LimitAccountPerIP:Logout()
--	dologouttk()
	if GetTask(5859) > 0 then
	AddTieuBang1()
	SetTask(5859,0)
	DisabledUseTownP(0);
	RestoreOwnFeature();
	Msg2SubWorld("<color=white>Ti�u Bang C�a Bang Ch� �� Out Game, Ti�u Bang S�  Xu�t Hi�n Sau �t Ph�t N�a.")	
	end
	
	if IsIPBonus() == 1 then
		IpBonus_Close()
	end;
	SetTask(CP_TASKID_LOGOUT, 0)
	
	for i = 1, getn(TB_LOGOUT_FILEFUN) do
		local reg = TB_LOGOUT_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end

	local MapId = SubWorldIdx2ID( SubWorld )
	if ( MapId >= 387  and MapId <= 395) then
		messenger_livegame()
	end
	local MapId = SubWorldIdx2ID( SubWorld )
	local nSilverCount = CalcEquiproomItemCount(4,417,1,-1)
	if (MapId == 865) then
	ConsumeEquiproomItem(nSilverCount,4,417,1,-1)
	end
	

	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	

	storm_logout()	--Storm
	PlayerList:DelPlayer(PlayerIndex)
end

-- ����ű�
function RemoveExchange()
	for i = 1, getn(TB_EXCHANGE_FILEFUN) do
		local reg = TB_EXCHANGE_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end
	PlayerList:DelPlayer(PlayerIndex)
end






