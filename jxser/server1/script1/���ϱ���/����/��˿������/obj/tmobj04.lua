-- script viet hoa By http://tranhba.com description: ���ng m�n xu�t s� nhi�m v� tr�c ti ��ng t�ng th� ba b�o r��ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 

UTask_tm = GetTask(2) 
	if (UTask_tm == 60*256+60) then
if (HaveItem(49) == 0) then 
Say("M�t v�n l��ng b�c . ", 2,"Mu�n /accept","Kh�ng mu�n /refuse") 
else 
Talk(1,"","Ng��i �� m� ra m�t ng��i kh�c b�o r��ng , kh�ng th� n�a m� ra b�o n�y r��ng !") 
end 
	elseif (UTask_tm == 60*256+70) then
Talk(1,"","B�o r��ng �� v� �ch ") 
else 
Talk(1,"","Ng��i m� ra b�o r��ng , nh�ng l� , n� gi�ng nh� �� sinh t� li�u !") 
end 
end; 

function accept() 
Earn(10000) 
	SetTask(2, 60*256+70)
AddNote(" � tr�c ti ��ng t�ng th� ba b�o r��ng trong ��t ���c m�t v�n l��ng b�c . ") 
Msg2Player("��t ���c m�t v�n l��ng b�c ") 
end; 

function refuse() 
end; 
