IncludeLib("SETTING");

Include("\\script\\activitysys\\playerfunlib.lua")
function main(nItemIndex)
--dofile("script/item/xiancaolu_special.lua")

	--do Say("Hi�n t�i ch�a th� s� d�ng v�t ph�m n�y.") return end

	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P == 1181 then
		--Say("V�t Ph�m L�i, �� Hu� B�")
		--return 1
	end
if GetSkillState(440)>=1 then
Say("Th�t tham lam, Ngu D�t tr�n ng��i �� c� Ti�n Th�o L� r�i, Kh�ng th� s� d�ng th�m.")
		return 1
end
--	AddSkillState(440, 1, 1, 64800 * 8);
	PlayerFunLib:AddSkillState(440,2,3,64800*8,1)
end;