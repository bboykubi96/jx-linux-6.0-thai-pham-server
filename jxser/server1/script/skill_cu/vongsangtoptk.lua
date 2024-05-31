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
		addphysicsdamage_v={40, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?ióm
		addphysicsmagic_v={500, -1, 0},  --sS?t th-?ng v?t ly - néi c?ng: #d1+ ?ióm
	},
		clvd=
	{
		addphysicsdamage_v={20, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?ióm
		addlightingdamage_v={100, -1, 0}, --L?i s?t - ngoai c?ng #d1+ ?ióm/l?n
		addlightingmagic_v={300, -1, 0}, --L?i s?t - néi c?ng: #d1+ ?ióm
	},
			nmty=
	{
		addphysicsdamage_v={35, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?ióm
		addcoldmagic_v={350, -1, 0}, --B¨ng s?t - néi c?ng: #d1+ ?ióm
		addcolddamage_v={50, -1, 0},  --B¨ng s?t - ngoai c?ng: #d1+ ?ióm
	},
				cbtn=
	{
		addphysicsdamage_v={30, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?ióm
		addfiredamage_v={50, -1, 0}, --Háa s?t -ngoai c?ng: # #d1+ ?ióm
		addfiremagic_v={300, -1, 0},  --Háa s?t - néi c?ng: #d1+ ?ióm

	},
					nddm=
	{
		addphysicsdamage_v={10, -1, 0}, --sS?t th-?ng v?t ly - ngoaicong c?ng: #d1+ ?ióm
		addpoisondamage_v={25, -1, 0}, --§éc s?t - ngoai c?ng: #: #d1+ ?ióm
		addpoisonmagic_v={100, -1, 0},  --§éc s?t - néi c?ng: #d1+ ?ióm/l?n
	},
}

-----------------------------------------------------------
--函数GetSkillLevelData(levelname, data, level)
--levelname：魔法属性名称
--data：技能名称
--level：技能等级
--return：当技能名称为data，技能等级为level
--			时的魔法属性levelname所需求的三个参数的具体值
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
