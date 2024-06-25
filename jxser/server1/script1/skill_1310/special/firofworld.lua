Include("\\script\\skill\\head.lua")
SKILLS={
	huwan7={ --护腕7号技能，当角色击中敌人，有1%概率在5秒使敌人不能使用武功,CD1秒
		autoattackskill={{{1,1265*256 + 1},{20,1265*256 + 20}},{{1,-1},{20,-1}},{{1,1*18*256 + 1},{20,1*18*256 + 1}}},
					},
	huwan7_zuzhou={ --护腕7号技能具体效果，5秒内不能使用技能
		forbit_attack={
			[1]={{1,1},{20,1}},
			[2]={{1,18*5},{20,18*5}}
									},
								},

	xianglian3 ={ --项链3号技能。当角色被击中时候血量低于25%，10%概率获得5秒隐身。此时角色攻击敌人伤害x4，攻击是隐身状态消失。CD10秒
		autorescueskill=
		{
			{
				{1,1267*256 + 1},{20,1267*256 + 20},
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,10*18*256 + 10},
				{2,10*18*256 + 10},
			}
		},
					},
	xianglian3_fuzhu={ --项链3号技能实际效果，隐身5秒，同时重击概率100%持续4秒，重击效果200%
		hide={{{1,1},{20,1}},{{1,5*18},{20,5*18}}},
		enhancehit_rate={{{1,100},{2,100}},{{1,18*4},{20,18*4}}},
		enhancehiteffect_rate=
		{
  		[1] = {{1,200},{2,200}},
  		[2] = {{1,18*4},{20,18*4}},
  		[3] = {},
		},
	},
	
	yuenan1hao={ --越南1号技能，当角色击中敌人，有1%概率忽略敌方全抗100%。CD1秒
		autoattackskill={{{1,1320*256 + 1},{20,1320*256 + 20}},{{1,-1},{20,-1}},{{1,1*18*256 + 1},{20,1*18*256 + 1}}},
		skill_desc=
			function(level)
				return "Khi tr髇g ch c?color=orange>1%<color>t?l?k輈h ho箃<color=orange>b?qua kh竛g t蕋 c?c馻 i phng 100%<color>hi謚 鴑g, duy tr?1 gi﹜\n"
			end,
					},
	yuenan1_duzhu={ --越南1号技能具体效果，3秒内忽略全抗100%，持续1秒
		anti_allres_yan_p={
			[1]={{1,100},{20,100}},
			[2]={{1,18*1},{20,18*1}},
			[3]={},
									},
		},
		
		yuenan2hao={ --越南2号技能，角色死亡时50%概率使周围400范围内的角色技能攻击降低45%
		autodeathskill={{{1,1322*256 + 1},{20,1322*256 + 20}},{{1,-1},{20,-1}},{{10,50},{20,50}}},
		skill_desc=
			function(level)
				return "Sau khi ch誸 c?color=orange>50%<color>t?l?l祄 cho k?n╪g c玭g k輈h c馻 nh﹏ v藅 xung quanh gi秏 甶<color=orange>45%<color>hi謚 鴑g, duy tr?color=orange>10<color>gi﹜\n"
			end,
					},
	yuenan2_duzhu={ --越南2号技能具体效果，技能攻击降低45%，持续10秒
		skill_enhance={
			[1]={{1,-45},{20,-45}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
		missle_hitcount={{{1,8},{20,8}}},
		},
		
	yuenan4hao={ --越南4号技能，角色血量低于25%瞬间，增加2000内功伤害，100普点伤害，持续10秒
		autorescueskill={{{1,1324*256 + 1},{20,1324*256 + 20}},{{1,-1},{20,-1}},{{1,10*18*256 + 100},{20,10*18*256 + 100}}},
			skill_desc=
			function(level)

				local nMag = floor(Link(level,SKILLS.yuenan4_duzhu.addcoldmagic_v[1]))
				local nPois = floor(Link(level,SKILLS.yuenan4_duzhu.addpoisonmagic_v[1]))
				local nAtk = floor(Link(level,SKILLS.yuenan4_duzhu.addphysicsdamage_v[1]))
				return format("Khi sinh l鵦 th蕄 h琻 25%% n﹏g cao c玭g k輈h n閕 c玭g<color=orange>%d<color>甶觤, \nc c玭g s竧 thng<color=orange>%d<color>甶觤, \nn﹏g cao ph?甶觤<color=orange>%d<color>甶觤\n", nMag, nPois, nAtk)
			end,
					},
	yuenan4_duzhu={ --增加2000内功伤害，100普点伤害，持续10秒
		addcoldmagic_v={
			[1]={{1,2000},{20,2000}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
			addfiremagic_v={
			[1]={{1,2000},{20,2000}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
			addlightingmagic_v={
			[1]={{1,2000},{20,2000}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
			addphysicsmagic_v={
			[1]={{1,2000},{20,2000}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
			addpoisonmagic_v={
			[1]={{1,200},{20,200}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
			addphysicsdamage_v={
			[1]={{1,100},{20,100}},
			[2]={{1,18*10},{20,18*10}},
			[3]={},
			},
		},
		
	yuenan5hao={ --越南5号技能，被敌人命中，3%的几率使自己血量+3000，持续20秒
		autoreplyskill={{{1,1326*256 + 1},{20,1326*256 + 20}},{{1,-1},{20,-1}},{{1,20*18*256 + 3},{20,20*18*256 + 3}}},
					},
	yuenan5_duzhu={ --越南5号技能具体效果，血量+3000，持续20秒
		lifemax_yan_v={
			[1]={{1,3000},{20,3000}},
			[2]={{1,18*20},{20,18*20}},
			[3]={},
			},
		},
		
		yuenan6hao={ --越南6号技能，重击15%
		enhancehit_rate={{{1,15},{20,15}},{{1,-1},{20,-1}}},
					},
					
		yuenan8hao={ --越南8号技能，禁止使用技能，持续5秒，最多8人。
		forbit_attack={{{1,1},{20,1}},{{1,5*18},{20,5*18}}},
		missle_hitcount={{{1,8},{20,8}}},
		skill_desc=
			function(level)
				return "L祄 cho xung quanh nhi襲 nh蕋<color=orange>8<color>ngi kh玭g th?s?d鬾g k?n╪g, duy tr?color=orange>5<color>gi﹜, 2 ph髏 c?th?s?d鬾g 1 l莕\n"
			end,
					},
					
	yuenan9hao={ --越南9号技能，命中敌人时，1%的概率使敌人失去50%血量
		autoattackskill={{{1,1330*256 + 1},{20,1330*256 + 20}},{{1,-1},{20,-1}},{{1,1*18*256 + 1},{20,1*18*256 + 1}}},
		skill_desc=
			function(level)
				return "Khi tr髇g ch, c?color=orange>1%<color>t?l?l祄 cho ch t鎛 th蕋<color=orange>50%<color>lng m竨\n"
			end,
					},
	yuenan9_duzhu={ --越南9号技能具体效果，使敌人失去50%血量上限并失去3000血量
		fatallystrike_p={
			[1]={{1,100},{20,100}},
			[2]={},
			[3]={},
			},
		
		},
		
		yuenan10hao={ --越南10号技能，被命中时，3%的概率触发反弹伤害50%，持续3秒
		autoreplyskill={{{1,1332*256 + 1},{20,1332*256 + 20}},{{1,-1},{20,-1}},{{1,3*18*256 + 3},{20,3*18*256 + 3}}},
					},
	yuenan10_duzhu={ --越南10号技能具体效果，反弹50%，持续3秒
		meleedamagereturn_p={
			[1]={{1,50},{20,50}},
			[2]={{1,18*3},{20,18*3}},
			[3]={},
			},
		rangedamagereturn_p={
			[1]={{1,50},{20,50}},
			[2]={{1,18*3},{20,18*3}},
			[3]={},
			},
		},
		
}
