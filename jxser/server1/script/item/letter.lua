-- script viet hoa By http://tranhba.com  b�c qu�n �o b�n trong ��ch phong th� # nhi�m v� m�i h� th�ng long n�m ��ch b�c qu�n �o # ch�nh ph�i 
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
if ( Uworld183 == 20 ) then 
Describe("<link=image:\\spr\\item\\questkey\\taskobj075.spr> long n�m ��ch tin/th� <link><enter> long n�m #"..name.." , nh� n��c ��i n�n , giang h� lo�n kh�i . sanh � c�i th�i ��i n�y , r�t nhi�u th�i �i�m c�ng s� th�n b�t do k� . ta th�t cao h�ng ng��i v�n mu�n l�m ng��i ch�nh tr�c , cho n�n n�i cho ng��i bi�t m�t b� m�t , c� l� n� c� th� gi�p ��n ng��i . kh�ng bi�t t� ��u l�c kh�i , giang h� ��ch b�t ��ng tr�n doanh �ang l�c ch�t truy�n ra tin t�c nh� th� , � qu�n h�ng tranh b� ��ch sau l�ng , c� h�n kh�ng l� t� ch�c �m th�m �i�u khi�n . ta kh�ng bi�t tin ��n c� hay kh�ng c� th� tin , nh�ng ch�nh ��o v� l�m c� c� �n v�o th� t�p , th�c l�c kh�ng l� t� ch�c c�ng l� ta c� th� kh�ng ��nh . nghe n�i c�i t� ch�c n�y ��ch t�n g�i v� l�m kh�ch s�n . ta mu�n , s� xu�t ��o l�c c� th� �i v�o nh� v�y m�t t� ch�c , ��i v�i ng��i ��ch ti�n tr�nh s� t�t h�n , c�ng c� th� mi�n �i r�t nhi�u phi�n to�i kh�ng c�n thi�t . ng��i c� th� �i ��i L� t�m m�t g�i m�c s�u ��ch c� g�i , n�ng s� cho ng��i c� th� ch� th� . nh�ng thi�t thi�t kh�ng th� � tr��c m�t n�ng nh�c t�i ta , nguy�n nh�n sau n�y t� bi�t . v�i v� m�y l�i , l�y n�y thu b�t , di�u ch�c t�m nguy�n s�m th�nh . long n�m . ",1,"Thu h�i t�n h�m /no") 
nt_setTask(183,30) 
if ( Uworld1001 < 10 ) then 
nt_setTask(1001,10) -- script viet hoa By http://tranhba.com  ch�nh ph�i nhi�m v� b�t ��u 
end 
end 
return 0 
end 
