IncludeLib("SETTING"); --����SETTING�ű�ָ���

function main()
	--dofile("script/item/tongexpmedicine.lua")
		if (GetNpcExpRate() <= 250) then
		AddSkillState(440, 1, 1, 32400);
	else
		Say("Hi�n t�i h� th�ng �ang cho nh�n ��i kinh nghi�m, t�m th�i kh�ng th� s� d�ng Tu Th�n Ho�n.", 0)
		return 1
	end
	return 0
end