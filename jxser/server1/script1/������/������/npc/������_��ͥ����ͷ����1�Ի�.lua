-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ��ng ��nh h� b�n t�u thuy�n phu 1 ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

function main(sel) 
Say("Thuy�n phu # ta t� nh� �ang � b�n h� l�n l�n , �ng n�i ta c�ng cha ta ��u l� c� d�n , ��ng n�y ��nh h� khu c�ng ch�a c� ta kh�ng quen ��ch ��a ph��ng . ng��i mu�n ng�i thuy�n sao ? ", 2,"�i Thi�n v��ng ��o /yes","Kh�ng ng�i /no") 
end; 

function yes() 
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
if (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i l� Thi�n v��ng gi�p �� t� , ng�i thuy�n kh�ng thu ti�n 
Say("Thuy�n phu # nguy�n lai l� Thi�n v��ng gi�p ��ch huynh �� , y�n t�m �i , ta mi�n ph� ��a huynh �� �i #", 1,"�a t� /ok1") 
else 
Say("Thuy�n phu # y�u , �� c�ng kh�ng ph�i l� ng��i b�nh th��ng �i ��a ph��ng , �i c� th� , ng��i nhi�u l�m cho ch�t b�c . ", 1,"���c r�i /ok2") 
end 
else 
Talk(1,"","Thuy�n phu # th�t xin l�i , kh�ng t�i c�p m��i ��ch tay m�i kh�ng th� ng�i thuy�n ra th�n . ") 
end 
end; 

function no() 
end; 

function ok1() 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 

function ok2() 
if (GetCash() >= 100) then -- script viet hoa By http://tranhba.com  tham kh�o tr� gi� 
Pay(100) 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
else 
Say("Thuy�n phu # ta c�ng kh�ng th� b�ch b�o m�t l�n thuy�n . ", 0) 
end 
end; 
