-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p b�n tr�i khi�n cho c� b�ch # Thi�n v��ng 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if ((UTask_tw == 30*256) and (GetLevel() >= 30) and (GetFaction() == "tianwang")) then 
Say("Nh�c t�i th�t l� xui x�o , ta tr��c �� v�i ng�y �i m�t chuy�n <color=Red> y�n t� ��ng <color>, k�t qu� kh�ng c�n th�n �em <color=Red> Thi�n v��ng l�m <color>. cho v�t b� , Thi�n v��ng l�m l� b�n bang t�n v�t , n�u nh� r�i v�o c� t�m kh�ng th� d� ���c ng��i c�a tr�n tay , h�u qu� thi�t t��ng kh�ng ch�u n�i !..", 2,"Tr� gi�p t�m ki�m Thi�n v��ng l�m /L30_get_yes","Kh�ng li�n quan chuy�n ta !/L30_get_no") 
		elseif (UTask_tw == 30*256+20) and (HaveItem(145) == 1 ) then
L30_prise() 
elseif (UTask_tw > 30*256) and (UTask_tw < 40*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 30 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","<color=Red> Thi�n v��ng l�m <color> l� � <color=Red> mi�u l�nh y�n t� ��ng <color> m�t ��ch , n�u nh� ng��i c� th� gi�p ta t�m tr� v� , ta b�o c� ng��i l�m ch��ng �� ��u l�nh .") 
elseif (UTask_tw >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","H�o huynh �� # ng��i gi�p ta m�t ��i mang !") 
else 
Talk(1,"","Ch�ng ta b�c kh�ng qu�n Kim , nam ph�ng T�ng tri�u , hai b�n t�c chi�n c�ng kh�ng d� d�ng ") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Xu�t s� sau kh�ng n�n qu�n th��ng tr� v� s� m�n xem m�t ch�t c�c huynh �� ") 
else 
Talk(1,"","��ng xem bang ch� l� m�t n� l�u h�ng ng��i , nh�ng l� th�ng tr� b�n bang �n uy c�ng thi # th��ng ph�t ph�n minh , m�i ng��i trong l�ng c�ng ��nh k�nh s� n�ng .") 
end 
end; 

function L30_get_yes() 
Talk(1,"","<color=Red> Thi�n v��ng l�m <color> l� � <color=Red> mi�u l�nh y�n t� ��ng <color> m�t ��ch , n�u nh� ng��i c� th� gi�p ta t�m tr� v� , ta b�o c� ng��i l�m ch��ng �� ��u l�nh .") 
	SetTask(3, 30*256+20)
AddNote(" � t�y thi�n c�a �i�n nh�n <color=red> Thi�n v��ng l�m nhi�m v� <color>, ��n y�n t� ��ng t�m Thi�n v��ng l�m ") 
Msg2Player(" � t�y thi�n c�a �i�n nh�n Thi�n v��ng l�m nhi�m v� , ��n y�n t� ��ng t�m Thi�n v��ng l�m ") 
end; 

function L30_get_no() 
end; 

function L30_prise() 
Talk(1,"","Th�t ra th� Thi�n v��ng l�m � th�y kh�i ��ng b� c��ng ��o v�t b� , may m�n l� l�i t�m m�t ch�t tr� l�i , n�u kh�ng s� b� bang ch� tr�ch c� ��ch , ng��i th�t l� gi�p ta m�t ��i mang . v�n khi�n cho n�i chuy�n coi l� tho�i , nh�t ��nh phong ng��i l�m ch��ng �� th� l�nh .") 
DelItem(145) 
SetRank(46) 
SetTask(3, 40*256) 
-- script viet hoa By http://tranhba.com  AddMagic(37) 
-- script viet hoa By http://tranhba.com  AddMagic(35) 
-- script viet hoa By http://tranhba.com  AddMagic(31) 
add_tw(40) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("�em Thi�n v��ng l�m giao cho c� b�ch , ho�n th�nh Thi�n v��ng l�m nhi�m v� . b� ��ng c�a v� # ch��ng �� th� l�nh . h�c ���c b�t ph��ng ch�m , d��ng quan ba �i�p , ���c v�n quy�t . ") 
AddNote("Tr� l�i Thi�n v��ng ��o �em Thi�n v��ng l�m giao cho c� b�ch , ho�n th�nh nhi�m v� , b� ��ng c�a v� # ch��ng �� th� l�nh ") 
end; 
