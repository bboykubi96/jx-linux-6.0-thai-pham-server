-------------------------------------------------------------------------
-- FileName		:	logout.lua
-- Author		:	lailigao
-- CreateTime	:	2005-04-06 23:17:18
-- Desc			:	Íæ¼ÒµÇ³ö½Å±¾(ÔÚÍË³öÓÎÏ·»ò¿ç·þÇ°µ÷ÓÃ)
-------------------------------------------------------------------------
CP_TASKID_LOGOUT = 1094		--ÎäÁÖ´ó»áÔ¤Ñ¡Èü 0: ÒÑ±£´æÏà¹ØÈÎÎñ±äÁ¿£» 1£ºÎ´±£´æ

Include("\\script\\task\\tollgate\\messenger\\messenger_lievegame.lua")
Include("\\script\\event\\storm\\logout.lua")	--Storm
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\logout_head.lua")
--Include("\\script\\t9team\\t9_hwid_head.lua")
--Include("\\script\\miniskill\\init_miniskill.lua")

Include("\\script\\global\\g7vn\\limitaccountperip.lua");
Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")

function main()
	--del_timer_mns()
dofile("script/global/logout.lua")
	LimitAccountPerIP:Logout()
--	dologouttk()
	if GetTask(5859) > 0 then
			local nHour = tonumber(GetLocalDate("%H%M"))
		if nHour >= 2000 and nHour <= 2030 then
	AddTieuBang()
	end
	SetTask(5859,0)
	DisabledUseTownP(0);
	RestoreOwnFeature();
	Msg2SubWorld("<color=yellow>Bang Chñ "..GetName().." §· Out Game, Tiªu Bang Héi SÏ  XuÊt HiÖn ë §iÓm XuÊt Ph¸t.")	
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
	

	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	if ( nMapId == 325 ) or ( nMapId == 977 ) or ( nMapId == 380 ) or ( nMapId == 900 ) then
	--	player2hwidout()
	end

	storm_logout()	--Storm
	PlayerList:DelPlayer(PlayerIndex)
end

-- ¿ç·þ½Å±¾
function RemoveExchange()
	for i = 1, getn(TB_EXCHANGE_FILEFUN) do
		local reg = TB_EXCHANGE_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end
	PlayerList:DelPlayer(PlayerIndex)
end



