Include("\\script\\event\\valentine2007\\head.lua");

function main(nItemIdx) 
if (checkValentine2007Date(20070223) ~= 1) then 
Say("C�i n�y mai hoa h�ng t� c�t gi� th�� gian qu� d�i , �� kh� h�o . ", 0); 
return 0; 
end; 

if (checkValentine2007Limit() ~= 1) then 
Say("Ng��ng ng�ng , ch� c� ch� c�p ��t t�i <color=yellow>80 c�p <color> tr� l�n d�ng h� , m�i c� th� s� d�ng hoa h�ng t� . ", 0); 
return 1; 
end; 

local nteam = GetTeamSize(); 
if (nteam ~= 2) then 
Say("Hoa h�ng t� # ch� c� nam n� hai ng��i h�p th�nh ��i m�i c� th� b�i d�c ta . ", 0); 
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
Msg2Player("T�i lo�i hoa h�ng c�y , xin/m�i � b�y ��i th�nh th� # tay m�i th�n c�ng v�i t� ��i phong c�nh khu b�n trong . "); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com local nMaster = GetNpcParam(nNpcIdx, PRM_ROSETREE_PLAYID); 

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
Say("Hoa h�ng t� # ch� c� nam n� hai ng��i h�p th�nh ��i m�i c� th� b�i d�c ta . ", 0); 
return 1; 
end; 

sztreename = format("%s c�ng %s ��ch hoa h�ng c�y ", szname1, szname2); 
local _, nx, ny = GetWorldPos(); 
local nNpcIdx = AddNpc(TB_ROSETREE_NPCID[1], 1, SubWorld, (nx-1)*32, (ny-1)*32, 1, sztreename); 
if (nNpcIdx > 0) then 
local nNameId = FileName2Id(GetName()); 
SetNpcParam(nNpcIdx, PRM_ROSETREE_PLAYID, nNameId); 
SetNpcParam(nNpcIdx, PRM_ROSETREE_EVENT, SetByte(GetNpcParam(nNpcIdx, PRM_ROSETREE_EVENT), 3,1)); 
		SetNpcScript(nNpcIdx, "\\script\\event\\valentine2007\\rose_tree.lua");
SetNpcTimer(nNpcIdx, 18*30); 
else 
return 1; 
end; 
end;
