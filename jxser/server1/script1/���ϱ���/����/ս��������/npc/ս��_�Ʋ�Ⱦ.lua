-- script viet hoa By http://tranhba.com  chi�n ��u _ ���ng b�t nhi�m .lua 
-- script viet hoa By http://tranhba.com  by: Dan_Deng(2004-04-12) 

function OnDeath() 
Uworld123 = GetTask(123) 
if (Uworld123 == 40) then 
SetTask(123,50) 
SetFightState(0) 
Talk(1,"","Th� n�o ta s� thua ��y ?!") 
Msg2Player("Ng��i �� ��nh b�i ���ng b�t nhi�m , c�n kh�ng �i an �i h�n m�t c�i ") 
NewWorld(36, 1592, 3193) -- script viet hoa By http://tranhba.com  ��a v� gi� t� th�nh 
end 
end 
