-- Created by fangjieying 2003-5-17
-- 《灭剑秘籍》
-- 学会技能三峨霁雪
-- 峨嵋，80级以上可用
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(328)	
	if(party ~= "emei") then							-- 不是峨嵋
		Msg2Player("B筺 nghi猲 c鴘 Di謙 Ki誱 M藅 T辌h 頲 n鯽 ng祔, nh璶g v蒼 ch璦 l躰h ng� 頲 g�. ")
		return 1
	elseif(GetLever < 80) then							-- 是峨嵋但未到80级
		Msg2Player("B筺 nghi猲 c鴘 Di謙 Ki誱 M藅 T辌h 頲 n鯽 ng祔, l躰h ng� 頲 r蕋 輙. ")
		return 1
	elseif(skill ~= -1) then							-- 已学过该技能
		Msg2Player("B筺  nghi猲 c鴘 k� Di謙 Ki誱 M藅 T辌h, nh璶g v蒼 ch璦 h鋍 頲 g�. ")
		return 1
	else
		AddMagic(328,1)										-- 学会技能
		Msg2Player("H鋍 頲 k� n╪g Tam Nga T� Tuy誸. ")
		return 0
	end
end