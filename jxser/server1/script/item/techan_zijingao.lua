-- script viet hoa By http://tranhba.com ////////////////// 
-- script viet hoa By http://tranhba.com  tÝm bÇm h¹o 
-- script viet hoa By http://tranhba.com  mçi lÇn mua 8 giê (8*60) , thêi gian nhí ®Õn TaskID1739 
-- script viet hoa By http://tranhba.com  khi vai trß ë hoa ®µo ®¶o lóc , cã tr×nh tù cho cïng ®µo ra ®Ých vËt phÈm , còng khÊu trõ thêi gian , cïng b×nh th­êng má h¹o 
VALUE_ZIJIGAO_CONTRIBUTION = 200 -- script viet hoa By http://tranhba.com  tÝm bÇm h¹o cÇn ng­êi ®é cèng hiÕn 
TASKID_TECHAN_ZIJINGAO = 1739 -- script viet hoa By http://tranhba.com  tÝm bÇm h¹o thêi gian sö dông 

function addzijingao_main(nCount) 
if (not nCount) then 
nCount = 1 
end; 
local nCurValue = GetTask(TASKID_TECHAN_ZIJINGAO); 
if (nCurValue < 0) then 
nCurValue = 0; 
end; 
	nCurValue = nCurValue + 8 * 60 * nCount;
SetTask(TASKID_TECHAN_ZIJINGAO, nCurValue); 
nRestH, nRestM = GetMinAndSec(nCurValue); 
return nRestH, nRestM; 
end; 
