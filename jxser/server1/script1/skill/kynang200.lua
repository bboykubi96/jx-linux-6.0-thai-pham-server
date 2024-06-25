Include("\\script\\skill\\head.lua")

SKILLS ={
	tanthu={ --buff tan thu
		lifemax_v={{{1,10},{20,500}},{{1,-1},{20,-1}}},
		lifereplenish_v={{{1,1},{20,100}},{{1,-1},{20,-1}}},
		manareplenish_v={{{1,1},{20,20}},{{1,-1},{20,-1}}},
		allres_p={{{1,1},{20,5}},{{1,-1},{20,-1}}},
		fastwalkrun_p={{{1,1},{20,30}},{{1,-1},{20,-1}}},
		--attackspeed_v={{{1,100},{30,3000}},{{1,-1},{30,-1}}},
		--castspeed_v={{{1,100},{30,3000}},{{1,-1},{30,-1}}},
		--lucky_v={{{1,10},{30,300}},{{1,-1},{30,-1}}},
		--sorbdamage_p={{{1,1000},{30,30000}},{{1,-1},{30,-1}}}, -- TriÖt tiªu s¸t th­¬ng
		block_rate={{{1,1},{20,20}},{{1,-1},{30,-1}}}, -- X¸c suÊt hãa gi¶i s¸t th­¬ng
		--skill_cost_v={{{1,10},{30,50}}}
	},
	--badao={ --buff
	--	expenhance_p={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},  --S¸t th­¬ng ®~ch nhËn ®­îc kinh nghiÖm
	--	lifereplenish_v={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},  --Phôc håi sinh lùc mçi nöa gi©y
	--	manareplenish_v={{{1,10000},{30,300000}},{{1,-1},{30,-1}}}, --Phôc håi néi lùc mçi nöa gi©y
	--	allres_p={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	attackspeed_v={{{1,10},{30,300}},{{1,-1},{30,-1}}},
	--	castspeed_v={{{1,10},{30,300}},{{1,-1},{30,-1}}},
	--	lucky_v={{{1,10},{30,300}},{{1,-1},{30,-1}}},
	--	sorbdamage_p={{{1,1000},{30,30000}},{{1,-1},{30,-1}}}, -- TriÖt tiªu s¸t th­¬ng
	--	block_rate={{{1,100},{30,100}},{{1,-1},{30,-1}}}, -- X¸c suÊt hãa gi¶i s¸t th­¬ng
	--	visionradius_p={{{1,10},{30,300}},{{1,-1},{30,-1}}}, --Ph¹m vi s¸t th­¬ng: #d1-%
	--	ignoredefense_p={{{1,100},{30,100}},{{1,-1},{30,-1}}},
	--	strength_v={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	dexterity_v={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	vitality_v={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	energy_v={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	add_boss_damage={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	do_hurt_p={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	skill_enhance={{{1,10000},{30,300000}},{{1,-1},{30,-1}}},
	--	deadlystrike_p={{{1,100},{30,100}},{{1,-1},{30,-1}}}, --TÊn c«ng chU m¹ng: #d1-%
	--	fatallystrike_p={{{1,100},{30,100}},{{1,-1},{30,-1}}}, --TÊn c«ng chU t? #d1-%
	--},
}

function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

function GetSkillLevelData(levelname, data, level)
	if(data==nil) then
		return ""
	end
	if(data == "") then
		return ""
	end
	if(SKILLS[data]==nil) then
		return ""
	end
	if(SKILLS[data][levelname]==nil) then
		return ""
	end
	if(type(SKILLS[data][levelname]) == "function") then
		return SKILLS[data][levelname](level)
	end
	if(SKILLS[data][levelname][1]==nil) then
		SKILLS[data][levelname][1]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][2]==nil) then
		SKILLS[data][levelname][2]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][3]==nil) then
		SKILLS[data][levelname][3]={{0,0},{20,0}}
	end
	p1=floor(Link(level,SKILLS[data][levelname][1]))
	p2=floor(Link(level,SKILLS[data][levelname][2]))
	p3=floor(Link(level,SKILLS[data][levelname][3]))
	return Param2String(p1,p2,p3)
end;

function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;
