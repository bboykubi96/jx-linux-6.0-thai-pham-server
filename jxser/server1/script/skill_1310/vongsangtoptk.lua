TAB_SKILL = {
	skill_1=
	{	
		lifemax_v = {1000, -1, 0},
		allres_p = {5, -1, 0},
		fastwalkrun_p = {10, -1, 0},
	},
	skill_2=
	{	
		lifemax_v = {500, -1, 0},
		allres_p = {4, -1, 0},
		fastwalkrun_p = {10, -1, 0},
	},
	skill_3=
	{	
		lifemax_v = {300, -1, 0},
		allres_p = {3, -1, 0},
		fastwalkrun_p = {10, -1, 0},
	},
	skill_4=
	{	
		allres_p = {5, -1, 0},
		lifemax_v = {500, -1, 0},
	},
	skill_5=
	{	
		allres_p = {5, -1, 0},
		lifemax_v = {500, -1, 0},
		manamax_v = {1000, -1, 0},
	},
	skill_6=
	{	
		fastwalkrun_p = {-150, -1, 0},
	},
	skill_7=
	{	
		lifereplenish_v = {-50, -1, 0},
		manareplenish_v = {-50, -1, 0},
	},
	skill_8=
	{	
		freezetimereduce_p = {-100, -1, 0},
		stuntimereduce_p = {-100, -1, 0},
		fasthitrecover_v = {-40, -1, 0},

	},
	skill_9=
	{	
		fasthitrecover_v = {50, -1, 0},
		fatallystrikeres_p = {100, -1, 0},
		freezetimereduce_p = {100, -1, 0},
		poisontimereduce_p = {100, -1, 0},
		stuntimereduce_p = {100, -1, 0},

	},
	skill_10=
	{	
		lifemax_v = {500, -1, 0},
		allres_p = {5, -1, 0},
	},
		skill_11=
	{	
		lifemax_v = {1000, -1, 0},
		allres_p = {5, -1, 0},
		fastwalkrun_p = {10, -1, 0},
	},
		skill_12=
	{	
		lifemax_v = {200, -1, 0},
		allres_p = {2, -1, 0},
		fastwalkrun_p = {10, -1, 0},
	},
			skill_13=
	{	
		allres_p = {10, -1, 0},
		lifemax_p = {10, -1, 0},
		manamax_p = {10, -1, 0},
	},
		skill_14=
	{	
		allres_p = {3, -1, 0},
		lifemax_v = {300, -1, 0},
	},
	tltv=
	{
		addphysicsdamage_v={40, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?i��m
		addphysicsmagic_v={500, -1, 0},  --sS?t th-?ng v?t ly - n��i c?ng: #d1+ ?i��m
	},
		clvd=
	{
		addphysicsdamage_v={20, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?i��m
		addlightingdamage_v={100, -1, 0}, --L?i s?t - ngoai c?ng #d1+ ?i��m/l?n
		addlightingmagic_v={300, -1, 0}, --L?i s?t - n��i c?ng: #d1+ ?i��m
	},
			nmty=
	{
		addphysicsdamage_v={35, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?i��m
		addcoldmagic_v={350, -1, 0}, --B��ng s?t - n��i c?ng: #d1+ ?i��m
		addcolddamage_v={50, -1, 0},  --B��ng s?t - ngoai c?ng: #d1+ ?i��m
	},
				cbtn=
	{
		addphysicsdamage_v={30, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?i��m
		addfiredamage_v={50, -1, 0}, --H��a s?t -ngoai c?ng: # #d1+ ?i��m
		addfiremagic_v={300, -1, 0},  --H��a s?t - n��i c?ng: #d1+ ?i��m

	},
					nddm=
	{
		addphysicsdamage_v={10, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?i��m
		addpoisondamage_v={25, -1, 0}, --�쨦c s?t - ngoai c?ng: #: #d1+ ?i��m
		addpoisonmagic_v={100, -1, 0},  --�쨦c s?t - n��i c?ng: #d1+ ?i��m/l?n
	},
}

-----------------------------------------------------------
--����GetSkillLevelData(levelname, data, level)
--levelname��ħ����������
--data����������
--level�����ܵȼ�
--return������������Ϊdata�����ܵȼ�Ϊlevel
--			ʱ��ħ������levelname����������������ľ���ֵ
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	local skill = TAB_SKILL[data]
	if (not skill) then
		return ""
	end
	local tb = skill[levelname]
	if (not tb) then
		return ""
	end
	return format("%d,%d,%d", tb[1], tb[2], tb[3])
end
