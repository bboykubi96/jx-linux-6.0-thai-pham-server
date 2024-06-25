-- script viet hoa By http://tranhba.com  ®¹i kh¸i nh­ sau ®å tuyÕn , mét tµ tû sè 45 ®é ®Ých cñ h×nh , trë vÒ nªn cñ h×nh point ®iÓm ®Ých table 
-- script viet hoa By http://tranhba.com tbRectangle = 
-- script viet hoa By http://tranhba.com { 
-- script viet hoa By http://tranhba.com  tbtoppoint={1583,2989}, 
-- script viet hoa By http://tranhba.com  nleftstep = 6, 
-- script viet hoa By http://tranhba.com  nrightstep = 3, 
-- script viet hoa By http://tranhba.com } 
-- script viet hoa By http://tranhba.com  nªn cñ h×nh ®Ých bªn tr¸i bªn tr­êng v× 6, bªn ph¶i bªn tr­êng v× 5, cho nªn nleftstep=6,nrightstep=3 
-- script viet hoa By http://tranhba.com  # -- script viet hoa By http://tranhba.com tbtoppoint{x,y} cùc ®iÓm täa ®é 
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
-- script viet hoa By http://tranhba.com tbRectangle v× nh­ th­îng c¸ch thøc tb 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ lµ table, c¸ch thøc nh­ sau 
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
