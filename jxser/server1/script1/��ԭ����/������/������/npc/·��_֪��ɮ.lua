-- script viet hoa By http://tranhba.com  Thi�u L�m ng��i �i ���ng NPC bi�t kh�ch t�ng nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_sl = GetTask(7) 
Uworld38 = GetByte(GetTask(38),2) 
if (Uworld38 == 20) and (HaveItem(219) == 1) then -- script viet hoa By http://tranhba.com  nhi�m v� ho�n th�nh ( ch�ng minh th� tin/th� ) 
Talk(1,"enroll_prise","Nguy�n lai l� h�n t�y th�n t� gi�y , c�ng ���c .") 
elseif (Uworld38 == 0) and (GetLevel() >=10) and (GetFaction() ~= "shaolin") then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
Say("�� t� b�n m�n c�n th�a m�n b�n �i�u ki�n , theo th� t� l� # anh d�ng l�n m�t , H�o Nhi�n Ch�nh Kh� , b�n b� kh�ng r�t ra c�ng v� t� v� ng� . ng��i ngh� l�m b�n ph�i �� t� k� danh , c�n ph�i c� nh�ng �i�u ki�n n�y , ng��i ti�p nh�n kh�o nghi�m sao ?",2,"Tu�n l�nh !/enroll_get_yes","Kh�ng , ta ch� t�i ch�i . /enroll_get_no") 
elseif (GetFaction() == "shaolin") then 
Talk(1,"","S� �� ph�i b�o v� h�o v�n t� ��ch trang nghi�m , kh�ng n�n ch�y lo�n , l�n ti�ng huy�n �n �o .") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
if (GetSex() == 0) then 
Talk(1,"","Th� ch� kh�ng mu�n mang binh kh� �i v�o ") 
else 
Talk(1,"","N� kh�ch kh�ng th� v�o t� b�n trong ") 
end 
end 
end; 

function enroll_get_yes() 
Talk(1, "","Kh�o nghi�m , ng��i xu�ng n�i du ngo�n , th�a m�n 4 c� �i�u ki�n tr� v� n�a ta ch� n�y n�i ti�p .") 
Uworld38 = SetByte(GetTask(38),2,10) 
SetTask(38,Uworld38) 
AddNote("Ch�ng minh cho bi�t kh�ch t�ng c� c�c h�ng ph�m ch�t # x�ch ��m trung th�nh , H�o Nhi�n Ch�nh Kh� , b�n b� kh�ng r�t ra c�ng v� t� v� ng� ") 
Msg2Player("Ch�ng minh cho bi�t kh�ch t�ng c� c�c h�ng ph�m ch�t # x�ch ��m trung th�nh , H�o Nhi�n Ch�nh Kh� , b�n b� kh�ng r�t ra c�ng v� t� v� ng� ") 
end; 

function enroll_get_no() 
end; 

function enroll_prise() 
Talk(1,"","Tho�t nh�n ng��i �� �� r�i c�i n�y b�n ph�m ch�t , ch�c m�ng ng��i , t� nay v� sau , ng��i tr� th�nh b�n m�n �� t� k� danh li�u !") 
DelItem(219) 
i = ReturnRepute(12,29,2) -- script viet hoa By http://tranhba.com  thi�u t�nh danh v�ng , l�n nh�t kh�ng t�n hao g� hao t�n c�p b�c , m�i c�p �� gi�m 
AddRepute(i) 
Uworld38 = SetByte(GetTask(38),2,127) 
SetTask(38,Uworld38) 
Msg2Player("Ho�n th�nh ph�i Thi�u l�m �� t� k� danh nhi�m v� , tr� th�nh Thi�u L�m �� t� , danh v�ng gia t�ng . "..i.." �i�m .") 
AddNote("Ho�n th�nh ph�i Thi�u l�m �� t� k� danh nhi�m v� , tr� th�nh Thi�u L�m �� t� . ") 
end; 
