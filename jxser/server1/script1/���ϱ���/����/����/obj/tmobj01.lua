-- script viet hoa By http://tranhba.com description: ���ng m�n 20 c�p nhi�m v� qu�i th�ch tr�n nh� �� tr��c c�a h�n �� nh� bia 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 20*256+20) then		-- script viet hoa By http://tranhba.com  20�����񣬵�һ�������ĸ���
if (HaveItem(37) == 1) and (HaveItem(38) == 1) and (HaveItem(39) == 1) and (HaveItem(40) == 1) then 
Talk(9, "","Ng��i n�u t�m ���c ' t� ti�n x�ng v�o ng��i ch�t ' b�n ch� , t�i sao c�n d�m d�ng l�i ? ch�ng l� thi�n h� kh�ng c� s� ch�t ng��i sao ?","Thi�n h� kh�ng c� kh�ng s� ch�t ng��i , nh�ng l� th�n nh�n sinh m� kh�ng c� th� g�p nhau , ch�ng ph�i l� so ch�t c�ng kh� h�n qu� ?","Ng��i r�t cu�c l� ng��i n�o " ,"V�n b�i l� ���ng m�n �� t� , ��c bi�t t�i xin/m�i s� c� tr� v� ���ng m�n , c�ng ch��ng m�n huynh mu�i �o�n t� ! ","Ta kh�ng c� g� huynh tr��ng # th�n nh�n c�a ta ��u ch�t s�ch # n�m �� ta b� �u�i ra kh�i nh� ��ch th�i �i�m , c�ng kh�ng c� m�t huynh tr��ng v� ta n�i qua h�o tho�i # khi �� ta li�n th� , ki�p n�y tuy�t kh�ng h� n�a b��c v�o ���ng m�n n�a b��c ! ","N�u nh� s� c� th�t ��i v�i ���ng m�n kh�ng c� n�a �i�m l�u luy�n tho�i , th� t�i sao mu�n � n�i n�y tr�c h�i ph�a sau n�i �n c� ��y ?","���ng u :.....","S� c� , qua nhi�u n�m nh� v�y , ch��ng m�n m�t m�c h�t s�c h�i ti�c n�m �� kh�ng c� ng�n c�n s� t� �em ng�i �u�i ra kh�i nh� , ng�i t�i sao kh�ng cho h�n m�t l�n b�i th��ng c� h�i ��y ? hu�ng chi huynh mu�i ch�nh l� x��ng th�t ch� th�n , c�n g� b�i v� nh�t th�i � kh� , m� l�m cho �n h�n c� ��i ��y ?","Ng��i kh�ng c�n n�a d�i d�ng # h�o , ta li�n cho h�n m�t l�n c� h�i , tr�nh cho n�i ta l�nh kh�c v� t�nh . n�m �� ta r�i nh� c�a l�c , trong c�n t�c gi�n s�p xu�t hi�n sinh l�c cha ��a cho ta ��ch kim h�ng v�ng n�m v�o ph� th�y h� , ng��i n�u nh� c� th� cho ta t�m v� kim h�ng v�ng , ta li�n c�ng ng��i tr� v� ") 
DelItem(37) 
DelItem(38) 
DelItem(39) 
DelItem(40) 
			SetTask(2, 20*256+40)
AddNote(" � ���ng u tr��c ph�ng ��ch tr�n t�m bia �� , ti�p nh�n v� , �i ph� th�y h� t�m kim h�ng v�ng ") 
else 
Talk(1,"","Ng��i kh�ng c� kh�u quy�t , kh�ng th� th�ng qua bia �� c�ng ���ng u n�i chuy�n .") 
AddNote(" � kh�ng l�ng d� n�o c�c tr��c t�m bia �� bi�t tr��c ph�i t�m trong c�c bia �� kh�u quy�t . ") 
end 
	elseif (UTask_tm == 20*256+40) then
if (HaveItem(41) == 1) then 
Talk(2, "","S� c� , �� t� �� � ph� th�y h� t�m ���c kim h�ng v�ng , s� c� nguy�n � c�ng �� t� �i v� sao ?","Ng��i �em kim h�ng v�ng giao cho ta ��i ca , h�n th�y h�ng v�ng c�ng bi�t ta �� tha th� h�n .") 
	  		SetTask(2, 20*256+60)
Msg2Player("���ng u �� cho ng��i �em kim h�ng v�ng giao cho ch��ng m�n ���ng th� . ") 
AddNote("���ng u �� cho ng��i �em kim h�ng v�ng giao cho ch��ng m�n ���ng th� . ") 
else -- script viet hoa By http://tranhba.com  kh�ng c� ���c ho�c l� m�t , kim h�ng v�ng c� th� ph�n ph�c ��nh 
Talk(1,"","N�u nh� ng��i c� th� �i ���c ph� th�y h� thay ta t�m v� kim h�ng v�ng , ta li�n tha th� ng��i ") 
end 
	elseif ((UTask_tm == 20*256+60) and (HaveItem(41) == 0)) then		-- script viet hoa By http://tranhba.com  ���߶���
AddEventItem(41) 
Talk(1,"","Ng��i th� n�o nhi�u chuy�n nh� v�y , c�n ng��i n�a , mau bi�n m�t cho ta !") 
elseif (UTask_tm >= 30*256) then 
Say("Ta m�t ng��i thanh t�nh qu�n , kh�ng th�ch b� ng��i qu�y r�y , chuy�n c� �� xong , n�i nhi�u v� �ch , ng��i tr� v� �i th�i !", 0) 
else 
Talk(1,"","Tr�n t�m bia �� vi�t # thi�n v�o ng��i , gi�t kh�ng tha . gi�t ch� �� m�t lo�i ��c bi�t huy�t s�c vi�t th�nh . ") 
end 
end; 
