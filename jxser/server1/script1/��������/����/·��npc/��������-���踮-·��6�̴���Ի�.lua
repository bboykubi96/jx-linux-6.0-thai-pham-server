-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ng��i �i ���ng 6 Th�i ��i th�c ��i tho�i ## quy�n nghi�ng thi�n h� nhi�m v� # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-24) 

function main(sel) 
Uworld75 = GetTask(75) 
U75_sub3 = GetTask(54) 
if (Uworld75 == 10) and (U75_sub3 < 10) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , nh�n l�y t� nhi�m v� 
if (HaveItem(384) == 1) then 
SetTask(54,10) 
AddNote("��n Thi�u L�m ��ch m�c nh�n h�ng tr� gi�p Th�i ��i th�c t�m kim li�n hoa . ") 
Msg2Player("��n Thi�u L�m ��ch m�c nh�n h�ng tr� gi�p Th�i ��i th�c t�m kim li�n hoa . ") 
Talk(1,"","Ti�c nu�i l� ta c� ��i nghi�n c�u h�c t�p nh�ng l� c�ng kh�ng c� h�i t� . nghe n�i � Thi�u L�m ��ch m�c nh�n h�ng c� kim li�n hoa , c� th� gi�p ta c� h�i t� ") 
else 
Talk(1,"","B�y gi� ngay c� c�i b�ng ��u kh�ng th�y , ch�ng qua l� truy�n v�o ng��i l� tai l�i c�a l�m sao c� th� tin/th� ��y ? ") 
end 
elseif (Uworld75 == 10) and (U75_sub3 == 10) then -- script viet hoa By http://tranhba.com  t� nhi�m v� ho�n th�nh ph�n �o�n 
if (HaveItem(26) == 1) then 
DelItem(26) 
SetTask(54,20) 
AddNote("T�m ���c kim li�n hoa , ho�n th�nh nhi�m v� . ") 
Msg2Player("T�m ���c kim li�n hoa , ho�n th�nh nhi�m v� . ") 
Talk(1,"","Ha ha # ��y ch�nh l� trong truy�n thuy�t ��ch ng�c b�i �i ? h�o ti�u t� , c�m �n ng��i .") 
else 
Talk(1,"","C�n kh�ng c� t�m ���c kim li�n hoa sao ? ") 
end 
else 
i = random(0,1) 
if (i == 0) then 
Talk(1,"","Th�i ��i th�c # b�n ta l�o Th�i nh� m�y ��i �an truy�n , nh�ng ta ��y ��n b�y gi� c�n kh�ng c� c� nam t� , ng��i ��i v�i ���c li�t t� li�t t�ng ? ") 
else 
Talk(1,"","Th�i ��i th�c # b�t hi�u c� ba , v� sau v� ��i nha #") 
end 
end 
end; 
