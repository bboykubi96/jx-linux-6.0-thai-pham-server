-- script viet hoa By http://tranhba.com  t�y nam b�c khu \ ���ng m�n \ y d��c ph�ng \npc\tmnpc10.lua 
-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng d� 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: xiaoyang(2004\4\13) gia nh�p 90 c�p n�m ��c nhi�m v� 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2) 
Uworld124 = GetTask(124) 
if(GetFaction() == "tangmen") and (GetSeries() == 1) then 
if((UTask_tm == 40*256) and (GetLevel() >= 40) and (GetFaction() == "tangmen")) then -- script viet hoa By http://tranhba.com 40 c�p nhi�m v� kh�i ��ng 
Talk(4,"L40_get","Ta ���ng m� m�t ��i ng��i ta ���c ta l�m , ch� c� m�t chuy�n , cho t�i h�m nay v�n l�m l�o phu c�nh c�nh v�i nghi ng� ", " l�o phu t�ng c� m�t m�c ngh�ch chi giao g�i c�nh t� k� , m��i n�m tr��c , c�nh t� k� ��ch th� t� m�c ph�i qu�i b�nh , �i c�u ta ch�a tr� , nh�ng l� b�n m�n s�m c� m�n quy , kh�ng ph�i l� ���ng m�n ng��i trong , nh�t lu�t kh�ng ph�i ch�a tr� . l�o phu h�n vu m�n quy , b�t lu�n c�nh t� k� c�u kh�n th� n�o , ki�n tr� kh�ng ch�u xu�t th� c�u gi�p , k�t qu� th� t� c�a h�n kh�ng l�u sau b�i v� b�nh qua ��i , ta hai ng��i t� nay ph�n b�i th�nh th� ","M�y ng�y tr��c ��y l�o phu nh�n ���c c�nh t� k� ��ch m�t phong th� , ��c l�o phu g�p m�t t� c�u , ta bi�t h�n l� t�i t�m ta b�o th� , ta thi�u h�n m�t c�i m�ng , tr� l�i cho h�n v�n l� c�ng kh�ng c� c�i g� , ch�ng qua l� l�o phu th�t s� l� kh�ng m�t m�i nh�n b�n c� a ! ","S� th�c , chuy�n n�y nguy�n kh�ng tr�ch ng��i , ng��i h�n h��ng h�n gi�i th�ch r� nguy�n nh�n , �� cho h�n hi�u ng��i n�m �� kh� x� .") 
		elseif(UTask_tm == 40*256+40) then 
Talk(3, "L40_step44","���ng d� s� th�c , c�nh ti�n b�i ��ch n� nhi ���c c�ng m�u th�n gi�ng nhau qu�i b�nh , t�nh m�ng nguy � ��n t�ch , n�u nh� ng��i c� th� c�u s�ng n� nhi c�a h�n , h�n nh�t ��nh s� kh�ng n�a tr�ch ng��i ��ch !","Nh�ng l� m�n quy .....","S� th�c , ng��i y�n t�m , ta �� ngh� ra li�u m�t bi�n ph�p t�t , ng��i kh�ng c�n ph� h� m�n quy c�ng c� th� c�u ng��i , ch� c�n ng��i �em ph��ng thu�c n�i cho ta bi�t l� ���c !") 
		elseif(UTask_tm == 40*256+80) then
Talk(4, "L40_prise","���ng d� s� th�c , ng��i khai ��ch ph��ng thu�c qu� nhi�n h�u hi�u , c�nh ti�n b�i ��ch n� nhi ���c c�u r�i # h�n �� kh�ng h� n�a tr�ch ng��i !","C� th�t kh�ng ? th�t t�t qu� # b�t qu� h�n ��ch n� nhi c�ng kh�ng ph�i l� ta c�u ��ch , m� l� ng��i c�u ��ch , ng��i hi�u � c�a ta kh�ng ?","Hi�u # chuy�n n�y c�ng s� th�c kh�ng li�n quan , l� ta l�m ! ","Ng��i qu� nhi�n c� tr� , l�o phu kh�ng nh�n l�m ng��i , c�p c�p c�p c�p ! ") 
		elseif(UTask_tm > 40*256) and (UTask_tm < 40*256+60) then					-- script viet hoa By http://tranhba.com 40����������ͨ�Ի�
