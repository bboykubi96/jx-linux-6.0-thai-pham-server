--��Ч�ɲ�¶
--8Сʱ����˫��
IncludeLib("SETTING"); --����SETTING�ű�ָ���


function main()
	if GetLevel()  < 60 then
		Say("C�p �� nh� h�n 60, kh�ng th� s� d�ng Ti�n Th�o L�")
		return 1
	end

	if GetSkillState(440) == 1 then 
		Say("C�c h� v�n th�i gian t� hi�u �ng Ti�n th�o l�, kh�ngth� d�ng nhi�u b�nh c�ng l�c xin h�y ch� ��i cho ��n h�t t�c d�ng.!", 0, "Ta bi�t r�i!/OnCancel")
		return 1
	else
		AddSkillState(440, 1, 1, 64800 * 8, 1);
		return 0
	end
end;

function OnCancel() return end