-- script viet hoa By http://tranhba.com  th�y kh�i c�a th�y kh�i c�a �� t� 2 nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_cy = GetTask(6) 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld36 == 10) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
if (HaveItem(106) == 1) then 
enroll_prise() 
else 
Say("Kh�ng c� <color=Red> t�nh hoa <color>, kh�ng th� qu� hoa kh�i tr�n . t� t� th�t ngh� t�i tr�n ?",2," l�n n�y ta kh�ng c� chu�n b� xong /U36_uncompleted","Ta ti�p t�c x�ng tr�n /no") 
end 
elseif (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  �� t� b�n m�n 
Say("S� mu�i � hoa kh�i tr�n luy�n c�ng ? mu�n r�i �i hoa kh�i tr�n sao ? ",2,"H�o , �a t� t� t� /U36_leave","Kh�ng c�n , ta c�n mu�n ti�p t�c luy�n c�ng /no") 
elseif (UTask_cy == 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Nguy�n lai l� s� t� , �� l�u kh�ng g�p !") 
else 
Talk(1,"","Hoan ngh�nh t�i th�y kh�i c�a .") 
end 
end; 

function enroll_prise() 
Talk(1,"U36_leave","Ch�c m�ng ng��i �� x�ng qua b�n ph�i khi�u chi�n , b�y gi� ch�ng ta l� h�o s� mu�i ! ") 
DelItem(106) -- script viet hoa By http://tranhba.com  t�nh hoa 
i = ReturnRepute(20,29,5) -- script viet hoa By http://tranhba.com  thi�u t�nh danh v�ng , l�n nh�t kh�ng t�n hao g� hao t�n c�p b�c , m�i c�p �� gi�m 
AddRepute(i) 
Uworld36 = SetByte(GetTask(36),2,127) 
SetTask(36,Uworld36) 
AddNote("Ho�n th�nh hoa kh�i tr�n nhi�m v� , tr� th�nh <color=Red> �� t� k� danh color> ") 
Msg2Player("Ho�n th�nh hoa kh�i tr�n nhi�m v� , tr� th�nh �� t� k� danh ") 
end; 

function U36_uncompleted() 
Talk(1,"U36_leave","Hoan ngh�nh s� mu�i � b�t k� th�i gian t�i x�ng tr�n !") 
end 

function U36_leave() 
-- script viet hoa By http://tranhba.com  SetPos(304,1498) 
SetPos(340,1456) 
end 

function no() 
end 
