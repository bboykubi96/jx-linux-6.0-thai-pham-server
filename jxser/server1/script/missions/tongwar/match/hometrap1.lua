Include("\\script\\missions\\tongwar\\match\\head.lua")

function main() 
-- script viet hoa By http://tranhba.com  n�u nh� x� vu ghi danh giai �o�n l�c , nh� ch�i kh�ng th� �i ��n ��i ph��ng l�nh ��a trung �i , s� d� ph�i �em nh� ch�i n�m t�i ��i doanh b�n trong 
if(GetCurCamp() == 1) then 
if (tongwar_check_outmatch()) then 
return 
end 
if( GetFightState() == 1) then 
SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1)) 
tongwar_setdata(TONGWAR_RLTASK_LASTDTIME, GetGameTime()) 
SetFightState(0) 
else 
file = GetMissionS(1) 
x,y = bt_getadata(file) 
SetPos(floor(x/32), floor(y/32)) 
bt_RankEffect(tongwar_getdata(TONGWAR_RLTASK_CURRANK)) 
SetFightState(1) 
SetPKFlag(1) 
end; 
elseif (GetCurCamp() == 2) then 
file = GetMissionS(1) 
x,y = bt_getadata(file) 
SetPos(floor(x/32), floor(y/32)) 
Msg2Player("Ph�a tr��c s�n loan tr�ng �i�p , nh�t ��nh c� ph�c binh , ng��i kh�ng th� t� �i x�ng v�o !") 
SetFightState(1) 
end; 
end; 
