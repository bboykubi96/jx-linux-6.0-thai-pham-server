-- script viet hoa By http://tranhba.com  th�y kh�i c�a h� m� tuy�t 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 
-- script viet hoa By http://tranhba.com  update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  update by xiaoyang (2004\4\20) 

Include("\\script\\global\\skills_table.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(5) == 1 then 
allbrother_0801_FindNpcTaskDialog(5) 
return 0; 
end 
UTask_cy = GetTask(6) 
Uworld121 = GetTask(121) 
if (GetSeries() == 2) and (GetFaction() == "cuiyan") then 
		if (UTask_cy == 30*256+40) and (HaveItem(2) == 1) and (HaveItem(3) == 1) and (HaveItem(4) == 1) then
L30_prise() 
elseif ((UTask_cy == 30*256) and (GetLevel() >= 30)) then -- script viet hoa By http://tranhba.com 30 c�p nhi�m v� kh�i ��ng 
Talk(1,"L30_get","Tr��c ��y kh�ng l�u ta c� duy�n x�o h�p , l�y ���c m�t lo�i g�i l� � v� y ngh� th��ng � ��ch tr� hoa ��ch m�m m�ng , lo�i tr� n�y hoa ph�m lo�i h�t s�c tr�n qu� , b�i d�c ��ng l�n c�ng h�t s�c kh� kh�n . n�u nh� kh�ng c� n�m gi� b� quy�t , l� r�t kh� th�nh c�ng ��ch , ta b�y gi� �ang ph�m s�u ��y ! ") 
elseif (UTask_cy > 30*256) and (UTask_cy < 40*256) then 
Talk(1,"","Th� n�o ? �ng n�i ta �� n�i cho ng��i bi�t lo�i ' v� y ngh� th��ng ' ��ch ph��ng ph�p ?") 
elseif (UTask_cy >= 40*256) then 
Talk(1,"","V� y ngh� th��ng hoa n� r�t nhanh , ��u l� sau c�ng nhau nh�n tr� hoa ") 
else 
Talk(1,"","Gia gia h�n c�ng th�ch xem tr� hoa sao ?") 
end 
elseif(Uworld121 == 10) and (HaveItem(373) == 1) then -- script viet hoa By http://tranhba.com  ph�n �o�n nhi�m v� c� hay kh�ng kh�i ��ng c�ng v�i trong t�i �eo l�ng th�i �i�m c� chu ti�u tuy�n c�y k�o 
Talk(8,"Uworld121_lose","H� ti�n t� # n�i n�y c� m�t thanh t� ti�u tuy�n c�y k�o ","C�m �n #","Kh�ng kh�ch kh� # c� th� th�y ti�n t� ��ch dung m�o l� c�a ta vinh h�nh .","( ng��i c�n ph�i n�i ti�p , nh�n th�y m� tuy�t c�m k�o l�n , gi�ng nh� v�n t� m�t d�ng k�o li�u m�y l�n )","H� c� n��ng # ng��i l�m c�i g� ? ","Ta v� ng��i l�i kh�ng quen bi�t , ng��i xa nh� v�y v�i t�i ta ��a c�y k�o , l� h�n c� ��ng hay kh�ng ? ","H�n l� ai ?","�� c� th� gi�p m� tuy�t m�t chuy�n sao ?") 
elseif(Uworld121 == 10 ) then -- script viet hoa By http://tranhba.com  n�u nh� ��n nh�n nhi�m v� nh�ng kh�ng c� nhi�m v� ��o c� c�y k�o 
Talk(1,"","C�i thanh n�y c�y k�o l� ta kh� c�c c�u xin t� ti�u tuy�n s� b� l�m , ng��i xem m�t ch�t c� th� hay kh�ng t�m ���c ch� � c�a h�n ?.") 
elseif (Uworld121 == 20) and (HaveItem(10) == 0) then -- script viet hoa By http://tranhba.com  t�c m�t 
AddEventItem(10) 
Msg2Player(" l�i t�m ���c m�t to�t t�c ") 
Talk(1,"","Qu�n d�n ��u ph�t .") 
elseif (Uworld121 >= 20) and (Uworld121 < 30) then -- script viet hoa By http://tranhba.com  �ang c�ng d��ng h� ��i tho�i tr��c 
Talk(1,"","M�i/xin ng��i truy�n l�i cho m� tuy�t . �a t� ") 
elseif(Uworld121 == 30) then 
Talk(8,"Uworld121_Step4","H� c� n��ng # kh�ng n�n n�i n�a , ta bi�t .","H� c� n��ng ng��i hi�u l�m , C�n L�n � �� b� v��ng , d��ng h� l� ph�i ��i t�t c� m�i chuy�n k�t th�c tr�/mang l�n th�y kh�i g�p ng��i .","H�n th�t ��p �ng y�u c�u c�a ta li�u sao ?","..... chuy�n n�y h�n s� kh�ng n�i .","Ha ha ha # h� m� tuy�t a h� m� tuy�t , ng��i th� n�o nh� v�y ng�y th� a ?","H� c� n��ng .....","H�n xu�t th�n l� c�n kh�ng c� ta ��y , c� ta l� h�n �� gi� r�i !.....") 
elseif(Uworld121 == 40) and (HaveItem(376) == 0) then 
Talk(1,"","Kh�ng c� c�m t� quy�n , kh�u anh nh�t ��nh s� kh�ng h�i l�ng .") 
AddEventItem(376) 
Msg2Player("�o�t t�i t� quy�n . ") 
else 
Talk(1,"","Ta m� ��c l�n nh�t ch�nh l� tr�ng ra thi�n h� ��p nh�t ��ch tr� hoa ") 
end 
end; 

function L30_get() 
Say("Nghe n�i th�nh ��i L� c� m�t h� �o�n ��ch hoa n�ng , l� lo�i tr� hoa ��ch n�ng th� , nh�ng l� h�n t�nh t�nh c� qu�i , r�t nhi�u ng��i th�nh gi�o h�n c�ng kh�ng c� c�ng m� ph�n ",2,"Ch� ta suy ngh� m�t ch�t bi�n ph�p gi�p ng��i /L30_get_yes","M�i ng��i c�ng s� g�p ph�i tr� ng�i , ch� s� ta c�ng kh�ng c� nh�ng bi�n ph�p kh�c . /L30_get_no") 
end; 

function L30_get_yes() 
Talk(1,"","Th�t c�m t� ng��i !") 
	SetTask(6,30*256+10)
AddNote(" � ��i L� th�y �o�n l�o n�ng th�nh gi�o tr�ng tr�t v� y ngh� th��ng ��ch ph��ng ph�p . ") 
Msg2Player(" � ��i L� th�y �o�n l�o n�ng th�nh gi�o tr�ng tr�t v� y ngh� th��ng ��ch ph��ng ph�p . ") 
end; 

function L30_get_no() 
end; 

function L30_prise() 
Talk(1,"","Th� ra l� c�n c� nh� v�y b� quy�t , th�t l� c�m �n ng��i . ta th�ng ng��i l�m m�t ph�m hoa khi�n cho �i ") 
SetTask(6,40*256) 
SetRank(34) 
DelItem(2) 
DelItem(3) 
DelItem(4) 
-- script viet hoa By http://tranhba.com  AddMagic(105) 
-- script viet hoa By http://tranhba.com  AddMagic(113) 
add_cy(40) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i # b� ��ng c�a l�m m�t ph�m hoa khi�n cho # h�c ���c v� c�ng m�a ��nh l� hoa , m�y tr�i t�n tuy�t . ") 
AddNote("�o�t ���c lo�i v� y ngh� th��ng ��ch b� quy�t , ho�n th�nh nhi�m v� , b� ��ng c�a v� # nh�t ph�m hoa khi�n cho ") 
end; 

function Uworld121_lose() 
Talk(5,"","C� n��ng n�i th�ng .","K�nh xin ng��i �em t�c n�y mang cho Thi�n v��ng gi�p ��ch b�n ph�i khi�n cho d��ng h� , n�i cho h�n bi�t n�u nh� 7 th�ng tr��c kh�ng ��n th�y kh�i t�m ta l�i c�a t� nay v� sau ta c�ng h�n c�ng ch�a c� c� h�i g�p l�i sau .","Qu� nhi�n l� d��ng h� # d��ng b�n ph�i khi�n cho v�n m�i v� ��c ch�ng qua l� nh�t th�i ��ch l�a ch�n , l� ng��i trung long ph��ng , H� c� n��ng ngh� ng�i m�t ch�t ","Ta c�ng kh�ng mu�n gi�p ng��i , h� ....","���c r�i # ta �i .") 
DelItem(373) 
AddEventItem(10) 
Msg2Player("Thay h� m� tuy�t ��i tho�i cho d��ng h� , l�y ���c h� m� tuy�t ��ch m�t th�t t� l�a . ") 
AddNote("Gi�p h� m� tuy�t ��i tho�i cho d��ng h� ") 
SetTask(121,20) -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng thi�t tr� v� 20 
end 

function Uworld121_Step4() 
Talk(4,"Uworld121_sijin",".....?","M�c d� ng��i b�t nh�n nh�ng l� ta c�ng kh�ng c� th� b�t ngh�a . n�i n�y c� m�t kh�i t� quy�n , ng��i d�n h�n �i t�m C�n L�n ��ch kh�u anh . ta �� gi�p h�n m�t l�n cu�i c�ng . ","Ta �i ..... hy v�ng ti�n c� hi�u r� s� .","Ch� nhi�u l�i !") 
end 

function Uworld121_sijin() 
AddEventItem(376) 
Msg2Player("Ti�p nh�n t� quy�n . ") 
AddNote("B�t ���c h� m� tuy�t ��ch t� quy�n , mang theo �i t�m C�n L�n ��ch kh�u anh . ") 
SetTask(121,40) -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng thi�t tr� v� 40 
end 
