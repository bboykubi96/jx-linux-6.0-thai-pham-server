-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: npcdeath.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-11-25 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng # th� th�nh ph��ng binh l�nh # t��ng qu�n t� vong ch�n v�n 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\newcitydefence\\head.lua")

function OnDeath(nNpcIndex) 
SetMissionV( MS_SHOUCHENGWEIBING, GetMissionV( MS_SHOUCHENGWEIBING ) - 1 ) 
if (rank == 2) then 
SetMissionV( MS_SHOUCHENGJIANGJUN, GetMissionV( MS_SHOUCHENGJIANGJUN ) - 1) 
Msg2MSAll(MISSIONID,"Th� th�nh chi�n b�o :<color=pink>1 t�n phe ta th� th�nh t��ng qu�n t� vong .") 
end 
if (GetMissionV( MS_SHOUCHENGJIANGJUN ) <= 0) then 
Msg2MSAll(MISSIONID,"Th� th�nh chi�n b�o :<color=pink> phe ta th� th�nh t��ng qu�n t� vong .") 
CloseMission( MISSIONID ) 
end 
end
