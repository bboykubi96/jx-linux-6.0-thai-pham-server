-- 宋金道具士兵之号角,召唤出己方NPC士兵2个
-- Liu Kuo
-- 2004.12.18
Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine()	-- 通过判断战场的等级和玩家的阵营来加NPC
	W, X, Y = GetWorldPos();
	if (GetFightState() == 0) then
		Say("Kh玭g th� s� d鬾g trong t譶h tr筺g phi chi課 u!", 0)
		return -1
	end;
	tbPK_MAP = {357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} -- 单挑地图禁止使用号角
	for j = 1, getn(tbPK_MAP) do
		if ( nMapId == tbPK_MAP[j] ) then
			Msg2Player("Trong khu v鵦 n u kh玭g th� s� d鬾g v藅 ph萴 n祔!");
			return -1
		end
	end

	for j = 1, getn(tbCD_MAP) do
		if ( nMapId == tbCD_MAP[j] ) then
			Msg2Player("V藅 ph萴 n祔 ch� c� th� s� d鬾g � Chi課 trng T鑞g Kim");
			return -1
		end
	end
	if (GetCurCamp() == 1) then
		if (GetMissionV(MS_CALLNPCCOUNT_S) >= MAX_CALLNPCCOUNT) then
			Msg2Player("Hi謓 t筰 s� lng hi謚 gi竎 Chi課 trng s� d鬾g  vt m鴆, kh玭g th� s� d鬾g ti誴 n鱝. ")
			return -1
		else
			SetMissionV(MS_CALLNPCCOUNT_S, GetMissionV(MS_CALLNPCCOUNT_S) + 1)
		end
	elseif (GetCurCamp() == 2) then
		if (GetMissionV(MS_CALLNPCCOUNT_J) >= MAX_CALLNPCCOUNT) then
			Msg2Player("Hi謓 t筰 s� lng hi謚 gi竎 Chi課 trng s� d鬾g  vt m鴆, kh玭g th� s� d鬾g ti誴 n鱝. ")
			return -1
		else
			SetMissionV(MS_CALLNPCCOUNT_J, GetMissionV(MS_CALLNPCCOUNT_J) + 1)		
		end
	end
	if ( GetLevel() >= 40 and GetLevel() <= 79) then	-- 初级战场
		if( GetCurCamp() == 1) then		-- 召唤和玩家同一阵营的NPC
			CallSjNpc( 682, 50, W, X, Y, " T鑞g binh");
		elseif( GetCurCamp() == 2) then
			CallSjNpc( 688, 50, W, X, Y, "Kim binh");
		end
	elseif ( GetLevel() >= 80 and GetLevel() <= 119) then	-- 中级战场
		if( GetCurCamp() == 1) then
			CallSjNpc( 682, 70, W, X, Y, " T鑞g binh");
		elseif( GetCurCamp() == 2) then
			CallSjNpc( 688, 70, W, X, Y, "Kim binh");
		end
	else	-- 高级战场
		if( GetCurCamp() == 1) then
			CallSjNpc( 682, 90, W, X, Y, " T鑞g binh");
		elseif( GetCurCamp() == 2) then
			CallSjNpc( 688, 90, W, X, Y, "Kim binh");
		end
	end
end	

function CallSjNpc(NpcId, NpcLevel, W, X, Y, Name)
	local playername = GetName();
	--for i = 1, 2 do
		AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X -  3 ) * 32, Y * 32, 1, playername..Name, 0);
		AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X +  3 ) * 32, Y * 32, 1, playername..Name, 0);
	--end
	--for j = 1, 2 do
		--AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X - j * 3 ) * 32, Y * 32, 1, playername.."的宋军士兵", 0);
	--end
	--AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), X * 32, ( Y + 3 ) * 32, 1, playername.."的宋军士兵", 0);
end