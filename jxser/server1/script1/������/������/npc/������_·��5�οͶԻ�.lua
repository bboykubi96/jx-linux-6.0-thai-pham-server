-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 5 du kh�ch ��i tho�i 
-- script viet hoa By http://tranhba.com  ba l�ng huy�n tay m�i nhi�m v� # c� x�a qu� ��ch b�o b�i 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 

function main(sel) 
UTask_world19 = GetTask(47); 
if (UTask_world19 == 2) then 
if HaveItem(183) == 1 then 
Say("Du kh�ch # oa a a , ��y l� c�i g� # ng��i tu�i tr� tr�n tay ng��i c�m ch� v� c� th� hay kh�ng b�n cho ta nha , gi� c� h�o th��ng l��ng , ��y l� ph�m v�n �ang c�ng ��ch m�c b�o nha #",2,"B�n /yes","Kh�ng b�n /no") 
else 
Talk(1,"","Du kh�ch # ai �� ta khi n�o m�i c� th� t�m ���c ph�m v�n �ang c�ng ��ch m�c b�o ��y ? ") 
end 
else 
i = random(0,3) 
if (i == 0) then 
Talk(1,"","Du kh�ch # ��ng n�y ��nh h� l�i g�i � v�n m�ng tr�ch � , b�c ��i ��i tr��ng giang , nam nh�n t��ng # t� # nguy�n # phong b�n n��c , ���c x�ng � t�m tr�m d�m ��ng ��nh h� � . ") 
elseif (i == 1) then 
Talk(1,"","Du kh�ch # ��ng ��nh h� m�nh m�ng vu h�i , s�n loan ��t ng�t , ��c �i�m l�n nh�t l� h� b�n ngo�i c� h� , trong h� c� n�i , c� ph�m �i�m m�t c�i , l� l� thanh thanh , tr�i n��c m�t m�u , �u l� t��ng bay . xu�n thu b�n l�c chi c�nh b�t ��ng , trong m�t ng�y bi�n h�a v�n thi�n . ") 
elseif (i == 2) then 
Talk(1,"","Du kh�ch # ph�m v�n �ang c�ng t�ng � # Nh�c D��ng l�u nh� # trung vi�t #� d� xem phu ba l�ng th�ng tr�ng , � ��ng ��nh m�t h� . h�m n�i xa , nu�t Tr��ng giang , h�o h�o thang thang , ho�nh v� t�n nhai # h��ng huy t�ch �m , kh� t��ng v�n thi�n � , c�i n�y s�ng bi�c v�n kho�nh ��ch ��ng ��nh h� th�t kh�ng h� l� � �� nh�t thi�n h� h� � a #") 
else 
Talk(1,"","Du kh�ch # ai �� ta khi n�o m�i c� th� t�m ���c ph�m v�n �ang c�ng ��ch m�c b�o ��y ? ") 
end 
end 
end; 

function yes() 
	i = 100 * (random(0,5)+10)
Talk(2,"","Du kh�ch # ng��i ��p �ng b�n cho ta , kh�ng mu�n ��i � nga # �� cho ta xem m�t ch�t tr�n ng��i ta c�n c� bao nhi�u ti�n , nh�t ng� nh�t th�p m��i l�m hai m��i ��","T�t l�m cho ng��i "..i.." l��ng b�c t�t l�m . ") 
DelItem(183) 
Earn(i) 
SetTask(47, 3) 
Msg2Player("�em ch� v� b�n cho du kh�ch , l�y ���c "..i.." l��ng b�c . ") 
AddNote("�em ch� v� b�n cho du kh�ch , l�y ���c "..i.." l��ng b�c . ") 
end; 

function no() 
Talk(1,"","Du kh�ch # van c�u ng��i suy ngh� m�t ch�t n�a , suy ngh� th�t k� m�t c�i , ta th�t r�t mu�n b�c ch� n�y v� . ") 
end; 
