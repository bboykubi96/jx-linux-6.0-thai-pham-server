-- script viet hoa By http://tranhba.com description: hai h� khu ba l�ng huy�n qu�n r��u l�o b�n ��i tho�i Thi�n v��ng nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\timerhead.lua")

function main(sel) 
Uworld38 = GetByte(GetTask(38),1) 
if (Uworld38 == 20) then -- script viet hoa By http://tranhba.com  Thi�n v��ng gi�p nh�p m�n nhi�m v� 
Talk(4, "","Nh� ch�i # l�o b�n , ng��i n�i n�y r��u g� t�t nh�t ? ","Qu�n r��u l�o b�n # b�n ��a t�t nh�t r��u kh�ng ph�i l� <color=Red>� o�nh lai xu�n �<color> m�c ch�c , ch�ng qua l� c�t t�o lo�i n�y r��u r�t ph� c�ng phu , h�n n�a nguy�n li�u c�ng r�t kh� t�m , cho n�n gi� ti�n kh�ng ti�n nghi . ","Nh� ch�i # ch� c�n r��u h�o l� ���c , ta mu�n mua m�t v� , ph�i nhi�u thi�u b�c ? ","Qu�n r��u l�o b�n # b�c nhi�u h�n n�a c�ng v� �ch , b�n �i�m �� r�t l�u kh�ng c� c�t t�o lo�i n�y r��u , b�i v� thi�u h�t nguy�n li�u <color=Red> linh chi <color>#<color=Red> huy�n t� <color> c�ng <color=Red> h� th� � <color> . n�u nh� ng��i c� th� l�y ���c c�i n�y ba lo�i nguy�n li�u , ta �� gi�p ng��i ch� ri�ng cho m�t v� . nghe n�i c�i n�y ba lo�i d��c li�u sinh tr��ng � <color=Red> v� l�ng s�n ��ch ��ng b�c b� <color> , ch� b�t qu� n�i �� c� r�t nhi�u �n th�t ng��i ��ch qu�i th� , cho n�n kh�ng ai d�m �i ch�u ch�t . ") 
SetTask(38,SetByte(GetTask(38),1,40)) 
AddNote("C�ng ba l�ng huy�n t�u qu�n l�o b�n ��i tho�i , bi�t mu�n t�m 3 lo�i nguy�n li�u ch�ng c�t r��u # linh chi , huy�n t� , h� th� � .") 
Msg2Player("Bi�t mu�n t�m 3 lo�i nguy�n li�u ch�ng c�t r��u # linh chi , huy�n t� , h� th� � . ") 
elseif (Uworld38 == 40) then 
if (HaveItem(116) == 1) and (HaveItem(135) == 1) and (HaveItem(144) == 1) then 
if (GetTimerId() > 0) then -- script viet hoa By http://tranhba.com  kh�c c� t�nh gi� kh� � v�n h�nh trung 
Talk(1,"","Tr�n ng��i ng��i c� kh�n c�p ��ch nhi�m v� , c�n ph�i ch�y lo�n ") 
return 
end 
Talk(2,""," l�o b�n ! ch�ng ta �� t�m �� 3 lo�i nguy�n li�u , ng��i gi�p ta c�t o�nh lai xu�n �i !","T�t , nh�ng l� mu�n 1 canh gi� m�i c� th� . ") 
DelItem(116) 
DelItem(135) 
DelItem(144) 
SetTask(38,SetByte(GetTask(38),1,60)) 
SetTimer(1 * CTime * FramePerSec, 1) -- script viet hoa By http://tranhba.com  m� ra t�nh gi� kh� 
AddNote("Tr� l�i ba l�ng huy�n t�u qu�n , mang theo nguy�n li�u , bi�t ph�i ��i m�t gi� . ") 
Msg2Player("Mang theo nguy�n li�u , bi�t ph�i ��i m�t gi� . ") 
else 
Talk(1,"","Nghe n�i c�i n�y ba lo�i d��c li�u sinh tr��ng � <color=Red> v� l�ng s�n ��ch ��ng b�c b� <color> , ch� b�t qu� n�i �� c� r�t nhi�u �n th�t ng��i ��ch qu�i th� , cho n�n kh�ng ai d�m �i ch�u ch�t . ") 
end 
elseif (Uworld38 == 60) then -- script viet hoa By http://tranhba.com  v� t�nh gi� kh� cho l�i gia nh�p th� ��ng c�c k� l�c x� l� 
i = GetRestSec(1) 
if (i > 0) then 
Talk(1,"","Th�i gian c�n ch�a t�i , r��u c�n kh�ng c� c�t h�o , ng��i c�n ph�i ch� : "..i.." gi�y , ") 
else 
StopTimer() -- script viet hoa By http://tranhba.com  k�t th�c t�nh gi� 
SetTask(38,SetByte(GetTask(38),1,80)) 
TWenroll_getitem() 
end 
elseif (Uworld38 == 80) and (HaveItem(90) == 0) then 
TWenroll_getitem() 
elseif (Uworld38 >= 80) then -- script viet hoa By http://tranhba.com  ho�n th�nh n�y nhi�m v� sau 
Talk(1,"","B�n �i�m o�nh lai xu�n kh�ng ph�i l� �� c� h� danh ��ch ") 
else 
Talk(1,"","Qu�n r��u l�o b�n # ch�ng ta n�i n�y l� n�i ti�ng ��ch c� th��c chi h��ng , s�ng sinh phong ph� , kh�ch quan mu�n �n ch�t g� ti�n h�ng ? u�ng ch�t g� kh�ng r��u ? ") 
end 
end; 

function TWenroll_getitem() 
AddEventItem(90) 
Msg2Player("B�t ���c m�t b�u o�nh lai xu�n . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 8) 
AddNote("M�t gi� sau , tr� l�i t�u qu�n c�m o�nh lai xu�n . ") 
end 
