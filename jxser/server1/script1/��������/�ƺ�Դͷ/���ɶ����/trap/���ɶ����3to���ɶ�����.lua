-- script viet hoa By http://tranhba.com  t�y b�c b�c khu l�u ti�n ��ng t�ng n�m 3to l�u ti�n ��ng s�u t�ng 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c b�c khu 41 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q5","Ng��i th�y m�t c� quan , ph�a tr�n c� kh�c #") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L60_q5() 
Say("Ho�ng �� � tr�n tr�i ��nh ��ch trung t�m , ph� t��ng c� ��t th�n h�u th� . ho�ng �� t�o xe , v� v�y x�ng l� hi�n vi�n th� , ng��i bi�t hi�n l� ch� xe ��ch kia b� ph�n sao ? ",4,"B�nh xe /L60_S5_wrong","Tr�c xe /L60_S5_wrong","Hai d�ng ��u g� l�m s�c v�t gi�ng nh� /L60_S5_correct","Sau xe ��ch ��u g� kho /L60_S5_wrong") 
end 

function L60_S5_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(15) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(15) == 1)) then
Msg2Player("Ng��i theo nh� th� 3 c� c�u tr� l�i , c� quan kh�i ��ng d�n ng��i ��n m�t c�i m�t th�t ") 
SetFightState(1); 
NewWorld(130, 1547, 3143); 
else 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t nh�ng l� kh�ng c� ph�n �ng ") 
end 
end; 

function L60_S5_wrong() 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t nh�ng l� kh�ng c� ph�n �ng ") 
end; 
