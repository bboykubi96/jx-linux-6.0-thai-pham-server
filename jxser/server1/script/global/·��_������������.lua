--Than bi thuong nhan tuong duong: edit by mcteam

Include( "\\script\\global\\fuyuan.lua" )
Include([[\script\event\mid_autumn06\head.lua]]); 
Include("\\script\\vng_feature\\thuongnhanthanbi\\moruongfour\\openchestfour.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main() 

--dofile("script/global/·��_������������.lua");
--dofile("script/global/g7vn/g7configall.lua")

local tab_Content = { 
"Li�n quan t�i ph�c duy�n /OnAbout",
"K�t th�c ��i tho�i /OnCancel",
}; 

if ditruongbach == 1 then
tinsert(tab_Content,"H�y ��a ta �i ng�n n�i Tr��ng B�ch /GotoHuanZhuan")
end
if shopphucduyen == 1 then
tinsert(tab_Content,"Giao d�ch /OnBuy"); 
--tinsert(tab_Content,"K�t th�c ��i tho�i /OnCancel"); 
end

if (au06_is_inperiod() == 1) then 
tinsert(tab_Content,"Trung thu ho�t ��ng /au06_lpaw_entrance"); 
end; 

if ruongso4 == 1 then
tinsert(tab_Content,"Khai r��ng 4/#tbChectfour:main()")
end

Say ("Kh�ch quan mu�n mua g� ? b�n �i�m kh�ng thi�u h�ng nga !", getn(tab_Content), tab_Content); 
end 

function OnBuy() 
Sale( 93, 2 ); 
end 

function OnBuyNew() 
Sale( 181, 2 ); 
end 

function OnAbout() 
Talk( 3, "","Ph�c duy�n �i�m ��m # th�ng qua t�ch l�y � tuy�n th�i gian t�i ��i ��ch m�t lo�i h� ngh� �i�m ��m , c� th� d�ng t�i c�ng t��ng d��ng ��ch th�n b� th��ng nh�n li�u �t ��i c�c lo�i ��c th� v�t ph�m . ","Ph�c duy�n ��i # t�ch l�y hai gi� tr� l�n � tuy�n th�i gian sau , �i c�c ��i th�nh th� t�m v� l�m minh truy�n nh�n l� ���c ��i . m�t ng�y b�n trong n�u nh� hai l�n th�nh c�ng ��i ph�c duy�n , c� ng�ch ngo�i t��ng th��ng . t�ch l�y � tuy�n th�i gian 4 gi� l�y b�n trong , m�i gi� ��i 1 �i�m ph�c duy�n , 4 gi� tr� l�n , tr��c 4 gi� m�i gi� ��i 1 �i�m , sau m�i hai gi� ��i 1 �i�m . h�p th�nh ��i l�c , trong ��i ng� t�y � m�t th�nh vi�n c� th� gi�p to�n ��i ��i vi�n nh�n l�y ph�c duy�n . ","H�n ch� �i�u ki�n # ng�i t� trong l�c kh�ng gia t�ng c� th� ��i l�y ph�c duy�n ��ch � tuy�n th�i gian . " ); 
end 

function au06_lpaw_entrance() 
if (au06_IsPayed_player() == 0) then 
Say("Ch� c� sung tr� gi� nh� ch�i m�i c� th� tham gia trung thu ho�t ��ng ", 0); 
return 
end; 
Say("N�u nh� ng��i c� <color=yellow> 10 th��ng c� l�nh b�i <color> ta s� cho ng��i ��i m�t <color=yellow> ph�ng th�ng qu� dong <color> ��a k� n�ng tr� gi� ho�c l� 1 <color=yellow> c�ng th�ng ph� dung <color> ��a ti�m n�ng tr� gi� .", 3, "1 c� th��ng c� l�nh b�i ��i l�y t��ng th��ng /#shangjialingpai(1)", "10 c� th��ng c� l�nh b�i ��i l�y t��ng th��ng /#shangjialingpai(2)","K�t th�c ��i tho�i /oncancel"); 
end; 

function shangjialingpai(nIndex) 
if (CalcEquiproomItemCount(6, 1, 1252, -1) < 10) then 
Say("C�n 10 c� th��ng c� l�nh b�i m�i c� th� ��i l�y t��ng th��ng #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  kh�u tr� v�t ph�m 
if (ConsumeEquiproomItem(10, 6, 1, 1252, -1) ~= 1) then 
return 
end 

-- script viet hoa By http://tranhba.com  cho t��ng th��ng 
local str = "<color=yellow> ph�ng th�ng qu� dong <color>"; 
if (nIndex == 1) then -- script viet hoa By http://tranhba.com  gia t�ng m�t k� n�ng �i�m 
AddItem(6, 1, 127, 1, 0, 0, 0); 
else -- script viet hoa By http://tranhba.com  gia t�ng 5 c� ti�m n�ng �i�m 
AddItem(6, 1, 128, 1, 0, 0, 0); 
str = "<color=yellow> c�ng th�ng ph� dung <color>"; 
end; 

-- script viet hoa By http://tranhba.com  cho �� k� 
Say("H�o a # xin/m�i ti�p nh�n m�t ch�t l� v�t !", 0); 
Msg2Player("Ng��i ��t t�i "..str); 
end; 

function OnCancel() 
end 
function GotoHuanZhuan() 
NewWorld(934, 49632 / 32, 105696 /32) 
end 
