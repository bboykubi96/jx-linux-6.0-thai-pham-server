-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com description: tay m�i th�n _ b� b� 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com Modify:2003/7/21 wangzg 
-- script viet hoa By http://tranhba.com update 2003/7/22 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  ch� ��i ki�m tr�c c�ng th� ti�u v� kh� ��ch h�m s� , b�y gi� tr��c ch� cho ph�p ��a ti�n 

function main(sel) 
UTask_world37=GetTask(65) 
if (UTask_world37==2) then -- script viet hoa By http://tranhba.com  �� nh�n ���c nhi�m v� 
Say("Ta mu�n �i khi ��i hi�p li�u , gi�ng nh� ng��i m�t d�ng kh�p n�i h�nh hi�p tr��ng ngh�a ",2,"Khuy�n /reason", " �ng h� /help") 
elseif (UTask_world37==9) then -- script viet hoa By http://tranhba.com  l�a ch�n khuy�n 
Say(" l�m ��i hi�p r�t kh� , luy�n c�ng c�ng mu�n r�t l�u ",0) 
elseif (UTask_world37==10) then -- script viet hoa By http://tranhba.com  l�a ch�n �ng h� 
Say("Ta mu�n �i khi ��i hi�p li�u , gi�ng nh� ng��i m�t d�ng kh�p n�i h�nh hi�p tr��ng ngh�a ",0) 
else 
Say("S�ch th��ng nh�ng th� kia ��i hi�p r�t uy phong , n�u l� c� th� gi�ng nh� b�n h� m�t d�ng l� t�t ",0) 
end 
end; 

function reason() -- script viet hoa By http://tranhba.com  l�a ch�n khuy�n b� b� 
Talk(3,"prise","Ph�a ngo�i ng��i x�u r�t hung ��ch , ng��i c�n nh� nh� v�y , c�n b�n c�ng c�ng kh�ng c� luy�n h�o th� n�o �i h�nh hi�p tr��ng ngh�a nha ?"," �/d� , ng��i n�i c�ng ��ng , v�y ch� ta tr��ng th�nh �i ngay h�nh hi�p tr��ng ngh�a !","��i v�i , tr��c �em c�n b�n c�ng luy�n h�o , sau n�y xong �i ��nh ng��i x�u . ") 
end; 

function prise() 
Talk(1,"","V�y ta v� nh� tr��c . c�m �n ng��i , ta ch� n�y c� ch�t kim ch� thu�c , s� ��a cho ng��i �i !") 
AddItem(1,0,0,1,0,0) 
AddItem(1,0,0,1,0,0) 
AddItem(1,0,0,1,0,0) 
SetTask(65,9) 
AddRepute(6) -- script viet hoa By http://tranhba.com  danh v�ng th�m 6 �i�m 
AddNote("T�m ���c b� b� , khuy�n h�n v� nh� , nhi�m v� ho�n th�nh . ") 
Msg2Player("Khuy�n b� b� v� nh� , nhi�m v� ho�n th�nh . ") 
Msg2Player(" l�y ���c ba t�i kim ch� thu�c ") 
Msg2Player("Ng��i giang h� thanh th� gia t�ng 6 �i�m . ") 
end; 

function help() -- script viet hoa By http://tranhba.com  l�a ch�n tr� gi�p b� b� 
-- script viet hoa By http://tranhba.com  Say("Nh� ch�i # c�n nh� tu�i , c�ng r�t c� ch� kh� . ",3,"��a m�t thanh v� kh� /arm","��a m�t ch�t b�c /money","Ta suy ngh� l�i m�t ch�t /wait") 
Say("C�n nh� tu�i , c�ng r�t c� ch� kh� !",2,"��a m�t ch�t b�c /money","Ta suy ngh� l�i m�t ch�t /wait") -- script viet hoa By http://tranhba.com  ch� c� th� ki�m tr�c v� kh� l�i d�ng ph�a tr�n c�u n�y , b�y gi� tr��c ch� ��a ti�n 
end 

function arm() 
if x==0 then -- script viet hoa By http://tranhba.com  n�u nh� kh�ng c� v� kh� 
Say("Ta b�y gi� kh�ng c� v� kh� ?",3,"��a m�t thanh v� kh� /arm","��a m�t ch�t b�c /money","Ta suy ngh� l�i m�t ch�t /wait") 
else 
-- script viet hoa By http://tranhba.com  cho v� kh� 
Talk(1,"","C�m �n ng��i , ng��i th�t t�t !") 
AddOwnExp(100) 
SetTask(65,10) 
AddNote("T�m ���c b� b� , cho h�n m�t thanh v� kh� , �ng h� h�n ��i hi�p m�ng ") 
end 
end 

function money() 
if (GetCash() < 100) then 
-- script viet hoa By http://tranhba.com  Say("Nh� ch�i # ai nha , tr�n ng��i ta kh�ng c� mang ti�n g� . ",3,"��a m�t thanh v� kh� /arm","��a m�t ch�t b�c /money","Ta suy ngh� l�i m�t ch�t /wait") 
Talk(1,"","Tr�n ng��i ta kh�ng c� mang ti�n , ch� ta tr� l�i ") -- script viet hoa By http://tranhba.com  ch� c� th� ki�m tr�c v� kh� l�i d�ng ph�a tr�n c�u n�y , b�y gi� tr��c ch� ��a ti�n 
else 
Pay(100) 
Talk(1,"","C�m �n ng��i , ng��i th�t t�t !") 
AddOwnExp(100) 
SetTask(65,11) 
AddRepute(4) 
AddNote("T�m ���c b� b� , cho h�n m�t thanh v� kh� , �ng h� h�n ��i hi�p m�ng . ho�n th�nh nhi�m v� ") 
Msg2Player("T�m ���c b� b� , cho h�n m�t thanh v� kh� , �ng h� h�n ��i hi�p m�ng . ho�n th�nh nhi�m v� ") 
Msg2Player("Ng��i kinh nghi�m giang h� gia t�ng ! ") 
Msg2Player("Ng��i giang h� thanh th� gia t�ng 4 �i�m . ") 
end 
end 

function wait() 
end 
