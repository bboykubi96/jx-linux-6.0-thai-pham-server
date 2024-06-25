Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\libfestival\mission.lua]]); 
STRGLOBALNEWS = " c¸c vÞ xua ®uæi 30 tuæi ng­êi anh hïng trë l¹i ."; 

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
festival_gameover(CO_MAPID[2], CO_MISSIONID); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ nhµ ch¬i thanh trõ ra b¶n ®å 
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
		    tabMsg[i + nMsgCount] = "<color=orange>µÚ"..i.." "..GetName()..", ÕÒµ½"..CO_MOUSENAME..tabPlayer[i][2].."´Î";
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
-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù sau tõ tr­íc ®Õn sau chÝnh lµ h¹ng ®Ých tr­íc sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(TK_CO_RANK, i); 
for j = 1, nMsgCount do 
Msg2Player(tabMsg[j]); 
end; 
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
Msg2Player("Ng­¬i t×m ®­îc "..CO_MOUSENAME.." thø <color=yellow>"..i.."<color> lÇn , cã thÓ ®Õn <color=yellow> nha m«n sai dÞch <color> dÉn t­ëng !"); 
else 
Msg2Player("Xua ®uæi 30 tuæi ng­êi thø <color=yellow>"..i.."<color> lÇn , cã thÓ ®Õn <color=yellow> nha m«n sai dÞch <color> dÉn t­ëng !"); 
end; 
end; 
end;
