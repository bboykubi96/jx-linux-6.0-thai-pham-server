-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: head.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng # ho�t ��ng ��u v�n ki�n t� ��nh ngh�a h�m s� 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\newcitydefence\\headinfo.lua")
Include([[\script\tong\tong_award_head.lua]]);-- script viet hoa By http://tranhba.com  bang h�i chu m�c ti�u �� c�ng hi�n by ch� s�n 
-- script viet hoa By http://tranhba.com Include("\\script\\lib\\tireddegree.lua")
Include("\\script\\task\\task_addplayerexp.lua")

function cloudopen_defence() 
local weekdate = tonumber(date("%w")) 
if (weekdate ~= FIRE_OPENDAY_SATURDAY and weekdate ~= FIRE_OPENDAY_SUNDAY) then 
return nil 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GetIniFileData(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

function GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) 
end; 

function GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - �em gi�y truy�n ��i th�nh ph�n c�ng gi�y , t� nh� 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com "123,234" -> 123 , 234, �em m�t ch� ph� chu�i vi�t th�nh t�a �� s� li�u chuy�n h�a th�nh hai con s� thay ��i l��ng 
function bt_str2xydata(str) 
m = strfind(str,",") 
x = tonumber(strsub(str,0,m-1)) 
	y = tonumber(strsub(str,m+1))
return x,y 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  t� t�a �� v�n ki�n trung ng�u nhi�n ��t ���c m�t t�a �� 
function bt_getadata(file) 
local totalcount = GetTabFileHeight(file) - 1; 
id = random(totalcount); 
	x = GetTabFileData(file, id + 1, 1);
	y = GetTabFileData(file, id + 1, 2);
return x,y 
end 

-- script viet hoa By http://tranhba.com  c�n c� trapfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� trap �i�m , c�ng li�n h� scriptfile ch�n c�a v�n 
function bt_addtrap(trapfile, scriptfile) 
local count = GetTabFileHeight(trapfile); 
-- script viet hoa By http://tranhba.com  scriptid = FileName2Id(scriptfile); 
-- script viet hoa By http://tranhba.com print(scriptfile) 
ID = SubWorldIdx2ID(SubWorld); 

for i = 1, count - 1 do 
		x = GetTabFileData(trapfile, i + 1, 1);
		y = GetTabFileData(trapfile, i + 1, 2);
AddMapTrap(ID, x,y, scriptfile); 
end; 
end; 

-- script viet hoa By http://tranhba.com  c�n c� npcfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� npc m� b�n s� v� tnpcid ��ch ��i tho�i npc , c�ng li�n h� scriptfile ch�n c�a v�n 
function bt_adddiagnpc(npcfile, scriptfile, tnpcid, name) 
addcount = 0; 
local count = GetTabFileHeight(npcfile); 

for i = 1, count - 1 do 
		x = GetTabFileData(npcfile, i + 1, 1);
		y = GetTabFileData(npcfile, i + 1, 2);
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y, 1, name) 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y); 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
			addcount = addcount + 1
else 
print("error!can not add dialog npc !tnpcid:"..tnpcid.." ["..SubWorldIdx2ID(SubWorld)..","..x..","..y); 
end 
end; 
return addcount 
end; 
function bt_add_a_diagnpc(scriptfile, tnpcid, x, y, name) 
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y, 1 , name); 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y ) 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
else 
print("error!can not add dialog npc !tnpcid:"..tnpcid.." ["..SubWorldIdx2ID(SubWorld)..","..x..","..y); 
end 
return npcidx 
end 


function cd_addfightnpc(npcfile, ss, ee, npcid, level, npcname, boss, npccamp, npcscript, boss4) 
local posx = 0 
local posy = 0 
local npcindex = 0 
local s_npcid = npcid 
for i = ss, ee do 
		posx = GetTabFileData( npcfile, i + 1, 1 );
		posy = GetTabFileData( npcfile, i + 1, 2 );
if (boss4 ~= nil) then 
			s_npcid = npcid + random(0,1)
end 
npcindex = AddNpc( s_npcid, level, SubWorld, posx, posy, 1, npcname, boss ) 
if( npcindex > 0 ) then 
-- script viet hoa By http://tranhba.com SetNpcCurCamp( npcindex, npccamp ) 
SetNpcDeathScript( npcindex, npcscript ) 
end 
end 
end 


function cd_buildfightnpc_old() 
-- script viet hoa By http://tranhba.com  ��t ���c b�n �� t��ng ��i �ng ��ch thi�t ��nh v�n ki�n t�n 
local mapfile = GetMapInfoFile(mapid) 
local citysection = "MapInfo" 
local npcfile = GetMissionS( MS_S_CMNPCFILE ) 
local filehigh = GetTabFileHeight( npcfile ) - 1 
-- script viet hoa By http://tranhba.com print(filehigh.."==filehigh") 
if ( filehigh <= 0 or filehigh == nil ) then 
-- script viet hoa By http://tranhba.com  print("commonfile error ") 
return 
end 

