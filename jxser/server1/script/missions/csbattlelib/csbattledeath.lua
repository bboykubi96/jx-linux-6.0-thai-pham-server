-- script viet hoa By http://tranhba.com  tham chi�n nh� ch�i t� vong l�c ��ch tr� v� �i�u h�m s� 
-- script viet hoa By http://tranhba.com  b�n ngo�i d�n d�ng b�n v�n m�n l�c , nh�t ��nh ph�i ��nh ngh�a h� nh�m h�m s� 
-- script viet hoa By http://tranhba.com GetBonus(); -- script viet hoa By http://tranhba.com  c�n b�n ngo�i ��nh ngh�a n�n h�m s� , d�ng cho t��ng th��ng Launcher nh� ch�i . 
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(2,GetCurCamp()); 
-- script viet hoa By http://tranhba.com  th� ti�u vai tr� � MissionGroup sau s� t� ��ng �i�u d�ng Mission ��ch OnLeave() h�m s� , m� n�n h�m s� l�m ho�n to�n thanh tr� nh� ch�i ��c th� tr�ng th�i ch�c n�ng 
-- script viet hoa By http://tranhba.com  � D��ng Ch�u s�n ��u c� ch�t b�t ��ng , h�n kh�ng c� th�t ph�i th�i lui ra b�n �� , cho n�n c�n �em s�ng l�i �i�m thi�t v� c�n d�ng RevID ch� 
if (curcamp ~= 4) then 
SetLogoutRV(1); 
end; 


PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung th� 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng��i ch�t 
DeathName = GetName(); 

SetFightState(1) 
if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(PLAYER_KILLCOUNT) + 1; -- script viet hoa By http://tranhba.com ���㵱ǰ��pk����
		pkcount1 = GetTask(PLAYER_KILLCOUNT) + 1; -- script viet hoa By http://tranhba.com ͳ���ܹ���pk����
SetTaskTemp(PLAYER_KILLCOUNT, pkcount); 
SetTask(PLAYER_KILLCOUNT, pkcount1); 


if ( curcamp == 1) then 
str = "<#> ho�ng ph��ng :"..LaunName.."<#> �� tr�ng th��ng ["..DeathName.."<#> ], c� th� PK # "..pkcount; 
elseif (curcamp == 2) then 
str = "<#> t� ph��ng :"..LaunName.."<#> �� tr�ng th��ng ["..DeathName.."<#> ], c� th� PK # "..pkcount; 
elseif (curcamp == 4) then 
str = LaunName.."<#> �� tr�ng th��ng ["..DeathName.."<#> ], c� th� PK "..pkcount; 
end; 

GetBonus(); -- script viet hoa By http://tranhba.com  n�n h�m s� t� b�n ngo�i �i�n th�m , d�ng cho t��ng th��ng nh� ch�i 

Msg2MSAll(2,str); 
PlayerIndex = OrgPlayer; 
end; 
SetTaskTemp(PLAYER_KILLCOUNT, 0); 

if (curcamp == 4) then 
SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetRevPos(99,43); 
else 
SetCurCamp(0); 
end; 

	dcount = GetTaskTemp(PLAYER_DEATHCOUNT) + 1; -- script viet hoa By http://tranhba.com ���㵱ǰ����������
	dcount1 = GetTask(PLAYER_DEATHCOUNT) + 1; -- script viet hoa By http://tranhba.com ͳ���ܹ��������ܴ���
SetTaskTemp(PLAYER_DEATHCOUNT, dcount); 
SetTask(PLAYER_DEATHCOUNT, dcount1); 
SetTaskTemp(JOINSTATE, 0); 
end; 
