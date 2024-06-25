-------------------------------------------------------------------------
-- FileName		:	logout.lua
-- Author		:	lailigao
-- CreateTime	:	2005-04-06 23:17:18
-- Desc			:	Íæ¼ÒµÇ³ö½Å±¾(ÔÚÍË³öÓÎÏ·»ò¿ç·þÇ°µ÷ÓÃ)
-------------------------------------------------------------------------
CP_TASKID_LOGOUT = 1094		--ÎäÁÖ´ó»áÔ¤Ñ¡Èü 0: ÒÑ±£´æÏà¹ØÈÎÎñ±äÁ¿£» 1£ºÎ´±£´æ

Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")
Include("\\script\\task\\tollgate\\messenger\\messenger_lievegame.lua")
Include("\\script\\event\\storm\\logout.lua")	--Storm
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\logout_head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\logout_nguyet_ca.lua")
Include("\\script\\rank\\xephang.lua")
Include("\\script\\rank\\vngtop10.lua")
Include("\\script\\rank\\vngglobalvar.lua")
IncludeLib("RELAYLADDER");
IncludeLib("FILESYS")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\lib\\remoteexc.lua")

function setonline()
nServer = GetExtPoint(2)
--Msg2Player(nServer)
if nServer < 2 then
AddExtPoint(2,2)
end
end


function main()
if GetTask(5566) > 0 then
SetTask(5566,0)
RemoteExc("\\script\\hwid_s3\\hwid_s3.lua", "hwid_s3:Remove_Count", {GetName()})
end

--setonline()
--DynamicExecuteByPlayer(PlayerIndex, "\\script\\worldrank\\xephang.lua", "XepHang") -- xep hang luu xuong
tbTop10:LuuDSNhanVat()
tbTop10:SapXepDSXepHang()
XepHang()
if GetTaskTemp(150) == 1 then	---- set lai cho nguyet ca dao--
SetDeathScript("")
RestoreOwnFeature()
ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
SetFightState(0)
	LeaveTeam()
	SetPunish(1);	-- khong len pk
	SetPKFlag(0)	-- chuyen pk chien dau
	ForbidChangePK(0);	-- khong duoc doi pk
	SetTaskTemp(150,0)
logout_ncd()
end


	if GetTask(5859) > 0 then
	AddTieuBang1()
	SetTask(5859,0)
	DisabledUseTownP(0);
	RestoreOwnFeature();
	Msg2SubWorld("<color=white>Tiªu Bang Cña Bang Chñ §· Out Game, Tiªu Bang SÏ  XuÊt HiÖn Sau Ýt Phót N÷a.")	
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

-- ¿ç·þ½Å±¾
function RemoveExchange()
	for i = 1, getn(TB_EXCHANGE_FILEFUN) do
		local reg = TB_EXCHANGE_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end
	PlayerList:DelPlayer(PlayerIndex)
end






