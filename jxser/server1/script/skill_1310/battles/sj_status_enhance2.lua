-- ����Ѫ����������״̬���ļ��ܼ���ʽ
-- ״̬�����ӣ���ֵ����ʽ���𼶳�������400��״̬���������ظ��ԣ�

Include("\\script\\skill\\param2string.lua")

-- DEFAULT_ENHANCE_TIME = 30*18;	-- Ĭ��״̬�����״̬ά��ʱ�䣨30�룩���ɸ��ݾ���ʹ����Ҫ�ڵ���AddSkillStateʱָ��ʱ��
DEFAULT_ENHANCE_TIME = 600*18;	-- th�i gian t�n t�i skill t?nh b�ng ph�t
-- VALUE_ENHANCE_PER_LEVEL = 100;	-- һ�����ܶ�Ӧ��״̬����������
VALUE_ENHANCE_PER_LEVEL = 50;	-- t�c �� h�i ��n vi. /1

function GetSkillLevelData(levelname, data, level)
		if (levelname == "lifereplenish_v") then
		return GetStatusEnhance_V(level);
	end
	if (levelname == "manareplenish_v") then
		return GetStatusEnhance_V(level);
	end
	strNull = "";
	return strNull
end

-- ״̬�����ӣ���ֵ����ʽ
function GetStatusEnhance_V(level)
	local enhance_value = VALUE_ENHANCE_PER_LEVEL * level;
	return Param2String(enhance_value, DEFAULT_ENHANCE_TIME, 0);
end