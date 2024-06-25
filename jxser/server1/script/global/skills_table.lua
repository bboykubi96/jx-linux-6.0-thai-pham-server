-----------------------------------------------------Quess NhiÖm Vô Ph¸i---------------------------------------------
function check_update()  
	if (GetTask(137) >= 20 or GetTripMode() == 2) then 
		return 0 
	else 
		SetTask(57,GetGameTime())
		rollback_prop()
		skills_update() 
		UpdateSkill() 
		return 1 
	end
end
--------------------------------------------------------------------------------------------------------------------------------------
function rollback_prop()
	local base_str = {35,20,25,30,20}			
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
	rollback_Skill()
end
--------------------------------------------------------------------------------------
function rollback_Skill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local h = HaveMagic(732)		
	local k = HaveMagic(733)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
function skills_update()
	Player_Faction = check_faction() 
	if (Player_Faction == 3) then --Thien Vuong
		update_tw() 
	elseif (Player_Faction == 7) then --ThiÕu l©m 
		update_sl() 
	elseif (Player_Faction == 2) then --§­êng m«n 
		update_tm() 
	elseif (Player_Faction == 10) then --Ngò ®éc 
		update_wu() 
	elseif (Player_Faction == 1) then --Nga Mi 
		update_em() 
	elseif (Player_Faction == 6) then --thóy yªn 
		update_cy() 
	elseif (Player_Faction == 4) then --thiªn nhÉn 
		update_tr() 
	elseif (Player_Faction == 8) then --C¸i Bang 
		update_gb() 
	elseif (Player_Faction == 5) then --Vâ §­¬ng 
		update_wd() 
	elseif (Player_Faction == 9) then --C«n L«n 
		update_kl() 
	elseif (Player_Faction == 11) then --Hoa S¬n
		update_hs() 
	else
		SetTask(137,20) 
		return 1 
	end 
	Msg2Player("Kü n¨ng ®æi míi ®· hoµn thµnh , xin chó ý lÇn n÷a v× c¸c kü n¨ng ph©n phèi kü n¨ng ®iÓm . ") 
	xMagic = 0 
	if HaveMagic(397) >= 0 then
		xMagic = HaveMagic(397) 
	end 
	MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) + GetTask(700) - GetMagicPoint() - xMagic - 1
	Ttask21 = GetTaskTemp(21) 
	if (Ttask21 ~= MagicPoint_total + GetMagicPoint()) then end
	AddMagicPoint(MagicPoint_total) 
	SetTaskTemp(20,0) 
	SetTaskTemp(21,0) 
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function check_faction() 
	if (GetTask(7) >= 10*256) and (GetTask(7) ~= 75*256) then --ThiÕu L©m hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,7) 
		SetLastFactionNumber(0) 
		return 7 
	elseif (GetTask(3) >= 10*256) and (GetTask(3) ~= 75*256) then --Thiªn v­¬ng hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,3) 
		SetLastFactionNumber(1) 
		return 3 
	elseif (GetTask(10) >= 10*256) and (GetTask(10) ~= 75*256) then --ngò ®éc hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,10) 
		SetLastFactionNumber(3) 
		return 10 
	elseif (GetTask(2) >= 10*256) and (GetTask(2) ~= 75*256) then --§­êng m«n hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,2) 
		SetLastFactionNumber(2) 
		return 2 
	elseif (GetTask(6) >= 10*256) and (GetTask(6) ~= 75*256) then --thóy yªn hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,6) 
		SetLastFactionNumber(5) 
		return 6 
	elseif (GetTask(1) >= 10*256) and (GetTask(1) ~= 75*256) then --Nga Mi hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,1) 
		SetLastFactionNumber(4) 
		return 1 
	elseif (GetTask(8) >= 10*256) and (GetTask(8) ~= 75*256) then --C¸i Bang hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,8) 
		SetLastFactionNumber(6) 
		return 8 
	elseif (GetTask(4) >= 10*256) and (GetTask(4) ~= 75*256) then --thiªn nhÉn hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,4) 
		SetLastFactionNumber(7) 
		return 4 
	elseif (GetTask(9) >= 10*256) and (GetTask(9) ~= 75*256) then --C«n L«n hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,9) 
		SetLastFactionNumber(9) 
		return 9 

	elseif (GetTask(11) >= 10*256) and (GetTask(9) ~= 75*256) then --Hoa S¬n hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,11) 
		SetLastFactionNumber(10) 
		return 11 

	elseif (GetTask(5) >= 10*256) and (GetTask(5) ~= 75*256) then --Vâ §­¬ng hoÆc m«n ph¸i nµy xuÊt s­ 
		SetTask(137,5) 
		SetLastFactionNumber(8) 
		return 5 
	else
		SetLastFactionNumber(-1) 
		return 20 
	end 
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function add_misc(lvl)
	if (GetBit(lvl,1) == 1) and (HaveMagic(210) == -1) then --khinh c«ng 
		AddMagic(210,1) 
	end 
	if (GetBit(lvl,2) == 1) and (HaveMagic(400) == -1) then
		AddMagic(400,1) 
	end 
	if (GetBit(lvl,3) == 1) and (HaveMagic(397) == -1) then
		AddMagic(397) 
	end 
