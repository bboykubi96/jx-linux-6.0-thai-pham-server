-- script viet hoa By http://tranhba.com  th�nh ��i L� ng��i �i ���ng NPC �o�n hoa n�ng # th�y kh�i c�a 30 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function main() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 30*256+10) then		-- script viet hoa By http://tranhba.com 30����������У�����Ů������
Talk(6,"",". �o�n ��i gia , nghe n�i ng��i lo�i hoa r�t l�i h�i , ta t�i mu�n l�m phi�n ng��i truy�n cho ta lo�i v� y ngh� th��ng ��ch b� quy�t ","� � ..... ta ��ng th��ng h�i gi�y .....","��i gia , ng��i h�i gi�y th� n�o ?","N�ng b� �i�m Th��ng S�n ��ch th� ph� cho b�t �i , b�y gi� kh�ng hi�u sinh t� nh� th� n�o . .....","�o�n ��i gia , kh�ng c�n lo l�ng , ta s� gi�p ng��i �i c�u n�ng .","N� hi�p , ng��i th�t l� m�t ng��i t�t , ch� c�n ng��i �� c�u ta ��ch h�i gi�y , chuy�n g� ta c�ng ��p �ng ng��i ! ") 
		SetTask(6,30*256+20)
AddNote("��n �i�m th��ng s�n , t�m th� ph� gi�i c�u tr� n�ng ��ch h�i gi�y ") 
Msg2Player("��n �i�m th��ng s�n , t�m th� ph� gi�i c�u tr� n�ng ��ch h�i gi�y ") 
	elseif (UTask_cy == 30*256+30) then		-- script viet hoa By http://tranhba.com 30����������У�����Ů��ɣ�
Talk(5,"","C�m t� ng��i �� c�u ta ��ch h�i gi�y , c�i n�y ��i �n ��i ��c ta s� kh�ng qu�n .","�o�n ��i gia , ng��i bi�t lo�i v� y ngh� th��ng sao ?","Ti�u c� n��ng , coi nh� ng��i h�i ��ng ng��i , lo�i v� y ngh� th��ng ��ch b� m�t ch� c� ta bi�t , cho t�i b�y gi� kh�ng c� truy�n cho ngo�i nh�n , nh�ng l� , ng��i �� c�u ta ��ch h�i gi�y , ta li�n truy�n cho ng��i ."," lo�i v� y ngh� th��ng c�n ph�i c� 3 lo�i nguy�n li�u # m�t lo�i l� nh� h�i ��ch ng�n tuy�t c� , lo�i th� hai l� con b��m tuy�n b�n c�nh b�ch th��ng ph��ng �i�p , lo�i th� ba l� v�n n�ng ��nh ��ch h�ng con giun .","�a t� ��i gia ! ") 
		SetTask(6,30*256+40)
AddNote(" lo�i v� y ngh� th��ng c�n ph�i c� 3 lo�i nguy�n li�u # nh� h�i ��ch ng�n tuy�t c� , con b��m tuy�n b�n c�nh b�ch th��ng ph��ng �i�p , v�n n�ng ��nh ��ch h�ng con giun ") 
Msg2Player(" lo�i v� y ngh� th��ng c�n ph�i c� 3 lo�i nguy�n li�u # nh� h�i ��ch ng�n tuy�t c� , con b��m tuy�n b�n c�nh b�ch th��ng ph��ng �i�p , v�n n�ng ��nh ��ch h�ng con giun ") 
	elseif (UTask_cy == 30*256+20) then
Talk(1,"","N� hi�p , ch� c�n ng��i �� c�u ta ��ch h�i gi�y , chuy�n g� ta c�ng ��p �ng ng��i ! ") 
else 
Talk(1,""," lo�i lo�i n�y hoa , v�a l� khoa h�c , l�i l� ngh� thu�t .") 
end 
end 
