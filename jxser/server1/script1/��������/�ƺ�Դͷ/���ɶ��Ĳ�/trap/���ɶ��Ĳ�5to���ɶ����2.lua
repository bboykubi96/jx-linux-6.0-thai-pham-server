-- script viet hoa By http://tranhba.com  t�y b�c b�c khu l�u ti�n ��ng b�n t�ng 5to l�u ti�n ��ng t�ng n�m 2 
-- script viet hoa By http://tranhba.com TrapID# t�y b�c b�c khu 39 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main(sel) 
Talk(1,"L60_q4","Ng��i th�y m�t c� quan , ph�a tr�n c� kh�c m�y h�ng ch� ") 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L60_q4() 
Say("V� tr� s� khai , thi�n ��a c�ch xa nhau kh�ng xa , lo�i ng��i c� th� �i tr�n thang l�u thi�n ��nh , ng�c ho�ng n�i # ng��i ph�m c�ng thi�n th�n b� d�ng nh� v�y th�t s� l� h�n ��n , v� v�y ra l�nh thi�n th�n c�a �em thi�n ��a c�ch xa , ng��i bi�t ph�a d��i nh�ng th� n�y th�nh ng� ��ch huy�n c� sao ?",4,"Thi�n hoang ��a l�o /L60_S4_wrong","Thi�n ��a chia ��u /L60_S4_correct","Thi�n nam ��a b�c /L60_S4_wrong","Tr�i cao ��t r�ng /L60_S4_wrong") 
end 

function L60_S4_correct() 
UTask_kl = GetTask(9) 
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(14) == 1))) then
-- script viet hoa By http://tranhba.com 	if ((UTask_kl == 60*256+20) and (HaveItem(14) == 1)) then
Msg2Player("Ng��i theo nh� tr��c m�t th� hai , c� quan s� d�n ng��i ��n t�ng th� n�m ") 
SetFightState(1); 
NewWorld(129, 1597, 3212); 
else 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t , nh�ng l� kh�ng c� ph�n �ng ") 
end 
end; 

function L60_S4_wrong() 
Msg2Player("Ng��i nh�n lo�n v�a th�ng su�t , nh�ng l� kh�ng c� ph�n �ng ") 
end; 
