-- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n ng��i �i ���ng 3 h� t� ��i tho�i 
-- script viet hoa By http://tranhba.com  giang t�n th�n tay m�i nhi�m v� # h� t� ��ch ��n cung 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
-- script viet hoa By http://tranhba.com  UTask_world18 = GetTask(46); 
UTask_world45 = GetTask(45) 
if ((UTask_world45 == 0) and (GetLevel() >= 5)) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng , c�n 5 c�p tr� l�n 
if(GetSex() == 0)then 
Say("H� t� # ��i ca ca , th� r�n ��i th�c ��p �ng ��a cho ta m�t thanh ��n cung , kh�ng bi�t l�m xong kh�ng c� , ng��i c� th� gi�p ta �i h�i m�t ch�t h�n sao ? ", 2 ,"Gi�p m�t tay /yes","Kh�ng gi�p /no") 
else 
Say("H� t� # ��i t� t� , th� r�n ��i th�c ��p �ng ��a cho ta m�t thanh ��n cung , kh�ng bi�t l�m xong kh�ng c� , ng��i c� th� gi�p ta �i h�i m�t ch�t h�n sao ? ", 2 ,"Gi�p m�t tay /yes","Kh�ng gi�p /no") 
end 
elseif(UTask_world45 == 10) then 
Talk(1,"","Nhanh �i gi�p ta h�i m�t ch�t nha , ��i th�c l�m xong kh�ng c� nha ?") 
elseif(UTask_world45 == 20) then 
if(HaveItem(176) == 1) then 
Talk(1,"","Th�t t�t qu� , th�t t�t qu� , m�t h�i ta �i ngay t�m ng�y ng�y �i ra ngo�i ch�i m� . c�i thanh n�y v� kh� l� ta � th�n b�n ngo�i t�m ���c , ta gi� l�i kh�ng c� g� d�ng s� ��a cho ng��i �i !") 
DelItem(176) 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
AddItem(0,0,random(0,5),2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) -- script viet hoa By http://tranhba.com  m�t thanh ng�u nhi�n c�p hai v� kh� 
SetTask(45, 100) 
AddRepute(8) 
AddNote("Ho�n th�nh nhi�m v� , mang ��n cung tr� v� cho h� t� ") 
Msg2Player("Mang ��n cung tr� v� cho h� t� ") 
Msg2Player("��t ���c m�t binh kh� ") 
Msg2Player("Ng��i danh v�ng gia t�ng 8 �i�m ") 
else 
Talk(1,"","Ch� ��i th�c gi�p ta l�m xong ��n cung , ta mu�n �i th�n b�n ngo�i ��nh �i�u , b�t qu� c�ng kh�ng n�n n�i cho ta bi�t m� , n�ng nh�t ��nh s� kh�ng �� cho ta �i ��ch !") 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","Th� n�o c�n kh�ng tuy�t r�i nha ? xu�ng tuy�t ta li�n c� th� ��ng ng��i tuy�t # ��nh g�y tr�t tuy�t , mang nhi�u k�nh nhi a !") 
else 
Talk(1,"","Ai , kh�ng bi�t th� r�n ��i th�c ��p �ng ��a ta ��n cung ��nh xong ch�a , ��i th�c tay c�a ngh� th�t r�t t�t a , h�n danh ki�m thi�t c�a h�ng xa g�n n�i ti�ng , ��nh ra t�i v� kh� ��c bi�t h�o ��y !") 
end 
end 
end; 

function yes() 
Talk(1,"","Th� r�n ��i th�c gi��ng c�a �ang � c�a th�n , r�t d� d�ng t�m ���c !") 
SetTask(45, 10) 
AddNote("Ti�p nh�n v� , gi�p h� t� �i h�i th� r�n l�m xong ��n cung li�u kh�ng c� ") 
Msg2Player("Ti�p nh�n v� , gi�p h� t� �i h�i th� r�n l�m xong ��n cung li�u kh�ng c� ") 
end; 

function no() 
Talk(1,"","Ta �i gi�p ng��i h�i m�t ch�t ng��i kh�c !") 
end; 
