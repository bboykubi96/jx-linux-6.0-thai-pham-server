-- script viet hoa By http://tranhba.com description: ���ng m�n c�nh t� k� 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(7) == 1 then 
allbrother_0801_FindNpcTaskDialog(7) 
return 0; 
end 
UTask_tm = GetTask(2) 
	if (UTask_tm == 40*256+20) then
if (GetTaskTemp(4) == 31) then -- script viet hoa By http://tranhba.com  �� ��nh b�i n�m con s�ng v�t 
Talk(7, "L40_step42","V�n b�i ���ng m�n �� t� , ra m�t c�nh t� v� c�ng l�n hi�p ! ","���ng d� l� g� c�a ng��i ?", " l� v�n b�i s� th�c .","H� # h�n l� kh�ng m�t m�i t�i g�p ta , c�n ch�a ph�i d�m ��n th�y ta ? ph�i ng��i t�n ti�u b�i n�y t�i l�m c�i g� ?","Ti�n b�i hi�u l�m , n�m �� s� th�c kh�ng ph�i l� th�y ch�t m� kh�ng c�u , m� l� b�i v� b�n m�n l�p c� m�n quy , kh�ng ph�i v� ngo�i nh�n ch�a b�nh , cho n�n h�n b�y gi� t�nh kh�ng ph�i �� , nh�ng n�m n�y h�n c�ng m�t m�c h�t s�c �y n�y !","Nh�ng th� n�y nguy�n do h�n t�i sao kh�ng t� m�nh ��n h��ng ta gi�i th�ch ?","Ti�n b�i ��i v�i s� th�c hi�u l�m qu� s�u , s� r�ng v�a th�y m�t c�n ch� kh�ng k�p m� mi�ng , li�n ?") 
else 
Talk(1,"","B�t k� ng��i l� ai , c� chuy�n g� tr��c ��nh b�i ta <color=Red> n�m con nh� s�c �� b�i lang # m�nh h� # kim ti�n b�o # heo r�ng # t�ng h�ng <color> l�i n�i !") 
-- script viet hoa By http://tranhba.com  AddNote(" � n�i Thanh Th�nh t�y b� t�m ���c c�nh t� k� , c�n tr��c ��nh b�i h�n n�m con nh� s�c m�i c� th� b� c�nh t� k� �� � t�i . ") 
end 
	elseif (UTask_tm == 40*256+60) then
if (HaveItem(43) == 1) and (HaveItem(44) == 1) and (HaveItem(45) == 1) and (HaveItem(46) == 1) and (HaveItem(47) == 1) then -- script viet hoa By http://tranhba.com  �� l�y ���c n�m lo�i d��c li�u 
Talk(2, "","Ti�n b�i , c�i n�y n�m lo�i ch�nh l� tr� li�u qu�i b�nh ��ch d��c li�u , s� th�c n�i ch� c�n �n ba l�n li�n c� th� kh�i r�i !","Th�t t�t qu� # con g�i c�a ta ���c c�u r�i # c�m �n ng��i # c�m �n ng��i # �a t� c�m �n ng��i s� th�c , l� ta hi�u l�m h�n !") 
DelItem(43) 
DelItem(44) 
DelItem(45) 
DelItem(46) 
DelItem(47) 
			SetTask(2, 40*256+80)
AddNote("��ng ph��ng thu�c cho c�nh t� k� , th�nh c�ng h�a gi�i h�n c�ng v�i ���ng d� ��ch �n o�n ") 
Msg2Player("T�m ���c 5 lo�i d��c li�u cho c�nh t� k� , th�nh c�ng h�a gi�i h�n c�ng v�i ���ng d� ��ch �n o�n ") 
else 
Talk(3, "","Ng��i th�t s� c� bi�n ph�p c�u ta n� nhi sao ?","���ng d� s� th�c �� n�i cho ta bi�t ph��ng thu�c , ta �ang t�m tr� li�u qu�i b�nh c�n ��ch n�m lo�i d��c li�u ","Th�t c�m �n ng��i . ") 
end 
	elseif (UTask_tm >= 40*256+40) and (UTask_tm < 40*256+80) then					-- script viet hoa By http://tranhba.com ��δ���40������
Talk(1,"","Ng��i th�t s� c� bi�n ph�p c�u ta n� nhi sao ?") 
	elseif (UTask_tm >= 40*256+80) and (UTask_tm < 70*256) then					-- script viet hoa By http://tranhba.com �Ѿ����40��������δ��ʦ
Talk(1,"","Ta hi�u l�m ng��i s� th�c , th�t l� x�u h� !") 
else -- script viet hoa By http://tranhba.com  ch�a ho�n th�nh 40 c�p nhi�m v� # thi�u t�nh ��i tho�i # 
Talk(1,"","# ta tr�n ��i l�n nh�t h�n chuy�n , ch�nh l� ta b�ng h�u t�t nh�t l�i l� m�t v� t�nh v� ngh�a h�ng ng��i !") 
end 
end; 

function L40_step42() 
	SetTask(2, 40*256+40)
AddNote("��nh b�i c�nh t� k� ��ch 5 lo�i nh� s�c , bi�t n� nhi c�a h�n ���c k� qu�i b�nh , mu�n t�m ���ng d� s� th�c t�m c�u xin ch�a b�nh ph��ng thu�c ") 
Talk(4,"","Th�t ra th� ta ch�nh l� gi�t h�n th� c� �ch l�i g� ? th� t� ta c�ng n�a kh�ng s�ng ���c li�u , v�n l� ta �� xong v� sanh th� , ch� l� v� c�n t�m b� ��ch n� nhi m�i s�ng t�m ��n nay , kh�ng ngh� t�i ngay c� ta duy nh�t n� nhi c�ng ph�i l�n gi�ng nhau qu�i b�nh , n�u nh� ngay c� n� nhi c�ng kh�ng c� , ta # ta s�ng �i xu�ng c�n c� c�i g� � t� ?","Ti�n b�i , ng��i ��ng g�p g�p , con g�i ng��i nh�t ��nh s� c� c�u ��ch !","C� th� c� bi�n ph�p g� ? ng��i s� th�c l� �� nh�t thi�n h� ��ch th�n y , h�n kh�ng th� ra tay c�u gi�p , c�n c� ai c� th� c�u ���c con g�i c�a ta !","Ta t� c� bi�n ph�p , ta ��y �i ngay t�m s� th�c !") 
end; 