end
------------------------------------------------------------------------------------------------------------------------------
function update_tw()
	UTask = GetTask(3) 
	if (GetTask(121) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(42) >= 0) and (GetTask(3) >= 70*256) and (GetTask(3) ~= 75*256) and (GetLevel() >= 60) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_tw(the_lvl)
	SetTask(137,23) 
end 

function update_gb()
	UTask = GetTask(8) 
	if (GetTask(128) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(128) >= 0) and (GetTask(8) >= 70*256) and (GetTask(8) ~= 75*256) and (GetLevel() >= 60) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_gb(the_lvl)
	SetTask(137,28) 
end 

function update_wd()
	UTask = GetTask(5) 
	if (GetTask(129) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(166) >= 0) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_wd(the_lvl)
	SetTask(137,25) 
end 

function update_em()
	UTask = GetTask(1) 
	if (GetTask(125) == 255) then


		the_lvl = 90 
	elseif (HaveMagic(252) >= 0) then 
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end
	del_all_skill() 
	add_em(the_lvl)
	SetTask(137,21) 
end 

function update_sl()
	UTask = GetTask(7) 
	if (GetTask(122) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(21) >= 0) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_sl(the_lvl)
	SetTask(137,27) 
end 

function update_wu()
	UTask = GetTask(10) 
	if (GetTask(124) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(75) >= 0) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_wu(the_lvl)
	SetTask(137,30) 
end 

function update_cy()
	UTask = GetTask(6) 
	if (GetTask(126) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(111) >= 0) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_cy(the_lvl)
	SetTask(137,26) 
end 

function update_tm()
	UTask = GetTask(2) 
	if (GetTask(123) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(249) >= 0) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_tm(the_lvl)
	SetTask(137,22) 
end 

function update_tr() 
	UTask = GetTask(4) 
	if (GetTask(127) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(150) >= 0) then 
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_tr(the_lvl)
	SetTask(137,24) 
end 

function update_kl() 

	UTask = GetTask(9) 
	if (GetTask(130) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(182) >= 0) then 
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_kl(the_lvl) 
	SetTask(137,29) 
end 

function update_hs()
	UTask = GetTask(11) 
	if (GetTask(131) == 255) then
		the_lvl = 90 
	elseif (HaveMagic(1384) >= 0) then
		the_lvl = 70 
	elseif (UTask >= 60*256) then --®· hoµn thµnh 50 cÊp nhiÖm vô 
		the_lvl = 60 
	elseif (UTask >= 50*256) then --®· hoµn thµnh 40 cÊp nhiÖm vô 
		the_lvl = 50 
	elseif (UTask >= 40*256) then --®· hoµn thµnh 30 cÊp nhiÖm vô 
		the_lvl = 40 
	elseif (UTask >= 30*256) then --®· hoµn thµnh 20 cÊp nhiÖm vô 
		the_lvl = 30 
	elseif (UTask >= 20*256) then --®· hoµn thµnh 10 cÊp nhiÖm vô 
		the_lvl = 20 
	elseif (UTask >= 10*256) then --®· nhËp m«n 
		the_lvl = 10 
	end 
	del_all_skill() 
	add_hs(the_lvl)
	SetTask(137,33) 
end
---------------------------------------------------------------------Thien Vuong-------------------------------------------------------------------------------------------------------------------------
function add_tw(lvl)
	if (lvl >= 10) then
		if (HaveMagic(34) == -1) then AddMagic(34) end 
		if (HaveMagic(30) == -1) then AddMagic(30) end 
		if (HaveMagic(29) == -1) then AddMagic(29) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(26) == -1) then AddMagic(26) end 
		if (HaveMagic(23) == -1) then AddMagic(23) end 
		if (HaveMagic(24) == -1) then AddMagic(24) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(33) == -1) then AddMagic(33) end 
	end 

	if (lvl >= 40) then
		if (HaveMagic(37) == -1) then AddMagic(37) end 
		if (HaveMagic(35) == -1) then AddMagic(35) end 
		if (HaveMagic(31) == -1) then AddMagic(31) end 
	end 

	if (lvl >= 50) then
		if (HaveMagic(40) == -1) then AddMagic(40) end 
	end

	if (lvl >= 60) then
		if (HaveMagic(42) == -1) then AddMagic(42) end 
	end

	if (lvl >= 70) then
		if (HaveMagic(32) == -1) then AddMagic(32) end 
		if (HaveMagic(36) == -1) then AddMagic(36) end
		if (HaveMagic(41) == -1) then AddMagic(41) end
		if (HaveMagic(324) == -1) then AddMagic(324) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(322) == -1) then AddMagic(322,20) end
		if (HaveMagic(323) == -1) then AddMagic(323,20) end
		if (HaveMagic(325) == -1) then AddMagic(325,20) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(708) == -1) then AddMagic(708,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1058) == -1) then AddMagic(1058,20) end
		if (HaveMagic(1059) == -1) then AddMagic(1059,20) end 
		if (HaveMagic(1060) == -1) then AddMagic(1060,20) end
	end

	if (lvl >= 180) then
		if (HaveMagic(1221) == -1) then AddMagic(1221,20) end
	end