-- script viet hoa By http://tranhba.com  tr�ng b�y h�o v� binh 
local weibingfile = GetIniFileData(mapfile, citysection, "weibing"); 

-- script viet hoa By http://tranhba.com  tr�ng b�y h�o th� th�nh t��ng qu�n 
local jiangjunxy; 
for i = 1, 3 do 
jiangjunxy = GetIniFileData(mapfile, citysection, "jiangjun"..i); 
x, y = bt_str2xydata(jiangjunxy); 

end; 

local citycamp = GetMissionV( MS_CITYCAMP ) 
-- script viet hoa By http://tranhba.com print(citycamp.."==citycamp") 
local npccamp = 1 
local npcname = "T�ng qu�n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = "Kim qu�n " 
end 
local npccount_1 = floor( filehigh * 0.82 ) -- script viet hoa By http://tranhba.com 1886 
local npccount_2 = floor( filehigh * 0.12 ) -- script viet hoa By http://tranhba.com 276 
local npccount_3 = floor( filehigh * 0.06 ) -- script viet hoa By http://tranhba.com 138 

cd_addfightnpc(npcfile, 1, npccount_1, tbTNPC_SOLDIER[npccamp][1], tbSOLDIER_LEVEL[1], npcname..tbSOLDIER_NAME[1], 0, npccamp, tbFILE_NPCDEATH[1]) 

cd_addfightnpc(npcfile, npccount_1 + 1, npccount_1 + npccount_2, tbTNPC_SOLDIER[npccamp][2], tbSOLDIER_LEVEL[2], npcname..tbSOLDIER_NAME[2], 2, npccamp, tbFILE_NPCDEATH[2])

cd_addfightnpc(npcfile, npccount_1 + npccount_2 + 1, npccount_1 + npccount_2 + npccount_3, tbTNPC_SOLDIER[npccamp][3], tbSOLDIER_LEVEL[3], npcname..tbSOLDIER_NAME[3], 1, npccamp, tbFILE_NPCDEATH[3])

end 

function GameOver() 
local oldPlayerIndex = PlayerIndex 
local citycamp = GetMissionV(MS_CITYCAMP) 
local campname = "" 
if ( citycamp == 1 ) then 
campname = " t�ng qu�n " 
else 
campname = " kim qu�n " 
end 
local isWin = 0;-- script viet hoa By http://tranhba.com  ghi ch�p c� hay kh�ng th�ng l�i ##by ch� s�n 
if ( GetMissionV(MS_CITYDEFENCE) == 1 ) then 
isWin = 1;-- script viet hoa By http://tranhba.com by ch� s�n 
-- script viet hoa By http://tranhba.com  th�ng l�i 
cd_awardall(campname) 
AddGlobalNews("Th�ng qua chi�n ��u k�ch li�t , "..campname.." th�nh c�ng b�o v� th�nh tr� ") 
Msg2MSAll( MISSIONID,"Th�ng qua chi�n ��u k�ch li�t , "..campname.." th�nh c�ng b�o v� th�nh tr� " ) 
cd_writelog(date("%m-%d,%H:%M;")..campname.." th� th�nh th�nh c�ng , nh�n s� =="..GetMSPlayerCount(MISSIONID, 0)) 
else 
-- script viet hoa By http://tranhba.com  th�t b�i 
AddGlobalNews("Tr�i qua chi�n ��u k�ch li�t , m�c d� �� c� g�ng kh�ng ��ch , nh�ng l� v�n th�t b�i ") 
Msg2MSAll( MISSIONID,"Tr�i qua chi�n ��u k�ch li�t , m�c d� �� c� g�ng kh�ng ��ch , nh�ng l� v�n th�t b�i " ) 
		cd_writelog(date("%m-%d,%H:%M;")..campname.."�س�ʧ��, ����=="..GetMSPlayerCount(MISSIONID, 0).."; ��ʣnpc����Ϊ, "..tbSOLDIER_NAME[1]..":"..GetMissionV(MS_MAXCOUNTNPC_1)..";"..tbSOLDIER_NAME[2]..":"..GetMissionV(MS_MAXCOUNTNPC_1+1)..";"..tbSOLDIER_NAME[3]..":"..GetMissionV(MS_MAXCOUNTNPC_1+2)..";"..tbSOLDIER_NAME[4]..":"..GetMissionV(MS_MAXCOUNTNPC_1+3)..";"..tbSOLDIER_NAME[5]..":"..GetMissionV(MS_MAXCOUNTNPC_1+4)..";")
