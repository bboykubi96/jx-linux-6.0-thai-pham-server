-- script viet hoa By http://tranhba.com  t�y b�c b�c khu l�u ti�n ��ng t�ng hai 5to l�u ti�n ��ng t�ng ba 2 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c b�c khu 29 
-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n m� cung F2-F3 trap 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q2","Ng��i l� t�i l�m nhi�m v� sao ? ") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L60_q2() 
Say("Vi�m �� nguy�n l� m�t tr�i th�n , c�ng l� m�t v� n�ng nghi�p th�n , h�n b�o ��m b�u tr�i m�t tr�i ph�t ra quang , tr� gi�p ng� c�c sinh tr��ng . khi �� tr�n ��a c�u ng��i c�a kh�ng bu�n �n m�c , v� v�y m�i ng��i t�n x�ng h�n l� th�n N�ng th� . th�n N�ng th� c�ng l� m�t v� y d��c th�n , h�n l�m ng��i c�a n�m tr�n tr�m lo�i c� , cu�i c�ng tr�ng ��c m� ch�t . l�a th�n c� m�t c� g�i , ��n ��ng h�i ch�i th�i �i�m b�t h�nh ch�t ch�m b� m�nh , t� nay bi�n th�nh m�t c�i nh� �i�u , mi�ng ng�m �� b� v�o ��ng h�i , mu�n l�p ��y bi�n r�ng . ng��i bi�t c�i n�y ti�u �i�u ��ch t�n sao ? ",4,"Khen ph� /L60_S2_wrong","Ngu c�ng /L60_S2_wrong","H�u Ngh� /L60_S2_wrong","Tinh v� /L60_S2_correct") 
end 

function L60_S2_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(12) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(12) == 1)) then
Msg2Player("Ng��i theo nh� th� 4 c� c�u tr� l�i , c� quan s� d�n ng��i ��n th� 3 t�ng . ") 
SetFightState(1); 
NewWorld(127, 1614, 3083); 
else 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t , nh�ng l� kh�ng c� g� ph�n �ng ") 
end 
end; 

function L60_S2_wrong() 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t , nh�ng l� kh�ng c� g� ph�n �ng ") 
end; 