end
------------------------------------------------------------------------Thieu Lam-----------------------------------------------------------------------------------------------------------------
function add_sl(lvl)
	if (lvl >= 10) then
		if (HaveMagic(14) == -1) then AddMagic(14) end 
		if (HaveMagic(10) == -1) then AddMagic(10) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(8) == -1) then AddMagic(8) end 
		if (HaveMagic(4) == -1) then AddMagic(4) end 
		if (HaveMagic(6) == -1) then AddMagic(6) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(15) == -1) then AddMagic(15) end 
	end 

	if (lvl >= 40) then
		if (HaveMagic(16) == -1) then AddMagic(16) end 
	end 

	if (lvl >= 50) then
		if (HaveMagic(20) == -1) then AddMagic(20) end 
	end

	if (lvl >= 60) then
		if (HaveMagic(271) == -1) then AddMagic(271) end 
		if (HaveMagic(11) == -1) then AddMagic(11) end 
		if (HaveMagic(19) == -1) then AddMagic(19) end 
	end

	if (lvl >= 70) then
		if (HaveMagic(273) == -1) then AddMagic(273) end 
		if (HaveMagic(21) == -1) then AddMagic(21) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(318) == -1) then AddMagic(318,20) end
		if (HaveMagic(319) == -1) then AddMagic(319,20) end
		if (HaveMagic(321) == -1) then AddMagic(321,20) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(709) == -1) then AddMagic(709,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1058) == -1) then AddMagic(1055,20) end
		if (HaveMagic(1059) == -1) then AddMagic(1056,20) end 
		if (HaveMagic(1060) == -1) then AddMagic(1057,20) end
	end

	if (lvl >= 180) then
		if (HaveMagic(1220) == -1) then AddMagic(1220,20) end
	end
end 
---------------------------------------------------Duong Mon--------------------------------------------------------------------------------
function add_tm(lvl)
	if (lvl >= 10) then
		if (HaveMagic(45) == -1) then AddMagic(45) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(43) == -1) then AddMagic(43) end 
		if (HaveMagic(347) == -1) then AddMagic(347) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(303) == -1) then AddMagic(303) end 
	end 

	if (lvl >= 40) then
		if (HaveMagic(50) == -1) then AddMagic(50) end 
		if (HaveMagic(54) == -1) then AddMagic(54) end
		if (HaveMagic(47) == -1) then AddMagic(47) end
		if (HaveMagic(343) == -1) then AddMagic(343) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(345) == -1) then AddMagic(345) end 
	end

	if (lvl >= 60) then
		if (HaveMagic(349) == -1) then AddMagic(349) end  
	end

	if (lvl >= 70) then
		if (HaveMagic(249) == -1) then AddMagic(249) end 
		if (HaveMagic(48) == -1) then AddMagic(48) end
		if (HaveMagic(58) == -1) then AddMagic(58) end
		if (HaveMagic(341) == -1) then AddMagic(341) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(339) == -1) then AddMagic(339,20) end
		if (HaveMagic(302) == -1) then AddMagic(302,20) end
		if (HaveMagic(342) == -1) then AddMagic(342,20) end
		if (HaveMagic(351) == -1) then AddMagic(351) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(710) == -1) then AddMagic(710,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1069) == -1) then AddMagic(1069,20) end
		if (HaveMagic(1070) == -1) then AddMagic(1070,20) end 
		if (HaveMagic(1071) == -1) then AddMagic(1071,20) end
		if (HaveMagic(1110) == -1) then AddMagic(1110) end
	end

	if (lvl >= 180) then
		if (HaveMagic(1223) == -1) then AddMagic(1223,20) end
	end