end 
-- script viet hoa By http://tranhba.com cd_WinLadder(isWin) -- script viet hoa By http://tranhba.com  ��ng h�ng th� 
local tbPlayer = {}; 
local idx = 0; 
local pidx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if( pidx > 0 ) then 
			tbPlayer[ getn(tbPlayer) + 1 ] = pidx
end 
if (idx <= 0) then 
break 
end; 
end 

for i= 1, getn(tbPlayer) do 
PlayerIndex = tbPlayer[i]; 
-- script viet hoa By http://tranhba.com citycamp = GetMissionV(MS_CITYCAMP); 
tongaward_citywar(isWin);-- script viet hoa By http://tranhba.com  bang h�i chu m�c ti�u by ch� s�n 
camp = GetCamp(); 
SetCurCamp(camp); 
DisableTeamChangeCamp(0) 
SetTaskTemp(200,0); 
SetLogoutRV(0); 
SetDeathScript(""); 
SetFightState(0) -- script viet hoa By http://tranhba.com  ��nh gi�c xong sau ��i th�nh kh�ng ph�i l� tr�ng th�i chi�n ��u #by Dan_Deng# 
SetPunish(1) 
ForbidChangePK(0); 
SetPKFlag(0) 
SetRevPos(tbDEFENCE_SIGNMAP[citycamp], random(3)) 
NewWorld(bt_getsignpos(citycamp)) 
end; 
PlayerIndex = OldPlayerIndex 
end 

function cd_join(camp) 
LeaveTeam(); 
local mapid, posx, posy = cd_getjoinpos(camp); 
NewWorld( mapid, posx, posy ); 
AddMSPlayer(MISSIONID,camp); 
EnterChannel(PlayerIndex, GetMissionS(MS_S_CD_NAME)) 
SetRevPos(tbDEFENCE_SIGNMAP[camp], 1) 
SetCurCamp(camp); 
DisableTeamChangeCamp(1) 
SetTaskTemp(200,1); 
SetLogoutRV(1); 
SetPunish(0); 
SetFightState(0); 
SetPKFlag(0); 
ForbidChangePK(1); 
SetTempRevPos(mapid, posx * 32, posy * 32); 
SetDeathScript( FILE_PLAYERDEATH ); 
if (GetMissionV(MS_STATE) == 2) then 
Msg2Player("Ng��i �� gia nh�p <color=white>"..GetMissionS(MS_S_CD_NAME).."<color> ph��ng . th� th�nh t��ng l�nh v� "..GetMissionV(MS_SHOUCHENGWEIBING).." ng��i , t�ng c�ng vi�n binh v� "..GetMSPlayerCount(MISSIONID, 0).." ng��i .") 
else 
Msg2Player("Ng��i �� gia nh�p "..GetMissionS(MS_S_CD_NAME).." ph��ng .") 
end 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "fenghuoliancheng")
end 

function cd_awardall(szCampName) -- script viet hoa By http://tranhba.com  th� th�nh th�nh c�ng ph�t t��ng 
local tbPlayer = {}; 
local idx = 0; 
local pidx = 0; 

for i = 1 , 600 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if( pidx > 0 ) then 
			tbPlayer[ getn(tbPlayer) + 1 ] = pidx
end 
if (idx <= 0) then 
break 
end; 
end 

oldPlayerIndex = PlayerIndex; 
local szMsg = szCampName.." ��t ���c th�ng l�i sau c�ng , ��t ���c %d kinh nghi�m tr� gi� ." 
for i= 1, getn(tbPlayer) do 
PlayerIndex = tbPlayer[i]; 
local nsumExp = cd_calc_sumexp(); 
local nAwardExp = 0; 

if (nsumExp >= 1000000) then 
nAwardExp = 10000000; 
elseif (nsumExp >= 500000) then 
nAwardExp = floor(nsumExp / 100000) * 1000000; 
end; 

if (nAwardExp >= 0 and nAwardExp <= 10000000) then 
nAwardExp = nAwardExp * 2; -- script viet hoa By http://tranhba.com  2009-08-04 gi� l�a k�t th�c kinh nghi�m t��ng th��ng *2 
AddOwnExp(nAwardExp); 
Msg2Player(format(szMsg, nAwardExp)); 
end; 
-- script viet hoa By http://tranhba.com nExp = addTiredOwnExp(nExp*10000) 
end 
PlayerIndex = oldPlayerIndex 
end 

function bt_getsignpos(camp) 
if ( camp ~= 1 and camp ~= 2 ) then 
camp = 1; 
end; 
local a = random(getn(tbSIGNMAP_POS)) 

return tbDEFENCE_SIGNMAP[camp], tbSIGNMAP_POS[a][1], tbSIGNMAP_POS[a][2] 
end 

