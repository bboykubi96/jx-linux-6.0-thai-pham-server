-- script viet hoa By http://tranhba.com  AEXP - Auto Experience 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
AEXP_FREQ = 10; -- script viet hoa By http://tranhba.com  10 ph�t 
AEXP_UPDATETIME = AEXP_FREQ * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 300 gi�y (5 ph�t ) �i�u ch�nh m�t l�n kinh nghi�m tr� gi� 
AEXP_MISSIONID = 9; 
AEXP_TIMERID = 19; 
AEXP_TASKID = 136; 
AEXP_OLTIME_TASKID = 140; -- script viet hoa By http://tranhba.com  ghi ch�p r�i �i ��o l�c ��ch � tuy�n th�i gian nhi�m v� thay ��i l��ng 

AEXP_NEEDLEVEL = 50; -- script viet hoa By http://tranhba.com  treo ky c�p b�c nhu c�u 

AEXP_HOUR_MAX = 24; -- script viet hoa By http://tranhba.com  nhi�u nh�t nh�ng ��ng th�i s� d�ng 24 gi� 

AEXP_TIME_ONE = 60; -- script viet hoa By http://tranhba.com  m�t vi�n ��ch ph�t ��m ( c� th� d�ng m�t gi� ) 
AEXP_TIME_UPDATE = AEXP_TIME_ONE * AEXP_FREQ / 60; -- script viet hoa By http://tranhba.com  m�i �i�u ch�nh m�t l�n s� tr� ��ch ph�t ��m ( c�n c� �i�u ch�nh th�i gian gian c�ch ) 
AEXP_TIME_MAX = AEXP_TIME_ONE * AEXP_HOUR_MAX; -- script viet hoa By http://tranhba.com  nhi�u nh�t nh�ng ��ng th�i s� d�ng 24 gi� 

AEXP_TICKET = 1800; -- script viet hoa By http://tranhba.com  ti�n v�o hoa ��o ��o ��ch v� v�o c�a ph� d�ng 

AEXP_STAT_FREQ = 1 * AEXP_TIME_ONE / AEXP_FREQ; -- script viet hoa By http://tranhba.com  th�ng k� t�n s� ( m�i m�t gi� th�ng k� m�t l�n ) 

-- script viet hoa By http://tranhba.com  mi�n ph� t�ng g�p b�i kinh nghi�m treo ky l�c �o�n 
AEXP_FREEDATE_BEGIN = 20040813 -- script viet hoa By http://tranhba.com  bao g�m ng�y �� 
AEXP_FREEDATE_END = 20040830 -- script viet hoa By http://tranhba.com  ng�y �� ph�c v� kh� ��i m�i th� ng�ng 
AEXP_SVRUPDATE_TIME = 9 -- script viet hoa By http://tranhba.com  ph�c v� kh� th�� gian ��i m�i 
AEXP_FREEDATE_EXPFACTOR = 1; -- script viet hoa By http://tranhba.com  kinh nghi�m t�ng c��ng b�i s� 

-- script viet hoa By http://tranhba.com  c� hay kh�ng mi�n ph� song kinh nghi�m 
function AEXP_IsFreeTimeDoubleExp() 
-- script viet hoa By http://tranhba.com  return 1; -- script viet hoa By http://tranhba.com  ng�y ng�y mi�n ph� , kh�ng h� n�a thu l� ph� 
-- script viet hoa By http://tranhba.com  nCurDate = tonumber(date("%Y%m%d")); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(date("%H")) 
-- script viet hoa By http://tranhba.com  if (nCurDate >= AEXP_FREEDATE_BEGIN and nCurDate <= AEXP_FREEDATE_END) then-- script viet hoa By http://tranhba.com  mi�n ph� song kinh nghi�m ng�y 
-- script viet hoa By http://tranhba.com  if (nCurDate == AEXP_FREEDATE_END and nHour >= AEXP_SVRUPDATE_TIME) then -- script viet hoa By http://tranhba.com  �� ��n ng�y cu�i c�ng sau ��ch th�� gian ��i m�i 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com  end 
return 0; 
end; 