end
-----------------------------------------------------------------------Ngu Doc------------------------------------------------------------------------------------------------------------------
function add_wu(lvl)
	if (lvl >= 10) then
		if (HaveMagic(63) == -1) then AddMagic(63) end 
		if (HaveMagic(65) == -1) then AddMagic(65) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(62) == -1) then AddMagic(62) end 
		if (HaveMagic(60) == -1) then AddMagic(60) end 
		if (HaveMagic(67) == -1) then AddMagic(67) end
	end

	if (lvl >= 30) then
		if (HaveMagic(70) == -1) then AddMagic(70) end 
		if (HaveMagic(66) == -1) then AddMagic(66) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(68) == -1) then AddMagic(68) end 
		if (HaveMagic(384) == -1) then AddMagic(384) end
		if (HaveMagic(64) == -1) then AddMagic(64) end
		if (HaveMagic(69) == -1) then AddMagic(69) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(356) == -1) then AddMagic(356) end 
		if (HaveMagic(73) == -1) then AddMagic(73) end
	end

	if (lvl >= 60) then
		if (HaveMagic(72) == -1) then AddMagic(72) end  
	end

	if (lvl >= 70) then
		if (HaveMagic(71) == -1) then AddMagic(71) end 
		if (HaveMagic(75) == -1) then AddMagic(75) end
		if (HaveMagic(74) == -1) then AddMagic(74) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(353) == -1) then AddMagic(353,20) end
		if (HaveMagic(355) == -1) then AddMagic(355,20) end
		if (HaveMagic(390) == -1) then AddMagic(390) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(711) == -1) then AddMagic(711,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1066) == -1) then AddMagic(1066,20) end
		if (HaveMagic(1067) == -1) then AddMagic(1067,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1222) == -1) then AddMagic(1222,20) end
	end
end
-------------------------------------------------------------------------Nga My---------------------------------------------------------------------------------------------------------
function add_em(lvl)
	if (lvl >= 10) then
		if (HaveMagic(85) == -1) then AddMagic(85) end 
		if (HaveMagic(80) == -1) then AddMagic(80) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(77) == -1) then AddMagic(77) end 
		if (HaveMagic(79) == -1) then AddMagic(79) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(93) == -1) then AddMagic(93) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(385) == -1) then AddMagic(385) end 
		if (HaveMagic(82) == -1) then AddMagic(82) end
		if (HaveMagic(89) == -1) then AddMagic(89) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(86) == -1) then AddMagic(86) end 
	end

	if (lvl >= 60) then
		if (HaveMagic(92) == -1) then AddMagic(92) end  
	end

	if (lvl >= 70) then
		if (HaveMagic(88) == -1) then AddMagic(88) end 
		if (HaveMagic(252) == -1) then AddMagic(252) end
		if (HaveMagic(91) == -1) then AddMagic(91) end
		if (HaveMagic(282) == -1) then AddMagic(282) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(328) == -1) then AddMagic(328,20) end
		if (HaveMagic(380) == -1) then AddMagic(380,20) end
		if (HaveMagic(332) == -1) then AddMagic(332) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(712) == -1) then AddMagic(712,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1061) == -1) then AddMagic(1061,20) end
		if (HaveMagic(1062) == -1) then AddMagic(1062,20) end 
		if (HaveMagic(1114) == -1) then AddMagic(1114,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1224) == -1) then AddMagic(1224,20) end
	end
end
-------------------------------------------------------------------------Thuy Yen------------------------------------------------------------------------------------------------------------------
function add_cy(lvl)
	if (lvl >= 10) then
		if (HaveMagic(99) == -1) then AddMagic(99) end 
		if (HaveMagic(102) == -1) then AddMagic(102) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(95) == -1) then AddMagic(95) end 
		if (HaveMagic(97) == -1) then AddMagic(97) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(269) == -1) then AddMagic(269) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(105) == -1) then AddMagic(105) end 
		if (HaveMagic(113) == -1) then AddMagic(113) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(100) == -1) then AddMagic(100) end 
	end

	if (lvl >= 60) then
		if (HaveMagic(109) == -1) then AddMagic(109) end  
	end

	if (lvl >= 70) then
		if (HaveMagic(108) == -1) then AddMagic(108) end 
		if (HaveMagic(114) == -1) then AddMagic(114) end
		if (HaveMagic(111) == -1) then AddMagic(111) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(336) == -1) then AddMagic(336,20) end
		if (HaveMagic(337) == -1) then AddMagic(337,20) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(713) == -1) then AddMagic(713,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1063) == -1) then AddMagic(1063,20) end
		if (HaveMagic(1065) == -1) then AddMagic(1065,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1225) == -1) then AddMagic(1225,20) end
	end
end