function cd_getjoinpos(camp) 
local mapid = tbDEFENCE_MAPID[camp] 
local a = random( getn(tbREVIVAL_POS) ) 
return mapid, tbREVIVAL_POS[a][1], tbREVIVAL_POS[a][2] 
end 


function OnCancel() 
end 

function cd_writelog(str) 
local szFileName = "Logs/citydefence_log_"..date("%m%d")..".log" 
local fu = openfile(szFileName, "a") 
write(fu, str.."\r\n") 
flush(fu) 
closefile(fu) 
end 

function cd_buildtrapsonroad() -- script viet hoa By http://tranhba.com  c�ng th�m t�t c� ��y t�i qu�i v�t h��ng �i th�nh ph� ��ch trap 
local i; 
local trapfile; 
local scriptfile; 
-- script viet hoa By http://tranhba.com  c�ng th�m �i�u th� nh�t tr�n ���ng ��ch t�t c� trap 
for i = 1, 15 do 
		trapfile = [[\settings\maps\newcitydefence\trapline]]..(999 + i)..".txt";
		scriptfile = [[\script\missions\newcitydefence\trap\trapline]]..(999 + i)..".lua";
bt_addtrap(trapfile, scriptfile); 
end; 

-- script viet hoa By http://tranhba.com  c�ng th�m �i�u th� hai tr�n ���ng ��ch t�t c� trap 
for i = 1, 13 do 
		trapfile = [[\settings\maps\newcitydefence\trapline]]..(1999 + i)..".txt";
		scriptfile = [[\script\missions\newcitydefence\trap\trapline]]..(1999 + i)..".lua";
bt_addtrap(trapfile, scriptfile); 
end; 

-- script viet hoa By http://tranhba.com  c�ng th�m �i�u th� ba tr�n ���ng ��ch t�t c� trap 
for i = 1, 14 do 
		trapfile = [[\settings\maps\newcitydefence\trapline]]..(2999 + i)..".txt";
		scriptfile = [[\script\missions\newcitydefence\trap\trapline]]..(2999 + i)..".lua";
bt_addtrap(trapfile, scriptfile); 
end; 
end; 

function cd_awardItem_cc() 
local itemid = 0 
local sum = 0 
		ran = ( random(1000) - 1 ) * 10000 + random(10000)
for j = 1, getn(TB_CD_AWARDITEM) do 
			sum = TB_CD_AWARDITEM[j][2] * CD_BASE_VALUE + sum
if (sum >= ran) then 
itemid = j 
break 
end 
end 
itemlist = TB_CD_AWARDITEM[ itemid ][ 3 ] 
if ( getn( itemlist ) == 1) then 
AddEventItem( itenlist[1] ) 
elseif ( getn( itemlist ) == 7 ) then 
AddItem( itemlist[1], itemlist[2], itemlist[3], itemlist[4], itemlist[5], itemlist[6], itemlist[7] ) 
elseif ( getn( itemlist ) == 2 ) then 
AddGoldItem( itemlist[1], itemlist[2] ) 
else 
print("itemparam error!!!! itemid = "..itemid) 
end 
Msg2Player("Ng�i ��t ���c <color=yellow>"..TB_CD_AWARDITEM[itemid][1]) 
end 

-- script viet hoa By http://tranhba.com  thanh tr� l�n tr��c gi� l�a l�c t�nh to�n ��ch m�t m�i k� kinh nghi�m 
function cd_clear_lastsumexp() 
if (GetTask(TSKID_FIRE_SUMEXP) ~= 0) then 
SetTask(TSKID_FIRE_SUMEXP, 0); 
end; 
end; 

-- script viet hoa By http://tranhba.com  ghi danh l�c ghi ch�p c�p b�c kinh nghi�m 
function cd_setsign_levelexp() 
SetTask(TSKID_FIRE_SIGNLVL, GetLevel()); 
SetTask(TSKID_FIRE_SIGNEXP, GetExp()); 
end; 

-- script viet hoa By http://tranhba.com  c�ch khai mission l�c t�nh to�n m�t m�i k� ��t ���c kinh nghi�m 
function cd_calc_sumexp() 
local nOldLevel = GetTask(TSKID_FIRE_SIGNLVL); 
local nOldExp = GetTask(TSKID_FIRE_SIGNEXP); 
local n_transcount = ST_GetTransLifeCount(); 
local nCurSum = tl_countuplevelexp(nOldLevel,nOldExp, n_transcount); 
local nLastSum = GetTask(TSKID_FIRE_SUMEXP); 

	SetTask(TSKID_FIRE_SUMEXP, nLastSum + nCurSum);
	return nLastSum + nCurSum;
end; 
