-- script viet hoa By http://tranhba.com description: ���ng m�n b�nh th��ng �� t� tr�c h�i ba nh�t v�o mi�ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/7 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(8) == 1 then 
allbrother_0801_FindNpcTaskDialog(8) 
return 0; 
end 
UTask_tm = GetTask(2) 
UTask_wu = GetTask(10) 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 0) and (GetLevel() >=10) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� kh�i ��ng 
Say("N�u mu�n gia nh�p b�n m�n , nh�t ��nh ph�i x�ng qua <color=Red> tr�c h�i ba quan <color> , ng��i mu�n x�ng quan sao ?", 2,"X�ng quan /enroll_get_yes","Kh�ng x�ng /no") 
elseif (Uworld37 > 0) and (Uworld37 < 20) then -- script viet hoa By http://tranhba.com  nhi�m v� trung 
Talk(1,"","Mu�n b�t ���c <color=Red> m�u xanh tr�c tr��ng <color> c�n ��nh b�i <color=Red> c�a th� nh�t d�m ��i m� h�u <color> .") 
-- script viet hoa By http://tranhba.com  , mu�n l�y ���c <color=Red> m�u tr�ng tr�c tr��ng <color> ng��i ph�i �i c�a th� hai t�m m�t <color=Red> trang �inh <color> , cu�i c�ng m�t chu�i <color=Red> m�u t�m tr�c tr��ng <color> � c�a th� ba ��ch <color=Red> trang �inh <color> tr�n tay . l�y ���c ba chu�i tr�c tr��ng sau giao cho <color=Red> c�a ra trang �inh <color> , m�i c� th� coi nh� l� v��t qua ki�m tra . 
-- script viet hoa By http://tranhba.com  elseif (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  �� nh�p m�n , ch�a xu�t s� 
-- script viet hoa By http://tranhba.com  Talk(1,"","���ng m�n trang �inh # m�i ng��i ��u l� ��ng m�n huynh �� , ng��i kh�ng c�n n�a x�ng trong n�y ��ch tr�c h�i ba ��ng #") 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","B�n m�n l�y �m kh� c�ng b�y r�p ��c b� thi�n h� , ng��i giang h� ai c�ng kh�ng d�m khinh th��ng li�u ch�ng ta # ng�y sau h�nh t�u giang h� , c�ng kh�ng n�n ��a li�u b�n m�n ��ch uy phong ! ") 
else 
Talk(1,"","B�n m�n kh�ng hoan ngh�nh ng��i xa l� t�y � ra v�o .") 
end 
end; 

function enroll_get_yes() 
Talk(2, "","B�t ���c <color=Red> thanh b�ch t� ba chu�i tr�c tr��ng <color> � <color=Red><color> tr�c h�i ba quan , sau �� giao cho ng��i �i ra c�a , m�i c� th� coi nh� l� v��t qua ki�m tra .","Mu�n b�t ���c <color=Red> m�u xanh tr�c tr��ng <color> c�n ��nh b�i <color=Red> c�a th� nh�t d�m ��i m� h�u <color> , <color=Red> m�u tr�ng tr�c tr��ng <color> ph�i �i c�a th� hai t�m m�t <color=Red> trang �inh <color>, <color=Red> m�u t�m tr�c tr��ng <color> � c�a th� ba ��ch <color=Red> trang �inh <color> tr�n tay .") 
Uworld37 = SetByte(GetTask(37),1,20) 
SetTask(37,Uworld37) 
AddNote("��n tr�c h�i ba quan th�y ���ng m�n tr�ng �inh , ti�p nh�n v� <color=red> �� t� k� danh <color>, qu� tr�c h�i ba quan b�t ���c thanh b�ch t� ba chu�i tr�c tr��ng . ") 
-- script viet hoa By http://tranhba.com  AddNote("��n ���ng m�n �� t� k� danh nhi�m v� # x�ng qua tr�c h�i ba quan c�ng l�y ���c thanh # b�ch # t� ba chu�i tr�c tr��ng . ") 
end; 

function no() 
end; 
