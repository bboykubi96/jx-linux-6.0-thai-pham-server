-- script viet hoa By http://tranhba.com description: ���ng m�n 30 c�p nhi�m v� n�i Thanh Th�nh m�y tr�ng ��ng b�o r��ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 30*256+30) and (HaveItem(98) == 1) then					-- script viet hoa By http://tranhba.com �õ�Կ��һ
DelItem(98) 
AddEventItem(42) 
Msg2Player(" l�y ���c # h�a kh� ph� #") 
		SetTask(2, 30*256+50)
AddNote("Khai r��ng , l�y ���c # h�a kh� ph� # ") 
	elseif (UTask_tm >= 30*256+50) and (UTask_tm <= 30*256+60) and (HaveItem(42) == 0) then			-- script viet hoa By http://tranhba.com  ���߶���
AddEventItem(42) 
Talk(1,"","Th� ra l� ng��i c�y �u�c kh� ph� b� v�o b�o r��ng li�u !") 
	elseif (UTask_tm > 30*256+30) then 
Talk(1,"","B�o r��ng �� v� �ch ") 
else 
Talk(1,"","Kh�ng c� c�i ch�a kh�a , kh�ng th� m� ra b�o r��ng !.") 
end 
end; 
