-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p l�o c� �ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function main() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) then 		-- script viet hoa By http://tranhba.com 40������
UTask_tw40sub = GetTask(14) 
if (UTask_tw40sub == 0) then -- script viet hoa By http://tranhba.com  t� nhi�m v� kh�i ��ng 
Talk(4,""," l�o nh�n gia , ��y l� ng��i c�u ��n ��ch l�ng xanh con r�a sao ?","��ng v�y , h�m nay th�t may m�n , ��y c�ng kh�ng ph�i l� d� d�ng ��ng ph�i chuy�n c�a t�nh ��y !","T�i h� �ang mu�n d�ng n� l�m thu�c c�u ng��i ��y , ng��i c� th� �em n� cho ta kh�ng ?","H�m nay mang ��ch m�i c�u gi�ng nh� kh�ng �� , ng��i n�u l� cho ta t�m m�y c�i con giun ta li�n �em n� cho ng��i !") 
AddNote("Nh�n ��o con giun ��i l�ng xanh con r�a nhi�m v� ") 
Msg2Player("T�m m�y con l�ng xanh con r�a tr� v� cho l�o c� �ng li�n c� th� ��i ��n l�ng xanh con r�a ") 
SetTask(14,1) 
elseif (UTask_tw40sub == 9) and (HaveItem(150) == 1) then 
Talk(3, "","Nh� th� n�o ? c� con giun sao ? ", " l�o nh�n gia # ng��i xem nh�ng th� n�y �� ch�a ?","R�t t�t , l�ng xanh con r�a ��a cho ng��i !") 
DelItem(150) 
AddEventItem(94) 
Msg2Player("T�m ���c l�ng xanh con r�a ") 
SetTask(14,10) 
AddNote("Mang ��n con giun ��a cho c�u c� �ng ��i l�y l�ng xanh con r�a ") 
elseif (UTask_tw40sub >= 10) then 
if (HaveItem(94) == 0) then 
AddEventItem(94) 
Talk(2,""," l�o nh�n gia , ng��i ��a cho ta ��ch l�ng xanh con r�a ta v�t b� !","A # ng��i th� n�o v�n t�t nh� v�y ��y # ta m�i v�a c�u ��n m�t con , ng��i nhanh l�n c�m �i c�u ng��i !") 
else 
Talk(1,""," l�o h�n ta m�i ng�y ��u � n�i n�y c�u c� , n�i n�y c� c�ng bi�t ta ") 
end 
else 
if (UTask_tw40sub ~= 0) and (UTask_tw40sub ~= 1) and (UTask_tw40sub ~= 3) and (UTask_tw40sub ~= 5) and (UTask_tw40sub ~= 7) and (UTask_tw40sub ~= 9) and (UTask_tw40sub ~= 10) then 
SetTask(14,0) 
Talk(1,"","Ti�u t� , xem ng��i kh� s�c kh�ng ph�i l� r�t t�t , hay l� tr��c ngh� ng�i m�t ch�t , c� c�i g� t� t� n�i . ") 
else 
Talk(1,"","Cho ta t�m m�y c�i con giun ta li�n �em l�ng xanh con r�a ��a cho ng��i . ") 
end 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","Nh� m�t ch�t , kh�ng mu�n kinh ��ng c� c�a ta ! ") 
else 
Talk(1,""," l�o h�n ta m�i ng�y ��u � n�i n�y c�u c� , n�i n�y c� c�ng bi�t ta ") 
end 
end 
end; 
