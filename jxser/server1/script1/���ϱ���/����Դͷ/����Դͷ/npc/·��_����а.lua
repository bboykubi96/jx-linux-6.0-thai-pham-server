-- script viet hoa By http://tranhba.com  Tr��ng giang ng�n ngu�n ng��i �i ���ng _ gi�i v� t� .lua# C�i Bang 90 c�p k� n�ng nhi�m v� 
-- script viet hoa By http://tranhba.com  By#XiaoYang(2004-04-29) 
-- script viet hoa By http://tranhba.com  Update#dan_deng(2004-05-20) 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(2) == 1 then 
allbrother_0801_FindNpcTaskDialog(2) 
return 0; 
end 

Uworld128 = GetTask(128) 
Uworld30 = GetByte(GetTask(30),2) 
if (Uworld128 < 10) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~="gaibang") and (Uworld30 ==127) then 
Talk(8,"Uworld128_get","Tr��ng giang ng�n ngu�n , ng��i th�y m�t ng��i thanh ni�n �ang th�i ti�u , ti�ng c��i r�t bi th��ng . ","C�c h� ��ch ti�ng c��i th� n�o nh� v�y th� l��ng , gi�ng nh� c� t�m s� g� ? ","Qu�c gia g�p n�n , th�t phu h�u tr�ch , huynh �� nh� v��n �ang b� kim qu�n t�n s�t , t�i h� l�m sao c� th� cao h�ng ��y ?","Quan s�n v�n d�m , kh�ng hi�u c� bao nhi�u c�u h�n , ch�ng qua l� th� nh�n sai l�m d�ng ph�o l�a �� ��i l�y ph�n vinh ","T�i h� l� gi�i v� t� , h�m nay th�y anh h�ng , c�m r��u �i ra c�ng �m !","Anh h�ng thi�n h� c� m�y ng��i ","C�n ch�n ","C�n ch�n ") 
elseif (Uworld128 == 10) and (HaveItem(76) == 1) then 
Talk(11,"Uworld128_envelop","Huynh ��i th�t l� n�i t�n d�ng ","Tri k� g�p l�i ng�n ch�n thi�u , h�m nay nh�t ��nh ph�i u�ng c� th�ng kho�i ","Anh h�ng thi�n h� c� m�y ng��i ?","C�c h� kh�ng bi�t , th�i th� t�o anh h�ng !","T�i sao n�i nh� v�y ?","T�i h� m�c d� nh�p m�n kh�ng l�u , nh�ng l� , �� tr�i qua r�t nhi�u k�ch chi�n , r�t nhi�u ng��i kh�ng n�n ch�t c�ng �� ch�t , t�i h� s�ng nh� c� , b�n h� ��u c� cha m� , v� con , ch�ng l� mu�n ch�t ph�i kh�ng ? ch�ng qua l� , l�c chuy�n nh� th� , kh�ng th� kh�ng l�m nh� v�y ","Ti�c nu�i , ng��i nh� v�y th�t l� thi�u !","C�ng ���c �i , ��n ta , kh�ng n�i kh�ng vui chuy�n c�a li�u , u�ng r��u �i . !","Gi�i m�t n�i n�y c� phong th� , l�m phi�n ng��i gi�p ta �em phong th� n�y mang cho C�i Bang La tr��ng l�o !","���c !") 
elseif (Uworld128 == 40) then 
Talk(7,"Uworld128_kill","Gi�i ��i ca , ng��i kh�ng sao ch� ?","Y�n t�m , ta kh�ng c� sao !"," l�m sao ng��i bi�t c� ng��i mu�n gi�t ng��i !","C�i n�y c�ng b�n trong C�i Bang b� c� li�n quan , n�u nh� ta kh�ng c� n�m gi� th�t t�nh , ta s� kh�ng n�i lung tung ","V�y ng��i ph�i c�n th�n , ta mu�n �i n�i cho La tr��ng l�o !","B�ng h�u , gi�i m�t kh�ng c� g� c� th� b�o ��p ng��i , sau n�y c� chuy�n g� , gi�i m�t ��nh t��ng tr� !","��i ca kh�ng mu�n n�i nh� v�y , n�u kh�ng ta c�m th�y th�t kh�ng t�t � t� ") 
elseif (Uworld128 == 10) then 
Talk(1,"","T� n�i n�y �i D��ng Ch�u ��ch ���ng r�t nguy hi�m , d�c theo ���ng �i ph�i c�n th�n !") 
elseif (Uworld128 == 30) then 
Talk(2,"","Gi�i ��i ca ph�i c�n th�n , n�u kh�ng s� b� th�m h�i ","T�i th�t l� ��ng l�c , c�ng �i gi�t h�t t�c nh�n !") 
elseif (Uworld128 == 20) and (HaveItem(390) == 0) then 
AddEventItem(390) 
Msg2Player("Nh�n ���c gi�i v� t� ��ch tin/th� ") 
Talk(1,"","Chuy�n r�t n�ng ��i , l�m phi�n ng��i c�c nhanh �em phong th� n�y mang cho b�n bang La tr��ng l�o ") 
else 
Talk(1,"","U�ng r��u ca x��ng , cu�c s�ng tri k� c� m�y ng��i ?") 
end 
end 

function Uworld128_get() 
if (GetCamp() == 0) and (GetTask(75) < 255) then -- script viet hoa By http://tranhba.com  b�ch t�n ch�a h�c d� c�u quy�n ��ch , kh�ng cho ph�p ti�p nh�n v� 
Talk(1,"","H�m nay ta c�ng c�c h� mu�n s��ng u�ng ��n h�c , s�ng s�m ng�y mai tr�/mang l�n ���ng !") 
else 
Say("Ti�c nu�i l� , h�m nay t�i h� kh�ng hi�u s� g�p ph�i tri k� , cho n�n ch�a k�p chu�n b� xong r��u ",2,"T�i h� bi�t � D��ng Ch�u c� m�t t�a t�u l�u b�n hu� tuy�n r��u , r�t t�t u�ng , t�i h� s� �i ngay b�y gi� mua . /Uworld128_wait","Huynh �� b�nh th�y t��ng ph�ng , t�i h� kh�ng hi�u ���ng ph�a tr��c nh� th� n�o /Uworld128_no") 
end 
end 

function Uworld128_wait() 
SetTask(128,10) 
-- script viet hoa By http://tranhba.com  Uworld135 = GetGameTime() 
Msg2Player("Ng��i c�ng gi�i v� t� ��c ��nh �i D��ng Ch�u th��ng th�c r��u ngon ") 
AddNote("Ng��i c�ng gi�i v� t� ��c ��nh �i D��ng Ch�u th��ng th�c r��u ngon ") 
end 

function Uworld128_no() 
end 

function Uworld128_envelop() 
DelItem(76) 
AddEventItem(390) 
Msg2Player("Nh�n ���c gi�i v� t� ��ch tin/th� , ��n C�i Bang t�m La tr��ng l�o ") 
AddNote("Nh�n ���c gi�i v� t� ��ch tin/th� , ��n C�i Bang t�m La tr��ng l�o ") 
SetTask(128,20) 
end 

function Uworld128_kill() 
SetTask(128,50) 
Msg2Player("C�u ra gi�i v� t� , tr� v� b�o c�o La tr��ng l�o ") 
AddNote("C�u ra gi�i v� t� , tr� v� b�o c�o La tr��ng l�o ") 
end 
