-- script viet hoa By http://tranhba.com description: ���ng m�n b�nh th��ng �� t� tr�c h�i c�a th� ba 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(10) == 1 then 
allbrother_0801_FindNpcTaskDialog(10) 
return 0; 
end 
UTask_tm = GetTask(2) 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 60) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
if (HaveItem(33) == 0) then 
Talk(1,"","B�t ���c m�u xanh tr�c tr��ng sau �� t�m ta !") 
elseif (HaveItem(34) == 0) then 
Talk(1,"","B�t ���c m�u tr�ng tr�c tr��ng sau �� t�m ta !") 
else 
Talk(1,"enroll_V3_Q1","��p ��i v�i ta ��ch ba qu� , li�n c� th� l�y ���c <color=Red> m�u t�m tr�c tr��ng <color> , nghe r� r�ng :") 
end 
elseif (Uworld37 == 80) then -- script viet hoa By http://tranhba.com  �� qua ba quan 
if (HaveItem(35) == 1) then 
Talk(1,"","N�u mu�n thu�n l�i v��t qua ki�m tra , ng��i nh�t ��nh ph�i c�m �� ba chu�i tr�c tr��ng , sau �� giao cho ng��i �i ra c�a .") 
else 
AddEventItem(35) 
Talk(1,"","T�i sao �em tr�c tr��ng n�m lo�n � trong r�ng c�y , ta gi�p ng��i nh�t tr� l�i , kh�ng mu�n n�a n�m lo�n li�u ! ") 
end 
elseif (GetFaction() == "tangmen") then 
Talk(1,"","M�i ng��i ��u l� ��ng m�n huynh �� , ng��i kh�ng c�n v�t v�o tr�c h�i ba quan ! ") 
else 
Talk(1,"","Kh�ng n�n ch�y lo�n , c�n th�n b� con kh� c�n !") 
end 
end; 

function enroll_V3_Q1() 
Say("Th� nh�t qu� l� � �ang nam c�ng ch�nh ��ng :", 3, " li�t h�a oanh l�i /enroll_V3_Q2","N��c l�a kh�ng tha /False1","Qu�t gi� th�i l�a /False1") 
end; 

function False1() 
Talk(1,"","Th� nh�t qu� ��p sai l�m r�i , c� l� nh�ng con kh� kia c�a s� n�i cho ng��i bi�t .") 
end; 

function enroll_V3_Q2() 
Say("��ng r�i , nghe k� , th� hai qu� l� � ��ng nam c�ng ch�nh b�c ':", 3,"N�i cao n��c tr��ng /False2","Phong sinh th�y kh�i /enroll_V3_Q3", " l�i l� phong h�nh /False2") 
end; 

function False2() 
Talk(1,"","Kh�ng ��ng , t�i sao kh�ng �i h�i h�i nh�ng con kh� kia ��y ?") 
end; 

function enroll_V3_Q3() 
Say("Kh�ng t� , cu�i c�ng m�t qu� l� � t�y b�c c�ng t�y nam �#", 3,"Th�nh h�nh n��c th��ng /False3","Thi�n b�ng ��a li�t /enroll_V3_prise","S�n thanh th�y t� /False3") 
end; 

function False3() 
Talk(1,"","Sai l�m r�i , ��ng t��ng r�ng ng��i nh�t ��nh so con kh� th�ng minh , n�i kh�ng ch�ng b�n h� so ng��i bi�t ph�i c�n nhi�u h�n ��y ! ") 
end; 

function enroll_V3_prise() 
Talk(1,"","Ba qu� ng��i t�t c� ��u ��p ��ng r�i , ��y l� ng��i mu�n m�u t�m tr�c tr��ng . n�u nh� ng��i ba chu�i tr�c tr��ng ��u �� c�m �� , c�ng c� th� �i giao cho ng��i �i ra c�a , thu�n l�i qu� quan .") 
AddEventItem(35) 
Msg2Player(" � c�a th� ba tr� l�i ���ng m�n tr�ng �inh 8 qu� v�n �� , ��t ���c t� tr�c tr��ng . ") 
Uworld37 = SetByte(GetTask(37),1,80) 
SetTask(37,Uworld37) 
AddNote(" � c�a th� ba tr� l�i ���ng m�n tr�ng �inh 8 qu� v�n �� , ��t ���c t� tr�c tr��ng . ") 
end; 