Talk(1,"","<color=Red> c�nh t� k� <color> m�t m�c �n c� � <color=Red> n�i Thanh Th�nh ��ch t�y b� <color>.") 
		elseif(UTask_tm >= 40*256+60) and (UTask_tm < 50*256) then					-- script viet hoa By http://tranhba.com ��δ���40������
Talk(1,"","D��c li�u t�ng c�ng c� n�m lo�i #<color=Red> thi�m th� ��ch da <color> , <color=Red> r�n ��c ��ch ��m <color>#<<color=Red> anh t�c ��ch x�c <color>#<color=Red> con b� c�p ��ch �u�i <color>#<color=Red> c��ng t�m ��ch ��u <color> , nh�ng d��c li�u n�y � <color=Red> n�i Thanh Th�nh ��ng b�c <color> ��ch <color=Red> thanh d��ng ng�n n�i <color> t��ng ��i nhi�u .") 
elseif(UTask_tm >= 50*256) and (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","Ng��i gi�p l�o phu h�a gi�i �o�n n�y m��i n�m �n o�n , th�t kh�ng hi�u th� n�o c�m t� ng��i ") 
else 
Talk(1,"","B�ng h�u tr� m�t , th�t l�m cho l�ng ng��i �au / th��ng y�u !") 
end 
elseif (Uworld124 == 20) and (HaveItem(385) == 1) then 
Talk (2,"Uworld_wdutask","���ng ti�n sinh , n�i n�y c� phong th� , m�i/xin ng��i xem qua !","�em n� n�m , ta kh�ng nh�n !") 
elseif (Uworld124 == 20) then 
Msg2Player("Tin/th� c� ph�i hay kh�ng r�i � tr�n ���ng ? nhanh �i t�m m�t ch�t ") 
elseif (Uworld124 == 25) then 
Talk (15,"Uworld_wdutask2","Chuy�n g� ?","Ti�u t� , ng��i mau b� m�ng , bi�t kh�ng ?","Nga , t�i h� ngu mu�i !","N�u nh� ta � Ng� ��c gi�o kh�ng c� n�i gian , h�m nay li�n trung v�n l�o nhi ��ch k� li�u . phong th� n�y l� kh�ng ph�i l� v�n kh�ng t� �� cho ng��i mang t�i ? ","��i v�i .","Ha ha , ng��i tr�ng k� , phong th� n�y c� v� h�nh ��ch ��c , b�n ngo�i c�i g� c�ng kh�ng th�y ���c , nh�ng l� , m� ra ��ch th�i �i�m s� nhi�u lo�n kinh m�ch , v�n l�o Nh� v�n l� mu�n h�i ta , kh�ng �em ng��i kh�c t�nh m�ng coi ra g� .","� � , l�m sao b�y gi� , ti�n sinh ?","Kh�ng c�n lo l�ng , v�n l�o nhi th��ng h�i ta , l� b�i v� ta th��ng c�u h�n l�m h�i ng��i , b�nh c�a ng��i giao cho l�o phu .","���ng d� s� d�ng n�i c�ng v� ng��i tr� ��c , ng��i c�m gi�c c� ng�n qu� ��n ��nh r�t xu�ng li�u .","���ng d� # may nh� ph�t hi�n s�m , n�u kh�ng ng��i nh�t ��nh ph�i ch�t .","C�m t� ���ng l�o gia .","Kh�ng ph�i l� b�ch l�m , ng��i gi�p ta mang phong th� n�y tr� v� , ta �� th� nh�ng kh�c ��c d��c , ch� c�n ng��i n�i l� �� ph�t hi�n �m m�u c�a h�n , h�n li�n l�p t�c m� ra tin c�y nh�n , khi �� , s� c� ng��i l�y t�nh m�nh c�a h�n .","V�n kh�ng t� d�ng ��c h�i ng��i , ta nh�t ��nh s� kh�ng b� qua h�n .","Ng��i u�ng ho�n gi�i d��c li�n l�n ���ng �i .","T�t ") 
elseif(Uworld124 == 30 ) and (HaveItem(386) == 0) then 
Talk (1,"","Ti�u t� , tin/th� � n�i n�o , c�n th�n m�t ch�t , v�n l�o t�c kh�ng d� d�ng ��i ph� . ") 
AddEventItem(386) 
Msg2Player("Ti�p nh�n ���ng d� ��ch tin/th� ") 
elseif(UTask_tm == 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","C� r�nh r�i t�i c�ng ta u�ng r��u !") 
else -- script viet hoa By http://tranhba.com  kh�ng ho�n th�nh 40 c�p nhi�m v� # thi�u t�nh ��i tho�i # 
Talk(1,"","���ng m� nh�t ng�n k� xu�t t� m� nan truy !") 
end 
end; 

function L40_step44() 
	SetTask(2, 40*256+60)
AddNote("Tr� v� y d��c ph�ng th�y ���ng d� , bi�t ph��ng thu�c bao g�m # thi�m th� ��ch da , r�n ��c ��ch ��m , anh t�c ��ch x�c , con b� c�p ��ch �u�i , c��ng t�m ��ch ��u .") 
Msg2Player("# �i n�i Thanh Th�nh , ��n thanh d��ng ng�n n�i t�m d��c li�u ") 
Talk(2,"","Chuy�n �� nh� th� , mu�n tr� b�nh d��c li�u c�n thi�t t�ng c�ng c� n�m lo�i #<color=Red> thi�m th� ��ch da <color> , <color=Red> r�n ��c ��ch ��m <color>#<<color=Red> anh t�c ��ch x�c <color>#<color=Red> con b� c�p ��ch �u�i <color>#<color=Red> c��ng t�m ��ch ��u <color> , nh�ng d��c li�u n�y � <color=Red> n�i Thanh Th�nh ��ng b�c <color> ��ch <color=Red> thanh d��ng ng�n n�i <color> t��ng ��i nhi�u , b�t qu� n�i �� th��ng c� <color=Red> h�c �ng <color>#<color=Red> hung th�u <color>#<color=Red> linh �i�u <color> ra kh�ng c� , ng��i ph�i c�n th�n !") 
end; 

function L40_get() 
Say("H�n h�n ta , th�y ch�t m� kh�ng c�u , l�m sao c� th� nghe ta gi�i th�ch .", 2,"H�a gi�i gi�a hai ng��i ��ch �n o�n /L40_get_yes","Ta kh�ng th� gi�p ng��i c�i g� /L40_get_no") 
end; 

function L40_get_yes() 
Talk(1,"","<color=Red> c�nh t� k� <color> m�t m�c �n c� � <color=Red> n�i Thanh Th�nh ��ch t�y b� <color>.") 
	SetTask(2, 40*256+20)
AddNote(" � y d��c ph�ng th�y ���ng d� , nh�n <color=red> c�nh t� k� nhi�m v� <color>, h�a gi�i ���ng d� c�ng c�nh t� k� gi�a ��ch �n o�n ") 
Msg2Player("C�nh t� k� nhi�m v� # h�a gi�i ���ng d� c�ng c�nh t� k� gi�a ��ch �n o�n ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
SetRank(29) 
SetTask(2, 50*256) 
-- script viet hoa By http://tranhba.com  AddMagic(345) 
add_tm(50) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i th�ng l�m v�o c�c �� t� , c� th� h�c ���c ���ng m�n h�n b�ng ��m v� c�ng . ") 
AddNote("��n ���ng m�n d��c ph�ng , ph�c m�nh ���ng d� , ho�n th�nh c�nh t� k� nhi�m v� , th�ng l�m v�o c�c �� t� . ") 
end; 

function Uworld_wdutask() 
DelItem(385) 
Msg2Player("Ng��i n�m v�n kh�ng t� ��ch tin/th� ") 
SetTask(124,25) 
end 

function Uworld_wdutask2() 
AddEventItem(386) 
Msg2Player("��c t� �� m� ho�n , nh�n ���c ���ng d� ��ch tin/th� , giao cho v�n kh�ng t� ") 
AddNote("Mang ���ng d� ��ch th� h�i �m cho v�n kh�ng t� ") 
SetTask(124,30) 
end 
