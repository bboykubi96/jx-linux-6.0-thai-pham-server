-- script viet hoa By http://tranhba.com  nh� h�i ng��i �i ���ng NPC thuy�n nh� # th�y kh�i c�a 30 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function main() 
UTask_cy = GetTask(6) 
	if ((UTask_cy == 30*256+40) and (HaveItem(2) == 0)) then		-- script viet hoa By http://tranhba.com 30�����������
Talk(5,"L30_pay","H�m nay c� th�t ��ng l� ��i phong thu a , b� li�u m�t m�n th��ng ��ch c� t�m ","Ng�i c� ng�n tuy�t c� sao ?","Ng�n tuy�t c� ? ta h�m nay ng��c l�i b� ��n m�y c�i .","Ng�i c� th� b�n cho m�t �t ta sao ?","N�u ng��i mu�n , v�y th� b�n ng��i m�t �t �i . nh� , nh�ng th� n�y coi nh� ng��i 1000 l��ng b�c t�t l�m .") 
else 
Talk(1,"","Thuy�n nh� : ��i L� ��ch n��c cong ��a ch�y xu�i , c�c huynh �� c�ch s�n c�ch n��c , s�n th�y v�n n�ng , mu�n g�p c�ng kh� .") 
-- script viet hoa By http://tranhba.com  Talk(1,"","Thuy�n nh� # ra bi�n b� c� c�i �� �em thuy�n h�ng a , phong thu tr� v� c�i �� �em nh� ph�n a #") 
end 
end; 

function L30_pay() 
if (GetCash() >= 1000) then 
Pay(1000) 
AddEventItem(2) 
AddNote("Mua ���c ng�n tuy�t c� ") 
Msg2Player(" � nh� h�i thuy�n nh� ch� mua ���c ng�n tuy�t c� ") 
else 
Talk(1,"","Kh�ng c� ti�n , v�y l�m sao mua ") 
end 
end; 
