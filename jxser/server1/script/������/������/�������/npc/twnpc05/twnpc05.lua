-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p Thi�n h� ph�p ���ng v�n xa Thi�n v��ng gi�p 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/26 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-25), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan # h�y b� c�ng n�y ch�n h�nh d�ng c� quan b� ph�n # 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if (UTask_tw == 40*256) and (GetLevel() >= 40) then 
Talk(2, "L40_get", " L� l�o h� ph�p , nh�n l�o nh�n gia ng�i bu�n bu�n b�c kh�ng tri�n , c� c�i g� kh� s� chuy�n sao ?","Ta thu�c h� �� t� ng� m�i v�a th�ch t�i � b�n h� kh�ng c�n th�n b� m�t lo�i k�ch ��c v� c�ng x�ch li�n r�n c�n th��ng , sinh m�ng nguy � ��n t�ch , ta �� d�ng n�i l�c cho h�n tr� ��c , nh�ng l� ��c kh� c�ng t�m , kh�ng th� t�n tr� , nghe n�i ch� c� <color=Red> ba l�ng huy�n <color> ��ch <color=Red> Ng� th�n y <color> c� th� ch�a tr� ....") 
		elseif (UTask_tw == 40*256+50) and (HaveItem(93) == 1) and (HaveItem(94) == 1) then
L40_prise() 
		elseif (UTask_tw > 40*256+20) and (UTask_tw < 50*256) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ�40��������δ���
Talk(1,"","C�u xin ��n gi�i d��c sao ?") 
elseif (UTask_tw >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","Ng��i ��a nh� n�y kh�ng ch� c� v� c�ng kh�ng t� , t�m ��a c�ng r�t t�t , l�o ��u t� ta r�t th�ch !") 
else -- script viet hoa By http://tranhba.com  ch�a nh�n 40 c�p nhi�m v� 
Talk(1,"","Hi�n gi� l� Tr��ng giang s�ng sau �� s�ng tr��c , ch�ng ta nh�ng th� n�y l�o ��u t� ��u kh�ng ��nh d�ng la !") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,""," l�c ��i t�o anh h�ng , h�m nay thi�n h� qu�n h�ng c�ng kh�i , nh�n t�i t� t� , ng�m ng��i m�nh kh�e t� tr� n�n , t��ng lai th�nh t�u m�t phen kinh thi�n ��ng ��a ��ch l�m ") 
else 
Talk(1,"","B�n bang nam kh�ng T�ng tri�u , b�c kh�ng qu�n Kim . bang ch� m�t n� nh�n d�n ch�ng ta ph�t tri�n t�t nh� v�y th�t s� l� kh�ng d� d�ng !") 
end 
end; 

function L40_get() 
Say("Ng��i c� th� ��n ba l�ng huy�n t�m <color=Red> Ng� th�n y <color> c�u xin gi�i d��c sao ?", 2,"Thu�c h� nguy�n � /L40_get_yes","Thu�c h� c� chuy�n kh�c /L40_get_no") 
end; 

function L40_get_yes() 
Talk(1,"","H�o , ng��i nhanh �i mau tr� l�i ") 
	SetTask(3, 40*256+20)
SetTask(14,0) 
AddNote(" � tr�n tr�i v��ng ��i �i�n th�y ���ng v�n xa ti�p nh�n <color=red> t�m thu�c gi�i nhi�m v� <color>, ��n ba l�ng huy�n t�m Ng� th�n y xin thu�c . ") 
Msg2Player(" � tr�n tr�i v��ng ��i �i�n th�y ���ng v�n xa ti�p nh�n t�m thu�c gi�i nhi�m v� , ��n ba l�ng huy�n t�m Ng� th�n y xin thu�c . ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
Talk(1,"","Th�t t�t qu� , c� nh�ng th� n�y mu�n ng� m�i v�a th� c� c�u . c�ng kh�ng bi�t ph�i l�m sao c�m t� ng�i !") 
DelItem(93) 
DelItem(94) 
SetRank(47) 
SetTask(3, 50*256) 
-- script viet hoa By http://tranhba.com  AddMagic(40) 
add_tw(50) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("�em hai v� thu�c giao cho ���ng v�n xa , ho�n th�nh nhi�m v� , b� ��ng c�a l� th�y ��o th�ng d�n , h�c ���c lo�n ��nh tr� ") 
AddNote("�em hai v� thu�c giao cho ���ng v�n xa , ho�n th�nh nhi�m v� , b� ��ng c�a l� th�y ��o th�ng d�n ") 
end; 
