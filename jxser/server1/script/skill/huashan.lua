---------------------------***Cover*By*Heart*Doldly***--------------------------------------------------
EXP_RATE = 1
function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end

SKILLS={
	baihong_guanri={ --Bach Hong quan Nhat
		physicsenhance_p={
			[1]={{1,30},{20,75}},
		},
		seriesdamage_p={{{1,1},{20,10}}},
		colddamage_v={
			[1]={{1,10},{20,80}},
			[3]={{1,20},{20,80}}
		},
		reduceskillcd1={
			[1]={{1,1368},{2,1368}},
			[3]={{1,6},{20,18*1}}
		},
		reduceskillcd2={
			[1]={{1,1363},{2,1363}},
			[3]={{1,6},{20,18*1}}
		},
		addskilldamage1={
			[1]={{1,1351},{2,1351}},
			[3]={{1,1},{20,60},{31,65}}
		},
		addskilldamage2={
			[1]={{1,1355},{2,1355}},
			[3]={{1,1},{20,50},{31,50}}
		},
		addskilldamage3={
			[1]={{1,1360},{2,1360}},
			[3]={{1,1},{20,15},{31,20}}
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,1},{10,1},{20,1}}},
	},
	qingfeng_songshuang={ --Thanh Van Tong sang
			seriesdamage_p={{{1,1},{20,20}}},
			skill_cost_v={{{1,5},{20,43},{26,50}}},
			colddamage_v={
				[1]={{1,10},{20,320}},
				[3]={{1,20},{20,320}}
			},
			addskilldamage1={
				[1]={{1,1382},{2,1382}},
				[3]={{1,1},{20,60},{31,70}}
			},
			skill_eventskilllevel={{{1,1},{20,20}}},
			skill_showevent={{{1,1},{10,1},{20,1}}},
	},

	jianzong_zongjue={ --Kiem Tong Tong Quyet
		addphysicsdamage_p={{{1,15},{20,75},{26,150},{32,220},{33,220}},{{1,-1},{2,-1}},{{1,0},{2,0}}},
		attackspeed_yan_v={{{1,6},{26,32},{31,32},{32,32}},{{1,-1},{2,-1}}},
		attackspeed_v={{{1,6},{26,32},{31,32},{32,32}},{{1,-1},{2,-1}}},
		manareplenish_v={{{1,-10000},{20,-10000}},{{1,-1},{2,-1}}},
		manareplenish_p={{{1,-200},{20,-200}},{{1,-1},{2,-1}}},
		anti_hitrecover={{{1,1},{20,5}},{{1,-1},{2,-1}}},
		lifemax_yan_p={{{1,10},{25,30},{36,30}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,6},{20,26}},{{1,-1},{2,-1}}},
		manamax_yan_v={{{1,-1000},{20,-20000}},{{1,-1},{2,-1}}},
		manamax_v={{{1,-1000},{20,-20000}},{{1,-1},{2,-1}}},
	},

	longraoshen={ --Long Nhieu Than
		manareplenish_v={{{1,1},{20,22}},{{1,-1},{2,-1}}},
		manamax_yan_p={{{1,35},{35,200},{36,200}},{{1,-1},{2,-1}}},
	},

	yangwu_jianfa={ --Duong Ngo Kiem Phap
		clearallcd={{{1,1},{25,2},{26,3},{27,3},{31,4},{32,4}},{{1,-1},{2,-1}}},
		addcolddamage_v={{{1,15},{20,175},{21,215}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,6},{30,36},{31,38},{32,38}},{{1,-1},{2,-1}}},
	},
	haina_baichuan={ --Hai Bach Nap Xuyen
		damage2addmana_p={{{1,1},{20,10}},{{1,-1},{20,-1}}},
	},

	jinyan_hengkong={ --Kim Nhan Hoanh Khong
		seriesdamage_p={{{1,10},{20,20}}},
		physicsenhance_p={{{1,30},{20,320}}},
		deadlystrike_p={{{1,6},{20,40}},{{1,-1},{2,-1}}},
		skill_attackradius={{{1,384},{20,416}}},
		colddamage_v={
			[1]={{1,35},{20,450}},
			[3]={{1,45},{20,550}},
		},
		addskilldamage1={
			[1]={{1,1363},{2,1363}},
			[3]={{1,5},{20,30}},
		},
		addskilldamage2={
			[1]={{1,1368},{2,1368}},
			[3]={{1,6},{20,32}},
		},
		skill_desc=
		function(level)
			local nMag = floor(Link(level,SKILLS.podao_pojian.candetonate1[3]))
			return format("Gì ®å trªn ng­êi <color=orange>%d<color> trong ph¹m vi mµn h×nh<color=blue> KiÕm Hoa V·n Tinh<color>, <color=blue> B¨ng T­íc Ho¹t Kú<color>, <color=blue> U Hån PhÖ ¶nh<color>,\n", nMag)
		end,
	},
	podao_pojian={
		candetonate1={
			[1]={{1,323*256+1},{2,323*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
		candetonate2={
			[1]={{1,326*256+1},{2,326*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
		candetonate3={
			[1]={{1,329*256+1},{2,329*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
	},

	longxuan_jianqi={ --Long Huyen Kiem Khi
		sorbdamage_yan_p={{{1,10},{15,8},{32,25}},{{1,18},{2,18}}},
		anti_do_hurt_p={{{1,1},{15,3},{20,5},{31,5},{32,5}},{{1,18},{2,18}}},
		lifemax_p={{{1,5},{15,25},{20,30},{31,30},{32,30}},{{1,10},{31,18},{32,18}}},
		lifemax_yan_p={{{1,5},{15,10},{25,15},{31,20},{32,20}},{{1,10},{31,18},{32,18}}},
		skill_cost_v={{{1,30},{20,400},{26,500},{31,800},{32,800}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,1},{10,1},{20,1}}},
		skill_desc=
			function(level)
				local nMag = floor(Link(level,SKILLS.longxuan2.colddamage_v[3]))
				local nPois = format("%.2f", (floor(Link(level,SKILLS.longxuan2.frozen_action[2])*100/18 )/100))
				return format("KhÝ tr­êng bïng næ t¹o thµnh <color=orange>%d<color> ®iÓm s¸t th­¬ng thuéc tÝnh b¨ng, ®ång thêi lµm kÎ ®Þch ®øng yªn trong <color=orange>%.2f<color> gi©y,\n", nMag, nPois)
			end,
		addskilldamage1={
			[1]={{1,1382},{2,1382}},
			[3]={{1,1},{20,60},{31,70}}
		},
	},

	xiyi_jianfa={ --Hi Di Kiem Phap
		addphysicsdamage_p={{{1,35},{20,145},{26,185},{32,245},{33,245}},{{1,-1},{2,-1}},{{1,0},{2,0}}},
	},
	
	qizhen_shanhe={ --Khi Chan Son ha
		item_reserve9={{{1,10},{20,20},{32,25}},{{1,-1},{20,-1},{32,-1}}},
		item_reserve5={{{1,10},{20,20},{32,25}},{{1,-1},{20,-1},{32,-1}}},
	},

	tianshen_daoxuan={ --Thien Than Dao Huyen
		seriesdamage_p={{{1,5},{20,30}}},
		physicsenhance_p={{{1,30},{20,155}}},
		deadlystrike_p={{{1,10},{20,52}},{{1,-1},{2,-1}}},
		colddamage_v={
			[1]={{1,35},{20,315}},
			[3]={{1,45},{20,450}},
		},
		addskilldamage1={
			[1]={{1,1363},{2,1363}},
			[3]={{1,15},{20,112},{21,114}},
		},
		addskilldamage2={
			[1]={{1,1368},{2,1368}},
			[3]={{1,1},{20,70}}
		},
		skill_desc=
		function(level)
			local nMag = floor(Link(level,SKILLS.pogun_poqiang.candetonate1[3]))
			return format("Gì ®å trªn ng­êi <color=orange>%d<color> trong ph¹m vi mµn h×nh<color=blue> Bçng Huýnh L­îc §Þa<color>, <color=blue>Giang H¶i Né Lan<color>,\n", nMag)
		end,
	},
	pogun_poqiang={
		candetonate1={
			[1]={{1,336*256+1},{2,336*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
		candetonate2={
			[1]={{1,337*256+1},{2,337*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
	},

	qiguan_changhong={ --Khi Quang truong hong
		item_reserve7={{{1,30},{20,100}},{{1,-1},{20,-1}}},
	},

	huanyan_yunyan={ --Huyen Nhan Van Yen
		item_reserve6={
			[1]={{1,1},{20,1}},
			[2]={{1,60*18},{20,180*18}}
		},
		walkrunshadow={{{1,10},{30,30}},{{1,60*18},{2,180*18}}},
		addcolddamage_v={{{1,100},{30,315}},{{1,60*18},{2,180*18}}},
		addcoldmagic_v={{{1,20},{30,315}},{{1,60*18},{2,180*18}}},
		fastwalkrun_p={{{1,9},{30,40}},{{1,60*18},{2,180*18}}},
		coldenhance_p={{{1,8},{30,37}},{{1,60*18},{2,180*18}}},
		lifemax_yan_p={{{1,10},{30,45}},{{1,60*18},{2,180*18}}},
		fatallystrikeres_p={{{1,10},{30,30}},{{1,60*18},{2,180*18}}},
		magicenhance_p={{{1,10},{30,20}},{{1,60*18},{2,180*18}}},
		anti_coldres_p={{{1,10},{30,20}},{{1,60*18},{2,180*18}}},
		fasthitrecover_v={{{1,10},{30,49}},{{1,60*18},{2,180*18}}},
	},

	cangsong_yingke={ --Thuong Tung Nghenh khach
		seriesdamage_p={{{1,1},{20,5}}},
		physicsenhance_p={{{1,1},{20,5}}},
		deadlystrike_p={{{1,10},{20,38},{23,38}},{{1,-1},{2,-1}}},
		colddamage_v={
			[1]={{1,10},{20,30}},
			[3]={{1,10},{20,30}},
		},
		addskilldamage1={
			[1]={{1,1363},{2,1363}},
			[3]={{1,15},{20,112}},
		},
		addskilldamage2={
			[1]={{1,1368},{2,1368}},
			[3]={{1,1},{20,50}},
		},
		skill_desc=
		function(level)
			local nMag = floor(Link(level,SKILLS.poanqi_pozhang.candetonate1[3]))
			return format("Gì ®å trªn ng­êi <color=orange>%d<color> trong ph¹m vi mµn h×nh<color=blue> V« ¶nh Xuyªn<color>, <color=blue> ThiÕt Liªn Tø S¸t<color>, <color=blue> Cµn Kh«n NhÊt TrÞch<color>,\n", nMag)
		end,
	},
	poanqi_pozhang={
		candetonate1={
			[1]={{1,331*256+1},{2,331*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
		candetonate2={
			[1]={{1,332*256+1},{2,332*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
		candetonate3={
			[1]={{1,333*256+1},{2,333*256+1}},
			[3]={{1,10},{15,25},{26,128},{27,128}}
		},
	},

	shenguang_xuanrao={ --Ma Van Kiem Khi
		fastwalkrun_p={{{1,-5},{15,-20},{20,-50},{32,-75},{33,-75}},{{1,18},{2,18}}},
		skill_enhance={
			[1]={{1,-5},{15,-25},{20,-85},{33,-135},{34,-135}},
			[2]={{1,18},{20,18}},
			[3]={},
		},
		addskilldamage1={
			[1]={{1,1382},{2,1382}},
			[3]={{1,1},{20,60},{31,70}}
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,1},{10,1},{20,1}}},
		skill_cost_v={{{1,30},{20,400},{26,500},{31,800},{32,800}}},
		skill_desc=
		function(level)
			local nMag = floor(Link(level,SKILLS.longxuan2.colddamage_v[3]))
			local nPois = format("%.2f", (floor(Link(level,SKILLS.longxuan2.frozen_action[2])*100/18 )/100))
			return format("KhÝ tr­êng bïng næ t¹o thµnh <color=orange>%d<color>®iÓm s¸t th­¬ng thuéc tUnh b¨ng, ®ång thêi lµm kÎ ®Þch ®øng yªn trong <color=orange>%.2f<color> gi©y.\n", nMag, nPois)
		end,
	},

	new_wuji={ --Kiem Khi Vo Cap Tang 2 
		sorbdamage_yan_p={{{1,10},{15,25},{32,80}},{{1,18},{2,18}}},
		anti_do_hurt_p={{{1,1},{15,5},{20,10},{31,20},{32,21}},{{1,18},{2,18}}},
		lifemax_p={{{1,5},{15,25},{20,80},{31,100},{32,100}},{{1,10},{31,18},{32,18}}},
		lifemax_yan_p={{{1,5},{15,20},{25,60},{31,70},{32,70}},{{1,10},{31,18},{32,18}}},
		lifereplenish_v={{{1,1},{15,4},{25,15},{26,15}},{{1,18},{2,18}}},
		manareplenish_v={{{1,1},{15,4},{25,15},{26,15}},{{1,18},{2,18}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,1},{10,1},{20,1}}},
		skill_cost_v={{{1,30},{20,400},{26,500},{31,800},{32,800}}},
		skill_desc=
			function(level)

				local nMag = floor(Link(level,SKILLS.longxuan2.colddamage_v[3]))
				local nPois = format("%.2f", (floor(Link(level,SKILLS.longxuan2.frozen_action[2])*100/18 )/100))
				return format("Kh?tr­êng bïng n?t¹o thµnh <color=orange>%d<color> ®iÓm s¸t th­¬ng thuéc tUnh b¨ng, ®ång thêi lµm k?®~ch ®øng yªn trong <color=orange>%.2f<color> gi©y,\n", nMag, nPois)
			end,
	},
	longxuan2={
		seriesdamage_p={{{1,20},{20,60}}},
		colddamage_v={
			[1]={{1,40},{25,2416},{28,2916}},
			[3]={{1,40},{25,2416},{28,2916}}
		},
		frozen_action= {
			[1]={{1,1},{20,1}},
			[2]={{1,0},{15,3},{20,6},{31,9},{32,9}},
			[3]={{1,1},{20,1}}
		},
	},

	duoming_start={ --Doat Menh Lien Hoan Tam Lien Kich
		autoreplyskill={{{1,(1*65536 + 1363)*256 + 1},{20,(1*65536 + 1363)*256 + 20},{21,(1*65536 + 1363)*256 + 21}},{{1,10*60*18},{20,10*60*18}},{{1,15*18*256 + 1},{20,15*18*256 + 3},{31,15*18*256 + 3},{32,15*18*256 + 3}}},
		manareplenish_v={{{1,-10000},{20,-10000}},{{1,10*60*18},{2,10*60*18}}},
		manareplenish_p={{{1,-200},{20,-200}},{{1,10*60*18},{2,10*60*18}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,1},{10,1},{20,1}}},
		skill_skillexp_v={{
				{1,SkillExpFunc(5000/EXP_RATE,1.25,1,3,1)},
				{2,SkillExpFunc(5000/EXP_RATE,1.15,2,3,1)},
				{3,SkillExpFunc(5000/EXP_RATE,1.16,3,3,1)},
				{4,SkillExpFunc(5000/EXP_RATE,1.17,4,3,1)},
				{5,SkillExpFunc(5000/EXP_RATE,1.18,5,3,1)},
				{6,SkillExpFunc(5000/EXP_RATE,1.19,6,3,1)},
				{7,SkillExpFunc(5000/EXP_RATE,1.20,7,3,1)},
				{8,SkillExpFunc(5000/EXP_RATE,1.21,8,3,1)},
				{9,SkillExpFunc(5000/EXP_RATE,1.22,9,3,1)},
				{10,SkillExpFunc(5000/EXP_RATE,1.23,10,3,1)},
				{11,SkillExpFunc(5000/EXP_RATE,1.24,11,3,1)},
				{12,SkillExpFunc(5000/EXP_RATE,1.23,12,3,1)},
				{13,SkillExpFunc(5000/EXP_RATE,1.22,13,3,1)},
				{14,SkillExpFunc(5000/EXP_RATE,1.21,14,3,1)},
				{15,SkillExpFunc(5000/EXP_RATE,1.20,15,3,1)},
				{16,SkillExpFunc(5000/EXP_RATE,1.19,16,3,1)},
				{17,SkillExpFunc(5000/EXP_RATE,1.18,17,3,1)},
				{18,SkillExpFunc(5000/EXP_RATE,1.17,18,3,1)},
				{19,SkillExpFunc(5000/EXP_RATE,1.16,19,3,1)},
				{20,SkillExpFunc(5000/EXP_RATE,1.15,20,3,1)},
			},
		},
	},
	duoming_lianhuan={ --Thai Nhac Tam Thanh Tang 2
		physicsenhance_p={{{1,10},{15,156},{20,566},{26,788},{32,812},{33,812}}},
		seriesdamage_p={{{1,10},{20,60},{21,62}}},
		colddamage_v={
			[1]={{1,10},{20,70},{26,100},{31,130},{32,130}},
			[3]={{1,10},{20,70},{26,100},{31,130},{32,130}}
		},
		deadlystrike_p={{{1,5},{20,20}}},
		addskilldamage1={
			[1]={{1,1368},{2,1368}},
			[3]={{1,1},{20,70}}
		},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_skillexp_v={{
				{1,SkillExpFunc(5000/EXP_RATE,1.25,1,3,1)},
				{2,SkillExpFunc(5000/EXP_RATE,1.15,2,3,1)},
				{3,SkillExpFunc(5000/EXP_RATE,1.16,3,3,1)},
				{4,SkillExpFunc(5000/EXP_RATE,1.17,4,3,1)},
				{5,SkillExpFunc(5000/EXP_RATE,1.18,5,3,1)},
				{6,SkillExpFunc(5000/EXP_RATE,1.19,6,3,1)},
				{7,SkillExpFunc(5000/EXP_RATE,1.20,7,3,1)},
				{8,SkillExpFunc(5000/EXP_RATE,1.21,8,3,1)},
				{9,SkillExpFunc(5000/EXP_RATE,1.22,9,3,1)},
				{10,SkillExpFunc(5000/EXP_RATE,1.23,10,3,1)},
				{11,SkillExpFunc(5000/EXP_RATE,1.24,11,3,1)},
				{12,SkillExpFunc(5000/EXP_RATE,1.23,12,3,1)},
				{13,SkillExpFunc(5000/EXP_RATE,1.22,13,3,1)},
				{14,SkillExpFunc(5000/EXP_RATE,1.21,14,3,1)},
				{15,SkillExpFunc(5000/EXP_RATE,1.20,15,3,1)},
				{16,SkillExpFunc(5000/EXP_RATE,1.19,16,3,1)},
				{17,SkillExpFunc(5000/EXP_RATE,1.18,17,3,1)},
				{18,SkillExpFunc(5000/EXP_RATE,1.17,18,3,1)},
				{19,SkillExpFunc(5000/EXP_RATE,1.16,19,3,1)},
				{20,SkillExpFunc(5000/EXP_RATE,1.15,20,3,1)},
			},
		},
	},

	pishi_poyu={ --Phach Thach Pha Ngoc
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		colddamage_v={
			[1]={{1,36},{15,480},{20,1200},{23,2064},{26,2496}},
			[3]={{1,46},{15,624},{20,1560},{23,2683},{26,3244}}
		},
		skill_cost_v={{{1,30},{20,65}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_skillexp_v={{
				{1,SkillExpFunc(5000/EXP_RATE,1.25,1,3,1)},
				{2,SkillExpFunc(5000/EXP_RATE,1.15,2,3,1)},
				{3,SkillExpFunc(5000/EXP_RATE,1.16,3,3,1)},
				{4,SkillExpFunc(5000/EXP_RATE,1.17,4,3,1)},
				{5,SkillExpFunc(5000/EXP_RATE,1.18,5,3,1)},
				{6,SkillExpFunc(5000/EXP_RATE,1.19,6,3,1)},
				{7,SkillExpFunc(5000/EXP_RATE,1.20,7,3,1)},
				{8,SkillExpFunc(5000/EXP_RATE,1.21,8,3,1)},
				{9,SkillExpFunc(5000/EXP_RATE,1.22,9,3,1)},
				{10,SkillExpFunc(5000/EXP_RATE,1.23,10,3,1)},
				{11,SkillExpFunc(5000/EXP_RATE,1.24,11,3,1)},
				{12,SkillExpFunc(5000/EXP_RATE,1.23,12,3,1)},
				{13,SkillExpFunc(5000/EXP_RATE,1.22,13,3,1)},
				{14,SkillExpFunc(5000/EXP_RATE,1.21,14,3,1)},
				{15,SkillExpFunc(5000/EXP_RATE,1.20,15,3,1)},
				{16,SkillExpFunc(5000/EXP_RATE,1.19,16,3,1)},
				{17,SkillExpFunc(5000/EXP_RATE,1.18,17,3,1)},
				{18,SkillExpFunc(5000/EXP_RATE,1.17,18,3,1)},
				{19,SkillExpFunc(5000/EXP_RATE,1.16,19,3,1)},
				{20,SkillExpFunc(5000/EXP_RATE,1.15,20,3,1)},
			},
		},
	},

	zixia_jianqi={ --Tu Ha Kiem Khi
		autorescueskill={{{1,1366*256 + 1},{20,1366*256 + 20},{21,1366*256 + 21}},{{1,-1},{20,-1}},{{1,5*18*256 + 1},{22,5*18*256 + 40},{23,5*18*256 + 40}}},
		skill_desc=
		function(level)
			local nMag =  floor(Link(level,SKILLS.zixia_jianqi.autorescueskill[3]) - 5*18*256)
			local nPois = floor(Link(level,SKILLS.zixia_xiaoguo.lifereplenish_v[1]))
			local nTime = floor(Link(level,SKILLS.zixia_xiaoguo.lifereplenish_v[2])/18)
			return format(" Sinh mÖnh thÊp h¬n 25%% trong chíp m¾t cã <color=orange>%d%%<color> tû lÖ tiÕp xóc mçi nöa gi©y håi phôc %d ®iÓm, kÐo dµi trong %d gi©y.\n", nMag, nPois, nTime)
		end,
		skill_skillexp_v={{
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
			},
		},	
	},
	zixia_xiaoguo={
		lifereplenish_v={{{1,300},{20,5075}},{{1,18*1},{26,18*5},{26,18*5}}},
	},

	jiujian_start={ --Cuu Kiem Hop Nhat 
		autoattackskill={{{1,1368*256 + 1},{20,1368*256 + 20},{21,1368*256 + 21}},{{1,10*60*18},{20,10*60*18}},{{1,15*18*256 + 1},{20,15*18*256 + 5},{31,15*18*256 + 5},{32,15*18*256 + 5}}},
		manareplenish_v={{{1,-10000},{20,-10000}},{{1,10*60*18},{2,10*60*18}}},
		manareplenish_p={{{1,-200},{20,-200}},{{1,10*60*18},{2,10*60*18}}},
		skill_desc=
			function(level)
				local nMag = floor(Link(level,SKILLS.jiujian_start.autoattackskill[3])-15*18*256)
				local nPois = floor(Link(level,SKILLS.jiujian_start.autoattackskill[3])/18/256)
				return format("Khi NÐ Tr¸nh §èi Ph­¬ng, <color=orange>%d%%<color> TØ LÖ Phãng ThÝch <color=blue>KiÕm Ph¸p - §éc C« Cöu KiÕm<color>, Thêi Gian §ãng B¨ng <color=orange>%d<color> Gi©y.", nMag,nPois)
			end,
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_showevent={{{1,1},{10,1},{20,1}}},
		skill_skillexp_v={{
				{1,SkillExpFunc(20000/EXP_RATE,1.25,1,1,1)},
				{2,SkillExpFunc(20000/EXP_RATE,1.25,2,1,1)},
				{3,SkillExpFunc(20000/EXP_RATE,1.25,3,1,1)},
				{4,SkillExpFunc(20000/EXP_RATE,1.25,4,1,1)},
				{5,SkillExpFunc(20000/EXP_RATE,1.25,5,1,1)},
				{6,SkillExpFunc(20000/EXP_RATE,1.25,6,1,1)},
				{7,SkillExpFunc(20000/EXP_RATE,1.25,7,1,1)},
				{8,SkillExpFunc(20000/EXP_RATE,1.25,8,1,1)},
				{9,SkillExpFunc(20000/EXP_RATE,1.25,9,1,1)},
				{10,SkillExpFunc(20000/EXP_RATE,1.25,10,1,1)},
				{11,SkillExpFunc(40000/EXP_RATE,1.25,11,1,1)},
				{12,SkillExpFunc(40000/EXP_RATE,1.25,12,1,1)},
				{13,SkillExpFunc(40000/EXP_RATE,1.25,13,1,1)},
				{14,SkillExpFunc(40000/EXP_RATE,1.25,14,1,1)},
				{15,SkillExpFunc(40000/EXP_RATE,1.25,15,1,1)},
				{16,SkillExpFunc(80000/EXP_RATE,1.25,16,1,1)},
				{17,SkillExpFunc(80000/EXP_RATE,1.25,17,1,1)},
				{18,SkillExpFunc(150000/EXP_RATE,1.25,18,1,1)},
				{19,SkillExpFunc(150000/EXP_RATE,1.25,19,1,1)},
				{20,SkillExpFunc(150000/EXP_RATE,1.25,20,1,1)},
				{21,300000},
				{22,300000},
				{23,300000},
				{24,300000},
				{25,300000},
				{26,500000},
				{27,500000},
				{28,500000},
				{29,500000},
				{30,500000},
			},
		},
	},

	jiujian_heyi={ --¾Å½£ºÏÒ»
		physicsenhance_p={{{1,3},{15,100},{20,130},{26,262},{31,312},{32,422}}},
		seriesdamage_p={{{1,10},{20,80},{21,82}}},
		fatallystrike_p={{{1,2},{15,25},{20,55},{25,85},{26,88}}},
		colddamage_v={
			[1]={{1,15},{20,110},{21,300},{24,944},{26,1054}},
			[3]={{1,15},{20,110},{21,300},{24,944},{26,1054}}
		},
		deadlystrike_p={{{1,15},{20,54},{26,66},{31,76},{32,89}}},
		skill_misslenum_v={{{1,4},{20,9},{21,9}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_skillexp_v={{
				{1,SkillExpFunc(20000/EXP_RATE,1.25,1,1,1)},
				{2,SkillExpFunc(20000/EXP_RATE,1.25,2,1,1)},
				{3,SkillExpFunc(20000/EXP_RATE,1.25,3,1,1)},
				{4,SkillExpFunc(20000/EXP_RATE,1.25,4,1,1)},
				{5,SkillExpFunc(20000/EXP_RATE,1.25,5,1,1)},
				{6,SkillExpFunc(20000/EXP_RATE,1.25,6,1,1)},
				{7,SkillExpFunc(20000/EXP_RATE,1.25,7,1,1)},
				{8,SkillExpFunc(20000/EXP_RATE,1.25,8,1,1)},
				{9,SkillExpFunc(20000/EXP_RATE,1.25,9,1,1)},
				{10,SkillExpFunc(20000/EXP_RATE,1.25,10,1,1)},
				{11,SkillExpFunc(40000/EXP_RATE,1.25,11,1,1)},
				{12,SkillExpFunc(40000/EXP_RATE,1.25,12,1,1)},
				{13,SkillExpFunc(40000/EXP_RATE,1.25,13,1,1)},
				{14,SkillExpFunc(40000/EXP_RATE,1.25,14,1,1)},
				{15,SkillExpFunc(40000/EXP_RATE,1.25,15,1,1)},
				{16,SkillExpFunc(80000/EXP_RATE,1.25,16,1,1)},
				{17,SkillExpFunc(80000/EXP_RATE,1.25,17,1,1)},
				{18,SkillExpFunc(150000/EXP_RATE,1.25,18,1,1)},
				{19,SkillExpFunc(150000/EXP_RATE,1.25,19,1,1)},
				{20,SkillExpFunc(150000/EXP_RATE,1.25,20,1,1)},
				{21,300000},
				{22,300000},
				{23,300000},
				{24,300000},
				{25,300000},
				{26,500000},
				{27,500000},
				{28,500000},
				{29,500000},
				{30,500000},
			},
		},	
	},

	shenguang_xuanrao1={ --Than Quang Toan Nhieu
		candetonate1={
			[1]={{1,419*256+0},{2,419*256+0}},
			[3]={{1,100},{26,450},{31,550},{32,560}}
		},
		candetonate2={
			[1]={{1,428*256+0},{2,428*256+0}},
			[3]={{1,100},{26,450},{31,550},{32,560}}
		},
		skill_cost_v={{{1,10},{15,300},{20,1100},{26,1300},{31,1500},{32,1600}}},
		skill_desc=
			function(level)

				local nMag = floor(Link(level,SKILLS.shenguang_xuanrao1.candetonate1[3]))
				return format("Bïng næ xung quanh <color=orange>%d<color> trong ph¹n vi phe ta <color=blue> Ma V©n KiÕm KhÝ<color>, g©y ra s¸t th­¬ng cao vµ ph¸ hiÖu qu¶ ®ãng b¨ng.\n", nMag)
			end,
		skill_skillexp_v={{
				{1,SkillExpFunc(20000/EXP_RATE,1.25,1,1,1)},
				{2,SkillExpFunc(20000/EXP_RATE,1.25,2,1,1)},
				{3,SkillExpFunc(20000/EXP_RATE,1.25,3,1,1)},
				{4,SkillExpFunc(20000/EXP_RATE,1.25,4,1,1)},
				{5,SkillExpFunc(20000/EXP_RATE,1.25,5,1,1)},
				{6,SkillExpFunc(20000/EXP_RATE,1.25,6,1,1)},
				{7,SkillExpFunc(20000/EXP_RATE,1.25,7,1,1)},
				{8,SkillExpFunc(20000/EXP_RATE,1.25,8,1,1)},
				{9,SkillExpFunc(20000/EXP_RATE,1.25,9,1,1)},
				{10,SkillExpFunc(20000/EXP_RATE,1.25,10,1,1)},
				{11,SkillExpFunc(40000/EXP_RATE,1.25,11,1,1)},
				{12,SkillExpFunc(40000/EXP_RATE,1.25,12,1,1)},
				{13,SkillExpFunc(40000/EXP_RATE,1.25,13,1,1)},
				{14,SkillExpFunc(40000/EXP_RATE,1.25,14,1,1)},
				{15,SkillExpFunc(40000/EXP_RATE,1.25,15,1,1)},
				{16,SkillExpFunc(80000/EXP_RATE,1.25,16,1,1)},
				{17,SkillExpFunc(80000/EXP_RATE,1.25,17,1,1)},
				{18,SkillExpFunc(150000/EXP_RATE,1.25,18,1,1)},
				{19,SkillExpFunc(150000/EXP_RATE,1.25,19,1,1)},
				{20,SkillExpFunc(150000/EXP_RATE,1.25,20,1,1)},
				{21,300000},
				{22,300000},
				{23,300000},
				{24,300000},
				{25,300000},
				{26,500000},
				{27,500000},
				{28,500000},
				{29,500000},
				{30,500000},
			},
		},	
	},
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
---------------------------------------------------------------------------------------------------------------------------------------------------------------------