--Van su thong nam nhac tran
-- script viet hoa By http://tranhba.com  v�n s� th�ng d�ng l� ch�n v�n (BlackBay.03.12.30) 
-- van su thong nam nhac tran --vansuthong
Include([[\script\event\mid_autumn06\fairy_of_midautumn06.lua]]); 

function main(sel) 

--dofile("script/������/������/npc/ְ��_����ͨ.lua")
do Say("Ta ch�nh l� v�n s� th�ng , kh�ng c� g� kh�ng bi�t . ng��i mu�n h�i c�i g� ?") return 1 end

local tab_Content = { 
"D�ng 100000 l��ng b�c ��i m�t ng��i tin t�c /Query1", 
"D�ng 20000 l��ng b�c ��i m�t ng��i tin t�c /Query2", 
"D�ng 3000 l��ng b�c ��i m�t ng��i tin t�c /Query3", 
" kh�ng h�i /Nothing" 
}; 

if (au06_is_inperiod() == 1) then 
tinsert(tab_Content,"Trung thu ho�t ��ng /au06_entrance_fairy"); 
end; 
Say("Ta ch�nh l� v�n s� th�ng , kh�ng c� g� kh�ng bi�t . ng��i mu�n h�i c�i g� ?", getn(tab_Content), tab_Content); 
end; 

-- script viet hoa By http://tranhba.com  ph�a d��i ba h�m s� c�ng �i�u d�ng QueryWiseMan ��ch h�m s� , n�y h�m s� th�ng b�o kh�ch h�ng b�ng ��a v�o m�t c�i t�n c�ng �� giao m�t l�n tu�n tra 
-- script viet hoa By http://tranhba.com  tu�n tra th�nh c�ng , h� th�ng tr� v� �i�u th� nh�t tham s� ch� ��nh tr� v� �i�u h�m s� t�n # tu�n tra th�t b�i , h� th�ng tr� v� �i�u th� nh�t tham s� ch� ��nh tr� v� �i�u h�m s� t�n 
-- script viet hoa By http://tranhba.com  tr� v� �i�u h�m s� nguy�n h�nh xin/m�i tham kh�o ph�a d��i ��nh ngh�a ��ch hai d�ng l� h�m s� WisemanCallBack c�ng AbsentCallBack 
function Query1() 
if (GetCash() >= 100000) then 
QueryWiseMan("WisemanCallBack", "AbsentCallBack", 100000) 
else 
Nothing() 
end 
end; 

function Query2() 
if (GetCash() >= 20000) then 
QueryWiseMan("WisemanCallBack", "AbsentCallBack", 20000) 
else 
Nothing() 
end 
end; 

function Query3() 
if (GetCash() >= 3000) then 
QueryWiseMan("WisemanCallBack", "AbsentCallBack", 3000) 
else 
Nothing() 
end 
end; 

function Nothing() 
Talk(1, "","Ng��i kh�ng ph�i l� c�m ta n�i ��a sao ?") 
end; 

-- script viet hoa By http://tranhba.com  n�y h�m s� v� tr� th�nh c�ng tu�n tra tin t�c tr� v� �i�u h�m s� , tham s� c� ��m c�ng tham s� th� t� kh�ng cho ph�p s�a ��i 
function WisemanCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank) 
if MapName == "" then 
Say("Th�t xin l�i , "..TargetName.." b�y gi� � khu v�c ��c bi�t <color=red> ��c l�p bang h�i khu v�c <color>, nh�ng l� kh�ng bi�t th�y thu�c v� tr� c� th� , nh� v�y ta c�ng ch� coi l� n�a gi� �i .",0) 
Pay(MoneyToPay / 2) 
return 
elseif (MoneyToPay == 3000) then 
Say("Ng��i n�y "..TargetName.." b�y gi� � <color=red> "..MapName.."<color> ng��i �i nhanh �i�m , n�u nh� h�n ��n ch� kh�c ta c�ng kh�ng x�a v�o . ",1,"�a t� /no") 
elseif (MoneyToPay == 20000) then 
Say("Ng��i n�y "..TargetName.." b�y gi� � <color=red> "..MapName.."<color>, v� tr� c� th� c� th� l� <color=red> ( "..nPosX..", "..nPosY..")<color>, ng��i n�u nh� mu�n t�m l�i c�a h�n c�ng nhanh ch�t . ",1,"�a t� /no") 
elseif (MoneyToPay == 100000) then 
SexString = "Nam" 
if (nSex ~= 0) then 
SexString = "N?" 
end 
Say("Ng��i n�y "..TargetName.."  ��ng c�p "..PlayerLevel.." gi�i t�nh "..SexString..", v� tr� hi�n t�i l� <color=red>"..MapName.."("..nPosX..", "..nPosY..")<color> ��ch h�nh d�ng, x�p h�ng th� gi�i "..nWorldRank.." t�n ., PK tr� gi� "..PKValue..". ng��i mu�n t�m l�i c�a h�n c�ng nhanh ch�t . ",1,"�a t�/no") 
end 
Pay(MoneyToPay) 
end; 

-- script viet hoa By http://tranhba.com  n�y h�m s� v� th�t b�i tu�n tra ( c�ng ch�nh l� kh�ng c� � ��y tuy�n ) tin t�c tr� v� �i�u h�m s� , tham s� c� ��m c�ng tham s� th� t� kh�ng cho ph�p s�a ��i 
function AbsentCallBack(TargetName, MoneyToPay) 
Say("Ng��i n�y , "..TargetName.." h�n b�y gi� kh�ng c� � ��y c�i n�y , kh�ng bi�t h�n � ��u , t� tu�n ph� ta ch� l�y m�t n�a , a a . ",0) 
Pay(MoneyToPay / 2) 
end; 

function no() 
end 
