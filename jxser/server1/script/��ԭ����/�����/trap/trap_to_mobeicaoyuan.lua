-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu phong l�ng �� to M�c B�c th�o nguy�n 
-- script viet hoa By http://tranhba.com TrapID# 

function main(sel) 
--SetFightState(1); 
--NewWorld( 341, 1236, 3179); 
NewWorld( 341, 1281, 2499); 
SetFightState(0); 

DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h�n ch� k� ti�n v�o M�c B�c th�o nguy�n s� d�ng tr� v� th�nh ph� 
SetRevPos(175,1) -- script viet hoa By http://tranhba.com  thi�t ��nh t� vong s�ng l�i �i�m v� t�y s�n th�n 
			SetProtectTime(18*3) --�uA뱣��ʱ��
			AddSkillState(963, 1, 0, 18*3)
			ForbidChangePK(0);	-- dc doi pk
end
