IncludeLib("BATTLE");
Include("\\script\\battles\\seizegrain\\head.lua")
function main()
	
	--如果处于报名阶段时,玩家不能走到对方的领地中去，所以会将玩家扔到大营内
	if(GetMissionV(MS_STATE) == 1) then
		if(GetCurCamp() == 1) then
			SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1))
			SetFightState(0)
			Say("Hi謓 v蒼 ch璦 khai chi課, kh玭g 頲 ph衟 r阨 Чi Doanh! ", 0)
		elseif (GetCurCamp() == 2) then
			SetPos(GetMissionV(MS_HOMEIN_X2), GetMissionV(MS_HOMEIN_Y2))
			SetFightState(0)
			Say("Hi謓 v蒼 ch璦 khai chi課, kh玭g 頲 ph衟 r阨 Чi Doanh! ", 0)
		end;
	else
		SetFightState(1)
		if (GetCurCamp() == 1 and BT_GetData(PL_PARAM3) == 1) then
			sf_addgrain_point(1)			-- 如果是同属阵营的，则检查是否运粮角色并给与奖励
		end
	end;
end;


