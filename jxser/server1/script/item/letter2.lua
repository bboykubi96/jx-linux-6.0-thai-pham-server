-- script viet hoa By http://tranhba.com  b�c qu�n �o b�n trong ��ch phong th� # nhi�m v� m�i h� th�ng long n�m ��ch b�c qu�n �o # t� ph�i 
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
if ( Uworld189 == 20 ) then 
Describe("<link=image:\\spr\\item\\questkey\\taskobj091.spr> long n�m ��ch tin/th� <link><enter>"..name..", �i Chu ti�n tr�n t�m V�n nhi , li�n quan t�i n�ng h�t th�y ng��i c�ng s� t� t� bi�t ���c , nh�ng ta kh�ng mu�n n�i th�m m�t ch� , ng�m ng��i tr�n tr�ng m�nh . long n�m . ",1,"Thu h�i t�n h�m /no") 
nt_setTask(189,30) 
if ( Uworld1003 < 10 ) then 
nt_setTask(1003,10) -- script viet hoa By http://tranhba.com  t� ph�i nhi�m v� b�t ��u 
end 
end 
return 0 
end 
