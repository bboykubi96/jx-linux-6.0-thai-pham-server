-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu phong l�ng �� to long m�n tr�n 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
SetFightState(1); 
NewWorld( 121, 2209, 4179); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  kh�ng h�n ch� k� r�i �i phong l�ng �� sau s� d�ng tr� v� th�nh ph� 
			SetProtectTime(18*3) --�uA뱣��ʱ��
			AddSkillState(963, 1, 0, 18*3)
			ForbidChangePK(0);	-- dc doi pk
end
