-- 宋金道具战鼓,3分钟内,附近己方玩家生命上限提高30%,全抗增加30%
-- Liu Kuo
-- 2004.12.18
Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine()
	CastSkill( 491, 1);			--生命上限提高30%,全抗增加30%
	Msg2Player("B筺  s� d鬾g 1 Chi課 c� ");
end
