-- script viet hoa By http://tranhba.com description: ���ng m�n b�nh th��ng �� t� tr�c h�i ba quan xu�t kh�u 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(11) == 1 then 
allbrother_0801_FindNpcTaskDialog(11) 
return 0; 
end 
UTask_tm = GetTask(2); 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 80) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
if (HaveItem(33) == 1) and (HaveItem(34) == 1) and (HaveItem(35) == 1) then 
Uworld37_prise() 
else 
Talk(1,"","Ng��i ph�i l�y ���c thanh b�ch t� ba chu�i tr�c tr��ng m�i ���c !") 
end 
elseif (Uworld37 < 80) then -- script viet hoa By http://tranhba.com  ch�a nh�p m�n 
Talk(1,"","Ngh� th�ng su�t qu� tr�c h�i ba quan , ph�i ��n thanh b�ch t� ba chu�i tr�c tr��ng .") 
-- script viet hoa By http://tranhba.com  elseif (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  �� nh�p m�n , ch�a xu�t s� 
-- script viet hoa By http://tranhba.com  Talk(1,"","���ng m�n trang �inh # m�i ng��i ��u l� ��ng m�n huynh �� , ng��i kh�ng c�n n�a x�ng trong n�y ��ch tr�c h�i ba ��ng #") 
elseif (UTask_tm >= 70*256) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","B�n m�n l�y �m kh� c�ng b�y r�p ��c b� thi�n h� , ng��i giang h� ai c�ng kh�ng d�m khinh th��ng li�u ch�ng ta # ng�y sau h�nh t�u giang h� , c�ng kh�ng n�n ��a li�u b�n m�n ��ch uy phong . ") 
else 
Talk(1,"","Tr�c h�i nguy hi�m , mu�n c�c k� c�n th�n !") 
end 
end; 

function Uworld37_prise() 
Talk(1,"","Ng��i �� thu�n l�i v��t qua ki�m tra , tr� th�nh b�n m�n �� t� k� danh ! ") 
DelItem(33) 
DelItem(34) 
DelItem(35) 
UTask_world37 = SetByte(GetTask(37),1,127) 
i = ReturnRepute(25,19,4) -- script viet hoa By http://tranhba.com  thi�u t�nh danh v�ng , l�n nh�t kh�ng t�n hao g� hao t�n c�p b�c , m�i c�p �� gi�m t� s� 
SetTask(37,UTask_world37) 
AddRepute(i) -- script viet hoa By http://tranhba.com  th�m danh v�ng 
Msg2Player("�em ba c�y tr�c tr��ng mang t�i tr�c h�i ba quan xu�t kh�u , giao cho ���ng m�n ph�ng ngh� s� , ho�n th�nh nhi�m v� , tr� th�nh ���ng m�n �� t� k� danh , danh v�ng gia t�ng "..i.." �i�m .") 
AddNote(" � tr�c h�i ba quan xu�t kh�u , �em 3 c�y tr�c tr��ng giao cho ���ng m�n tr�ng �inh , ho�n th�nh �� t� k� danh nhi�m v� ") 
end; 
