-- script viet hoa By http://tranhba.com  th�y kh�i c�a y�n hi�u xinh ��p 20 c�p nhi�m v� #40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_cy = GetTask(6) 
if (GetSeries() == 2) and (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  nhi�m v� t��ng quan c�ng v�i m�n ph�i ��i tho�i 
		if (UTask_cy >= 20*256+10) and (UTask_cy < 30*256) then		-- script viet hoa By http://tranhba.com 20�����������
if (GetTimerId() == 8) then 
StopTimer() -- script viet hoa By http://tranhba.com  gi�i ��c 
Msg2Player("Ng��i tr�ng ��c c�n kh�ng c� m� ") 
Talk(1,"L20_check","S� mu�i mau t�i ��y , ta gi�p ng��i gi�i ��c .") 
else 
L20_check() 
end 
elseif (UTask_cy == 20*256) and (GetLevel() >= 20) then -- script viet hoa By http://tranhba.com 20 c�p nhi�m v� 
Say("Y�n hi�u xinh ��p # b�n m�n nu�i r�t nhi�u kim phong , nh�ng th� n�y kim phong mu�n �n m�t lo�i ��c th� hoa m�t ## ��i m�n �� la hoa ��ch hoa m�t . g�n nh�t hoa m�t d�ng h�t r�i , ng��i c� th� gi�p ta th�i m��i bu�i c�y hoa tr� l�i sao ? ",2,"C� th� !/L20_get_yes","�� t� c�ng phu : th�i gian c�n k�m , s� r�ng kh�ng l�m ���c /L20_get_no") 
		elseif (UTask_cy == 40*256+30) then							-- script viet hoa By http://tranhba.com 40���������
L40_prise() 
elseif ((UTask_cy == 40*256) and (GetLevel() >= 40)) then -- script viet hoa By http://tranhba.com 40 c�p nhi�m v� kh�i ��ng 
Say("Nghe n�i th�nh ��i L� c� m�t �c ph�ch , ��c bi�t m�nh c��p d�n n� , kh�ng bi�t h�i ch�t bao nhi�u v� t�i thi�u n� , ng��i nguy�n � �i di�t tr� th� gian n�y th� b�i ho�i sao ?",2," l�n n�y ta �em v� d�n tr� h�i /L40_get_yes","�� t� c�ng phu : th�i gian c�n k�m , s� r�ng kh�ng l�m ���c /L40_get_no") 
elseif (UTask_cy > 40*256) and (UTask_cy < 50*256) then -- script viet hoa By http://tranhba.com 40 c�p nhi�m v� ti�n h�nh trung 
Talk(1,"","H�n c� r�t nhi�u th� h� , s� mu�i ph�i c�n th�n !") 
else 
Talk(1,"","Nam nh�n kh�ng c� g� t�t , s� mu�i ph�i c�n th�n , h�n l�m chuy�n ��u kh�ng ph�i l� chuy�n g� t�t .") 
end 
else 
Talk(1,"","Nam nh�n kh�ng c� t�t ! ") 
end 
end; 

function L20_get_yes() 
Talk(3,"","M�n �� la hoa n� � t�y b�c ��ch m�t tr�n s��n n�i . ng��i h�i hoa ��ch th�i �i�m ph�i c�n th�n , ��i m�n �� la hoa c� k�ch ��c , v� v�y nh�t ��nh ph�i � h�n ��nh th�i gian b�n trong h�i ���c hoa , n�u kh�ng s� tr�ng ��c m� ch�t . "," � trong th�i gian ng�n h�i ��n 10 ��a hoa th�t l� phi�n to�i .","Cho n�n s� mu�i h�i ��n 10 ��a sau ph�i nhanh l�n m�t ch�t tr� l�i ") 
	SetTask(6,20*256+10)
AddNote("�i h�i 10 ��a ��i m�n �� la hoa , c�n th�n hoa c� ��c , � trong th�i gian ng�n mu�n h�i ��n 10 ��a mang v� ") 
Msg2Player("�i h�i 10 ��a ��i m�n �� la hoa , c�n th�n hoa c� ��c , � trong th�i gian ng�n mu�n h�i ��n 10 ��a mang v� ") 
end; 

function L20_get_no() 
end; 

function L20_check() 
i = GetItemCount(1) 
for j = 1, i do DelItem(1) end -- script viet hoa By http://tranhba.com  ki�m tra c� hay kh�ng 10 ��a hoa 
if (i >= 10) then -- script viet hoa By http://tranhba.com  n�u nh� c� 10 c� l� ho�n th�nh nhi�m v� 
Talk(1,"","<#> y�n hi�u xinh ��p :"..i.."<#> ��i m�n �� la hoa �� �� r�i , s� mu�i th�t l� c� b�n l�nh , c� th� tr� th�nh nh� ph�m hoa khi�n cho ") 
SetTask(6,30*256) 
SetRank(33) 
-- script viet hoa By http://tranhba.com  AddMagic(269) 
add_cy(30) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i th�ng l�m th�y kh�i c�a nh� ph�m hoa khi�n cho , h�c ���c b�ng t�m xinh ��p �nh v� c�ng . ") 
AddNote("H�i ��n 10 ��a ��i m�n �� la hoa , ho�n th�nh nhi�m v� , th�ng l�m nh� ph�m hoa khi�n cho ") 
else 
Talk(2,"","Y�n hi�u xinh ��p # nh�ng l� ng��i c�n kh�ng c� th�i �� m��i ��a ��i m�n �� la hoa nha , kh�ng c� m�t l�n th�i �� m��i ��a l� kh�ng c� �ch l�i g� .","Xin s� mu�i m�t l�n n�a �i m�t chuy�n �i .") 
		SetTask(6,20*256+10)
end 
end; 

function L40_get_yes() 
Talk(1,"","H�o , chuy�n n�y li�n giao cho ng��i .") 
	SetTask(6,40*256+10)
AddNote("Ti�p nh�n v� # d�y d� th�nh ��i L� b�n trong ��ch �c ph�ch ") 
Msg2Player("Ti�p nh�n v� # d�y d� th�nh ��i L� b�n trong ��ch �c ph�ch ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
Talk(2,"","S� t� , ta �� c�u ra li�u t�t c� b� �c ph�ch b�t �i ��ch c� g�i , c�n hung h�ng d�y d� h�n , h�n c�ng kh�ng d�m n�a v� kh�ng ph�i l� t�c ng�t li�u !","Ch�ng ta th�y kh�i c�a ��ch �� t� ch� c�n xu�t th� , c�ng ch�a c� kh�ng l�m ���c chuy�n c�a , b�n l�nh c�a ng��i th�t l� c�ng ng�y c�ng m�nh , ti�p t�c c� g�ng �i ") 
SetTask(6,50*256) 
SetRank(77) 
-- script viet hoa By http://tranhba.com  AddMagic(100) 
add_cy(50) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i th�ng l�m th�y kh�i c�a hoa th�n s� ng��i , h�c ���c h� th� h�n b�ng . ") 
AddNote("C�u ra li�u t�t c� b� �c ph�ch b�t �i ��ch c� g�i , c�n hung h�ng d�y d� h�n , ho�n th�nh 40 c�p nhi�m v� , th�ng l�m th�y kh�i c�a hoa th�n s� ng��i ") 
end; 
