--金方后营Trap点触发的脚本
IncludeLib("BATTLE");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\marshal\\head.lua")

function main()
	--如果处于报名阶段时,玩家不能走到对方的领地中去，所以会将玩家扔到大营内
		if(GetCurCamp() == 2) then
			if( GetFightState() == 1) then
				SetPos(GetMissionV(MS_HOMEIN_X2), GetMissionV(MS_HOMEIN_Y2))
				SetFightState(0)
			else
				RestTime =  GetGameTime() - BT_GetData(PL_LASTDEATHTIME) 
				if ( RestTime < TIME_PLAYER_REV) then
					Say((TIME_PLAYER_REV - RestTime) .. " gi﹜ sau b筺 m韎 c?th?r阨 kh醝 h藆 doanh! Xin i ch髏 n鱝!", 0)
				else
					file = GetMissionS(2)
					x,y = bt_getadata(file)
					SetPos(floor(x/32), floor(y/32))
					bt_RankEffect(BT_GetData(PL_CURRANK))
					SetFightState(1)
					SetPKFlag(1)
					SetPunish(0);
	
					ForbidEnmity( 1 )
					SetProtectTime(18*3) -- 4 giay bat tu 
AddSkillState(963, 1, 0, 18*3)
					--SetPKFlag(1)
				end
			end;
		elseif (GetCurCamp() == 1) then
				file = GetMissionS(2)
				x,y = bt_getadata(file)
				SetPos(floor(x/32), floor(y/32))
			Msg2Player("Ph輆 trc s琻 c鑓 ch藀 tr飊g, ch綾 ch緉 c?ph鬰 binh! B筺 kh玭g n猲 t?ti謓 x玭g l猲!")
		end;
end;


