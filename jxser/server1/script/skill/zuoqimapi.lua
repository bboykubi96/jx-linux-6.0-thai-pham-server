--������������
Include("\\script\\skill\\head.lua")

SKILLS={
		--��ɳ-����	--magic_enhancehit_rate --227 enhancehit_rate �ػ���������
		yangshajuli={
			enhancehit_rate={{{1,1},{5,5}},{{1,18*5},{2,18*5}}},
		},
		--����-ͣ��	--magic_block_rate --226 block_rate �񵲸���
		yufengtingxin={
			block_rate={{{1,1},{5,5}},{{1,18*5},{20,18*5}}},
		},
		--׷��-̰��	--magic_skill_enhance --243	skill_enhance �Թ������ܼӳ�
		zhuidiantanlang={
			skill_enhance={{{1,5},{3,15}},{{1,18*5},{2,18*5}}},
		},
		
		--����-�۹� --magic_lifemax_yan_v	--233	lifemax_yan_v ����������
		liuxingzhegu={
			lifemax_yan_v={{{1,500},{3,1500}},{{1,18*5},{2,18*5}}},
		},
		--����-��ɱ --magic_anti_allres_yan_p --268  anti_allres_yan_p ����ȫ��
		jingleiqisha={
			anti_allres_yan_p={
				[1]={{1,3},{2,6}},
				[2]={{1,18*5},{2,18*5}},
			},
		},
}
