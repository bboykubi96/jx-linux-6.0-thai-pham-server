-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n ng��i �i ���ng NPC l�o gi� # C�n L�n ph�i ra s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main() 
UTask_kl = GetTask(9); 
	if (UTask_kl == 60*256+10) then		-- script viet hoa By http://tranhba.com ��ʦ������
Talk(1,"","Ng��i tu�i tr� , ng��i c�ng l� t�i t�m ki�m n�m m�u th�ch sao ? nghe n�i c� d�u n�m m�u th�ch ��ch l�u ti�n ��ng �� b� th��ng c� ��ch n�m v� thi�n �� d�ng ng�y kh�a kh�a l�i , ph�i l�y ���c n�m m�u th�ch , ph�i ��n c�i n�y n�m �em ng�y kh�a '") 
		SetTask(9,60*256+20)
AddNote("D�a theo ch� d�n mu�n �i v�o s�n ��ng t�m ���c 5 c�i ch�a kh�a m�i c� th� l�y ���c n�m m�u th�ch ") 
Msg2Player("D�a theo ch� d�n mu�n �i v�o s�n ��ng t�m ���c 5 c�i ch�a kh�a m�i c� th� l�y ���c n�m m�u th�ch ") 
else 
Talk(1,"","Ng� th�i th�ch t�n l�c nh�n gian �� ��a t�i kh�ng bi�t bao nhi�u huy�t chi�n li�u , kh�ng bi�t n� cu�i c�ng mang t�i l� h�a hay l� ph�c ") 
end 
end; 
