-- script viet hoa By http://tranhba.com description: tay m�i th�n _ ti�m thu�c l�o b�n 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com modify wangzg 2003/7/21 17:00 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

Include("\\script\\global\\timerhead.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
UTask_world38 = GetTask(66) 
if (UTask_world38 == 1) then -- script viet hoa By http://tranhba.com  �� ti�p nh�n v� 
Say("Ti�u lan ��ch gia gia l� kh�ch quen , h�n c�n x� h��ng h� c�t cao , 750 hai m�t chai , n�u nh� c� x� h��ng c�ng h� c�t , ta �em mi�n ph� l�m .", 4,"Tr�c ti�p mua /buy","T�m nguy�n li�u /source","Mua nh�ng kh�c thu�c /yes","�� cho ta mu�n mu�n !/no") 
elseif (UTask_world38==2) then 
if (HaveItem(185) == 1) and (HaveItem(142) == 1) then 
if (GetTimerId() > 0) then -- script viet hoa By http://tranhba.com  kh�c c� t�nh gi� kh� � v�n h�nh trung 
Talk(1,"","Ng��i nhi�m v� kh�n c�p , c�n ch�y lo�n ?") 
return 
end 
SetTimer(0.5 * CTime * FramePerSec, 6) -- script viet hoa By http://tranhba.com  m� ra t�nh gi� kh� # n�a canh gi� * canh gi� tr��ng * tr�nh ��m 
Talk(2, "", " l�o b�n , ta �� t�m ���c h� c�t c�ng x� th�m .","Hai lo�i thu�c ��u c� , n�a gi� sau tr� l�i l�y !") 
SetTask(66,3) 
DelItem(185) 
DelItem(142) 
AddNote("T�m �� nguy�n li�u sau , ch� n�a gi� m�i c� th� l�m xong .") 
Msg2Player("T�m �� nguy�n li�u sau , ch� n�a gi� m�i c� th� l�m xong .") 
else 
Say("N�u nh� c� x� h��ng c�ng h� c�t , ta �em mi�n ph� l�m .", 3,"Tr�c ti�p b�n x� h��ng h� c�t cao !/buy","Giao d�ch /yes","Kh�ng giao d�ch /no") 
end 
elseif (UTask_world38 == 3) then -- script viet hoa By http://tranhba.com  v� t�nh gi� kh� cho l�i gia nh�p th� ��ng c�c k� l�c x� l� 
i = GetRestSec(6) 
if (i > 0) then 
Say("<#> th�i gian kh�ng �� , thu�c kh�ng l�m xong , ng��i ph�i nhi�u ch� ."..i.."<#> gi�y .", 3,"Ta kh�ng mu�n ��i , tr�c ti�p mua !/buy","Ta mu�n giao d�ch /yes","V�y coi nh� li�u #/no") 
else 
StopTimer() -- script viet hoa By http://tranhba.com  k�t th�c t�nh gi� 
W66_getitem() 
end 
elseif (UTask_world38 == 4) then -- script viet hoa By http://tranhba.com  t�nh gi� kh� �� ��n l�c 
W66_getitem() 
else 
Say("Ng��i �� �n r�i ng� c�c t�p l��ng , kh�ng nh�c ��u m�i l� l� , ta ch� n�y m�c d� nh� , nh�ng l� , kh�ng thi�u c�i g� , ng��i mu�n mua thu�c sao ?", 3,"Giao d�ch /yes","Ta t�i ��n m�i v�o nhi�m v� /yboss","Kh�ng giao d�ch /no") 
end 
end; 

function buy() 
if (GetCash() < 750) then 
Talk(1,"","Kh�ng c� ti�n th� kh�ng th� mua thu�c .") 
else 
Pay(750) 
AddEventItem(186) 
Msg2Player("��t ���c x� h��ng h� c�t cao .") 
SetTask(66,5) 
AddNote("Mua ���c x� h��ng h� c�t cao .") 
Msg2Player("Mua ���c x� h��ng h� c�t cao .") 
if (GetTimerId() == 6) then -- script viet hoa By http://tranhba.com  �ang h�p thu�c t�nh gi� trung 
StopTimer() 
end 
end 
end 

function source() 
-- script viet hoa By http://tranhba.com  Say("Hi�u Thu�c: n�u nh� ng��i c� th� l�y ���c x� h��ng c�ng h� c�t hai lo�i nguy�n li�u , ta c�ng c� th� mi�n ph� gi�p ng��i h�p thu�c . ", 0) -- script viet hoa By http://tranhba.com  d��ng nh� l� l�p l�i . 
SetTask(66,2) 
AddNote("C�n hai lo�i nguy�n li�u , x� h��ng c�ng h� c�t �� l�m thu�c .") 
end 

function W66_getitem() 
AddEventItem(186) 
Msg2Player("��t ���c x� h��ng h� c�t cao .") 
SetTask(66,5) 
-- script viet hoa By http://tranhba.com  StopTimer() 
AddNote("��t ���c x� h��ng h� c�t cao .") 
end 

function yes() 
Sale(91); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 

function no() 
end; 
