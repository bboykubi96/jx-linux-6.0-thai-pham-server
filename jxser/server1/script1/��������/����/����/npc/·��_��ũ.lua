-- script viet hoa By http://tranhba.com  ��i L� # ng��i �i ���ng # hoa n�ng 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-24) quy�n nghi�ng thi�n h� nhi�m v� 

function main(sel) 
Uworld75 = GetTask(75) 
U75_sub2 = GetTask(53) 
if (Uworld75 == 10) and (U75_sub2 < 10) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , nh�n l�y t� nhi�m v� 
if (HaveItem(384) == 1) then 
SetTask(53,10) 
AddNote("Quy�n nghi�ng thi�n h� nhi�m v� # �i d��c v��ng c�c gi�p hoa n�ng h�i 3 ��a c�m m�c t�c . ") 
Msg2Player("Quy�n nghi�ng thi�n h� nhi�m v� # �i d��c v��ng c�c gi�p hoa n�ng h�i 3 ��a c�m m�c t�c . ") 
Talk(1,"","R�i s� huynh l�i t�i kh�o nghi�m ng��i ? th�t t�t qu� , ��i L� b�n m�a m�i hoa , c�n thi�u d��c v��ng c�c ��ch c�c ph�m t� m�c t�c , ng��i �i gi�p ta h�i 3 ��a tr� l�i ") 
else 
Talk(1,"","M�t phong th� c�ng kh�ng c� , V� b�ng v� c� , b�o ta l�m sao tin t��ng ng��i ?") 
end 
elseif (Uworld75 == 10) and (U75_sub2 == 10) then -- script viet hoa By http://tranhba.com  t� nhi�m v� ho�n th�nh ph�n �o�n 
if (GetItemCount(112) >= 3) then 
DelItem(112) 
DelItem(112) 
DelItem(112) 
SetTask(53,20) 
AddNote("Quy�n nghi�ng thi�n h� nhi�m v� # ho�n th�nh h�i c�m m�c t�c . ") 
Msg2Player("Quy�n nghi�ng thi�n h� nhi�m v� # ho�n th�nh h�i c�m m�c t�c . ") 
Talk(1,"","Th�t l� h�o , th�t l� nh�t ph�m , ta s� ph�i ng��i �i th�ng b�o r�i s� huynh , n�i ta ��ng � .") 
else 
Talk(1,"","C�n kh�ng c� t�m ���c a ?") 
end 
else 
i = random(0,99) 
if (i < 25) then 
Talk(1,"","V�n Nam tr� hoa �� nh�t thi�n h� , ��i L� tr� hoa V�n Nam th� nh�t , ch�ng ta ��i L� m�t ng��i trung ��ch tr� hoa �� nh�t thi�n h� , m�u ��n c�ng kh�ng c� th� so .") 
elseif (i < 50) then 
Talk(1,"","��i L� gia gia h� h� c�ng lo�i tr� hoa , h�ng n�m c�ng t� ch�c hoa h�y tri�n l�m .") 
elseif (i < 75) then 
Talk(1,"","To�n ��i L� ��p nh�t ��ch hoa tr� t� h� �o�n ��ch l�o �ng tr�ng tr�t , h�n cu�c s�ng � nh� b� bi�n ��ch m�t t�a b�n trong c�i ph�ng nh� . hoa c�a h�n h�ng n�m c�ng tham gia tri�n s� , c�ng b� ch�n v� ��p nh�t ��ch hoa .") 
else 
Talk(1,"","�o�n l�o �ng c� ��i y�u hoa , h�n ch� b�n hoa cho c�ng h�n h�u duy�n ng��i c�a , nh�ng ng��i kh�c cho d� c� n�i v�ng n�i b�c , h�n ��u kh�ng b�n .") 
end 
end 
end; 