-----------------------------------------------------------------------------------Cai Bang------------------------------------------------------------------------------------------------------
function add_gb(lvl)
	if (lvl >= 10) then
		if (HaveMagic(122) == -1) then AddMagic(122) end 

		if (HaveMagic(119) == -1) then AddMagic(119) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(116) == -1) then AddMagic(116) end 
		if (HaveMagic(115) == -1) then AddMagic(115) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(129) == -1) then AddMagic(129) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(274) == -1) then AddMagic(274) end 
		if (HaveMagic(124) == -1) then AddMagic(124) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(277) == -1) then AddMagic(277) end 
	end

	if (lvl >= 60) then
		if (HaveMagic(128) == -1) then AddMagic(128) end 
		if (HaveMagic(125) == -1) then AddMagic(125) end  
	end

	if (lvl >= 70) then
		if (HaveMagic(130) == -1) then AddMagic(130) end 
		if (HaveMagic(360) == -1) then AddMagic(360) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(357) == -1) then AddMagic(357,20) end
		if (HaveMagic(359) == -1) then AddMagic(359,20) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(714) == -1) then AddMagic(714,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1073) == -1) then AddMagic(1073,20) end
		if (HaveMagic(1074) == -1) then AddMagic(1074,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1227) == -1) then AddMagic(1227,20) end
	end
end
--------------------------------------------------------------------------Thien Nhan--------------------------------------------------------------------------------------------------------------
function add_tr(lvl)
	if (lvl >= 10) then
		if (HaveMagic(135) == -1) then AddMagic(135) end 
		if (HaveMagic(145) == -1) then AddMagic(145) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(132) == -1) then AddMagic(132) end 
		if (HaveMagic(131) == -1) then AddMagic(131) end
		if (HaveMagic(136) == -1) then AddMagic(136) end 
	end

	if (lvl >= 30) then
		if (HaveMagic(137) == -1) then AddMagic(137) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(141) == -1) then AddMagic(141) end 
		if (HaveMagic(138) == -1) then AddMagic(138) end
		if (HaveMagic(140) == -1) then AddMagic(140) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(364) == -1) then AddMagic(364) end 

	end

	if (lvl >= 60) then
		if (HaveMagic(143) == -1) then AddMagic(143) end   
	end

	if (lvl >= 70) then
		if (HaveMagic(142) == -1) then AddMagic(142) end 
		if (HaveMagic(150) == -1) then AddMagic(150) end
		if (HaveMagic(148) == -1) then AddMagic(148) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(361) == -1) then AddMagic(361,20) end
		if (HaveMagic(362) == -1) then AddMagic(362,20) end
		if (HaveMagic(391) == -1) then AddMagic(391) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(715) == -1) then AddMagic(715,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1075) == -1) then AddMagic(1075,20) end
		if (HaveMagic(1076) == -1) then AddMagic(1076,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1226) == -1) then AddMagic(1226,20) end
	end
end
---------------------------------------------------Vo Dang------------------------------------------------------------------------------------
function add_wd(lvl)
	if (lvl >= 10) then
		if (HaveMagic(153) == -1) then AddMagic(153) end 
		if (HaveMagic(155) == -1) then AddMagic(155) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(152) == -1) then AddMagic(152) end 
		if (HaveMagic(151) == -1) then AddMagic(151) end
	end

	if (lvl >= 30) then
		if (HaveMagic(159) == -1) then AddMagic(159) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(164) == -1) then AddMagic(164) end 
		if (HaveMagic(158) == -1) then AddMagic(158) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(160) == -1) then AddMagic(160) end 

	end

	if (lvl >= 60) then
		if (HaveMagic(157) == -1) then AddMagic(157) end   
	end

	if (lvl >= 70) then
		if (HaveMagic(165) == -1) then AddMagic(165) end 
		if (HaveMagic(166) == -1) then AddMagic(166) end
		if (HaveMagic(267) == -1) then AddMagic(267) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(365) == -1) then AddMagic(365,20) end
		if (HaveMagic(368) == -1) then AddMagic(368,20) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(716) == -1) then AddMagic(716,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1078) == -1) then AddMagic(1078,20) end
		if (HaveMagic(1079) == -1) then AddMagic(1079,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1228) == -1) then AddMagic(1228,20) end
	end
