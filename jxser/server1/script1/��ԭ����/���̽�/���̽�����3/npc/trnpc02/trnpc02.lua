-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y l�a ���ng ���ng ch� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tr = GetTask(4); 
if (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 10*256) and (GetLevel() >= 10) then 
Say("B�n gi�o t�ng th� hai ��ch <color=Red> th�t s�t ��ng <color> trong nh�t <color=Red> b�y t� t� <color> , b�n h� ��u l� b�n gi�o ��ch ph�n �� , n�u nh� ng��i c� th� ��nh b�i c�i n�y b�y ng��i , l�y ���c <color=Red> b�y kh�i th�t s�t l�nh b�i ��ch m�nh v�n <color> , li�n c� th� l�n c�p l�m b�n gi�o ��ch v� �nh s�t th� , ng��i c� hay kh�ng can ��m �i x�ng th�t s�t ��ng a ? ", 2,"X�ng th�t s�t ��ng /L10_get_yes","T�m th�i kh�ng x�ng /L10_get_no") 
-- script viet hoa By http://tranhba.com 		elseif (UTask_tr == 10*256+50) and (HaveItem(51) == 1) and  HaveItem(52) == 1 and HaveItem(53) == 1 and HaveItem(54) == 1 and HaveItem(55) == 1 and HaveItem(56) == 1 and (HaveItem(57) == 1) then
		elseif (UTask_tr == 10*256+50) then		-- script viet hoa By http://tranhba.com  �޸��������������2003-09-27��
i = check_token() 
if (i >= 3) then 
Talk(1,"L10_prise","R�t t�t , v�o th�t s�t ��ng h� �� nh�n s� m�i c� th� �i ra ngo�i , ng��c l�i , ng��i c� chuy�n g� li�n t� m�nh x� l� ") 
else 
Talk(1,"","Nh� th� n�o , m�t nho nh� kh�o nghi�m c�ng l�m kh�ng t�t sao ?") 
end 
elseif (UTask_tr < 20*256) then -- script viet hoa By http://tranhba.com  ch�a nh�n 10 c�p nhi�m v� 
Talk(1,"","��ng t��ng r�ng gia nh�p b�n gi�o li�n an �n , b�n gi�o kh�ng thu gi�u c� ng��i c�a !") 
else 
Talk(1,"","Ng��i m�i v�a gia nh�p �� t� , m�nh trung t� c� m�nh trung tay , ng��i ph�i c�n th�n !") 
end 
else 
Talk(1,"","Ch� c� c��ng gi� m�i c� th� c�n s�ng , c��ng gi� th�ng ng��i y�u , kh�ng luy�n ng��i t�t �em b� ng��i kh�c ti�u di�t , ��u l� l�a ch�n c�a m�nh , kh�ng n�n tr�ch ng��i kh�c .") 
end 
end; 

function L10_get_yes() 
Talk(1,"","<color=Red> th�t s�t l�nh b�i <color> c�ng nhau c� b�y kh�i , ph�n � <color=Red>7 t�n t� t� tr�n ng��i color>, ng��i ch� d�ng b�t ���c 3 kh�i l� ���c .") 
	SetTask(4, 10*256+50)
AddNote("Nh�n th�t s�t ��ng nhi�m v� # ti�n v�o th�t s�t ��ng b�t ���c 3 kh�i th�t s�t l�nh b�i th�t s�t l�nh b�i . ") 
Msg2Player("Nh�n th�t s�t ��ng nhi�m v� # ti�n v�o th�t s�t ��ng b�t ���c 3 kh�i th�t s�t l�nh b�i th�t s�t l�nh b�i . ") 
end; 

function L10_get_no() 
Talk(1,""," l�m xong t�i g�p ta !") 
end; 

function L10_prise() 
SetTask(4, 20*256) 
SetRank(56) 
-- script viet hoa By http://tranhba.com  AddMagic(132) 
-- script viet hoa By http://tranhba.com  AddMagic(131) 
-- script viet hoa By http://tranhba.com  AddMagic(136) 
add_tr(20) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i b� ��ng c�a v� v� �nh s�t th� , h�c ���c ng�y nh�n m�u ph�p , ng�y nh�n �ao ph�p , l�a ph�ng hoa sen . ") 
AddNote("�em th�t s�t l�nh b�i mang cho ���ng ch� , ho�n th�nh th�t s�t ��ng nhi�m v� , th�ng c�p l�m v� �nh s�t th� ") 
end; 

function check_token() 
i = 0 
if (HaveItem(51) == 1) then 
		i = i + 1
DelItem(51) 
end 
if (HaveItem(52) == 1) then 
		i = i + 1
DelItem(52) 
end 
if (HaveItem(53) == 1) then 
		i = i + 1
DelItem(53) 
end 
if (HaveItem(54) == 1) then 
		i = i + 1
DelItem(54) 
end 
if (HaveItem(55) == 1) then 
		i = i + 1
DelItem(55) 
end 
if (HaveItem(56) == 1) then 
		i = i + 1
DelItem(56) 
end 
if (HaveItem(57) == 1) then 
		i = i + 1
DelItem(57) 
end 
return i 
end; 
