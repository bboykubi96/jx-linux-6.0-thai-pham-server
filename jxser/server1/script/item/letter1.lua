-- script viet hoa By http://tranhba.com  b�c qu�n �o b�n trong ��ch phong th� # nhi�m v� m�i h� th�ng long n�m ��ch b�c qu�n �o # trung l�p 
-- script viet hoa By http://tranhba.com by xiaoyang(2004\12\25) 

Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel) 
local curCamp = nt_getCamp() 
Uworld1001 = nt_getTask(1001) -- script viet hoa By http://tranhba.com  ch�nh ph�i 
Uworld1002 = nt_getTask(1002) 
Uworld1003 = nt_getTask(1003) 
Uworld183 = nt_getTask(183) 
Uworld186 = nt_getTask(186) 
Uworld189 = nt_getTask(189) 
local name = GetName() 
if ( Uworld186 == 20 ) then 
Describe("<link=image:\\spr\\item\\questkey\\taskobj090.spr> long n�m ��ch tin/th� <link><enter> long n�m #"..name.." , ng��i tuy c�n tr� tu�i , v�i giang h� nh�t m�ch l�i nh�n th�u qua . th� gi�i n�y v�n l� ch�nh t� ch�ng ph�n bi�t ���c , thi�n �c s�/ch� bi�n . r�i �i n�i n�y sau , l�m ng��i x� s� c�ng d�a v�o ng��i th�m l�c �� th� , s� r�t kh� , ���ng s� r�t kh� kh�n , ng��i c�n l�m r�t nhi�u , l�i kh�ng nhi�u l�m . Long m� c�ng kh�ng bi�t n�n nh� th� n�o gi�p ng��i m�t c�nh tay l�c , ch� c� th� �em giang h� trong trung l�p m�t tr�n ��ch m�t b� m�t ti�t l� cho ng��i , � trung l�p tr�n doanh ��ch sau l�ng c� m�t c��ng ��i t� ch�c s�t th� , c�i t� ch�c n�y c� bao nhi�u cao th� , th�c l�c bao l�n cho t�i b�y gi� kh�ng ai bi�t ���c . ch� bi�t l� c�i n�y h�n m��i n�m qua T�ng tri�u t� th�ng v�i ��ch ��ch ��i t��ng , kim qu�c chinh ph�t ��ch n�ng th� , v� l�m th�nh danh ��ch ��i hi�p l� l� b� gi�t , ��u c�ng c�i t� ch�c n�y t��ng quan . c�i t� ch�c n�y ��ch t�n g�i �� l�m uy�n nhai . ng��i �i bi�n kinh c�m ta tin/th� t�m m�t g�i ph� nam b�ng ��ch nam nh�n , h�n t� s� an b�i . n�i d�ng l�i � n�y , hy v�ng ng��i m�nh kh�e t� tr� n�n , tr�n tr�ng . long n�m . ",1,"Thu h�i t�n h�m /no") 
nt_setTask(186,30) 
if ( Uworld1002 < 10 ) then 
nt_setTask(1002,10) -- script viet hoa By http://tranhba.com  trung l�p nhi�m v� b�t ��u 
end 
end 
return 0 
end 
