-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC n�m ��c �� t� 1 nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function main() 
Uworld37 = GetByte(GetTask(37),2) 
if (Uworld37 == 10) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
if ((HaveItem(227) == 1) and (HaveItem(223) == 1) and (HaveItem(225) == 1) and (HaveItem(226) == 1) and (HaveItem(227) == 1)) then 
Talk(1,"","A ! th� n�o �em kh�ng t��c v� mao t�ng cho ta . h�n mu�n d�n �i ��a cho trong ��ng ��ch s� huynh m�i ��ng . ") 
else 
Talk(1,""," luy�n c�ng th�i gian kh�ng �� , ng��i t�i sao l�i ��n n�i n�y ? xem ng��i nh� v�y u� o�i kh�ng ch�n ��ch d�ng v� l�m sao c� th� tr� th�nh �� t� b�n m�n ��y ? c� ng�y h�y n�m m� �i . ") 
end 
elseif (Uworld37 == 0) and (GetLevel() >= 10) and (GetFaction ~= "wudu") then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� 
Say("N�u mu�n tr� th�nh �� t� b�n m�n , ph�i ���c qu� n�m ��c ��ng ��ch th� luy�n . ng��i ngh� th� m�t ch�t sao ? ",2," l� # ta mu�n th� nh�n m�t ch�t ! /enroll_get_yes","Kh�ng , ta ch�ng qua l� t�i xem m�t ch�t . /no") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Kh�ng n�n ch�y lo�n . b� trong ��ng ��ch tr�ng y�u ��n li�n v� thu�c nh�ng y li�u . ") 
end 
end; 

function enroll_get_yes() 
Uworld37 = SetByte(GetTask(37),2,10) 
SetTask(37,Uworld37) 
AddNote("Nh�n ���c n�m ��c ��ng ��ch nhi�m v� luy�n c�ng , �i t�i trong ��ng , ng��i s� th�y 5 c�ng d�ng d�p kh�ng t��c mao . ") 
Msg2Player("Nh�n ���c n�m ��c ��ng ��ch nhi�m v� luy�n c�ng , �i t�i trong ��ng , ng��i s� th�y 5 c�ng d�ng d�p kh�ng t��c mao . ") 
end; 

function no() 
end; 
