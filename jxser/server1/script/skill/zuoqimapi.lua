--新坐骑宠物相关
Include("\\script\\skill\\head.lua")

SKILLS={
		--扬沙-聚力	--magic_enhancehit_rate --227 enhancehit_rate 重击概率增加
		yangshajuli={
			enhancehit_rate={{{1,1},{5,5}},{{1,18*5},{2,18*5}}},
		},
		--御风-停心	--magic_block_rate --226 block_rate 格挡概率
		yufengtingxin={
			block_rate={{{1,1},{5,5}},{{1,18*5},{20,18*5}}},
		},
		--追电-贪狼	--magic_skill_enhance --243	skill_enhance 对攻击技能加成
		zhuidiantanlang={
			skill_enhance={{{1,5},{3,15}},{{1,18*5},{2,18*5}}},
		},
		
		--流星-折骨 --magic_lifemax_yan_v	--233	lifemax_yan_v 生命力增加
		liuxingzhegu={
			lifemax_yan_v={{{1,500},{3,1500}},{{1,18*5},{2,18*5}}},
		},
		--惊雷-七杀 --magic_anti_allres_yan_p --268  anti_allres_yan_p 忽略全抗
		jingleiqisha={
			anti_allres_yan_p={
				[1]={{1,3},{2,6}},
				[2]={{1,18*5},{2,18*5}},
			},
		},
}
