-- script viet hoa By http://tranhba.com description: tay m�i th�n _ xu�n h��ng 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/25 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-20) 

function main() 
UTask_world69=GetTask(69) 
if (UTask_world69 == 2) and (HaveItem(190) == 1) then 
Talk(4,"W69_step1","Xu�n h��ng c� n��ng , c� ng��i g�i ta ��a c�i n�y giao cho ng��i ","C�i n�y ... l� ai ��a cho ng��i ?","C� n��ng c�n th�n suy ngh� m�t ch�t , nh�t ��nh bi�t ��a l� v�t n�y ng��i c�a ."," l�i nh� v�y ... ng��i kia th��ng nh� t�i ' v�t �o ti�m chi�u r�ng cu�i c�ng d�t kho�t ' ��ch th� , nh�ng l� h�n kh�ng bi�t t�c gi� li�u v�nh t�n g� , ��ng kh�ng ?") 
elseif (UTask_world69 == 6) then 
Say("Ng��i l� th� n�o tr� l�i ��ch ? th� v�t �o ti�m chi�u r�ng cu�i c�ng d�t kho�t ��ch t�c gi� li�u v�nh c�n n�i c�i g� ?",4," li�u b�y thay ��i /W69_false"," li�u thay ��i /W69_false"," li�u b�y /W69_true"," li�u ba thay ��i /W69_false") 
else 
Talk(1,"","Ta sanh � c�i n�y , sinh tr��ng � c�i n�y , kh�ng bi�t th� gi�i b�n ngo�i l� d�ng g� t� .") 
end 
end; 

function W69_step1() 
DelItem(190) 
SetTask(69,4) 
AddNote("�em hoa sen giao cho xu�n h��ng chuy�n ��t l� d� ��i v�i n�ng l�ng c�a � . xu�n h��ng �� k� # v�t �o ti�m chi�u r�ng cu�i c�ng d�t kho�t , c�u n�y th� ��ch t�c gi� li�u v�nh l�i k�u c�i g� ? ") 
Msg2Player("�em hoa sen giao cho xu�n h��ng chuy�n ��t l� d� ��i v�i n�ng l�ng c�a � . xu�n h��ng cho ng��i ra c� �� # v�t �o ti�m chi�u r�ng cu�i c�ng d�t kho�t , c�u n�y th� ��ch t�c gi� li�u v�nh l�i k�u c�i g� ? ") 
end 

function W69_true() 
Talk(1,"","T�t l�m , ng��i n�i cho h�n bi�t # ng�y mai ��n nh� ta l�m kh�ch !") 
SetTask(69,8) 
AddNote("Tr� l�i ch�nh x�c , xu�n h��ng xin ng��i nh�n d�m cho l� d� ng�y mai ��n nh� n�ng ch�i . ") 
Msg2Player("Tr� l�i ch�nh x�c , xu�n h��ng xin ng��i nh�n d�m cho l� d� ng�y mai ��n nh� n�ng ch�i . ") 
end 

function W69_false() 
Talk(1,"","Sai l�m r�i , cho ng��i ch�t th�i gian suy ngh� m�t ch�t ") 
Msg2Player("Ng��i tr� l�i sai l�m , c� g�ng l�n , ch� l�ng ph� l� d� ��ch th�m t�nh ") 
end 
