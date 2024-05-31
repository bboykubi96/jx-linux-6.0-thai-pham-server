--µü´úº¯Êý£¬ÓÃÓÚ¼ÆËã¼¼ÄÜÊìÁ·¶È
--¾ßÌå·½·¨£º
--¸ù¾Ý1¼¶ÊìÁ·¶È£¬Éý¼¶¼ÓËÙ¶È£¬¼¶Êý£¬ÖØ¸´ÉËº¦´ÎÊý£¬·¶Î§£¬¼ÆËã³öÏàÓ¦µÈ¼¶ÊìÁ·¶È
-- SkillExp(i) = Exp1*a^(i-1)*time*range

function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end


SKILLS={
	--½£åÐÒ£
	wugoushuangxue={ --ngo cau
		seriesdamage_p={{{1,1},{20,10}}},
		physicsenhance_p={{{1,5*1.5},{20,75*1.5}}},
		lightingdamage_v={
			[1]={{1,15},{20,110}},
			[3]={{1,15},{20,160}}
		},
		addskilldamage1={
			[1]={{1,1887},{2,1887}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage2={
			[1]={{1,1891},{2,1891}},
			[3]={{1,1},{20,70}}
		},
		addskilldamage3={
			[1]={{1,1896},{2,1896}},
			[3]={{1,1},{20,50}}
		},
		skill_cost_v={{{1,10},{20,10}}}
	},

	xiaoyaojianfa ={ --åÐÒ£½£·¨
		addphysicsdamage_p={{{1,25},{20,215}},{{1,-1},{2,-1}},{{1,0},{2,0}}},
		deadlystrikeenhance_p={{{1,5},{20,25}},{{1,-1},{2,-1}}}
	},

	yigonghuanyu={ -- di cung hoan vu
		addphysicsdamage_p={{{1,25},{20,215}},{{1,18*120},{20,18*120}},{{1,1},{2,1}}},
		deadlystrikeenhance_p={{{1,1},{20,35,Conic}},{{1,18*120},{20,18*120}}},
		--skill_cost_v={{{1,80},{20,80}}}
		--freezetimereduce_p={{{1,1},{20,30}},{{1,-1},{2,-1}}},
		--skill_desc=
		--	function(level)
		--		return "Mçi <color=orange> "..floor(Link(level,SKILLS.yigonghuanyu.autocastskill[3]) / 18/256).." gi©y<color> tù ®éng nhËn <color=orange>"..floor(Link(level,SKILLS.yinlv.special_point_add[3])).." tÇng [¢m LuËt]<color>"
				--.."×î¶àÓµÓÐ<color=orange>"..floor(Link(level,SKILLS.yigonghuanyu.special_point_base[3])).."²ã¡¾ÒôÂÉ¡¿<color>"
		--	end,
		--autocastskill = {
		--	{{1,1884*256 + 1},{20,1884*256 + 20}},--Ä¿±ê¼¼ÄÜid * 256 + µÈ¼¶
		--	{{1,-1},{20,-1}},-- Îª1±íÊ¾ËãCD£¬²»ËãCDÌî-1
		--	{{1, (1*18*256 + 100)},{20, (1*18*256 + 100)}},-- ¼ä¸ôÖ¡Êý * 256 + ·¢¶¯¼¸ÂÊ
		--},
		--special_point_base={
		--	{{1,1883},{20,1883}},-- Ä¿±ê¼¼ÄÜid
		--	{{1,-1},{20,-1}},-- ÅäÔÚÖ÷¶¯¼¼ÄÜÊôÐÔÉÏÌî0£¬×÷ÎªbuffÊôÐÔÌî-1
		--	{{1,10},{20,10}},-- Ôö¼Ó¸öÊý
		--}
	
	},
	yinlv={ --ÒÆ¹¬»»Óð-ÒôÂÉ£¨Ö÷¶¯£©
		special_point_add={
			{{1,1883},{20,1883}},-- Ä¿±ê¼¼ÄÜid
			{{1,0},{20,0}},-- ÅäÔÚÖ÷¶¯¼¼ÄÜÊôÐÔÉÏÌî0£¬×÷ÎªbuffÊôÐÔÌî-1
			{{1,1},{20,1}},-- Ôö¼Ó¸öÊý
		}
	},

	sataliuxing={ --ìªí³Á÷ÐÇ
		cost_sp={
			{{1,1883},{20,1883}},  -- Ä¿±ê¼¼ÄÜid
			{{1,0},{20,0}}, -- ÌîÁã
			{{1,8},{20,3},{21,3}}, -- ³Ô¼¸¸ö
		},
		skill_mintimepercast_v={{{1,25*18},{15,15*18},{20,10*18},{21,10*18}}},
		skill_param1_v={{{1,400},{15,400},{20,400},{21,400}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_desc=
			function(level)
				return "<color=red>Di h×nh ¶o ¶nh<color>\n"..
				"Thêi gian kh«i phôc chiªu thøc: <color=orange>"..floor(Link(level,SKILLS.sataliuxing.skill_mintimepercast_v[1]) / 18).." gi©y<color>\n"..
				--"<color=orange>§iÒu kiÖn thi triÓn:<color> <color=yellow>"..floor(Link(level,SKILLS.sataliuxing.cost_sp[3])).." tÇng [¢m LuËt]<color>\n"..
				"Kho¶ng c¸ch di h×nh tèi ®a: <color=orange>"..floor(Link(level,SKILLS.sataliuxing.skill_param1_v[1])).."<color>\n"
			end
	},
	
	yijianfutian={ --nhat kiem phat thien
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		physicsenhance_p={{{1,55},{20,386}}},
		stun_p={{{1,5},{20,15},{21,15}},{{1,1},{20,12},{21,12}}},
		lightingdamage_v={
			[1]={{1,45},{20,532}},
			[3]={{1,45},{20,532}}
		},
		addskilldamage1={
			[1]={{1,1891},{2,1891}},
			[3]={{1,1},{20,90}}
		},
		addskilldamage2={
			[1]={{1,1896},{2,1896}},
			[3]={{1,1},{20,60}}
		},
		skill_cost_v={{{1,15},{20,40}}}
	},

	yinanbaima={ --ngan yen bach ma
		fastwalkrun_p={{{1,22},{20,60}},{{1,-1},{20,-1}}},
	},

	xiagurouqing={	--ÏÀ¹ÇÈáÇé
		--lifemax_v={{{1,180},{35,6400},{36,6480}},{{1,-1},{20,-1}}},
		--unravel_effect={{{1,7},{2,15},{40,300},{41,300}},{{1,-1},{20,-1}}},
		dynamicmagicshield_v={{{1,100},{10,230},{15,370},{20,550},{21,550}},{{1,-1},{20,-1}}},
		returnres_p={{{1,1},{20,30},{21,30}},{{1,-1},{20,-1}}},
	},

	qianliduxing={ --thien ly doc hanh
		deadlystrikeenhance_p={{{1,6},{30,15}},{{1,-1},{2,-1}}},
		castspeed_v={{{1,25},{30,65},{34,93},{35,100},{36,102}},{{1,-1},{30,-1}}},
		attackspeed_v={{{1,25},{20,65},{30,85},{35,118},{38,124},{39,126}},{{1,-1},{30,-1}}},
		--addlightingmagic_p={{{1,5},{20,43}},{{1,-1},{2,-1}}},
        addlightingmagic_v={{{1,45},{30,315}},{{1,-1},{2,-1}}},
		addlightingdamage_v={{{1,45},{30,315}},{{1,-1},{2,-1}}},
		lifemax_p={{{1,21},{35,80},{36,81}},{{1,-1},{30,-1}}},
	},

	jianjuefuyun={ --kiem quyÕt phu van
		physicsenhance_p={{{1,24},{20,450}}},
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		stun_p={{{1,5},{20,25},{21,25}},{{1,1},{20,12},{21,12}}},
		deadlystrike_p={{{1,16},{20,25}}},
		lightingdamage_v={
			[1]={{1,39},{15,200},{20,673}},
			[3]={{1,39},{15,200},{20,673}}
		},
		skill_cost_v={{{1,25},{20,45}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_vanishedevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,1893},{20,1893}}
		},
		addskilldamage1={
			[1]={{1,1896},{2,1896}},
			[3]={{1,1},{20,35}}
		},
		--skill_desc=
		--	function(level)
		--		if (level > 10) then
		--		return "<color=orange>S¸t th­¬ng cuèi vµ hiÖu øng khèng chÕ x2<color>\n "
		--		end
		--		return ""
		--	end,
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_showevent={{{1,2},{20,2}}},
		skill_skillexp_v={
			{
				{1,SkillExpFunc(6860,1.15,1,5,1)},
				{2,SkillExpFunc(6860,1.15,2,5,1)},
				{3,SkillExpFunc(6860,1.16,3,5,1)},
				{4,SkillExpFunc(6860,1.17,4,5,1)},
				{5,SkillExpFunc(6860,1.18,5,5,1)},
				{6,SkillExpFunc(6860,1.19,6,5,1)},
				{7,SkillExpFunc(6860,1.20,7,5,1)},
				{8,SkillExpFunc(6860,1.21,8,5,1)},
				{9,SkillExpFunc(6860,1.22,9,5,1)},
				{10,SkillExpFunc(6860,1.23,10,5,1)},
				{11,SkillExpFunc(6860,1.24,11,5,1)},
				{12,SkillExpFunc(6860,1.23,12,5,1)},
				{13,SkillExpFunc(6860,1.22,13,5,1)},
				{14,SkillExpFunc(6860,1.21,14,5,1)},
				{15,SkillExpFunc(6860,1.20,15,5,1)},
				{16,SkillExpFunc(6860,1.19,16,5,1)},
				{17,SkillExpFunc(6860,1.18,17,5,1)},
				{18,SkillExpFunc(6860,1.17,18,5,1)},
				{19,SkillExpFunc(6860,1.16,19,5,1)},
				{20,SkillExpFunc(6860,1.15,20,5,1)},
			}
		},
	},

	danzhichishang={ --à¢ÖË³Öõü£¨120£©
		autoattackskill={
			{{1,1895*256 + 1},{20,1895*256 + 20},{21,1895*256 + 21}},--¼¼ÄÜid*256 + ¼¼ÄÜµÈ¼¶
			{{1,-1},{20,-1}},
			{{1,30*18*256 + 1},{30,30*18*256 + 10},{31,30*18*256 + 10}}--ÀäÈ´Ê±¼ä*256+¸ÅÂÊ
		},
		skill_desc=
			function(level)
				return "Khi tÊn c«ng cã<color=orange> "..floor(Link(level,SKILLS.danzhichishang.autoattackskill[3]) - 30*18*256).."%<color> kÝch ho¹t tr¹ng th¸i <color=water>ThÇn Long Hé ThÓ<color>\n"..
				"Trong vßng <color=orange>"..floor((Link(level,SKILLS.danzhichishang.autoattackskill[3]) / (18*256))).." gi©y<color> sÏ kh«ng kÝch ho¹t l¹i\n\n"..
				"Tr¹ng th¸i <color=water>ThÇn Long Hé ThÓ<color>: T¨ng c«ng kÝch kü n¨ng <color=orange>"..floor(Link(level,SKILLS.danzhichishang_Buff.add_damage_p[1])).."%<color>"..
				" trong <color=orange>"..floor(Link(level,SKILLS.danzhichishang_Buff.add_damage_p[2]) / 18).."<color> gi©y "
			end,
		skill_skillexp_v={
			{
				{1,17851239},
				{2,19487603},
				{3,22760330},
				{4,27669421},
				{5,34214875},
				{6,42396694},
				{7,52214875},
				{8,63669421},
				{9,76760330},
				{10,91487603},
				{11,107851239},
				{12,135669421},
				{13,174942148},
				{14,225669421},
				{15,274418181},
				{16,344618181},
				{17,425738181},
				{18,517778181},
				{19,620738181},
				{20,620738181},
			}
		},
	},
	danzhichishang_Buff={ --à¢ÖË³Öõü_Buff
		add_damage_p={{{1,1},{2,1},{20,5}},{{1,10*18},{20,10*18},{21,10*18}}},
	},

	shibuyisha={ --Ê®²½Ò»É±£¨½£åÐÒ£150£©
		physicsenhance_p={{{1,50},{20,400}}},
		seriesdamage_p={{{1,40},{15,30},{20,50},{21,52}}},
		lightingdamage_v={
			[1]={{1,48},{15,240},{20,500},{23,600},{26,800}},
			[3]={{1,48},{15,240},{20,1000},{23,1200},{26,1400}}
		},
		deadlystrike_p={{{1,20},{20,50},{23,53},{26,56}}},
		stun_p={{{1,5},{20,40},{21,41}},{{1,1},{20,12},{21,12}}},
		cost_sp={
			{{1,1000},{20,1000}},  -- Ä¿±ê¼¼ÄÜid
			{{1,0},{20,0}}, -- ÌîÁã
			{{1,3},{20,3}}, -- ³Ô¼¸¸ö
		},
		skill_cost_v={{{1,40},{20,60},{23,70},{26,87}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		missle_hitcount={{{1,25},{20,25}}},
		skill_mintimepercast_v={{{1,15*18},{15,15*18},{20,15*18},{21,15*18}}},
		--hide={{{1,1},{20,1}},{{1,15*18},{15,15*18},{20,10*18},{21,10*18}}},
		addskilldamage1={
			[1]={{1,1891},{2,1891}},
			[3]={{1,1},{20,70}}
		},
		skill_desc=
		function(level)
			return --"<color=red>Duy Ng· §éc T«n<color>: <color=orange>"..floor(Link(level,SKILLS.shibuyisha_Buff.hide[2]) / 18).." gi©y<color>\n"..
			"Thêi gian kh«i phôc chiªu thøc: <color=orange>"..floor(Link(level,SKILLS.shibuyisha.skill_mintimepercast_v[1]) / 18).." gi©y<color>\n"..
			"Thêi gian Èn th©n: <color=orange>"..floor(Link(level,SKILLS.shibuyisha_Buff.hide[2]) / 18).." gi©y<color>\n"
		end,
		--		return "KhiÕn ®Þch trong ph¹m vi chÞu <color=orange>"..floor(Link(level,SKILLS.shibuyisha.missle_hitcount[1])).." lÇn <color> tr¶m kÝch, mçi môc tiªu tèi ®a tr¶m tr¶m kÝch <color=orange>5 lÇn<color>\n"..
		--		"<color=orange>Thi triÓn nhËn tr¹ng th¸i kh«ng thÓ bÞ chän<color>\n"..
				--"<color=orange>§iÒu kiÖn thi triÓn: <color><color=yellow>"..floor(Link(level,SKILLS.shibuyisha.cost_sp[3])).." tÇng [¢m LuËt]<color>\n"
		--	end,
		--skill_skillexp_v={
		--	{
		--		{1,300},
		--		{2,600},
		--		{3,1000},
		--		{4,1500},
		--		{5,2100},
		--		{6,2800},
		--		{7,3600},
		--		{8,4500},
		--		{9,5500},
		--		{10,6600},
		--		{11,7800},
		--		{12,9100},
		--		{13,10500},
		--		{14,12000},
		--		{15,13600},
		--		{16,15300},
		--		{17,17100},
		--		{18,19000},
		--		{19,21400},
		--		{20,21000},
		--	}
		--},
	},

	shibuyisha_Buff={ --Ê®²½Ò»É±_Buff
		--hidebodyunlock={{{1,1},{2,1}},{{1,10},{2,10}}},
		--hide={{{1,1},{2,1}},{{1,10},{2,10}}},
		--forbit_attack={{{1,1},{2,1}},{{1,7},{2,7}}},
		--frozen_action={{{1,1},{2,1}},{{1,10},{2,10}}},
		--invincibility={{{1,1},{2,1}},{{1,10},{2,10}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		hide={{{1,1},{20,1}},{{1,2*18},{15,2*18},{20,2*18},{21,2*18}}},
	},

	suiyiqu={ --tuy uy khuc
		--lightingdamage_p={{{1,1},{20,16}}},
		lightingdamage_v={
			[1]={{1,30},{20,225}},
			[3]={{1,30},{20,225}}
		},
		seriesdamage_p={{{1,1},{20,10}}},
		addskilldamage1={
			[1]={{1,1909},{2,1909}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage2={
			[1]={{1,1910},{2,1910}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage3={
			[1]={{1,1911},{2,1911}},
			[3]={{1,1},{20,110}}
		},
		skill_cost_v={{{1,15},{20,20}}}
	},

	xiaoyaoqinfa={ --åÐÒ£ÇÙ·¨
		--addlightingmagic_p={{{1,5},{20,43}},{{1,-1},{2,-1}}},
		addlightingmagic_v={{{1,20},{20,250}},{{1,-1},{2,-1}}},
	},

	luoyanpingsha={ --ÂäÑãÆ½É³
		--seriesdamage_p={{{1,5},{20,30}}},
		lightingres_p={{{1,13},{20,32}},{{1,18*120},{20,18*120}}},
		fireres_p={{{1,9},{20,28}},{{1,18*120},{20,18*120}}},
		coldres_p={{{1,13},{20,32}},{{1,18*120},{20,18*120}}},
		physicsres_p={{{1,9},{20,28}},{{1,18*120},{20,18*120}}},
		--lightingdamage_p={{{1,1},{20,10}}},
		--lightingdamage_v={
		--	[1]={{1,15},{20,180}},
		--	[3]={{1,15},{20,180}}
		--},
		--stun_p={{{1,5},{20,90},{21,90}},{{1,1},{20,12},{21,12}}},
		--cost_sp={
		--	{{1,1883},{20,1883}},  -- Ä¿±ê¼¼ÄÜid
		--	{{1,0},{20,0}}, -- ÌîÁã
		--	{{1,8},{20,8}}, -- ³Ô¼¸¸ö
		--},
		--skill_eventskilllevel={{{1,1},{20,20}}},
		--skill_showevent={{{1,1},{20,1}}},
		--skill_desc=
		--	function(level)
		--		return "<color=orange>§iÒu kiÖn thi triÓn:<color> <color=yellow>"..floor(Link(level,SKILLS.luoyanpingsha.cost_sp[3])).." tÇng [¢m LuËt]<color>\n"..
		--		"Khi thi triÓn, b¶n th©n vµ <color=orange>"..floor(Link(level,SKILLS.xiaoyaoyu.missle_hitcount[1])).."<color> ®ång ®éi nhËn ®­îc Hé ThuÉn ¢m LuËt\n"..
		--		"Hé thuÉn kh¸ng s¸t th­¬ng b»ng <color=orange>"..floor(Link(level,SKILLS.xiaoyaoyu.staticmagicshield_p[1])/100).." lÇn<color> néi lùc tèi ®a, duy tr× <color=orange>"..floor(Link(level,SKILLS.xiaoyaoyu.staticmagicshield_p[2])/18).." gi©y<color>\n"
		--	end,
	},
	xiaoyaoyu={ --åÐÒ£Óð£¬ÂäÑãÆ½É³_Buff
		--do_stun_p={{{1,1},{20,25},{21,25}},{{1,5*18},{20,5*18}}},
		--lightingenhance_p={{{1,1},{20,20}},{{1,5*18},{2,5*18}}},
		staticmagicshield_p={{{1,100},{20,1000},{21,1050}},{{1,5*18},{20,5*18}}},
		missle_hitcount={{{1,1},{20,7},{21,7}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
	},

	guanglingsan={ --¹ãÁêÉ¢
		--lightingdamage_p={{{1,1},{20,16}}},
		lightingdamage_v={
			[1]={{1,30},{20,550}},
			[3]={{1,30},{20,550}}
		},
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		skill_misslenum_v={{{1,2},{11,3},{16,4},{20,4}}},
		skill_cost_v={{{1,30},{20,50}}},
		addskilldamage1={
			[1]={{1,1910},{2,1910}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage2={
			[1]={{1,1911},{2,1911}},
			[3]={{1,1},{20,120}}
		},
	},

	gaoshanliushui={ --cao son luu thuy
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		--lightingdamage_p={{{1,1},{33,39}}},
		lightingdamage_v={
			[1]={{1,30},{20,937}},
			[3]={{1,30},{20,937}}
		},
		stun_p={{{1,2},{20,40},{21,60}},{{1,1},{20,12},{21,12}}},
		addskilldamage1={
			[1]={{1,1911},{2,1911}},
			[3]={{1,1},{20,130}}
		},
		skill_cost_v={{{1,30},{20,50}}},
		--addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		--skill_skillexp_v={
		--	{
		--		{1,SkillExpFunc(5330,1.15,1,8,1)},
		--		{2,SkillExpFunc(5330,1.15,2,8,1)},
		--		{3,SkillExpFunc(5330,1.16,3,8,1)},
		--		{4,SkillExpFunc(5330,1.17,4,8,1)},
		--		{5,SkillExpFunc(5330,1.18,5,8,1)},
		--		{6,SkillExpFunc(5330,1.19,6,8,1)},
		--		{7,SkillExpFunc(5330,1.20,7,8,1)},
		--		{8,SkillExpFunc(5330,1.21,8,8,1)},
		--		{9,SkillExpFunc(5330,1.22,9,8,1)},
		--		{10,SkillExpFunc(5330,1.23,10,8,1)},
		--		{11,SkillExpFunc(5330,1.24,11,8,1)},
		--		{12,SkillExpFunc(5330,1.23,12,8,1)},
		--		{13,SkillExpFunc(5330,1.22,13,8,1)},
		--		{14,SkillExpFunc(5330,1.21,14,8,1)},
		--		{15,SkillExpFunc(5330,1.20,15,8,1)},
		--		{16,SkillExpFunc(5330,1.19,16,8,1)},
		--		{17,SkillExpFunc(5330,1.18,17,8,1)},
		--		{18,SkillExpFunc(5330,1.17,18,8,1)},
		--		{19,SkillExpFunc(5330,1.16,19,8,1)},
		--		{20,SkillExpFunc(5330,1.15,20,8,1)},
--}
--		},
	},

	meihuasannong={ --mai hoa
		seriesdamage_p={{{1,40},{15,40},{20,60},{21,62}}},
		--lightingdamage_p={{{1,2},{33,75}}},
		lightingdamage_v={
			[1]={{1,180},{20,800}},
			[3]={{1,180},{20,900}},
		},
		stun_p={{{1,5},{20,20},{21,22}},{{1,1},{20,12},{21,12}}},
		skill_collideevent={
			[1]={{1,0},{10,0},{11,1},{20,1}},
			[3]={{1,1912},{20,1912}},
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,0},{10,0},{11,4},{20,4}}},
		skill_cost_v={{{1,30},{20,60},{23,80},{26,100}}},
		skill_skillexp_v={
			{
				{1,300},
				{2,600},
				{3,1000},
				{4,1500},
				{5,2100},
				{6,2800},
				{7,3600},
				{8,4500},
				{9,5500},
				{10,6600},
				{11,7800},
				{12,9100},
				{13,10500},
				{14,12000},
				{15,13600},
				{16,15300},
				{17,17100},
				{18,19000},
				{19,21400},
				{20,21000},
			}
		},
	},
	yangguansandie={ --duong quan tam hiep
		seriesdamage_p={{{1,40},{15,40},{20,60},{21,62}}},
		--lightingdamage_p={{{1,1},{33,33}}},
		lightingdamage_v={
			[1]={{1,120},{20,1200}},
			[3]={{1,120},{20,1200}}
		},
		--stun_p={{{1,5},{20,30},{21,31}},{{1,1},{20,12},{21,12}}},
	},

	zhizunyinjian={ --åÐÒ£ÅÉÖÁ×ðÓ¡¼ø¼¼ÄÜ
		special_point_base={
			{{1,1883},{20,1883}},-- Ä¿±ê¼¼ÄÜid
			{{1,-1},{20,-1}},-- ÅäÔÚÖ÷¶¯¼¼ÄÜÊôÐÔÉÏÌî0£¬×÷ÎªbuffÊôÐÔÌî-1
			{{1,2},{20,2}},-- Ôö¼Ó¸öÊý
		}
	},
}
-----------------------------------------------
--Create by yfeng 2004-05-20
-----------------------------------------------

-----------------------------------------------
--¸ù¾Ý2¸öµã£¬ÇóÏßÐÎº¯Êýf(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--µ±x2=x1, ÓÐx=c,¸ÃÖ±ÏßÊÇÒ»Ìõ´¹Ö±ÓÚxÖáµÄÖ±Ïß
--ÕâÊÇ¿ÉÒÔÈ¡µÃy=ÈÎÒâÖµ
--Òò´Ë£¬Èç¹ûÒÑÖªÁ½µã(x1,y1),(x2,y2)¿ÉÇóµÃ¹ý´Ë2µãµÄ
--º¯ÊýÎª£º
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--¸ù¾Ý2¸öµã£¬Çó2´ÎÐÎº¯Êýf(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--µ±x1»òÕßx2 < 0 ,y =0
--µ±x2=x1, ÓÐx=c,ÊÇÒ»Ìõ´¹Ö±ÓÚxÖáµÄÖ±Ïß
--ÕâÊÇ¿ÉÒÔÈ¡µÃy=ÈÎÒâÖµ
--Òò´Ë£¬Èç¹ûÒÑÖªÁ½µã(x1,y1),(x2,y2)¿ÉÇóµÃ¹ý´Ë2µãµÄ
--º¯ÊýÎª£ºextrac
function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

-----------------------------------------------
--¸ù¾Ý2¸öµã£¬Çó-2´ÎÐÎº¯Êýf(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--µ±x2»òÕßx1<0, y=0,
--µ±x1=x2,ÓÐx=c,ÊÇÒ»Ìõ´¹Ö±ÓÚxÖáµÄÖ±Ïß
--ÕâÊÇ¿ÉÒÔÈ¡µÃy=ÈÎÒâÖµ
--Òò´Ë£¬Èç¹ûÒÑÖªÁ½µã(x1,y1),(x2,y2)¿ÉÇóµÃ¹ý´Ë2µãµÄ
--º¯ÊýÎª£ºextrac
function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--Ãè»æÁ¬½ÓÏß:Link(x,points)
--¸ù¾ÝpointsÌá¹©µÄÒ»ÏµÁÐµã£¬ÓÃÏàÁÚµÄÁ½¸öµãÃè»æÇúÏß
--return yÖµ
--x ÊäÈëÖµ
--points µã¼¯ºÏ
--ÐÎÈç£ºpointsÊÇÐÎÈç{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}µÄÓ³Éä
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

------------------------------------------------------
--¼¼ÄÜÉè¶¨¸ñÊ½ÈçÏÂ£º
--SKILLS={
--	¼¼ÄÜÃû³Æ=	{
--		Ä§·¨ÊôÐÔ=	{
--			[1]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[2]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[3]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬	
--		}£¬
--		Ä§·¨ÊôÐÔ=	{
--			[1]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[2]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[3]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬	
--		}£¬
--		¡£¡£¡£¡£¡£
--	}£¬
--	¼¼ÄÜÃû³Æ=	{
--		Ä§·¨ÊôÐÔ=	{
--			[1]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[2]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[3]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬	
--		}£¬
--		Ä§·¨ÊôÐÔ=	{
--			[1]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[2]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬
--			[3]={{¼¶±ð,ÊýÖµ£¬ÇúÏß}£¬{¼¶±ð£¬ÊýÖµ£¬ÇúÏß}£¬¡£¡£¡£¡£}£¬	
--		}£¬
--		¡£¡£¡£¡£¡£
--	}£¬
--	¡£¡£¡£¡£¡£
--}
--Èç£º
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--Ä§·¨ÊôÐÔphysicsenhance_p²ÎÊý1£¬1¼¶Ê±Îª35£¬20¼¶Ê±Îª335£¬ÇúÏß²»Ìî£¬Ä¬ÈÏÏßÐÎ
--			[2]={{1,0},{20,0}},
--		},--Ã»ÓÐ[3]£¬±íÊ¾Ä§·¨ÊôÐÔphysicsenhance_p²ÎÊý2£¬Ä¬ÈÏÎªÈÎºÎÊ±ºò¶¼ÊÇ0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--ÒÔÉÏÃèÊö¼¼ÄÜ¡°Èý»·Ì×ÔÂ¡±µÄÄ§·¨ÊôÐÔºÍÊýÖµ
-----------------------------------------------------------
--º¯ÊýGetSkillLevelData(levelname, data, level)
--levelname£ºÄ§·¨ÊôÐÔÃû³Æ
--data£º¼¼ÄÜÃû³Æ
--level£º¼¼ÄÜµÈ¼¶
--return£ºµ±¼¼ÄÜÃû³ÆÎªdata£¬¼¼ÄÜµÈ¼¶Îªlevel
--			Ê±µÄÄ§·¨ÊôÐÔlevelnameËùÐèÇóµÄÈý¸ö²ÎÊýµÄ¾ßÌåÖµ
-----------------------------------------------------------
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

