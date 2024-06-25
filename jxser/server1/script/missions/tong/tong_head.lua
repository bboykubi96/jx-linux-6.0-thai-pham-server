if (1) then -- script viet hoa By http://tranhba.com  not __TONG_H__) then 
__TONG_H__ = 1; 
IL("TONG"); 
IncludeLib("FILESYS"); 
Include("\\script\\missions\\tong\\tong_springfestival\\file_npc_head.lua")
-- script viet hoa By http://tranhba.com  Include([[\script\tong\workshop\ws_huodong.lua]]); 


SFHD_DATAFILE = [[\settings\tong\workshop\huodong_level_data.txt]]; 
HUODONG_TASKID = {{1015, 1016}, {1017, 1018}, {1019, 1020}}; 
TONGGXD = {{800, 4}, {500, 6}, {300, 8}}; 

-- script viet hoa By http://tranhba.com ========= nhiÖm vô thay ®æi l­îng =============== 
TK_LEAVERMAPID = 2392; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i mapid 
TK_LEAVERPOSX = 2393; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i x täa ®é ®iÓm 
TK_LEAVERPOSY = 2394; -- script viet hoa By http://tranhba.com  tån tr÷ rêi ®i trß ch¬i y täa ®é ®iÓm 

TK_GROUPID = 2399; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých Group sè 
TK_EXP_BEISHU = 2400; -- script viet hoa By http://tranhba.com  
TK_EXP_TIME = 2401; 
-- script viet hoa By http://tranhba.com ================================ 

function FALSE(nParam) 
if (nParam == nil or nParam == "" or nParam == 0) then 
return 0; 
end; 
return 1; 
end 

function festival_tongjudge(nType, nTongID, nWorkshopID)-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng cô cã t­ c¸ch nType:1- chiªu mé ®Ö tö 2- n¨m thó 
local nLevel = TWS_GetLevel(nTongID, nWorkshopID) 
local nPCount = TONG_GetMemberCount(nTongID, -1); 
if (nLevel < 1 or nLevel > 10) then 
Say("§¾t gióp cßn ch­a x©y dùng nªn x­ëng .", 1,"Ta biÕt !/OnCancel") 
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
Say("H«m nay bang héi kh«ng cã ho¹t ®éng , ngµy kh¸c trë l¹i ®i .", 1,"Ta biÕt !/OnCancel") 
return 0; 
end; 

	TWS_ApplySetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][1], nTimes + 1);	

local nGXD = GetContribution(); 
if (nGXD < TONGGXD[nType][1]) then 
Say("Ho¹t ®éng ph­êng tæng qu¶n : # ng­¬i ®é cèng hiÕn kh«ng ®ñ #"..TONGGXD[nType][1]..", kh«ng thÓ tham gia ho¹t ®éng .", 1,"Ta biÕt !/OnCancel") 
TWS_ApplySetTaskValue(nTongID, nWorkshopID, HUODONG_TASKID[nType][1], nTimes); -- script viet hoa By http://tranhba.com  kh«ng thµnh c«ng nh©n sè kh«ng thªm 
return 0; 
end; 

return 1; 
end; 

-- script viet hoa By http://tranhba.com  lÊy ra tab v¨n kiÖn ®Ých néi dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

-- script viet hoa By http://tranhba.com  ba ho¹t ®éng vµo trµng lóc ®Ých ph©n tæ 
function chaos(tabPlayerIdx, nMax) -- script viet hoa By http://tranhba.com  ®¸nh lo¹n nhµ ch¬i ®Ých thø tù , chia lµm 10 ng­êi ®Ých mét tiÓu ph©n ®éi 
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

-- script viet hoa By http://tranhba.com  ®em cã thÓ trï ®ñ 10 ng­êi ®Ých vµo trµng 
for i = 1, subTabCount do 
tabSubTeam[i] = {} 
for j = 1, nMax do 
			local nIndex = subTabCount * (j - 1) + i + nBeginPlayer - 1;
			nIndex = mod(nIndex - 1, nPCount) + 1
tabSubTeam[i][j] = tabPlayerIdx[nIndex]; 
end; 
end; 
-- script viet hoa By http://tranhba.com  ch­a ®ñ 10 ng­êi ®Ých th¶ vµo mét ng­êi kh¸c tiÓu tæ trong 
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
Say("Bëi v× tham gia ghi danh nh©n sè cña Ýt h¬n so víi <color=yellow>5<color> ng­êi , lÇn nµy ho¹t ®éng bÞ hñy bá ", 1,"Ta biÕt !/OnCancel") 
Msg2Player("Bëi v× tham gia ghi danh nh©n sè cña Ýt h¬n so víi <color=yellow>5<color> ng­êi , lÇn nµy ho¹t ®éng bÞ hñy bá "); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldWorld; 
end; 

-- script viet hoa By http://tranhba.com tabParam = { chuÈn bÞ trµng ID, { cÇn ®é cèng hiÕn , täa ®é v¨n kiÖn }, { thiÕt trÝ lµ sè kh«ng ®Ých nhiÖm vô thay ®æi l­îng ...}, {group trÞ gi¸ , b¾t ®Çu b¶n ®å map, MissionID, ho¹t ®éng chç ë map}} 
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
-- script viet hoa By http://tranhba.com  ë chç nµy khÊu trõ bang héi ®é cèng hiÕn 
nContri = GetContribution(); 
if (nContri < tabParam[2][1]) then 
Say("# ®é cèng hiÕn kh«ng ®ñ #"..tabParam[2][1]..", kh«ng thÓ tham gia ho¹t ®éng .", 1,"Ta biÕt !/OnCancel"); 
DelMSPlayer(tabParam[4][3], PlayerIndex, 0); 
Msg2Player("# ®é cèng hiÕn kh«ng ®ñ #"..tabParam[2][1]..", kh«ng thÓ tham gia ho¹t ®éng ."); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
else 
Msg2Player("Tham gia gióp bªn trong ®Ých ho¹t ®éng ph­êng , tiªu hao <color=red> bang héi ®é cèng hiÕn <color><color=yellow> "..tabParam[2][1].."<color>.") 
AddContribution(-1 * tabParam[2][1]);-- script viet hoa By http://tranhba.com  vµo trµng lóc khÊu trõ ®é cèng hiÕn 

for j = 1, getn(tabParam[3]) do 
SetTask(tabParam[3][j], 0); 
end; 
SetTask(TK_GROUPID, tabParam[4][1]); -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých groupid 

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
