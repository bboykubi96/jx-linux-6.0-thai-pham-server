-- script viet hoa By http://tranhba.com  \script\ t�y b�c nam khu \ Hoa S�n \npc\ ng��i �i ���ng _uworld122_ qu� ��ch phong .lua 
-- script viet hoa By http://tranhba.com  by xiaoyang(2004\4\15) Thi�u L�m 90 c�p nhi�m v� 

Include("\\script\\global\\repute_head.lua")

function main() 
Uworld122 = GetTask(122) 
Uworld38 = GetByte(GetTask(38),2) 
if(Uworld122 < 10) and (GetLevel() >= 90) and (Uworld38 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="shaolin" ) then 
Talk(8,"U122_get","Qu� huynh , lu�n v�n ta so ra k�m ng��i , nh�ng l� t�p v� kh�ng gi�ng �i h�c , c�n ph�i c� c�ng phu ","Th��ng huynh , trong t�ng kinh c�c c� ng�n v�n quy�n s�ch , n�u l� ai c�ng gi�ng nh� ng��i m�t d�ng kh�ng �i h�c �t nh� v�y l�m ph�t ph�p �� s�m kh�ng t�n t�i .","Ph�t ��o ph�i l� t� nhi�n , tu h�nh kh�ng nh�t ��nh ph�i d�a theo quy�n s�ch t�i . hu�ng chi Th��ng m� tuy ch�a t�ng �i h�c nh�ng c�ng kh�ng ph�i kh�ng bi�t ch� . v� c�ng c�a ng��i kh�ng gi�ng ta m�t d�ng , c�n mu�n h�c th��ng ng�i ��ch v� c�ng "," l�i nh� v�y kh�ng h�p l� . nh� v�y kh�ng h�p l� . ch�ng ta t� � h�c v� tr��c ��u ph�i nghi�n c�u ph�t �i�n c�ng r�a s�ch t�i nghi�t , n�u kh�ng s� ch�t ph�i s�m , ta ch�ng qua l� v� mu�n t�t cho ng��i .","N�u nh� v�y ch�ng ta li�n t� th� m�t tr�n �i , Thi�u L�m nghi�m c�m ��ng m�n t��ng t�n , ch�ng ta ��n Hoa S�n l�i ��i c�ng b�nh t� th� , sinh t� c�c an thi�n m�nh .","So li�n so , ta khuy�n ng��i kh�ng c� ngh�a l� ta s� ng��i !","Ha ha ha # hai v� # t�i h� � b�n ngo�i ��u nghe ���c . Thi�u L�m l� b�c ��u v� l�m . hai v� kh�ng mu�n �� th��ng v�i nhau ��ch t�nh m�ng ","V� n�y ... t�i h� c�ng ph�i kh�ng ph�i �� !") 
elseif(Uworld122 > 10) and (Uworld122 < 50) then 
Talk(2,"","Qu� huynh kh�ng khi�m nh��ng v�y t�i h� kh�ng th� l�m g� kh�c h�n l� kh�ng kh�ch kh� .","T�i h� �u th� r� r�ng , Th��ng huynh kh�ng n�n l�m kh� #") 
elseif (Uworld122 == 60) then 
Talk(4,"Uworld122_ashamed","Th��ng huynh # qu� huynh # hai v� kh�ng n�n nh� v�y !","C�m t� c�c h� �n c�u m�ng ","��ng m�n tranh nhau , h�u qu� kh� li�u , h�i h�n c�ng t�i kh�ng k�p !","Thi�u L�m l� v� l�m ��ch ��ng l��ng , t�i h� c� th� gi�p hai v� , th�t l� vinh h�nh . chuy�n c�ng x� l� t�t # ta ph�i v� Thi�u L�m ph�c m�nh . ") 
elseif (Uworld122 == 50) and (HaveItem(392) == 1) then 
Talk(4,"U122_step","Thi�u L�m t�ng ch�ng l�m � ch� n�y ! Thi�u L�m �� t� l�p t�c nghe l�nh !","Ch�ng th�t l� Thi�u L�m ch�ng t�ng l�m ! ta c�n tu�n hi�u l�m ","C�c h� xin c� vi�c ph�n ph� !","B�y gi� qu�n Kim che gi�u � Hoa S�n �� �em ch�ng ta bao v�y . th�a d�p b�n h� b� tr� , ch�ng ta tr��c sau khi t�ch ra n�a t�p h�p .") 
elseif (Uworld122 == 50) then -- script viet hoa By http://tranhba.com  tr�ng th�i ch�nh x�c , nh�ng kh�ng c� l�nh b�i 
Talk(1,"","Ng��i l� ai ? d�a v�o c�i g� t�i can thi�p ch�ng ta ?") 
elseif (Uworld122 == 55) then -- script viet hoa By http://tranhba.com  nhi�m v� trung ��ch thi�u t�nh ��i tho�i 
Talk(2,"","Nhi�m v� c�a ta ho�n th�nh , ng��i b�n kia nh� th� n�o ?","Ta th�t kh�ng y�n t�m , c�c v� s� huynh tr� l�i xem m�t ch�t , ch� ta m�t ch�t !.") 
elseif (Uworld122 == 65) and (HaveItem(392) == 0) then -- script viet hoa By http://tranhba.com  l�n n�a thu h�i l�nh b�i 
Talk(1,"","�a t� c�c h� ��ch �n c�u m�ng , ��y l� l�nh b�i xin/m�i nh�n l�y !") 
AddEventItem(389) 
Msg2Player("C�m Thi�u L�m kim b�i tr� v� ") 
elseif (Uworld122 >= 240) then -- script viet hoa By http://tranhba.com  nhi�m v� �� ho�n th�nh 
Talk(1,"","Tr��c ta nh�t th�i h� �� , n�u nh� kh�ng c� c�c h� t��ng tr� tho�i h�u qu� thi�t t��ng kh�ng ch�u n�i !") 
else 
Talk(1,"","Th��ng huynh , l�n n�y c� nh�n ta t� v� n�u l� s� ph� bi�t nh�t ��nh s� tr�ch m�ng ��ch ��ng kh�ng ?") 
end 
end 