end
----------------------------------------------------------------------Con Lon--------------------------------------------------------------------------------------------------------------------------
function add_kl(lvl)
	if (lvl >= 10) then
		if (HaveMagic(169) == -1) then AddMagic(169) end 
		if (HaveMagic(179) == -1) then AddMagic(179) end 
	end
	if (lvl >= 20) then
		if (HaveMagic(167) == -1) then AddMagic(167) end 
		if (HaveMagic(168) == -1) then AddMagic(168) end
		if (HaveMagic(392) == -1) then AddMagic(392) end 
		if (HaveMagic(171) == -1) then AddMagic(171) end
	end

	if (lvl >= 30) then
		if (HaveMagic(174) == -1) then AddMagic(174) end  
	end 

	if (lvl >= 40) then
		if (HaveMagic(178) == -1) then AddMagic(178) end 
		if (HaveMagic(172) == -1) then AddMagic(172) end
		if (HaveMagic(393) == -1) then AddMagic(393) end 
		if (HaveMagic(173) == -1) then AddMagic(173) end
	end 

	if (lvl >= 50) then
		if (HaveMagic(175) == -1) then AddMagic(175) end 
		if (HaveMagic(181) == -1) then AddMagic(181) end 

	end

	if (lvl >= 60) then
		if (HaveMagic(176) == -1) then AddMagic(176) end   
		if (HaveMagic(90) == -1) then AddMagic(90) end 
	end

	if (lvl >= 70) then
		if (HaveMagic(275) == -1) then AddMagic(275) end 
		if (HaveMagic(182) == -1) then AddMagic(182) end
		if (HaveMagic(630) == -1) then AddMagic(630) end
	end
 
	if (lvl >= 90) then
		if (HaveMagic(372) == -1) then AddMagic(372,20) end
		if (HaveMagic(375) == -1) then AddMagic(375,20) end
		if (HaveMagic(394) == -1) then AddMagic(394) end
		if (HaveMagic(210) == -1) then AddMagic(210,1) end
	end

	if (lvl >= 120) then
		if (HaveMagic(717) == -1) then AddMagic(717,20) end
	end

	if (lvl >= 150) then
		if (HaveMagic(1080) == -1) then AddMagic(1080,20) end
		if (HaveMagic(1081) == -1) then AddMagic(1081,20) end 
	end

	if (lvl >= 180) then
		if (HaveMagic(1229) == -1) then AddMagic(1229,20) end
	end
end
-----------------------------------------------------------------------------------Hoa S¬n--------------------------------------------------------------------------------------------------------------
function add_hs(lvl)
	--if (lvl >= 10) then
	--	if (HaveMagic(1347) == -1) then AddMagic(1347) end 
	--	if (HaveMagic(1372) == -1) then AddMagic(1372) end 
	--end
	--if (lvl >= 20) then
	--	if (HaveMagic(1349) == -1) then AddMagic(1349) end 
	--	if (HaveMagic(1374) == -1) then AddMagic(1374) end
	--	if (HaveMagic(1350) == -1) then AddMagic(1350) end 
	--	if (HaveMagic(1375) == -1) then AddMagic(1375) end
	--end

	--if (lvl >= 30) then
	--	if (HaveMagic(1351) == -1) then AddMagic(1351) end  
	--end 

	--if (lvl >= 40) then
	--	if (HaveMagic(1376) == -1) then AddMagic(1376) end 
	--	if (HaveMagic(1354) == -1) then AddMagic(1354) end
	--end 

	--if (lvl >= 50) then
	--	if (HaveMagic(1355) == -1) then AddMagic(1355) end 
	--	if (HaveMagic(1379) == -1) then AddMagic(1379) end 

	--end

	--if (lvl >= 60) then
	--	if (HaveMagic(1358) == -1) then AddMagic(1358) end   
	--end

	--if (lvl >= 70) then
	--	if (HaveMagic(1360) == -1) then AddMagic(1360) end 
	--	if (HaveMagic(1378) == -1) then AddMagic(1378) end
	--	if (HaveMagic(1380) == -1) then AddMagic(1380) end
	--end
 
	--if (lvl >= 90) then
	--	if (HaveMagic(1364) == -1) then AddMagic(1364,20) end
	--	if (HaveMagic(1382) == -1) then AddMagic(1382,20) end
	--	if (HaveMagic(210) == -1) then AddMagic(210,1) end
	--end

	--if (lvl >= 120) then
	--	if (HaveMagic(1365) == -1) then AddMagic(1365,20) end
	--end

	--if (lvl >= 150) then
	--	if (HaveMagic(1369) == -1) then AddMagic(1369,20) end
	--	if (HaveMagic(1384) == -1) then AddMagic(1384,20) end 
	--end

	--if (lvl >= 180) then
	--	if (HaveMagic(1370) == -1) then AddMagic(1370,20) end
	--end
