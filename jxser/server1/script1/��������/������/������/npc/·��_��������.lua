-- script viet hoa By http://tranhba.com  th�y kh�i c�a ng��i �i ���ng NPC xu�n h��ng b� b� # th�y kh�i c�a xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-27) 

function main() 
UTask_cy = GetTask(6) 
if (GetFaction() == "cuiyan") then 
		if (UTask_cy == 60*256+20) then				-- script viet hoa By http://tranhba.com ��ʦ���������
Talk(2,"","B� b� , c�i �� l�o b� n�i cho ta bi�t ch�n t��ng c�a chuy�n li�u , ta �em mang l� th� n�y cho ch��ng m�n , m�i ng��i xem ho�n c�ng bi�t s� t� ��ch kh� t�m li�u ","S� t� l�ng c�a nguy�n , ta �� gi�p n�ng ho�n th�nh , v�y c�ng may m�n ! ") 
			SetTask(6,60*256+30)
elseif (UTask_cy == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� 
Talk(3,"L60_get","Ng��i b�n ngo�i ��i v�i ch�ng ta th�y kh�i c�a m�t m�c c�n c� th�nh ki�n , m�n h� �� t� trong c�ng m�t m�c c� m�t lo�i l�i ��n ��i , n�i b�n m�n ��ch ch� ph�i t� s� b�i v� n�m �� tao ng��i y�u di kh� , t�nh t�nh ��i bi�n , h�n t�n thi�n h� nam t� , cho n�n quy�t ��nh m�n quy , mu�n cho �� t� b�n m�n ��i ��i ��i ��i c�ng th�ng h�n nam t� , nh�ng th� n�y m�n quy t�a nh� gi�y th�ng , m�t m�c tr�i bu�c m�i ng��i , th�t ra th� s� th�t c�n b�n kh�ng ph�i nh� v�y # trong n�y ��ch nguy�n do ngo�i nh�n kh�ng r� c�ng li�n th�i , ch�ng ta ng��i m�nh c�ng ngh� nh� v�y , s� �� cho ng��i qu� th��ng t�m .","Nh� th� n�o m�i c� th� l�m cho m�i ng��i hi�u ch�n t��ng c�a chuy�n ��y ?") 
else 
Talk(1,"","T� nh� l�u l�c giang h� , trong nh�y m�t l� h�n n�m tr�i qua ") 
end 
else 
Talk(1,"","Nh� ng�y �� c�n �m du�n ch��ng m�n , b�y gi� �� l�n nh� v�y , th�i gian c�c nhanh ! ") 
end 
end; 

function L60_get() 
Say("Ch�n t��ng s� th�t c�ng m�t � c�m ��a d�m ng��i c� li�n quan , ch� d�ng t�m ���c h�n li�n ch�n t��ng c�a s� t�nh r� r�ng li�u ",2,"Ti�p t�c m� /L60_get_yes","Kh�ng c�n lo l�ng /L60_get_no") 
end; 

function L60_get_yes() 
Talk(4,"","Th�n l� �� t� b�n m�n , c� tr�ch nhi�m t�m ra ch�n t��ng ?","Ra c�a h��ng ��ng b�c ph��ng h��ng �i l� c� th� ��n ng�c n� h� , c�m ��a � ng�c n� h� ph� c�n ! ","C� th� , ta �i li�u ! ","Kh�ng c�n ph�i g�p g�p , ng��i tu�i tr� , v� b�o v� ng��i t�nh m�ng , � th�y ng��i kia tr��c , c�n m�t s�i t� m�t , c�i n�y ti m�t s�p xu�t hi�n b�y gi� c�m cung s�n ��ng ." ) 
	SetTask(6,60*256+10)
AddNote("Nh�n th�y kh�i c�a xu�t s� nhi�m v� , �i�u tra th�y kh�i c�a c�m ��a ch�n t��ng ") 
Msg2Player("Nh�n th�y kh�i c�a xu�t s� nhi�m v� , �i�u tra th�y kh�i c�a c�m ��a ch�n t��ng ") 
end; 

function L60_get_no() 
end; 