function U122_get() 
if (GetCamp() == 0) and (GetTask(75) < 255) then -- script viet hoa By http://tranhba.com  b�ch t�n ch�a h�c d� c�u quy�n ��ch , kh�ng cho ph�p ti�p nh�n v� 
Talk(1,"","Xem ng��i d�ng v� kh�ng tho�i m�i , c�n l� c�ch xa chi�n tr��ng tr�nh cho b� gi�t th��ng .") 
else 
Say("N�i nh� v�y �i , n�u nh� s� huynh mu�n cho danh hi�u , t�i h� quy�t kh�ng ng�n tr� !",2,"Xem ra hai ng��i c�n kh�ng c� thuy�t ph�c , ta kh�ng th� l�m g� kh�c h�n l� th��ng Thi�u L�m m�t chuy�n , h�i thanh c�n nguy�n . /Uworld122_yes","C�c ng��i mu�n ��nh li�n ��nh nh�ng l� kh�ng mu�n d�nh l�u ��n ta , khuy�n ng��i c�a nh�ng l� kh�ng nghe , t�n th�t ch�nh l� c�c ng��i . /Uworld122_no") 
end 
end 

function Uworld122_yes() 
Msg2Player("Thi�u L�m �� t� th��ng tr�m d�m c�ng qu� ��ch phong v� n�ng t�p v� c�n l� h�c l�i s�ch m� tranh ch�p , cu�i c�ng quy�t ��nh quy�t c� ��i ch�t . ng��i quy�t ��nh th��ng Thi�u L�m t�m s� ph� c�a b�n h� t�i khuy�n n�i . ") 
AddNote("Thi�u L�m �� t� th��ng tr�m d�m c�ng qu� ��ch phong v� n�ng t�p v� c�n l� h�c l�i s�ch m� tranh ch�p , cu�i c�ng quy�t ��nh quy�t c� ��i ch�t . ng��i quy�t ��nh th��ng Thi�u L�m t�m s� ph� c�a b�n h� t�i khuy�n n�i . ") 
SetTask(122,10) -- script viet hoa By http://tranhba.com  Thi�u L�m nhi�m v� kh�i ��ng 
end 

function Uworld122_no() 
end 

function U122_step() 
DelItem(392) 
SetTask(122,55) -- script viet hoa By http://tranhba.com  c�m v�o thay ��i l��ng trung 
Msg2Player("Thi�u L�m �� t� th��ng tr�m d�m c�ng qu� ��ch phong v� n�ng t�p v� c�n l� h�c l�i s�ch m� tranh ch�p , cu�i c�ng quy�t ��nh quy�t c� ��i ch�t . ng��i quy�t ��nh th��ng Thi�u L�m t�m s� ph� c�a b�n h� t�i khuy�n n�i . ") 
end 

function Uworld122_ashamed() 
SetTask(122,65) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng v� 60 
AddEventItem(392) -- script viet hoa By http://tranhba.com  n�i n�y n�a thu h�i l�nh b�i 
Msg2Player("C�u th��ng tr�m d�m c�ng qu� ��ch phong , mang Thi�u L�m l�nh b�i �i Thi�u L�m b�o tin . ") 
AddNote("C�u th��ng tr�m d�m c�ng qu� ��ch phong , mang Thi�u L�m l�nh b�i �i Thi�u L�m b�o tin . ") 
end 
