-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p th�y sinh 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function main() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) then
UTask_tw40sub = GetTask(14) 
if (UTask_tw40sub == 1) then 
Talk(3, "","Ta th�ch nh�t �n l� tr�ng g� li�u , nh�ng l� nh� ta ngh�o qu� , mua kh�ng n�i tr�ng g� ","Ng��i b�n nh� , ta ch� n�y c� ba tr�ng g� , ��a cho ng��i �i ","H�o # nh� mu�n th� t�n / gi� l�i n�i a . ") 
AddNote("��ng � �em tr�ng g� cho th�y sinh , th�y sinh gi�p m�t tay b�t tr�ng ") 
Msg2Player("��ng � �em tr�ng g� cho th�y sinh , th�y sinh gi�p m�t tay b�t tr�ng ") 
SetTask(14, 3) 
elseif (UTask_tw40sub == 7) and (HaveItem(149) == 1) then -- script viet hoa By http://tranhba.com  t� nhi�m v� ho�n th�nh 
Talk(3, "","Ta �� b�t ���c con giun , c� th� cho ta tr�ng g� li�u sao ","Ng��i b�n nh� # c�i n�y 3 c� tr�ng g� cho ng��i !","�a t� ��i ca ! n�i n�y c� 5 con con giun !") 
DelItem(149) 
AddEventItem(150) 
Msg2Player(" l�y ���c 5 con con giun ") 
SetTask(14, 9) 
AddNote("Cho th�y sinh tr�ng g� l�y ���c 5 con con giun ") 
elseif (UTask_tw40sub == 0) then 
Talk(1, "","Ta th�ch nh�t �n l� tr�ng g� li�u , nh�ng l� nh� ta ngh�o qu� , mua kh�ng n�i tr�ng g� ") 
elseif (UTask_tw40sub == 9) and (HaveItem(150) == 0) then 
AddEventItem(150) 
Talk(2,"","Ng��i b�n nh� # ta kh�ng c�n th�n v�t b� con giun , ng��i c� th� hay kh�ng gi�p ta n�a b�t m�y con ?","C�ng may , ta ph�i v� �ch l�i b�t 5 ch� con giun , ��a cho ng��i !") 
elseif (UTask_tw40sub >= 9) then 
Talk(1, "","C�m �n ��i ca cho ta tr�ng g� ") 
else 
Talk(1,"","N�i n�y c� m�y c�i con giun ng��i li�n cho ta m�y tr�ng g� ���c kh�ng ?") 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","Ta tr��ng th�nh sau n�y c�ng mu�n gi�ng nh� D��ng th�c th�c # V��ng b� b� b�n h� l�m nh� v�y ng��i ng��i k�nh tr�ng ��ch ��i anh h�ng ") 
else 
Talk(1,"","Ng�y h�m qua ta c�u xin D��ng th�c th�c d�y ta c�ng phu , nh�ng l� h�n n�i ta c�n nh� , ta l�c n�o m�i c� th� l�n l�n ��y ?") 
end 
end 
end; 
