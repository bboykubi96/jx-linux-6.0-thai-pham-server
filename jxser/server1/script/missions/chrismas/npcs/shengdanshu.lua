-- script viet hoa By http://tranhba.com  GetGlbValue(9) ghi ch�p th�i gian hour 
-- script viet hoa By http://tranhba.com  GetGlbValue(8) ghi ch�p nh�n l�y s� l�n 
-- script viet hoa By http://tranhba.com  GetTask(615) ghi ch�p m�t gi� b�n trong c� hay kh�ng c� d�n qu� t��ng 
-- script viet hoa By http://tranhba.com  c�y gi�ng sinh ��a l� ho�t ��ng , m�i gi� m�i thai ph�c v� kh� ��a 13 c� l� v�t , m�i ng��i m�i gi� ch� c� th� nh�n l�y m�t 
-- script viet hoa By http://tranhba.com  n�y ho�t ��ng t� 12 th�ng 22 ng�y k�o d�i ��n 1 th�ng 11 ng�y 


function main() 

-- script viet hoa By http://tranhba.com iRand = random(1,300) 
-- script viet hoa By http://tranhba.com if ( iRand < 100 ) then 
-- script viet hoa By http://tranhba.com  Say("Ng��i � ��y c�y gi�ng sinh cho ph�p m�t nguy�n , ��t nhi�n ph�t hi�n tr�n c�y nhi�u m�t chi�u l�p l�nh ��ch �� ",2,"Th�t bi�t �i�u , ta ��n xem nh�n nh�n /present","Ta c�n l� chuy�n t�m h�a nguy�n �i /no") 
-- script viet hoa By http://tranhba.com else 
Say("Nh� ch�i : c�y gi�ng sinh th�t l� ��p m�t # � n�i n�y h�a nguy�n nh�t ��nh s� th�c hi�n !",0) 
-- script viet hoa By http://tranhba.com end 

end 

function present() 

local nLastTime = GetGlbValue(9) 
local nQuantity = GetGlbValue(8) 
local Utask615 = GetTask(615) 
local nHour = tonumber( date( "%m%d%H" ) ) 
local nMinute = tonumber( date( "%M") ) 

if ( nLastTime == 0 and mod( nHour , 100 ) ~= 0 and nMinute < 30 ) then 
SetGlbValue(9,nHour - 1) 
SetGlbValue(8,0) 
AddLocalNews("*** �ng gi� n� en � c�y gi�ng sinh th��ng c�p th�t l� nhi�u l� v�t , m�i ng��i nhanh l�n �i l�y !***") 
elseif ( nLastTime ~= nHour and nMinute >= 30 ) then 
SetGlbValue(9,nHour) 
SetGlbValue(8,0) 
-- script viet hoa By http://tranhba.com  Msg2Player("New hour : ["..nHour.."o'clock] Reset") 
AddLocalNews("*** �ng gi� n� en � c�y gi�ng sinh th��ng c�p th�t l� nhi�u l� v�t , m�i ng��i nhanh l�n �i l�y !***") 
end 
nLastTime = GetGlbValue(9) 
nQuantity = GetGlbValue(8) 
if ( Utask615 ~= nLastTime and nQuantity <= 12 ) then 
onTake() 
		SetGlbValue(8,nQuantity + 1)
SetTask(615,nLastTime) 
-- script viet hoa By http://tranhba.com 		Msg2Player("AddItem 1,total = "..nQuantity + 1)
elseif ( Utask615 == nLastTime ) then 
Say("Kh�ng mu�n nh� v�y l�ng tham # cho ng��i kh�c ch�a ch�t c� h�i !",0) 
else 
Say("Th� t�t m�t c�i ch�p m�t li�n b� c�m xong r�i , 1 gi� sau tr� v� n�a th� m�t ch�t may m�n �i !",0) 
-- script viet hoa By http://tranhba.com  SetTask(615,nHour) 
end 

end 

function onTake() 

i = random(1,100000) 
if ( i < 40000 ) then 
AddItem(6,0,20,1,0,0,0) 
Msg2Player("Nga # l� m�t b� hoa h�ng # ta mu�n ��a cho ng��i y�u .") 
elseif ( i < 85000 ) then 
AddItem(6,0,11,1,0,0,0) 
Msg2Player("Nga # l� 1 c� l� hoa , ta mu�n �� cho m�i ng��i xem .") 
elseif ( i < 90000 ) then 
AddItem(6,1,72,1,0,0,0) 
Msg2Player("A # l� 1 b�nh Thi�n S�n b�o l� # hy v�ng n� c� th� cho ta mang ��n may m�n .") 
elseif ( i < 95000 ) then 
AddItem(6,1,73,1,0,0,0) 
Msg2Player("Oa #1 b�nh b�ch qu� l� , ta v�a ��ng c�n n� !") 
else 
AddItem(6,1,125,1,0,0,0) 
Msg2Player("A #1 b�nh hoa qu� r��u . ta mu�n t�m c� b�ng h�u ��i �m !") 
end 

end 

function no() 
end 
