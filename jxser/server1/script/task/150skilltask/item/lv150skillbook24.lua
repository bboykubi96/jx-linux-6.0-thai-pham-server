
sbook_150skill_list = {
		[0] = {1055, 1056, 1057},
		[1] = {1058, 1059, 1060},
		[2] = {1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
		[10] = {1369, 1384},
                [11] = {1969, 1985},
}

sbook_factstep_list = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
		[10] = 5,
                [11] = 5,
	}

function main()
	local TSK_LV150_SKILL = 2885
	local SBOOK_150SKILL_TASKSTATE = 14
	local nFact = GetLastFactionNumber()
	local openSkill = GetTask(3000)
		if openSkill ~= 7 then
			Say("Ng��i kh�ng th� n�ng c�p skill n�y")
			return 1
		end
	if nFact == -1 then	
		Msg2Player("<color=yellow>Ng��i v�n ch�a gia nh�p m�n ph�i n�o, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	if GetLevel() < 150 then
		Msg2Player("<color=yellow>��ng c�p c�a ng��i th�p h�n 150, kh�ng th� h�c y�u quy�t n�y! <color>");
		return 1
	end
	
	local tb150Skill = sbook_150skill_list[nFact]
	local szMsg = ""
	local nFlag = 0
	for i = 1, getn(tb150Skill) do
		local nSkillId = tb150Skill[i]
		if (HaveMagic(nSkillId) == 23) then		-- ����û�м��ܵĲŸ�����
			if nSkillId == 1110 then
				AddMagic(nSkillId, 0)
			else
				AddMagic(nSkillId, 24)
			end
			if nFlag == 1 then
				szMsg = format("%s,", szMsg)
			else
				szMsg = "Ng��i �� h�c r�i"
			end
			szMsg = format("%s%s", szMsg, GetSkillName(nSkillId))
			nFlag = 1
		end
	end
	SetTask(3000, openSkill + 1)
	SetTask(TSK_LV150_SKILL, SBOOK_150SKILL_TASKSTATE*100+sbook_factstep_list[nFact])
	if szMsg == "" then
		--Fix l�i text - Modified By DinhHQ - 20111025
		szMsg = "Ng��i �� nghi�n c�u l�nh h�i ���c v� h�c, kh�ng th� s� d�ng th�m ho�c ��ng c�p k� n�ng c�p 150 c�a ng��i th�p h�n 22,n�n kh�ng th� h�c y�u quy�t n�y."
		Msg2Player(szMsg)
		return 1
	end
end