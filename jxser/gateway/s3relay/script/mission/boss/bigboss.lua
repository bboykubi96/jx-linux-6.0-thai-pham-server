Include("\\script\\lib\\objbuffer_head.lua")
if (BigBoss == nil) then
	BigBoss = {}
	BigBoss.gold_boss_count = 0;
	BigBoss.isBigBossDead = 0;
end

BigBoss.BIG_BOSS_POS = {
					{355, {{1391, 2747},{1391, 2747}, {1391, 2747}, {1391, 2747}}, "§Êu Tr­êng Sinh Tö"},
					{355, {{1391, 2747},{1391, 2747}, {1391, 2747}, {1391, 2747}}, "§Êu Tr­êng Sinh Tö"},
					{355, {{1391, 2747},{1391, 2747}, {1391, 2747}, {1391, 2747}}, "§Êu Tr­êng Sinh Tö"},
					{355, {{1391, 2747},{1391, 2747}, {1391, 2747}, {1391, 2747}}, "§Êu Tr­êng Sinh Tö"},
					{355, {{1391, 2747},{1391, 2747}, {1391, 2747}, {1391, 2747}}, "§Êu Tr­êng Sinh Tö"},
}

BigBoss.BIG_BOSS_SER = {
	[0] = 1505,
	[1] = 1506,
	[2] = 1507,
	[3] = 1508,
	[4] = 1509,
}
function AddGoldBossCount(ParamHandle, ResultHandle)
	BigBoss.gold_boss_count = BigBoss.gold_boss_count + 1;
	OutputMsg( format("GOLD BOSS COUNT :  %d",BigBoss.gold_boss_count) );
end

function ReduceGoldBossCount(ParamHandle, ResultHandle)
	BigBoss.gold_boss_count = BigBoss.gold_boss_count - 1;
	OutputMsg( format("GOLD BOSS COUNT :  %d",BigBoss.gold_boss_count) );
end

function SetBigBossDead(ParamHandle, ResultHandle)
	if (OB_IsEmpty(ParamHandle) == 0) then
		BigBoss.isBigBossDead = ObjBuffer:PopObject(ParamHandle);
	end
end

function IsBigBossDead(ParamHandle, ResultHandle)
	ObjBuffer:PushObject(ResultHandle, BigBoss.isBigBossDead);
end

function MakeAllPlayerCanGetReward(ParamHandle, ResultHandle)
	GlobalExecute("dwf \\script\\missions\\boss\\bigboss.lua BigBoss:MakeAllPlayerCanGetReward()");
end