end
-----------------------------------------------------------------------------Vò Hån Ph¸i-------------------------------------------------------------------------------------------------------------------
function add_wumen(lvl)
	--if (lvl >= 10) then
	--	if (HaveMagic(1972) == -1) then AddMagic(1972) end
	--	if (HaveMagic(1974) == -1) then AddMagic(1974) end 
	--end
	--if (lvl >= 20) then
	--	if (HaveMagic(1964) == -1) then AddMagic(1964) end
	--	if (HaveMagic(1975) == -1) then AddMagic(1975) end 
	--	if (HaveMagic(1976) == -1) then AddMagic(1976) end 
	--end

	--if (lvl >= 30) then
	--	if (HaveMagic(1965) == -1) then AddMagic(1965) end
	--	if (HaveMagic(1977) == -1) then AddMagic(1977) end 
	--end 

	--if (lvl >= 40) then
	--	if (HaveMagic(1963) == -1) then AddMagic(1963) end 
	--	if (HaveMagic(1979) == -1) then AddMagic(1979) end
	--end 

	--if (lvl >= 50) then
	--	if (HaveMagic(1980) == -1) then AddMagic(1980) end  

	--end

	--if (lvl >= 60) then
	--	if (HaveMagic(1982) == -1) then AddMagic(1982) end
	--end

	--if (lvl >= 70) then
	--	if (HaveMagic(1971) == -1) then AddMagic(1971) end
	--	if (HaveMagic(1981) == -1) then AddMagic(1981) end
	--end
 
	--if (lvl >= 90) then
	--	if (HaveMagic(1967) == -1) then AddMagic(1967,20) end
	--	if (HaveMagic(1983) == -1) then AddMagic(1983,20) end
	--	if (HaveMagic(210) == -1) then AddMagic(210,1) end
	--end

	--if (lvl >= 120) then
	--	if (HaveMagic(1984) == -1) then AddMagic(1984,20) end
	--end

	--if (lvl >= 150) then
	--	if (HaveMagic(1969) == -1) then AddMagic(1969,20) end
	--	if (HaveMagic(1985) == -1) then AddMagic(1985,20) end
	--end

	--if (lvl >= 180) then
	--	if (HaveMagic(1986) == -1) then AddMagic(1986,20) end
	--end
end
----------------------------------------------------------------------------Xoa Skill----------------------------------------------------------------------------------------------------------------------
function del_all_skill()
i = HaveMagic(210)
j = HaveMagic(400)
n = RollbackSkill()
x = 0 
if (i ~= -1) then x = x + i end
if (j ~= -1) then x = x + j end
SetTaskTemp(21,n + GetMagicPoint() - x)
if (i ~= -1) then AddMagic(210,i) end
if (j ~= -1) then AddMagic(400,j) end
--Thien Vuong
DelMagic(29)
DelMagic(23) 
DelMagic(24) 
DelMagic(26) 
DelMagic(30) 
DelMagic(31) 
DelMagic(32) 
DelMagic(33) 
DelMagic(34) 
DelMagic(35) 
DelMagic(36) 
DelMagic(37) 
DelMagic(38) 
DelMagic(40) 
DelMagic(41) 
DelMagic(42) 
DelMagic(324) 
DelMagic(322)
DelMagic(323)
DelMagic(325)
DelMagic(708)
DelMagic(1058)
DelMagic(1059)
DelMagic(1060)

--Thieu Lam
DelMagic(10)
DelMagic(3) 
DelMagic(4) 
DelMagic(5) 
DelMagic(6) 
DelMagic(7) 
DelMagic(8) 
DelMagic(9) 
DelMagic(12) 
DelMagic(14) 
DelMagic(13) 
DelMagic(15) 
DelMagic(271) 
DelMagic(16) 
DelMagic(18) 
DelMagic(20) 
DelMagic(11) 
DelMagic(19) 
DelMagic(21) 
DelMagic(273) 
DelMagic(318) 
DelMagic(319) 
DelMagic(321)
DelMagic(709)
DelMagic(1055)
DelMagic(1056)
DelMagic(1057)

---Duong Mon--
DelMagic(45)
DelMagic(43) 
DelMagic(347) 
DelMagic(303) 
DelMagic(44) 
DelMagic(47) 
DelMagic(48) 
DelMagic(50) 
DelMagic(51) 
DelMagic(54) 
DelMagic(343) 
DelMagic(345) 
DelMagic(349) 
DelMagic(55) 
DelMagic(57) 
DelMagic(58) 
DelMagic(249) 
DelMagic(253) 
DelMagic(341) 
DelMagic(339) 
DelMagic(302) 
DelMagic(342)
DelMagic(710)
DelMagic(1069)
DelMagic(1070)
DelMagic(1071)
DelMagic(1110)
if (HaveMagic(351) ~= -1) then 
SetTaskTemp(20,351) 
DelMagic(351) 
end

---Ngu Doc----------
DelMagic(63)
DelMagic(60) 
DelMagic(61) 
DelMagic(62) 
DelMagic(64) 
DelMagic(65) 
DelMagic(66) 
DelMagic(67) 
DelMagic(68) 
DelMagic(384) 
DelMagic(69) 
DelMagic(356) 
DelMagic(70) 
DelMagic(72) 
DelMagic(73) 
DelMagic(74) 
DelMagic(76) 
DelMagic(71) 
DelMagic(75) 
DelMagic(353) 
DelMagic(355)
DelMagic(711)
DelMagic(1066)
DelMagic(1067)
if (HaveMagic(390) ~= -1) then 
SetTaskTemp(20,390) 
DelMagic(390) 
end 

