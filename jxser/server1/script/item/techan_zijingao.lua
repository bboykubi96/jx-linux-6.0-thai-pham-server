-- script viet hoa By http://tranhba.com ////////////////// 
-- script viet hoa By http://tranhba.com  t�m b�m h�o 
-- script viet hoa By http://tranhba.com  m�i l�n mua 8 gi� (8*60) , th�i gian nh� ��n TaskID1739 
-- script viet hoa By http://tranhba.com  khi vai tr� � hoa ��o ��o l�c , c� tr�nh t� cho c�ng ��o ra ��ch v�t ph�m , c�ng kh�u tr� th�i gian , c�ng b�nh th��ng m� h�o 
VALUE_ZIJIGAO_CONTRIBUTION = 200 -- script viet hoa By http://tranhba.com  t�m b�m h�o c�n ng��i �� c�ng hi�n 
TASKID_TECHAN_ZIJINGAO = 1739 -- script viet hoa By http://tranhba.com  t�m b�m h�o th�i gian s� d�ng 

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
