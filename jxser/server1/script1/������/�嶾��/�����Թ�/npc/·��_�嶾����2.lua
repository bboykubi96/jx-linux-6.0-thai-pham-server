-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC n�m ��c �� t� 2 nh�p m�n nhi�m v� # ho�n th�nh # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

Include("\\script\\global\\repute_head.lua")

function main() 
Uworld37 = GetByte(GetTask(37),2) 
if (Uworld37 == 10) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� ho�n th�nh 
if (HaveItem(227) == 1) and (HaveItem(223) == 1) and (HaveItem(224) == 1) and (HaveItem(225) == 1) and (HaveItem(226) == 1) then 
enroll_prise() 
else 
Talk(1,""," luy�n c�ng th�i gian kh�ng �� , ng��i t�i sao l�i t�i ��y ?") 
end 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","N�m ��c trong ��ng r�t nguy hi�m , ng��i kh�ng c�n lo�n �i ") 
end 
end; 

function enroll_prise() 
Talk(1,"","N�m c�y kh�ng t��c mao �� �� r�i . th�t t�t qu� ! ng��i �� ch�nh th�c tr� th�nh b�n m�n �� t� k� danh ") 
DelItem(227) 
DelItem(223) 
DelItem(224) 
DelItem(225) 
DelItem(226) 
i = ReturnRepute(25,29,5) -- script viet hoa By http://tranhba.com  thi�u t�nh danh v�ng , l�n nh�t kh�ng t�n hao g� hao t�n c�p b�c , m�i c�p �� gi�m 
AddRepute(i) 
Uworld37 = SetByte(GetTask(37),2,127) 
SetTask(37,Uworld37) 
AddNote("Ho�n th�nh n�m ��c ��ng luy�n c�ng nhi�m v� . ch�nh th�c tr� th�nh <color=red> �� t� k� danh <color> b�n m�n . ") 
Msg2Player("Ho�n th�nh n�m ��c ��ng luy�n c�ng nhi�m v� , ch�nh th�c tr� th�nh b�n m�n �� t� k� danh . ") 
end; 
