Include("\\script\\missions\\citywar_arena\\head.lua");
function main() 
SetCurCamp(GetCamp()); 
SetFightState(0); 
SetRevPos(99,43); 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
SetTaskTemp(200, 0); 
NewWorld(GetLeavePos()); 
DisabledStall(1)	--��ֹ��̯
ForbitTrade(1);		--��ֹ����
end;
