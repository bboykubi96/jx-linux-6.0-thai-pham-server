-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p ��a h� ph�p h� th�nh # Thi�n v��ng 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if (UTask_tw == 50*256) and (GetLevel() >= 50) then 
Say("G�n nh�t n��c tr�i trong ��n ��i ��ng ��nh h� xu�t hi�n <color=Red> n��c tr�ch <color> , h�i ch�t ph� c�n r�t nhi�u c� d�n , l�m l�ng ng��i b�ng ho�ng , ng��i nguy�n � �i �i�u tra m�t c�i chuy�n n�y sao ? ", 2,"Nguy�n � /L50_get_yes","Xin/m�i kh�c ph�i nh�ng ng��i kh�c /L50_get_no") 
		elseif (UTask_tw == 50*256+20) and (HaveItem(95) == 1) then
L50_prise() 
elseif (UTask_tw > 50*256) and (UTask_tw < 60*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 50 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","C� m�y c�i ng��i nh�n th�y <color=Red> n��c tr�ch <color> t�ng � <color=Red> ph�a ��ng <color> ��ch m�t h� ra kh�ng c� qu� , ph�a ��ng b�n t�u ph� c�n c� c� <color=Red> �i th�ng ��ng ��nh h� �� ��ch s�n ��ng <color> , ta ho�i nghi trong ��ng c� c� qu�i !") 
else -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� , ch�a xu�t s� # thi�u t�nh ��i tho�i # 
Talk(1,"","H�m nay thi�n h� th� c�c lung tung , ch� mong ng�y h�u b�n bang ") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk("M�t ng�y l�m huynh �� , c� ��i l� tay ch�n , ng��i ph�i nhi�u b�o tr�ng ") 
else 
Talk(1,"","G�n ��y tr�n m�t h� th��ng hi�n l�n ra ng� th�i k� mang , kh�ng bi�t l� hung l� c�t ") 
end 
end; 

function L50_get_yes() 
Talk(1,"","C� m�y c�i ng��i nh�n th�y <color=Red> n��c tr�ch <color> t�ng � <color=Red> ph�a ��ng <color> ��ch m�t h� ra kh�ng c� qu� , ph�a ��ng b�n t�u ph� c�n c� c� <color=Red> �i th�ng ��ng ��nh h� �� ��ch s�n ��ng <color> , ta ho�i nghi trong ��ng c� c� qu�i !") 
	SetTask(3, 50*256+20)
AddNote("��n hi�u l�nh thai ph�a ��ng th�y h� th�nh , d�n <color=Red> n��c tr�ch nhi�m v� <color>, ��n ��ng ��nh h� ph�a d��i �i xem m�t ch�t h� th�t �i . ") 
Msg2Player("��n hi�u l�nh thai ph�a ��ng th�y h� th�nh , d�n n��c tr�ch nhi�m v� , ��n ��ng ��nh h� ph�a d��i �i xem m�t ch�t h� th�t �i ") 
end; 

function L50_get_no() 
end; 

function L50_prise() 
Talk(1,"","Kh�i n�y ng� th�i th�ch kh�ng ch� c� th� d�p y�n l�ng ng��i , c�n c� th� l�m g�c gi�p mang ��n ph�c ch� . th�t l� ng�y h�u b�n bang a !") 
DelItem(95) 
SetTask(3, 60*256) 
SetRank(48) 
-- script viet hoa By http://tranhba.com  AddMagic(42) 
add_tw(60) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ho�n th�nh n��c tr�ch nhi�m v� , tr� th�nh h� gi�o t��ng qu�n , h�c ���c v� c�ng Kim chung tr�o . ") 
AddNote("Tr� l�i Thi�n v��ng gi�p , �em ng� th�i th�ch giao cho h� th�nh ho�n th�nh nhi�m v� , tr� th�nh h� gi�o t��ng qu�n . ") 
end; 
