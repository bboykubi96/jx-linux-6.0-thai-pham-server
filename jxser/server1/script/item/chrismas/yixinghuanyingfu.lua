Include([[\script\item\chrismas\chrismasitem.lua]]); 
tabidx = 0; 
function main() 
tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
local i; 
local nGroupId = GetTask(TAB_ACTION[tabidx][3]); 
if (TAB_ACTION[tabidx][5][1] == 1) then 
nGroupId = getgroupid(nGroupId, TAB_ACTION[tabidx][5][2]); 
end; 
local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 

local szName; 
local idx = 0; 
local pidx; 
local j = 1; 
	for i = 1, TAB_ACTION[tabidx][4] + 5 do
idx, pidx = GetNextPlayer(TAB_ACTION[tabidx][2], idx, nGroupId); 
if (pidx > 0 and pidx ~= OldPlayer) then -- script viet hoa By http://tranhba.com  l�a ch�n tr� nh� ch�i b�n ngo�i ��ch t�t c� ��i th� # 
PlayerIndex = pidx; 
szName = GetName(); 
tabPlayer[j] = make_option("useyixing"); 
			j = j + 1;
end; 

if (0 == idx) then 
break; 
end; 
end; 

PlayerIndex = OldPlayer; 
		tabPlayer[ getn(tabPlayer) + 1 ] = "ȡ��/giveback_yu"
Say("Ng��i s� ��i c�i n�o ��i th� s� d�ng ��o c� <color=0xB5FDD7> d�i h�nh ��i �nh ph� <color> ? ", getn(tabPlayer), tabPlayer); 
end; 

function useyixing(szName) 
local pidx = check_pl(szName, TAB_ACTION[tabidx][2]); 
if (not pidx) then 
giveback_yu() 
return 
end 

local OldName = GetName() 
local OldPlayer = PlayerIndex; 
PlayerIndex = pidx; 
local w, x, y = GetWorldPos(); 
PlayerIndex = OldPlayer; 
local w1, x1, y1 = GetWorldPos(); 
SetPos(x, y); 
Msg2Player("<#> ng��i ��i v�i <color=0xB5FDD7>"..szName.."<color> s� d�ng m�t t� <color=0xB5FDD7> d�i h�nh ��i �nh ph� <color> , c�ng v� tr� h�n trao ��i . "); 

PlayerIndex = pidx 
SetPos(x1, y1); 
Msg2Player("<#><color=0xB5FDD7>"..OldName.."<color> ��i v�i ng��i s� d�ng m�t t� <color=0xB5FDD7> d�i h�nh ��i �nh ph� <color> , c�ng ng��i v� tr� trao ��i . "); 
PlayerIndex = OldPlayer; 
end; 


function giveback_yu() 
AddItem(6,1,986,1,1,1) 
end 
