-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p c� ph� h� t�u 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(205) == 1 then 
allbrother_0801_FindNpcTaskDialog(205) 
return 0; 
end 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) then 		-- script viet hoa By http://tranhba.com 40������
UTask_tw40sub = GetTask(14) 
if (UTask_tw40sub == 3) then -- script viet hoa By http://tranhba.com  t� nhi�m v� kh�i ��ng 
Talk(1,"","Nam nh�n ta ra h� b� c� , m�y ng�y nay ph�i tr� v� nh� , h�n th�ch nh�t u�ng ng�n nh� h�t sen thang , kh�ng kh�o trong nh� ��ch h�t sen c�ng d�ng h�t r�i , ta b�y gi� �ang b� b�n tr� gi�t qu�n �o , ng��i c� th� gi�p ta �i ba l�ng huy�n ti�m t�p h�a mua ch�t h�t sen tr� l�i sao ?") 
SetTask(14, 5) 
AddNote(" � tr�n tr�i v��ng ��o n��c tr�i th�y c� ph� h� t�u gi�p n�ng ��n ba l�ng huy�n ti�m t�p h�a mua ch�t h�t sen tr� l�i ") 
Msg2Player(" � tr�n tr�i v��ng ��o n��c tr�i th�y c� ph� h� t�u gi�p n�ng ��n ba l�ng huy�n ti�m t�p h�a mua ch�t h�t sen tr� l�i ") 
elseif (UTask_tw40sub == 5) then 
if (HaveItem(148) == 1) then -- script viet hoa By http://tranhba.com  t� nhi�m v� ho�n th�nh 
Talk(1,"","C�m �n ng��i gi�p ta mua v� li�u h�t sen , c�i n�y 3 c� tr�ng g� ��a cho ng��i ") 
DelItem(148) 
AddEventItem(149) 
Msg2Player(" l�y ���c 3 c� tr�ng g� ") 
SetTask(14, 7) 
AddNote("�em h�t sen giao cho h� t�u , l�y ���c 3 c� tr�ng g� ") 
else 
Talk(1,""," � ba l�ng huy�n ti�m b�ch h�a c� h�t sen b�n ") 
end 
elseif (UTask_tw40sub == 7) then 
if (HaveItem(149) == 0) then 
AddEventItem(149) 
Talk(2,"","H� t�u ! ta kh�ng c�n th�n �em tr�ng g� ��nh n�t li�u , ch� d�u c� th� cho th�m ta m�y sao ?","Xem ng��i r�t lo l�ng a , n�i n�y c�n c� 3 c� tr�ng g� , ��a cho ng��i !") 
else 
Talk(1,"","Ng�n nh� h�t sen thang mau l�m xong , th� n�o c�n kh�ng c� nh�n th�y h�n tr� l�i a ") 
end 
elseif (UTask_tw40sub == 0) then 
Talk(1,"","Ai c� th� �� �em ta h�t sen mua v� li�n th�t t�t qu� ") 
else 
Talk(1,"","Ch�ng ta th� n�o b�y gi� c�n ch�a c� tr� v� ") 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","Nam nh�n ta l� m�t ng��i ��ng ho�ng , ��n b�y gi� v�n ch� l� c� ph� ��o d�n , kh�ng bi�t l�c n�o m�i c� th� th�nh ng��i !") 
else 
Talk(1,""," � b�n bang ��ch ��ng ��o h� ph�p trong , L� l�o h� ph�p ��i v�i b�n thu�c h� r�ng nh�t cho , H� h� ph�p tho�i �t nh�t , v��ng tr��c khi�n cho l�m ng��i nh�t ngay th�ng , d��ng b�n ph�i khi�n cho nh�t kh�n kh�o c� th� l�m , c� b�n tr�i khi�n cho sao �� l�m ng��i nh�t vi�n ho�t ,") 
end 
end 
end; 
