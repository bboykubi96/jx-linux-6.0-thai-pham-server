-- script viet hoa By http://tranhba.com  th�y kh�i c�a th�y kh�i c�a �� t� 1 nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

function main() 
UTask_cy = GetTask(6) 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld36 == 10) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� ti�n h�nh trung 
Talk(1,"U36_enter","Ti�n v�o chi�n tr��ng sau , ��t ���c t�nh hoa , ��n <color=Red> hoa kh�i xu�t kh�u <color> giao cho s� t� l� ���c .") 
elseif (Uworld36 == 0) and (GetLevel() >=10) and (GetFaction() ~= "cuiyan") then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
Say("C�n c� m�n quy , mu�n tr� th�nh �� t� k� danh , c�n qu� <color=Red> hoa kh�i tr�n <color>, b�ng v�o d�ng c�m c�ng tr� kh�n ��t ���c <color=Green> t�nh hoa <color>, ng��i ngh� th� m�t ch�t sao ?",2,"C� th� , �� cho ta th� m�t ch�t /enroll_yes","Kh�ng , ta ch�ng qua l� t�i �i th�m . /no") 
elseif (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  ��ng m�n 
Say("S� mu�i ngh� ��n hoa kh�i tr�n luy�n c�ng a ?",2,"��i v�i , xin/m�i s� t� �� cho mu�i mu�i �i v�o /U36_enter","Ta ch�ng qua l� ��n th�m s� t� /no") 
elseif (UTask_cy == 70*256) then 
Talk(1,"","S� t� l�n n�y tr� l�i l� th�m c�c v� s� mu�i , c� thay ��i g� sao ?") 
else 
Talk(1,"","Hoan ngh�nh t�n kh�ch gi� l�m , xin/m�i t� hoa kh�i tr�n b�n c�nh ���ng �i v�o .") 
end 
end; 

function enroll_yes() 
Talk(1, "U36_enter","N�i n�y l� <color=Red> nh�p kh�u <color>. ti�n v�o tr�n b�t ���c t�nh hoa giao cho s� t� l� ���c .") 
Uworld36 = SetByte(GetTask(36),2,10) 
SetTask(36,Uworld36) 
AddNote("Nh�n hoa kh�i nhi�m v� , ��t ���c t�nh hoa , mang v� cho � c�a ra ��ch th�y kh�i c�a �� t� ") 
Msg2Player("Nh�n hoa kh�i nhi�m v� , ��t ���c t�nh hoa , mang v� cho � c�a ra ��ch th�y kh�i c�a �� t� ") 
end; 

function U36_enter() 
-- script viet hoa By http://tranhba.com  SetPos(207,1693) 
SetPos(210,1622) 
end 

function no() 
end; 
