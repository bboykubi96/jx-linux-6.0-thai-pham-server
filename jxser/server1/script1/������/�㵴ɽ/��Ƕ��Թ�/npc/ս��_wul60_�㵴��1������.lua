-- script viet hoa By http://tranhba.com  Nh�n ��ng s�n d� gi�c ��ng m� cung chi�n ��u NPC 1 ��i �� t� # n�m ��c xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if ((UTask_wu == 60*256+10) and (HaveItem(222) == 0)) then		-- script viet hoa By http://tranhba.com  �������У���δ�õ�������Ʒ
		i = GetTaskTemp(48) + random(0,2)			-- script viet hoa By http://tranhba.com  �����������0��2���ӵ�5���ɴ��BOSS
if (i >= 5) then 
			SetTask(10,60*256+20)
SetTaskTemp(48,0) 
AddNote("Nh�n ��ng ph�i ch��ng m�n �� xu�t hi�n ") 
Msg2Player("Ng��i gi�t v� s� ng��i sau , nh�n ��ng ph�i ch��ng m�n cu�i c�ng xu�t hi�n ") 
else 
SetTaskTemp(48,i) 
Msg2Player("Ng��i gi�t m�t t�n nh�n ��ng ph�i ��ch �� t� ") 
end 
end 
end; 