----Nga My-----------
DelMagic(80) 
DelMagic(101) 
DelMagic(77) 
DelMagic(79) 
DelMagic(385) 
DelMagic(81) 
DelMagic(82) 
DelMagic(83) 
DelMagic(84) 
DelMagic(85) 
DelMagic(86) 
DelMagic(87) 
DelMagic(88) 
DelMagic(89) 
DelMagic(91) 
DelMagic(93) 
DelMagic(252) 
DelMagic(92) 
DelMagic(282) 
DelMagic(328) 
DelMagic(380)
DelMagic(332)
DelMagic(712)
DelMagic(1061)
DelMagic(1062)
DelMagic(1114)
if (HaveMagic(332) ~= -1) then 
SetTaskTemp(20,332) 
DelMagic(332) 
end 

---Thuy Yen----
DelMagic(99)
DelMagic(95) 
DelMagic(96) 
DelMagic(97) 
DelMagic(100) 
DelMagic(102) 
DelMagic(103) 
DelMagic(269) 
DelMagic(105) 
DelMagic(109) 
DelMagic(270) 
DelMagic(108) 
DelMagic(113) 
DelMagic(111) 
DelMagic(114) 
DelMagic(336) 
DelMagic(337)
DelMagic(713)
DelMagic(1063)
DelMagic(1065)

---C¸i Bang-----
DelMagic(117) 
DelMagic(115) 
DelMagic(116) 
DelMagic(118) 
DelMagic(119) 
DelMagic(120) 
DelMagic(121) 
DelMagic(122) 
DelMagic(123) 
DelMagic(124) 
DelMagic(126) 
DelMagic(127) 
DelMagic(277) 
DelMagic(274) 
DelMagic(125) 
DelMagic(129) 
DelMagic(130) 
DelMagic(128) 
DelMagic(360) 
DelMagic(357) 
DelMagic(359)
DelMagic(714)
DelMagic(1073)
DelMagic(1074)

--Thien nhÉn---
DelMagic(135) 
DelMagic(131) 
DelMagic(132) 
DelMagic(134) 
DelMagic(136) 
DelMagic(137) 
DelMagic(138) 
DelMagic(139) 
DelMagic(140) 
DelMagic(364) 
DelMagic(141) 
DelMagic(142) 
DelMagic(143) 
DelMagic(145) 
DelMagic(146) 
DelMagic(147) 
DelMagic(148) 
DelMagic(149) 
DelMagic(150) 
DelMagic(254) 
DelMagic(361) 
DelMagic(362)
DelMagic(715)
DelMagic(1075)
DelMagic(1076)
if (HaveMagic(391) ~= -1) then 
SetTaskTemp(20,391) 
DelMagic(391) 
end 

----Vâ §­¬ng -----
DelMagic(153)
DelMagic(151) 
DelMagic(152) 
DelMagic(155) 
DelMagic(156) 
DelMagic(157) 
DelMagic(158) 
DelMagic(159) 
DelMagic(160) 
DelMagic(161) 
DelMagic(162) 
DelMagic(164) 
DelMagic(165) 
DelMagic(166) 
DelMagic(267) 
DelMagic(365) 
DelMagic(368)
DelMagic(716)
DelMagic(1078)
DelMagic(1079)

----C«n L«n --------
DelMagic(169) 
DelMagic(167) 
DelMagic(168) 
DelMagic(630) 
DelMagic(393)
DelMagic(392)
DelMagic(171) 
DelMagic(174) 
DelMagic(175) 
DelMagic(178) 
DelMagic(179)  
DelMagic(173) 
DelMagic(90) 
DelMagic(181) 
DelMagic(182) 
DelMagic(172) 
DelMagic(176)  
DelMagic(275) 
DelMagic(372) 
DelMagic(375)
DelMagic(717)
DelMagic(1080)
DelMagic(1081)
if (HaveMagic(394) ~= -1) then 
SetTaskTemp(20,394) 
DelMagic(394) 
end 

---Hoa Son----------
DelMagic(1347)
DelMagic(1372) 
DelMagic(1349) 
DelMagic(1374) 
DelMagic(1350) 
DelMagic(1375) 
DelMagic(1351) 
DelMagic(1376) 
DelMagic(1354) 
DelMagic(1378) 
DelMagic(1355) 
DelMagic(1379) 
DelMagic(1358) 
DelMagic(1360) 
DelMagic(1380) 
DelMagic(1364)
DelMagic(1382)
DelMagic(1365) 
DelMagic(1370) 
DelMagic(1368) 
DelMagic(1369)
DelMagic(1501)
DelMagic(1384)
DelMagic(1378)
if (HaveMagic(1384) ~= -1) then
SetTaskTemp(31,1384) 
DelMagic(1384) 
end

--Vu Hon--
for i = 1963,1986 do
DelMagic(i)
end

--Skill 180
DelMagic(1220)
DelMagic(1221)
DelMagic(1222)
DelMagic(1223)
DelMagic(1224)
DelMagic(1225)
DelMagic(1226)
DelMagic(1227)
DelMagic(1228)
DelMagic(1229)
DelMagic(1370)
DelMagic(1986)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------