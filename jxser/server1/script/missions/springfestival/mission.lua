Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\libfestival\mission.lua]]); 
STRGLOBALNEWS = " c�c v� xua �u�i 30 tu�i ng��i anh h�ng tr� l�i ."; 

function initmission_add() 

end; 

function EndMission_add() 
local i; 
for i = 1, CO_SMALLMAPCOUNT do 
		if (GetMSPlayerCount(CO_MISSIONID, i + CO_SMALLMAPCOUNT) > 0 or
GetMSPlayerCount(CO_MISSIONID, i) > 0) then 
groupsort(i); 
			groupsort(i + CO_SMALLMAPCOUNT);
end; 
end; 
festival_gameover(CO_MAPID[2], CO_MISSIONID); -- script viet hoa By http://tranhba.com  �em t�t c� nh� ch�i thanh tr� ra b�n �� 
AddGlobalNews(STRGLOBALNEWS); 

ClearMapObj(CO_MAPID[2]); 
end; 

function OnLeave() 
end 

function festival_getsz(tabMsg, nMsgCount, tabPlayer, nGroupId) 
local nRankCount = getn(tabPlayer); 
if (nRankCount > 3) then 
nRankCount = 3; 
end; 
local i; 
for i=1,nRankCount do 
if ( tabPlayer[i][1] ~= nil ) then 
PlayerIndex = tabPlayer[i][1]; 
		    tabMsg[i + nMsgCount] = "<color=orange>��"..i.." "..GetName()..", �ҵ�"..CO_MOUSENAME..tabPlayer[i][2].."��";
end 
end 
nMsgCount = getn(tabMsg); 
if (nMsgCount > 0) then 
tabMsg[nMsgCount] = tabMsg[nMsgCount]; 
end; 
return tabMsg, nMsgCount; 
end; 

function festival_broadcast(tabMsg, nMsgCount, tabPlayer) 
nCount = getn(tabPlayer); 
local i, j; 
-- script viet hoa By http://tranhba.com  s�p x�p th� t� sau t� tr��c ��n sau ch�nh l� h�ng ��ch tr��c sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(TK_CO_RANK, i); 
for j = 1, nMsgCount do 
Msg2Player(tabMsg[j]); 
end; 
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
Msg2Player("Ng��i t�m ���c "..CO_MOUSENAME.." th� <color=yellow>"..i.."<color> l�n , c� th� ��n <color=yellow> nha m�n sai d�ch <color> d�n t��ng !"); 
else 
Msg2Player("Xua �u�i 30 tu�i ng��i th� <color=yellow>"..i.."<color> l�n , c� th� ��n <color=yellow> nha m�n sai d�ch <color> d�n t��ng !"); 
end; 
end; 
end;
