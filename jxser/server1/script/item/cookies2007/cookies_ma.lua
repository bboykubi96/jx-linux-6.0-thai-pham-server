Include("\\script\\event\\cookies2007\\head.lua");

function main(nItemIdx) 
if (checkcookies2007Date(20070424) ~= 1) then 
Say("N�n nguy�n li�u �� qua k� , kh�ng th� d�ng �� l�m b�nh li�u .", 0); 
return 0; 
end; 

local nteam = GetTeamSize(); 
if (nteam ~= 2) then 
Say(" l�m b�nh nguy�n li�u t�i # ch� c� th� nam n� h�p th�nh ��i m�i c� th� c�ng nhau l�m b�nh .", 0); 
return 1; 
end; 

local nw1, nx1, ny1 = GetWorldPos(); 
local nb = 0; 
for i = 1, getn(TB_XINNIANLIHUA_AREA) do 
if (nw1 == TB_XINNIANLIHUA_AREA[i]) then 
nb = 1; 
break 
end; 
end; 
if (nb == 0) then 
Msg2Player("Ch� c� th� � 7 ��i th�nh th� #8 c� tay m�i th�n c�ng 4 c� phong c�nh khu trong ph�m vi l�m b�nh ."); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com local nMaster = GetNpcParam(nNpcIdx, PRM_PAN_PLAYID); 

local oldPlayer = PlayerIndex; 
local bM = 0; 
local bS = 0; 
local sztreename = ""; 
local szname1 = ""; 
local szname2 = ""; 
for i= 1, nteam do 
local npidx = GetTeamMember(i); 
PlayerIndex = npidx; 

if (i == 1) then 
bS = GetSex(); 
szname1 = GetName(); 
elseif (bS ~= GetSex()) then 
bS = 2; -- script viet hoa By http://tranhba.com  hai nh�n t�nh ch� b�t ��ng 
szname2 = GetName(); 
end; 

end; 
PlayerIndex = oldPlayer; 
if (bS ~= 2) then 
Say("Ch� c� nam n� h�p th�nh ��i m�i c� th� s� d�ng n�n nguy�n li�u l�m b�nh .", 0); 
return 1; 
end; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
local oldPlayer = PlayerIndex; 
for i= 1, nteam do 
local npidx = GetTeamMember(i); 
PlayerIndex = npidx; 
if GetTask(TSK_33_COOKIES_DATE) == nil or GetTask(TSK_33_COOKIES_DATE) == 0 then 
SetTask(TSK_33_COOKIES_DATE,nDate); 
SetTask(TSK_33_COOKIES_COUNT,0); 
end 

if (tonumber(GetTask(TSK_33_COOKIES_DATE)) == nDate and tonumber(GetTask(TSK_33_COOKIES_COUNT)) >= 8) then 
PlayerIndex = oldPlayer; 
Say("Ng�i �� r�t m�t m�i , ng�y mai m�i c� th� ti�p t�c l�m b�nh . m�i ng�y nhi�u nh�t ch� c� th� l�m 8 l�n .",0); 
return 1; 
end 

if tonumber(GetTask(TSK_33_COOKIES_DATE)) ~= nDate and tonumber(GetTask(TSK_33_COOKIES_COUNT)) >= 8 then 
SetTask(TSK_33_COOKIES_COUNT,0); 
end 

if (checkcookies2007Limit() ~= 1) then 
PlayerIndex = oldPlayer; 
Say("Th�t l� ng��ng ng�ng , ch� c� nh� ch�i <color=yellow>50 c�p tr� l�n th� �� sung tr� gi� <color> m�i c� th� s� d�ng nguy�n li�u t�i l�m b�nh , trong �� m�t v� hi�p kh�ch kh�ng c� ��t t�i n�n �i�u ki�n .", 0); 
return 1; 
end; 
end 
PlayerIndex = oldPlayer; 
local oldPlayer = PlayerIndex; 
for i= 1, nteam do 
local npidx = GetTeamMember(i); 
PlayerIndex = npidx; 
local ncount = tonumber(GetTask(TSK_33_COOKIES_COUNT)); 
		ncount = ncount + 1;
SetTask(TSK_33_COOKIES_COUNT,ncount); 
if ncount >=8 then 
SetTask(TSK_33_COOKIES_DATE,nDate); 
end 
end 
PlayerIndex = oldPlayer; 

sztreename = format(" l� l�a - %s v?%s", szname1, szname2); 
local _, nx, ny = GetWorldPos(); 
local nNpcIdx = AddNpc(TB_PAN_NPCID[1], 1, SubWorld, (nx-1)*32, (ny-1)*32, 1, sztreename); 
if (nNpcIdx > 0) then 
local nNameId = FileName2Id(GetName()); 
SetNpcParam(nNpcIdx, PRM_PAN_PLAYID, nNameId); 
SetNpcParam(nNpcIdx, PRM_PAN_EVENT, SetByte(GetNpcParam(nNpcIdx,PRM_PAN_EVENT), 3,1)); 
		SetNpcScript(nNpcIdx, "\\script\\event\\cookies2007\\pan.lua");
SetNpcTimer(nNpcIdx, 18*30); 
else 
return 1; 
end; 
end;
