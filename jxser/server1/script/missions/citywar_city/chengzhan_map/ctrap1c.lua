--攻城战 中转地图to城战地图（守城方）
--Trap ID：攻城战

Include("\\script\\missions\\citywar_city\\head.lua")

function main()
	ft = GetFightState();
	if (ft == 0) then 
		SetPos(1582,3227)
		SetFightState(1)
		bt_RankEffect(BT_GetData(PL_CURRANK))
	else
		if (GetCurCamp() ~= 1) then 
			Msg2Player("Kh玭g th� 甶 頲, n誹 甶 s� n n琲 ph鬰 k輈h c馻 ch qu﹏. ");
			SetPos(1582,3227)
		else
			SetPos(1577,3236)
			SetFightState(0)
		end;
	end;
end;
