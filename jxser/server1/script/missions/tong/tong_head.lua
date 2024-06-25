if (1) then -- script viet hoa By http://tranhba.com  not __TONG_H__) then 
__TONG_H__ = 1; 
IL("TONG"); 
IncludeLib("FILESYS"); 
Include("\\script\\missions\\tong\\tong_springfestival\\file_npc_head.lua")
-- script viet hoa By http://tranhba.com  Include([[\script\tong\workshop\ws_huodong.lua]]); 


SFHD_DATAFILE = [[\settings\tong\workshop\huodong_level_data.txt]]; 
HUODONG_TASKID = {{1015, 1016}, {1017, 1018}, {1019, 1020}}; 
TONGGXD = {{800, 4}, {500, 6}, {300, 8}}; 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== 
TK_LEAVERMAPID = 2392; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i mapid 
TK_LEAVERPOSX = 2393; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
TK_LEAVERPOSY = 2394; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

TK_GROUPID = 2399; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
TK_EXP_BEISHU = 2400; -- script viet hoa By http://tranhba.com  
TK_EXP_TIME = 2401; 
-- script viet hoa By http://tranhba.com ================================ 

function FALSE(nParam) 
if (nParam == nil or nParam == "" or nParam == 0) then 
return 0; 
end; 
return 1; 
end 

function festival_tongjudge(nType, nTongID, nWorkshopID)-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng c� c� t� c�ch nType:1- chi�u m� �� t� 2- n�m th� 
local nLevel = TWS_GetLevel(nTongID, nWorkshopID) 
local nPCount = TONG_GetMemberCount(nTongID, -1); 
if (nLevel < 1 or nLevel > 10) then 
Say("��t gi�p c�n ch�a x�y d�ng n�n x��ng .", 1,"Ta bi�t !/OnCancel") 
return 0; 
end; 
	-- script viet hoa By http://tranhba.com local njoinrate = tonumber(gettabfiledata(SFHD_DATAFILE, nLevel + 2, TONGGXD[nType][2]));
local nMax = 20 -- script viet hoa By http://tranhba.com ceil(nPCount * njoinrate); 
local nTimes = TWS_GetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][1]); 
local nDay = tonumber(GetLocalDate("%d")); 
TDay = TWS_GetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][2]); 
if (nDay ~= TDay) then 
TWS_ApplySetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][2], nDay); 
TWS_ApplySetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][1], 0); 
end; 
if (nTimes >= nMax) then 
Say("H�m nay bang h�i kh�ng c� ho�t ��ng , ng�y kh�c tr� l�i �i .", 1,"Ta bi�t !/OnCancel") 
return 0; 
end; 

	TWS_ApplySetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][1], nTimes + 1);	

local nGXD = GetContribution(); 
if (nGXD < TONGGXD[nType][1]) then 
Say("Ho�t ��ng ph��ng t�ng qu�n : # ng��i �� c�ng hi�n kh�ng �� #"..TONGGXD[nType][1]..", kh�ng th� tham gia ho�t ��ng .", 1,"Ta bi�t !/OnCancel") 
TWS_ApplySetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][1], nTimes); -- script viet hoa By http://tranhba.com  kh�ng th�nh c�ng nh�n s� kh�ng th�m 
return 0; 
end; 

return 1; 
end; 

-- script viet hoa By http://tranhba.com  l�y ra tab v�n ki�n ��ch n�i dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

-- script viet hoa By http://tranhba.com  ba ho�t ��ng v�o tr�ng l�c ��ch ph�n t� 
function chaos(tabPlayerIdx, nMax) -- script viet hoa By http://tranhba.com  ��nh lo�n nh� ch�i ��ch th� t� , chia l�m 10 ng��i ��ch m�t ti�u ph�n ��i 
if ("table" ~= type(tabPlayerIdx)) then 
error("tabPlayerIdx is not a table value!"); 
end; 
chr_rand_tab(tabPlayerIdx) 
local nPCount = getn(tabPlayerIdx); 
local subTabCount = floor(nPCount / nMax); 
local tabSubTeam = {}; 
local i, j; 
local nIndex; 
local nBeginPlayer = random(1, nPCount); 

-- script viet hoa By http://tranhba.com  �em c� th� tr� �� 10 ng��i ��ch v�o tr�ng 
for i = 1, subTabCount do 
tabSubTeam[i] = {} 
for j = 1, nMax do 
			local nIndex = subTabCount * (j - 1) + i + nBeginPlayer - 1;
			nIndex = mod(nIndex - 1, nPCount) + 1
tabSubTeam[i][j] = tabPlayerIdx[nIndex]; 
end; 
end; 
-- script viet hoa By http://tranhba.com  ch�a �� 10 ng��i ��ch th� v�o m�t ng��i kh�c ti�u t� trong 
	tabSubTeam[subTabCount + 1] = {};
