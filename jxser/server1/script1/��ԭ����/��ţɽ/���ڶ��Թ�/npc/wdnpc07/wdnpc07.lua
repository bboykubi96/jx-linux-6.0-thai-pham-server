-- script viet hoa By http://tranhba.com description: ph�i V� ���ng nhu�n m� # V� ���ng 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(13) == 1 then 
allbrother_0801_FindNpcTaskDialog(13) 
return 0; 
end 
UTask_wd = GetTask(5); 
	if (UTask_wd == 40*256+40) and (HaveItem(163) == 1) then		-- script viet hoa By http://tranhba.com  �Ѿ�����ϻ�
Talk(2, "L40_step","Ph�i V� ���ng ��ch v� c�ng qu� nhi�n b�t ph�m , ta cao th� �� t� c�ng b� h�n ��nh b�i , ��o m�t l�o nhi ?","��o m�t ch�n nh�n l� c�a ta t�ng s� , h�n �� cho ta mang tin/th� cho ng��i !") 
	elseif (UTask_wd == 40*256+20) then
Talk(1,"","Th�y kia 5 ch� b�ch h� sao ? c� b�n l�nh tr��c ��nh b�i b�n h� , t�i t�m ta n�a ! ") 
AddNote(" � ph�c b� g� n�i quan ��ng , t�m nhu�n m� , c�n ��nh b�i n�m con b�ch ng�c h� ") 
Msg2Player(" � ph�c b� g� n�i quan ��ng , t�m nhu�n m� , c�n ��nh b�i n�m con b�ch ng�c h� ") 
	elseif (UTask_wd == 40*256+60) and (HaveItem(164) == 0) then						-- script viet hoa By http://tranhba.com �Ѿ�����廢����δ�õ�����
Talk(1,"","Ta th� h�i �m ��t � trong ��ng , ng��i c� b�n l�nh li�n �i v�o c�m �i !") 
	elseif (UTask_wd >= 40*256+60) then						-- script viet hoa By http://tranhba.com �õ����ź�
Talk(1,"","Nguy�n li�u h�n c�ng bi�t sai l�m r�i , s�m m�t ch�t kh�ng ph�i l� t�t h�n !") 
else 
Talk(1,"","Ng��i l� ai ? d�m v�o ��ng , th�t l� kh�ng mu�n s�ng ?") 
end 
end; 

function L40_step() 
Talk(1,"","��o m�t ch�n nh�n hi�u d�y �� t� , tin/th� ��y , ta xem m�t ch�t . nguy�n lai l� h�n mu�n ta n�i xin l�i , s�m bi�t nh� th� , c�n g� ban ��u . ng��i l� �� t� c�a h�n , ta c�ng kh�ng l�m kh� d� ng��i . ta c�ng c� m�t phong th� �� cho ng��i mang cho h�n . tin/th� ") 
DelItem(163) 
	SetTask(5, 40*256+60)
AddNote("��nh b�i n�m con b�ch h� sau , m�i bi�t tin/th� b� nhu�n m� n�p trong b�n trong ��ng ") 
Msg2Player("Tin/th� b� nhu�n m� n�p trong b�n trong ��ng , t�m ���c n� giao cho ch��ng m�n ") 
end; 
