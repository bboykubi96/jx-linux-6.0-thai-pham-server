-- script viet hoa By http://tranhba.com  t�y nam b�c khu tr�c ti ��ng m�t t�ng to tr�c ti ��ng t�ng hai 
-- script viet hoa By http://tranhba.com Trap ID# t�y nam b�c khu 7 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main(sel) 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 60*256+20) and (HaveItem(99) == 1)) then			-- script viet hoa By http://tranhba.com �����в�����Կ��
DelItem(99) 
SetFightState(1) 
NewWorld(27, 1522, 3205) 
		SetTask(2, 60*256+40)
	elseif (UTask_tm > 60*256+20) and (GetFaction() == "tangmen") then		-- script viet hoa By http://tranhba.com  ������һ���ı��ŵ��ӿ�����������
SetFightState(1) 
NewWorld(27, 1522, 3205) 
else 
Talk(1,"","Kh t�n g c?ch# kh#, b# kh t�n g th?v k� t#g 2 Tr b� T?#ng.") 
end 
end; 