j = 1; 
	local nBegin = nMax * subTabCount + 1;
for i = nBegin, nPCount do 
		nIndex = i  + nBeginPlayer - 1; 
		nIndex = mod(nIndex - 1, nPCount) + 1;
		tabSubTeam[subTabCount + 1][j] = tabPlayerIdx[nIndex];
		j = j + 1;
end; 
return tabSubTeam; 
end; 

function cancelgame(nMapID, nMissionID) 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(nMapID); 
local pidx; 
local idx = 0; 
local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local i; 
for i = 1, 400 do 
idx, pidx = GetNextPlayer(nMissionID, idx, 0); 
if (pidx > 0) then 
tinsert(tabPlayer, pidx); 
end; 

if (0 == idx) then 
break; 
end; 
end; 
local nLoop = getn(tabPlayer); 
for i = 1, nLoop do 
PlayerIndex = tabPlayer[i]; 
Say("B�i v� tham gia ghi danh nh�n s� c�a �t h�n so v�i <color=yellow>5<color> ng��i , l�n n�y ho�t ��ng b� h�y b� ", 1,"Ta bi�t !/OnCancel") 
Msg2Player("B�i v� tham gia ghi danh nh�n s� c�a �t h�n so v�i <color=yellow>5<color> ng��i , l�n n�y ho�t ��ng b� h�y b� "); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com tabParam = { chu�n b� tr�ng ID, { c�n �� c�ng hi�n , t�a �� v�n ki�n }, { thi�t tr� l� s� kh�ng ��ch nhi�m v� thay ��i l��ng ...}, {group tr� gi� , b�t ��u b�n �� map, MissionID, ho�t ��ng ch� � map}} 
-- script viet hoa By http://tranhba.com tabParam = {nPrepareMapID, {nContri, szFile}, {}, 
-- script viet hoa By http://tranhba.com  {nGroupId, nBeginMap, nMissionID, nMissionMap}} 
function gogamemap(tabPlayerIdx, tabParam) -- script viet hoa By http://tranhba.com  
if ("table" ~= type(tabPlayerIdx)) then 
return 
end; 
local OldSubWorld = SubWorld; 
local nPCount = getn(tabPlayerIdx); 
local OldPlayer = PlayerIndex; 
local nContri, i, PosX, PosY; 
SubWorld = SubWorldID2Idx(tabParam[1]); 
for i = 1, nPCount do 
PlayerIndex = tabPlayerIdx[i]; 
if (PlayerIndex > 0) then 
-- script viet hoa By http://tranhba.com  � ch� n�y kh�u tr� bang h�i �� c�ng hi�n 
nContri = GetContribution(); 
if (nContri < tabParam[2][1]) then 
Say("# �� c�ng hi�n kh�ng �� #"..tabParam[2][1]..", kh�ng th� tham gia ho�t ��ng .", 1,"Ta bi�t !/OnCancel"); 
DelMSPlayer(tabParam[4][3], PlayerIndex, 0); 
Msg2Player("# �� c�ng hi�n kh�ng �� #"..tabParam[2][1]..", kh�ng th� tham gia ho�t ��ng ."); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
else 
Msg2Player("Tham gia gi�p b�n trong ��ch ho�t ��ng ph��ng , ti�u hao <color=red> bang h�i �� c�ng hi�n <color><color=yellow> "..tabParam[2][1].."<color>.") 
AddContribution(-1 * tabParam[2][1]);-- script viet hoa By http://tranhba.com  v�o tr�ng l�c kh�u tr� �� c�ng hi�n 

for j = 1, getn(tabParam[3]) do 
SetTask(tabParam[3][j], 0); 
end; 
SetTask(TK_GROUPID, tabParam[4][1]); -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch groupid 

				PosX, PosY = getadatabetween(tabParam[2][2], 8 + 8 * tabParam[4][2], 15 + 8 * tabParam[4][2]);
NewWorld(tabParam[4][4], floor(PosX / 32), floor(PosY / 32)); 
SubWorld = SubWorldID2Idx(tabParam[4][4]); 
AddMSPlayer(tabParam[4][3], tabParam[4][1]); 
end; 
end; 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 

function chr_rand_tab(tab) 
local tab_size = getn(tab); 
for i = 1, tab_size do 
m1 = random(1,tab_size); 
m2 = random(1,tab_size); 
m = tab[m1]; 
tab[m1] = tab[m2]; 
tab[m2] = m; 
end; 
end; 

function OnCancel() 
end; 


end; -- script viet hoa By http://tranhba.com //end of __TONG_H__
