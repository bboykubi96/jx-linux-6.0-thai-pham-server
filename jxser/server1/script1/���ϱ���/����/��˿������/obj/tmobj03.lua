-- script viet hoa By http://tranhba.com description: ���ng m�n xu�t s� nhi�m v� tr�c ti ��ng t�ng th� ba b�o r��ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 
UTask_tm = GetTask(2) 
	if (UTask_tm == 60*256+60) then
if (HaveItem(49) == 0) then 
Say("R��ng b�n trong c� m�t chu�i t�n ph� sinh t� ��ch thi�t ki�m ", 2,"C�n /accept","Kh�ng c�n /refuse") 
else 
Talk(1,"","B�o r��ng �� v� �ch ") 
end 
	elseif (UTask_tm == 60*256+70) then 
Talk(1,"","Ng��i �� m� ra m�t ng��i kh�c b�o r��ng , kh�ng th� n�a m� ra b�o n�y r��ng !") 
else 
Talk(1,"","Ng��i m� ra b�o r��ng , nh�ng l� , n� gi�ng nh� sinh t� li�u !") 
end 
end; 

function accept() 
AddEventItem(49) 
Msg2Player("# l�y ���c th�t tinh tuy�t m�nh ki�m ") 
-- script viet hoa By http://tranhba.com  SetTask(2, 67) 
AddNote(" � tr�c ti ��ng t�ng th� ba c� 2 c� b�o r��ng , ��nh n�t m�t ng��i trong �� , �em l�y ���c th�t tinh tuy�t m�nh ki�m . ") 
end; 

function refuse() 
end; 
