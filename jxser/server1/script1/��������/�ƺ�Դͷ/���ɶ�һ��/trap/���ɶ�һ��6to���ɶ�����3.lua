-- script viet hoa By http://tranhba.com  t�y b�c b�c khu l�u ti�n ��ng m�t t�ng 6to l�u ti�n ��ng t�ng hai 3 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c b�c khu 25 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q1","Ng��i th�y m�t c� quan , ph�a tr�n c� kh�c ch� #") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L60_q1() 
Say("Truy�n thuy�t ph�c hi l� l�i th�n ��ch con trai , h�n t� t� nhi�n l�a l�i trung l�y ���c lo�i l�a mang t�i nh�n gian , ph�c hi sau , m�i c� chui , d�ng chui l�y l�a l� ai ph�t minh ��ch ? ",4,"M�nh m�u /L60_S1_wrong","Suy ng��i /L60_S1_correct","N� Oa /L60_S1_wrong","V��ng m�u /L60_S1_wrong") 
end 

function L60_S1_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(11) == 1))) then
Msg2Player("Ng��i xem th�y m�t c� quan , ph�a tr�n c� kh�c #") 
SetFightState(1); 
NewWorld(126,1483,3039) 
else 
Msg2Player("Ng��i lung tung nh�n v�a th�ng su�t nh�ng l� kh�ng c� ph�n �ng ") 
end 
end; 

function L60_S1_wrong() 
Msg2Player("Ng��i lung tung nh�n v�a th�ng su�t nh�ng l� kh�ng c� ph�n �ng ") 
end; 
