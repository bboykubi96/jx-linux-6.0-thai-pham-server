-- script viet hoa By http://tranhba.com description: ���ng m�n b�nh th��ng �� t� tr�c h�i c�a th� hai 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(9) == 1 then 
allbrother_0801_FindNpcTaskDialog(9) 
return 0; 
end 
UTask_tm = GetTask(2) 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 20) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
if (HaveItem(33) == 1) then 
Talk(1,"enroll_V2_Q1","C�i n�y tr�c tr��ng ��ng r�i , b�y gi� tr� v� ��p m�t c�i v�n �� !") 
else 
Talk(1,"","��t ���c <color=Red> m�u xanh tr�c tr��ng <color> sau t�i t�m ta n�a !") 
end 
elseif (Uworld37 >= 60) and (Uworld37 < 127) then -- script viet hoa By http://tranhba.com  �� qua c�a �i n�y 
if (HaveItem(34) == 1) then 
Talk(1,"","N�u mu�n thu�n l�i v��t qua ki�m tra , ng��i nh�t ��nh ph�i c�m �� ba chu�i tr�c tr��ng , sau �� giao cho ng��i �i ra c�a .") 
else 
AddEventItem(34) 
Talk(1,"","T�i sao ng��i �em tr�c tr��ng n�m � trong r�ng c�y ? ta s� gi�p ng��i nh�t tr� l�i , kh�ng mu�n n�a n�m lo�n li�u ! ") 
end 
else 
Talk(1,""," � ch� n�y th�i gian d�i m�i bi�t , th� ra l� ��i m� h�u c�ng hi�u nh�n t�nh .") 
end 
end; 

function enroll_V2_Q1() 
Say("C�u cung tr�n c� ch�n c�ch t� , v� nh� m�i c�ch t� �i�n th��ng th�ch �ng ��ch con s� , l� c� th� khi�n cho b� t�c sau b�t lu�n tung ho�nh t� gi�c , m�i ba con s� t��ng gia ��u l� m��i l�m , ng��i bi�t th� n�o �i�n sao ? th� nh�t ���c ", 3, "4, 9, 2 /False1", "2, 4, 9 /False1", "2, 9, 4 /enroll_V2_Q2") 
end; 

function False1() 
Talk(1,"","Kh�ng ��ng , c�i n�y b�n ph�a ��ch <color=Red> ��i m� h�u # ��i d� h�u <color> c� th� so v�i ng��i th�ng minh a , b�n h� c�ng bi�t ��y !") 
end; 

function enroll_V2_Q2() 
Say("��p ��ng r�i , kia th� hai ���c ��y ?", 3, "7, 5, 3 /enroll_V2_Q3", "5, 3, 7 /False2", "5, 7, 3 /False2") 
end; 

function False2() 
Talk(1,"","Kh�ng ��ng , hay l� �i h�i m�t ch�t c�i n�y b�n ph�a ��ch <color=Red> ��i m� h�u # ��i d� h�u <color> �i ! ") 
end; 

function enroll_V2_Q3() 
Say("Kh�ng t� , kia cu�i c�ng m�t nh�m n�n th� n�o �i�n :", 3, "6, 8, 1 /False3", "8, 1, 6 /False3", "6, 1, 8 /enroll_V2_prise") 
end; 

function False3() 
Talk(1,"","Kh�ng ��ng , t�i sao kh�ng �i h�i h�i c�i n�y b�n ph�a ��ch <color=Red> ��i m� h�u # ��i d� h�u <color> ��y ") 
end; 

function enroll_V2_prise() 
Talk(1,"","R�t t�t , ng��i t�t c� ��u ��p ��ng r�i . m�u tr�ng tr�c tr��ng cho ng��i , c�ng ��ng v�t b� # �i c�a th� ba t�m m�t ng��i kh�c trang �inh c�m <color=Red> m�u t�m tr�c tr��ng <color> �i !") 
AddEventItem(34) 
Msg2Player(" � c�a th� hai tr� l�i ���ng m�n tr�ng �inh c�u cung tr�n v�n �� , ��t ���c m�u tr�ng tr�c tr��ng . ") 
Uworld37 = SetByte(GetTask(37),1,60) 
SetTask(37,Uworld37) 
AddNote(" � c�a th� hai tr� l�i ���ng m�n tr�ng �inh c�u cung tr�n v�n �� , ��t ���c m�u tr�ng tr�c tr��ng . ") 
end; 
