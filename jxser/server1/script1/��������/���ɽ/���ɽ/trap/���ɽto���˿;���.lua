-- script viet hoa By http://tranhba.com  t�y nam nam khu �i�m th��ng s�n to th��ng l�ng kh�ch ch� � 
-- script viet hoa By http://tranhba.com Trap ID# th��ng l�ng kh�ch 1 

function main(sel) 
Uworld42 = GetTask(42) 
-- script viet hoa By http://tranhba.com  Msg2Player("Th��ng l�ng kh�ch ch� � ") 
if (Uworld42 == 60) then 
SetTask(42,70) 
Talk(15,"U42_go","Ha ha ! ","Ha ha ha ! ","��a b� ngoan , t�i n�i n�y , gia gia c�ng ng��i ... ai nha , n�ng n� a #","Gia gia , ta mu�n �n ���ng .","Ta c�ng mu�n .","Gia gia , b�n h� c� , ta ��y ?","C� th� , ai c�ng c� ph�n .","Xin h�i th��ng l�ng kh�ch � c�n ph�ng sao ?","B�n ngo�i l� ng��i n�o ?","V�n b�i b�i ki�n !","Ta �ang c�ng c�c ch�u �ang ��a ��a b�n , kh�ng c� th�i gian ti�p ��i , tr� v� �i th�i !","Th�c kh�ng d�m gi�u gi�m , m�y c�i n�y ��a tr� ��ch m�u th�n c�ng r�t lo l�ng , �n ng� b�t an , xin/m�i ti�n b�i th� b�n h� .","B�n h� ��u l� ch�u c�a ta , ng��i n�i c�i g� m� c�a b�n h�n ? ti�u t� ng��i d�m ��n c�i n�y tr�u ta a ? ","Ti�n b�i , kh�ng n�n c�ng ta n�i gi�n , tha th� m�t ch�t !","Tha th� ? l�n m�t ti�u t� , ti�p chi�u !") 
elseif (Uworld42 == 70) then 
Talk(1,"U42_go","Ti�u t� kh�ng bi�t s�ng ch�t , c�n kh�ng mau �i ! ") 
end 
end; 

function U42_go() 
NewWorld(231,1611,3193) 
end 
