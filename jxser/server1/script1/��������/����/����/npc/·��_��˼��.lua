-- script viet hoa By http://tranhba.com  ��i L� # ng��i �i ���ng # �o�n t� th�nh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com  update by xiaoyang(2004\4\22) th�y kh�i 90 c�p nhi�m v� 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(14) == 1 then 
allbrother_0801_FindNpcTaskDialog(14) 
return 0; 
end 
Uworld126 = GetTask(126) 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld126 < 10) and (GetLevel() >= 90) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="cuiyan") then 
Talk(6,"Uworld126_get","Ai ....","C�ng t� v� sao th� d�i ?","Ng��i tu�i tr� ph�i c� ch� l�n h��ng .","Ch�ng l� c�c h� ��ch � trung nh�n kh�ng c� � ��y .","N�ng v�n c�n � , nh�ng l� , t�m �� ch�t .","Ch� c�n ng��i th�nh t�m th�nh � , chuy�n g� c�ng c� th� th�nh . c�c h� c� c�i g� kh� kh�n , c� vi�c n�i . .") 
elseif (Uworld126 == 10) and (HaveItem(391) == 0) then 
AddEventItem(391) 
Msg2Player("Nh�n ���c �o�n t� th�nh tin/th� ") 
if (GetSex() == 0) then 
Talk(1,"","Mu�n g�p m� nh�n c�ng kh�ng c�n v�i v� nh� v�y �i ? tin/th� c�n kh�ng c� c�m . ") 
else 
Talk(1,"","C� n��ng qu�n mang tin ") 
end 
elseif (Uworld126 == 40) then 
SetTask(126,45) 
Talk(8,"Uworld126_jump","��ng b�o l� !","�o�n c�ng t� , ng��i ng��i �� cho l� thu th�y h��ng v� t�n ��ch vinh hoa ph� qu� , n� nh�n nh� v�y t�y ti�n c� th� t�m 10 c� , 100 c� , h� kh� l�m kh� m�nh ��y .","N�i nh� ng��i v�y c�ng kh�ng d�ng , xin/m�i c�c h� nhanh l�n m�t ch�t r�i �i n�i n�y .","# �o�n t� th�nh , ng��i m�i r��u kh�ng �n �n ph�t r��u , ta kh�ng ch�u n�i , n�u nh� ng��i c�n kh�ng tr� l�i , li�n cho ta .","H� ","Cho ng��i ti�u t� ! ","A .....","# �o�n c�ng t� ") 
elseif (Uworld126 == 45) then -- script viet hoa By http://tranhba.com  kh�ng c� ��nh xong ��ch 
Talk(1,"Uworld126_jump","Ng��i c�i cho ra h�a th��ng tay c�a , c�ng tr�n kh�ng tho�t c�i n�y mi�u , xem chi�u !") 
elseif (Uworld126 == 50) then 
Talk(8,"Uworld126_set","�o�n c�ng t� kh�ng ph�i l� ��i th� c�a h�n !","May nh� ng��i t�i k�p th�i , t�i h� c�n c� th� ch�u ��ng ���c .","��i ph��ng t� ��u t�i ��y ?","Kh�ng hi�u , c� l� l� thu th�y ��ch ��ch nh�n ","..... c� , ta �em c�ng l� c� n��ng n�i l�o , n�i ng��i b� th��ng n�ng .","C�i n�y gi�ng nh� kh�ng ph�i l� r�t t�t .","C� ��i h�nh ph�c , ch�ng l� kh� kh�n kh�ng th� qu� kh� sao ? ","# �o�n t� th�nh # h�o , c�c h� mu�n th� n�o ��u ���c , �o�n m� nghe t� . ") 
elseif (Uworld126 == 70) then 
Talk(3,"U126_70","Nh� th� n�o ? l� c� n��ng t�i th�m ng��i sao ?","N�ng t�i , ch�ng ta n�i chuy�n r�t vui v� , ng��i gi�p ta r�t nhi�u , �a t� !","C�n g� ph�i quan t�m , ch� c�n 2 ng��i h�nh ph�c , chuy�n nh� coi l� c�i g� ?") 
elseif (Uworld126 > 10) and (Uworld126 < 50)then 
Talk(1,"","Tr��c l� ta sai l�m r�i , th�t kh�ng hi�u th� n�o c�m t� !...") 
else 
Talk(2,"","Ch�ng ta ��i L� c�ng t�ng n��c , h�ng n�m c�ng cung ph�ng cho thi�n tri�u , t� l�a , n�nh b� , x� h��ng .","B�n ng��i ng��i Kim nh� v�y tham lam , c�c ng��i c�ng hi�n bao nhi�u c�ng kh�ng �� . ") 
end 
end; 

function Uworld126_get() 
if (GetCamp() == 0) and (GetTask(75) < 255) then -- script viet hoa By http://tranhba.com  b�ch t�n ch�a h�c d� c�u quy�n ��ch , kh�ng cho ph�p ti�p nh�n v� 
if (GetSex() == 0) then 
Talk(1,"","Huynh ��i ��ch h�o � , t� th�nh nh� r� ") 
else 
Talk(1,"","Huynh ��i ��ch h�o � , t� th�nh nh� r� ") 
end 
else 
Say("Th�c kh�ng d�m gi�u gi�m , tr��c kia t�i h� c� b�/cha/ch�u v�i n�ng , b�y gi� h�i h�n �� ch�m . ta l�i m�t phong th� , hy v�ng c�c h� c� th� t� tay giao cho th�y kh�i c�a l� thu th�y ",2,"Chuy�n n�y c� kh� kh�n g� /Uworld126_yes","T�i h� c�n c� vi�c , c�c h� t�m ng��i kh�c �i ! /Uworld126_no") 
end 
end 

function Uworld126_yes() 
AddEventItem(391) 
SetTask(126,10) 
Msg2Player("Nh�n ���c �o�n t� th�nh tin/th� , ��n th�y kh�i c�a th�y l� thu th�y ") 
AddNote("Nh�n ���c �o�n t� th�nh tin/th� , ��n th�y kh�i c�a th�y l� thu th�y ") 
end 

function Uworld126_no() 
end 

function Uworld126_jump() 
SetFightState(1) 
NewWorld(230,1613,3175) 
end 

function Uworld126_set() 
SetTask(126,60) 
Msg2Player(" l�a g�t thu th�y �i xem �o�n t� th�nh ") 
AddNote(" l�a g�t thu th�y �i xem �o�n t� th�nh ") 
end 

function U126_70() 
Talk(1,"","��ng r�i , thu th�y n�i du�n ch��ng m�n g�p nhau ng��i , kh�ng hi�u c� chuy�n g� ?") 
SetTask(126,80) 
Msg2Player("Nghe ���c �o�n c�ng l� n�i chuy�n , r�t vui v� . ng��i nhanh �i nh�n du�n ng�m nh�n t�m ta c� chuy�n g� ") 
end 
