--宋方后营外Trap点触发的脚本
IncludeLib("BATTLE");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\jianta\\head.lua")
function main()
	--如果处于报名阶段时,玩家不能走到对方的领地中去，所以会将玩家扔到大营内
		if(GetCurCamp() == 1) then
			SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1))
			SetFightState(0)
			BT_SetData( PL_LASTDEATHTIME, GetGameTime() )
		elseif (GetCurCamp() == 2) then
			Msg2Player("Ph輆 trc s琻 c鑓 ch藀 tr飊g, ch綾 ch緉 c� ph鬰 binh! B筺 kh玭g n猲 t� ti謓 x玭g l猲!")
			SetFightState(1)
			SetPunish(0);
	
			ForbidEnmity( 1 )
	AddSkillState(963, 1, 0, 18*3)
			--SetPKFlag(1)
		end;
end;


