Include("\\script\\missions\\tongwar\\match\\head.lua")


function main() 
-- script viet hoa By http://tranhba.com  n�u nh� x� vu ghi danh giai �o�n l�c , nh� ch�i kh�ng th� �i ��n ��i ph��ng l�nh ��a trung �i , s� d� ph�i �em nh� ch�i n�m t�i ��i doanh b�n trong 
if(GetCurCamp() == 2) then 
SetPos(GetMissionV(MS_HOMEIN_X2), GetMissionV(MS_HOMEIN_Y2)) 
SetFightState(0) 
tongwar_setdata( TONGWAR_RLTASK_LASTDTIME, GetGameTime() ) 
elseif (GetCurCamp() == 1) then 
Msg2Player("Ph�a tr��c s�n loan tr�ng �i�p , nh�t ��nh c� ph�c binh , ng��i kh�ng th� t� �i x�ng v�o !") 
SetFightState(1) 
end; 
end; 
