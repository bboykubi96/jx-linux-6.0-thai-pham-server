--��Ч�ɲ�¶
--8Сʱ����˫��
IncludeLib("SETTING"); --����SETTING�ű�ָ���
Include("\\script\\global\\g7vn\\g7configall.lua")
function main()
--dofile("script/item/xiancaolu_special.lua")

	--do Say("Hi�n t�i ch�a th� s� d�ng v�t ph�m n�y.") return end

	
	if DangDuaTop == 1 then
		Say("�ang trong qu� tr�nh �ua top, kh�ng th� s� d�ng Ti�n Th�o L�")
		return 1
	end

	AddSkillState(440, 1, 1, 64800 * 8);
end;