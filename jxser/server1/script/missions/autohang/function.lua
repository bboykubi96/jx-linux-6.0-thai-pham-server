Include("\\script\\missions\\autohang\\head.lua");

-- script viet hoa By http://tranhba.com  c�n c� nh� ch�i c�p b�c , t�nh to�n kinh nghi�m tr� gi� 
-- script viet hoa By http://tranhba.com  n�y h�m s� � GameServer kh�i ��ng l�c t� ��ng �i�u d�ng , d�ng cho th�nh l�p treo ky kinh nghi�m tr� s� bi�u 
function AEXP_GetHangExpValue(nLevel) 

nExp = 0; 
	-- script viet hoa By http://tranhba.com  һСʱ�һ����飺e={3.5w+floor[(lv-50)/5]*0.5w}*1.2
if (nLevel == 50) then -- script viet hoa By http://tranhba.com  50 
nExp = 700; -- script viet hoa By http://tranhba.com  m�i ph�t ��t ���c ��ch kinh nghi�m tr� gi� 
elseif (nLevel < 100) then -- script viet hoa By http://tranhba.com  51~99 
		nExp = 700 + floor((nLevel - 50)/5)*100; -- script viet hoa By http://tranhba.com  ÿ���ӻ�õľ���ֵ
else -- script viet hoa By http://tranhba.com  100 c�p c�ng 100 c�p tr� l�n 
		nExp = 1700; -- script viet hoa By http://tranhba.com  ÿ���ӻ�õľ���ֵ[700 + floor((100 - 50)/5)*100]
end 

-- script viet hoa By http://tranhba.com 2007-01-05 kinh nghi�m �i�u ch�nh l�m th� ra l� 3 l�n 
nExp = nExp * AEXP_FREQ * 3 / 2; -- script viet hoa By http://tranhba.com  (10) ph�t ��t ���c ��ch kinh nghi�m tr� gi� 

return nExp; 
end; 

-- script viet hoa By http://tranhba.com  c�n c� nh� ch�i c�p b�c , c�ng v�i treo ky th�i gian ( l�y gi� l�m ��n v� ) , t�nh to�n c�n ��ch kim ti�n 
function AEXP_GetNeedMoney(nLevel, nTime) 
nTemp = 60 / AEXP_FREQ; -- script viet hoa By http://tranhba.com  m�t gi� (60 ph�t ) �i�u ch�nh m�y l�n kinh nghi�m 
nMoney = AEXP_GetHangExpValue(nLevel) * nTemp * nTime / 2; -- script viet hoa By http://tranhba.com  kinh nghi�m tr� gi� : ng�n l��ng ��m = 2:1 
return nMoney; 
end; 

-- script viet hoa By http://tranhba.com  ti�n v�o hoa ��o ��o 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� #1 b�y t� th�nh c�ng , 0 b�y t� th�t b�i , -1 b�y t� ng�n l��ng ch�a �� 
function aexp_gotothd(nSubWorldID) 
do return -1 end
if (GetCash() < AEXP_TICKET) then 
return -1; 
end 

if(GetExtPoint( 0 ) <= 0 ) then 
Say("Ng��ng ng�ng # ch� c� sung tr� gi� m�i c� th� �i hoa ��o ��o ",0) 
return -2 
end 

Pay(AEXP_TICKET) 
LeaveTeam(); -- script viet hoa By http://tranhba.com  r�i �i ��i ng� 
SetAutoHangMapFlag(1) -- script viet hoa By http://tranhba.com  thi�t tr� ti�n v�o treo ky b�n �� d�u hi�u ( che gi�u c�ng tr� chuy�n # tr� v� th�nh ch� ch�c n�ng ) 

-- script viet hoa By http://tranhba.com  mi�n ph� song kinh nghi�m th�i gian , kh�ng n�n gi�o �ang treo ky th�i gian 
if (AEXP_IsFreeTimeDoubleExp() == 0) then-- script viet hoa By http://tranhba.com  kh�ng ph�i l� mi�n ph� song kinh nghi�m ng�y 
-- script viet hoa By http://tranhba.com  c�n th�a l�i th�i gian gi�o �ang - start 
-- script viet hoa By http://tranhba.com  nh� ch�i c�ch khai hoa ��o ��o l�c , t�ch t�m ch�o ��ch d��c l�c kh�ng c� hi�u qu� nh�ng h�u hi�u th�i gian v�n s� ti�u hao 
-- script viet hoa By http://tranhba.com  cho n�n � l�n n�a ti�n v�o l�c c�n kh�u tr� b� n�y ph�n treo ky th�i gian 
-- script viet hoa By http://tranhba.com 06.06.13 
-- script viet hoa By http://tranhba.com  t�ch t�m ch�o �� b� ��o m� th�i gian thay th� # nh� ch�i r�i �i hoa ��o ��o th�i gian s� kh�ng ti�u hao , kh�ng n�n kh�u tr� th�i gian 
-- script viet hoa By http://tranhba.com nTime = GetTask(AEXP_OLTIME_TASKID); 
-- script viet hoa By http://tranhba.com if (nTime > 0) then 
-- script viet hoa By http://tranhba.com  nTime = floor((GetGameTime() - nTime) / 60); -- script viet hoa By http://tranhba.com  ��n v� # ph�t 
-- script viet hoa By http://tranhba.com  nPointTime = GetTask(AEXP_TASKID) - nTime; -- script viet hoa By http://tranhba.com  tr� th�i gian ( ��n v� # ph�t ) 
-- script viet hoa By http://tranhba.com  if (nPointTime < 0) then 
-- script viet hoa By http://tranhba.com  nPointTime = 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  SetTask(AEXP_TASKID, nPointTime); -- script viet hoa By http://tranhba.com  m�i c�n th�a l�i th�i gian 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com  c�n th�a l�i th�i gian gi�o �ang - end 
end 

NewWorld(nSubWorldID,1523,3237) 
SetFightState(0) 
Msg2Player("Ng��i �� t�i ��n m�t ��n ��c th� gi�i . � n�i n�y n�ng l�c c�a ng��i s� b� �nh h��ng # kh�ng th� c�ng th� gi�i # m�n ph�i c�ng th� gi�i li�n l�c # kh�ng th� s� d�ng th� ��a ph� , t�m t�m t��ng �n ph� # kh�ng th� h�p th�nh ��i , kh�ng th� mua b�n . "); 
return 1; 
end; 
