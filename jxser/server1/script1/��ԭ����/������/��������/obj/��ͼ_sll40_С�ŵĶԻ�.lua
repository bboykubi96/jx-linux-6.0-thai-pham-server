-- script viet hoa By http://tranhba.com  Thi�u L�m ph�a sau n�i m�t th�t n�i th�t c�a s� nh� tr��c ��ch ��i tho�i 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main(sel) 
UTask_sl = GetTask(7) 
	if (UTask_sl >= 40*256+20) and (UTask_sl < 50*256) then		-- script viet hoa By http://tranhba.com  �����������в��ܽ��룬����ÿ�ν��붼Ҫ�ش�����
Say("B�n t�ng �ang b� quan tu luy�n , n�u nh� mu�n truy�n l�i cho b�n h�n , s� ph�i th�ng qua hai c�u n�y kh�u quy�t , nghe r� !",4,"��m b�p ni t�m m� h�ng /L40_S2_wrong","H�ng b�i m� ma ni theo nh� /L40_S2_wrong","T�m m� ni h�ng ��m b�p /L40_S2_wrong","Theo nh� t�m ni ma m� h�ng . /L40_S2_correct") 
	elseif (UTask_sl == 40*256+50) then
Talk(3,"","Tr�ng y�u nh� v�y ��ch kh�u quy�t , ng��i l�m sao c� th� qu�n , ta n�i l�i l�n n�a , nh� !","C�u th� nh�t l� , th� s� v� th��ng , qu�c th� nguy hi�m # c�u th� hai l� , t� ��i kh� v� �ch , n�m �m v� ng� # th� ba c�u l� , sinh di�t bi�n d� . d�i tr� v� ch� # th� t� c�u # t�m l� �c nguy�n , h�nh ��ng t�i ��m # th� n�m c�u # nh� th� quan s�t , ti�m c�ch sinh t� "," l�n n�y kh�ng mu�n n�a qu�n , �i �i !") 
else 
Msg2Player("Th�n t�ng �ang b� quan tu luy�n , xin kh�ng c�n qu�y r�y ") 
end 
end; 

function L40_S2_correct() 
Talk(9,"L50_step2","�� t� b�i ki�n s� th�c t� ","Ch��ng m�n ph�i �� t� t�i xin/m�i hai v� s� th�c t� xu�t quan , ��m lu�n chuy�n thi�n h� ","Kh�ng t�ch # thi�n h� con trai , ch�ng ta kh�ng hi�u , ng��i chuy�n ��t cho ch��ng m�n 5 c�u , h�n s� hi�u ","C�u th� nh�t # th� s� v� th��ng , qu�c th� nguy hi�m . ","Kh�ng t�ch # c�u th� hai # t� ��i kh� v� �ch , n�m �m v� ng� ","Th� ba c�u # sinh di�t bi�n d� . d�i tr� v� ch� ","Kh�ng t�ch # th� t� c�u # t�m l� �c nguy�n , h�nh ��ng t�i ��m ","Th� n�m c�u # nh� th� quan s�t , ti�m c�ch sinh t� ") 
end; 

function L40_S2_wrong() 
Talk(1,"","H�c xong kh�u quy�t sau , c�a nh� kh�ng c� b�t c� ��ng t�nh g� , c� hay kh�ng ng��i ��c sai l�m r�i ?") 
end; 

function L50_step2() 
Talk(1,"","N�m c�u kh�u quy�t ��ch th� t� ph�i nh� r� r�ng , �i �i !") 
	SetTask(7,40*256+50)
AddNote("Th�y t�ch di�t hai t�ng , c�u xin truy�n ��t cho ph��ng tr��ng ��ch ch� th� . ") 
Msg2Player("Th�y t�ch di�t hai t�ng , c�u xin truy�n ��t cho ph��ng tr��ng ��ch ch� th� . ") 
end; 
