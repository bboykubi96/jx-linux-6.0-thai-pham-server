-- script viet hoa By http://tranhba.com  �em head trung ��ch m�t �t h�m s� kh�o b�i t�i ��y �� tr�nh Include sao ch�p d� th�a ��i m� 
Include("\\script\\missions\\newcitydefence\\head.lua")

function OnNpcTrap(nNpcIdx) 
-- script viet hoa By http://tranhba.com print("npc",nTrapId ) 

local targetfile; 
local x, y; 
local addpatrol = mod(nTrapId, 100) * 5; 
	targetfile = [[\settings\maps\newcitydefence\trappos]]..(nTrapId + 1)..[[.txt]];
x, y = bt_getadata(targetfile); 
-- script viet hoa By http://tranhba.com 	print("Npc:"..nNpcIdx..",Goto"..(nTrapId + 1)..","..x..","..y)
	SetNpcAI(nNpcIdx,9,(20 + addpatrol),-1,-1,-1,-1,-1,0,x ,y );
if nTrapId == 1014 or nTrapId == 2012 or nTrapId == 3013 then 
local szNpcName = GetNpcName(nNpcIdx) 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
local npcname = " t�ng qu�n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = "Qu# Kim" 
end 
if szNpcName == format("%s%s",npcname,tbSOLDIER_NAME[6]) then 
DelNpc(nNpcIdx) 
local ndefence = GetMissionV( MS_HOMEDEFENCE ) 
SetMissionV( MS_HOMEDEFENCE,ndefence - NHOMEDEFENCE_DAMAGE ) 
Msg2MSAll(MISSIONID, format("<color=yellow>%s ��i ph��ng qu�n �ang ti�n c�ng , th� th�nh tr� gi� h�ng 1 �i�m , tr��c m�t c�n l�i %s �i�m !!!",tbSOLDIER_NAME[6],ndefence-1)) 
if ndefence == 1 then 
CloseMission( MISSIONID ) 
end 
end 
end 
end; 

function main() 
-- script viet hoa By http://tranhba.com local w, x, y =GetWorldPos() 
-- script viet hoa By http://tranhba.com print(nTrapId.."trapid "..(x*32).." "..(y*32)) 
if (nTrapId == 1013 or nTrapId == 2012 or nTrapId == 3012) then 
if (GetMissionV(MS_STATE) == 1) then 
Talk(1, "","Khai chi�n tr��c , cho ta t��ng s� � trong th�nh nghe l�nh , chu�n b� ngh�nh ��ch !") 
if (nTrapId == 1013) then 
SetPos(1605, 3200) 
elseif (nTrapId == 2012) then 
SetPos(1659, 3257) 
elseif (nTrapId == 3012) then 
SetPos(1714, 3312) 
end 
end 
end 
end
