-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p t�n ��o d�n # Thi�n v��ng nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tw = GetTask(3) 
Uworld38 = GetByte(GetTask(38),1) 
if (Uworld38 == 0) and (GetFaction() ~= "tianwang") and (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  �� t� k� danh nhi�m v� kh�i ��ng 
Say("Mu�n tr� th�nh b�n bang ��ch �� t� ch�nh th�c mu�n c�ng nhau �� t�ng kh�ng kim , b�n t�a d� nhi�n v� �i�u ki�n hoan ngh�nh , ch� c�n ng��i mang ��n m�t b�u r��u cho ch�ng huynh �� u�ng c�ng chung �n m�ng li�n c� th� nh�n th�nh ng��i �� nh�p m�n ", 2,"Ti�p nh�n nhi�m v� /Uworld38_get_yes","T�nh / ch�n /no") 
elseif (Uworld38 == 80) and (HaveItem(90) == 1) then -- script viet hoa By http://tranhba.com  c� o�nh lai xu�n , nhi�m v� ho�n th�nh 
Uworld38_prise() 
-- script viet hoa By http://tranhba.com 	elseif (UTask_tw == 5*256+80) then		-- script viet hoa By http://tranhba.com  Ϊ�����������������ı��ݴ�
-- script viet hoa By http://tranhba.com  if (GetSeries() == 0) and (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  n�u nh� l� Thi�n v��ng gi�p ng��i , l� ��a v� m�i v�a v�o gi�p , n�u kh�ng thanh linh 
-- script viet hoa By http://tranhba.com  SetTask(3,10*256) 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  SetTask(3,0) 
-- script viet hoa By http://tranhba.com  end 
elseif (Uworld38 >= 20) and (Uworld38 < 127) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� ti�n h�nh trung 
Talk(1,"","M�i l�n ch� c�n ngh� ��n mu�n �em o�nh lai xu�n r��u cho ��m n�y t�u qu� ta li�n �au l�ng ") 
elseif (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  �� nh�p m�n , ch�a xu�t s� 
Talk(1,"","H�o huynh �� # c� r�nh r�i ch�ng ta c�ng u�ng m�t ch�n !") 
elseif (UTask_tw ==70*256) then -- script viet hoa By http://tranhba.com  b�n m�n xu�t s� , kh�ng ph�i l� b�n trong m�n ph�i tr�ng th�i 
Talk(2,"","Kh�ng quan h� , m�i ng��i c�ng u�ng ","Ca ca ta ,,, ng��i cu�i c�ng l� u�ng say c�n l� l�n tr��c ��ch r��u c�n kh�ng c� t�nh a ? ") 
else 
Talk(1,"","Nghe n�i t�u qu�n � <color=Red> ba l�ng huy�n <color> b�n tr� m�t lo�i g�i <color=Red> o�nh lai xu�n <color>, tr�i c�y kia th�t l� r��u ngon , ch� mu�n b�y gi� li�n u�ng !") 
end 
end 

function Uworld38_get_yes() 
Talk(1,"","Nghe n�i t�u qu�n � <color=Red> ba l�ng huy�n <color> b�n tr� m�t lo�i g�i <color=Red> o�nh lai xu�n <color>, tr�i c�y kia th�t l� r��u ngon , ch� mu�n b�y gi� li�n u�ng !") 
Uworld38 = SetByte(GetTask(38),1,20) 
SetTask(38,Uworld38) 
AddNote(" � ph�a nam ��ch n��c c�a tr�i mi�ng th�y T�n T� M�c <color=red> nh�n �� t� k� danh nhi�m v� <color>, ��n ba l�ng huy�n mua o�nh lai xu�n r��u '. ") 
Msg2Player(" � ph�a nam ��ch n��c c�a tr�i mi�ng th�y T�n T� M�c nh�n �� t� k� danh nhi�m v� ��n ba l�ng huy�n mua o�nh lai xu�n r��u '. ") 
end; 

function Uworld38_prise() 
Talk(1,"","O�nh lai xu�n # qu� th�t l� r��u ngon # m�i m� ra �� nghe ��n lo�i n�y m�i th�m # xem ng��i c�ng l� c� kh� ph�ch ng��i c�a , m�i ng��i c�ng l�u l�c giang h� !") 
DelItem(90) 
Uworld38 = SetByte(GetTask(38),1,127) 
SetTask(38,Uworld38) 
i = ReturnRepute(15,19,2) -- script viet hoa By http://tranhba.com  thi�u t�nh danh v�ng , l�n nh�t kh�ng t�n hao g� hao t�n c�p b�c , m�i c�p �� gi�m 
AddRepute(i) 
AddNote("Tr� l�i Thi�n v��ng ��o , mang theo o�nh lai xu�n giao cho t�n ��o d�n ho�n th�nh �� t� k� danh nhi�m v� ") 
Msg2Player("Tr� l�i Thi�n v��ng ��o , mang theo o�nh lai xu�n giao cho t�n ��o d�n ho�n th�nh �� t� k� danh nhi�m v� , ng��i danh v�ng gia t�ng . "..i.." �i�m .") 
end; 

function no() 
end; 
