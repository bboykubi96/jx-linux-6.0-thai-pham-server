-- script viet hoa By http://tranhba.com  ��i kh�i nh� sau �� tuy�n , m�t t� t� s� 45 �� ��ch c� h�nh , tr� v� n�n c� h�nh point �i�m ��ch table 
-- script viet hoa By http://tranhba.com tbRectangle = 
-- script viet hoa By http://tranhba.com { 
-- script viet hoa By http://tranhba.com  tbtoppoint={1583,2989}, 
-- script viet hoa By http://tranhba.com  nleftstep = 6, 
-- script viet hoa By http://tranhba.com  nrightstep = 3, 
-- script viet hoa By http://tranhba.com } 
-- script viet hoa By http://tranhba.com  n�n c� h�nh ��ch b�n tr�i b�n tr��ng v� 6, b�n ph�i b�n tr��ng v� 5, cho n�n nleftstep=6,nrightstep=3 
-- script viet hoa By http://tranhba.com  # -- script viet hoa By http://tranhba.com tbtoppoint{x,y} c�c �i�m t�a �� 
-- script viet hoa By http://tranhba.com  # # 
-- script viet hoa By http://tranhba.com  # # # 
-- script viet hoa By http://tranhba.com  # # # # 
-- script viet hoa By http://tranhba.com  # # # # # 
-- script viet hoa By http://tranhba.com  # # # # # 
-- script viet hoa By http://tranhba.com  # # # # 
-- script viet hoa By http://tranhba.com  # # # 
-- script viet hoa By http://tranhba.com  # # 
-- script viet hoa By http://tranhba.com  # 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com tbRectangle v� nh� th��ng c�ch th�c tb 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� l� table, c�ch th�c nh� sau 
-- script viet hoa By http://tranhba.com tb ={ 
-- script viet hoa By http://tranhba.com  {x1,y1}, 
-- script viet hoa By http://tranhba.com  {x2,y2}, 
-- script viet hoa By http://tranhba.com } 
-- script viet hoa By http://tranhba.com  
function getRectanglePoint(tbRectangle) 
local ntopx = tbRectangle.tbtoppoint[1] 
local ntopy = tbRectangle.tbtoppoint[2] 
local nleftstep = tbRectangle.nleftstep 
local nrightstep = tbRectangle.nrightstep 
local ny = ntopy 
local tbpoint = {} 
local ni = 1 
for nx=ntopx,ntopx-nleftstep,-1 do 
for nk = 0,nrightstep-1,1 do 
tbpoint[ni]={} 
			tbpoint[ni][1] = nx+nk;
			tbpoint[ni][2] = ny+nk;
			ni = ni + 1
end 
		ny = ny + 1
end; 
return tbpoint 
end;
