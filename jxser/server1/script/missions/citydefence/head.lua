-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: head.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng # ho¹t ®éng ®Çu v¨n kiÖn tù ®Þnh nghÜa hµm sè 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\citydefence\\headinfo.lua")
Include("\\script\\tong\\tong_award_head.lua");-- script viet hoa By http://tranhba.com °ï»áÖÜÄ¿±ê¹±Ï×¶ÈbyÖ¾É½

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
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com "123,234" -> 123 , 234, ®em mét ch÷ phï chuçi viÕt thµnh täa ®é sè liÖu chuyÓn hãa thµnh hai con sè thay ®æi l­îng 
function bt_str2xydata(str) 
m = strfind(str,",") 
x = tonumber(strsub(str,0,m-1)) 
	y = tonumber(strsub(str,m+1))
return x,y 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  tõ täa ®é v¨n kiÖn trung ngÉu nhiªn ®¹t ®­îc mét täa ®é 
function bt_getadata(file) 
local totalcount = GetTabFileHeight(file) - 1; 
id = random(totalcount); 
	x = GetTabFileData(file, id + 1, 1);
	y = GetTabFileData(file, id + 1, 2);
return x,y 
end 

-- script viet hoa By http://tranhba.com  c¨n cø trapfile ®Ých v¨n kiÖn ®Ých täa ®é tËp häp biÓu , sinh ra tÊt c¶ trap ®iÓm , còng liªn hÖ scriptfile ch©n cña vèn 
function bt_addtrap(trapfile, scriptfile) 
local count = GetTabFileHeight(trapfile); 
scriptid = FileName2Id(scriptfile); 

ID = SubWorldIdx2ID(SubWorld); 

for i = 1, count - 1 do 
		x = GetTabFileData(trapfile, i + 1, 1);
		y = GetTabFileData(trapfile, i + 1, 2);
AddMapTrap(ID, x,y, scriptfile); 
end; 
end; 

-- script viet hoa By http://tranhba.com  c¨n cø npcfile ®Ých v¨n kiÖn ®Ých täa ®é tËp häp biÓu , sinh ra tÊt c¶ npc m« b¶n sè v× tnpcid ®Ých ®èi tho¹i npc , còng liªn hÖ scriptfile ch©n cña vèn 
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


function cd_buildfightnpc() 
local npcfile = GetMissionS( MS_S_CMNPCFILE ) 
local filehigh = GetTabFileHeight( npcfile ) - 1 
-- script viet hoa By http://tranhba.com print(filehigh.."==filehigh") 
if ( filehigh <= 0 or filehigh == nil ) then 
-- script viet hoa By http://tranhba.com  print("commonfile error ") 
return 
end 
local citycamp = GetMissionV( MS_CITYCAMP ) 
-- script viet hoa By http://tranhba.com print(citycamp.."==citycamp") 
local npccamp = 1 
local npcname = " tèng qu©n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = " kim qu©n " 
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
campname = " tèng qu©n " 
else 
campname = " kim qu©n " 
end 
local isWin = 0;-- script viet hoa By http://tranhba.com  ghi chÐp cã hay kh«ng th¾ng lîi ##by chÝ s¬n 
if ( GetMissionV(MS_CITYDEFENCE) == 1 ) then 
isWin = 1;-- script viet hoa By http://tranhba.com by chÝ s¬n 
-- script viet hoa By http://tranhba.com  th¾ng lîi 
cd_awardall() 
AddGlobalNews("Tr¶i qua chiÕn ®Êu kÞch liÖt , "..campname.." b¶o thµnh thµnh c«ng # tÊt c¶ tham gia nhµ ch¬i còng ph¶i ®Õn mét chai tiªn th¶o lé ") 
Msg2MSAll( MISSIONID,"Tr¶i qua chiÕn ®Êu kÞch liÖt , "..campname.." b¶o thµnh thµnh c«ng # tÊt c¶ tham gia nhµ ch¬i còng ph¶i ®Õn mét chai tiªn th¶o lé " ) 
cd_writelog(date("%m-%d,%H:%M;")..campname.." thñ thµnh thµnh c«ng , nh©n sè =="..GetMSPlayerCount(MISSIONID, 0)) 
else 
-- script viet hoa By http://tranhba.com  thÊt b¹i 
AddGlobalNews("Tr¶i qua chiÕn ®Êu kÞch liÖt , "..campname.." ë hy sinh rÊt lín d­íi t×nh huèng b¶o vÖ thµnh , nh­ng lµ thµnh ®· bÞ h­ h¹i rÊt nghiªm träng .") 
Msg2MSAll( MISSIONID,"Tr¶i qua chiÕn ®Êu kÞch liÖt , "..campname.." ë hy sinh rÊt lín d­íi t×nh huèng b¶o vÖ thµnh , nh­ng lµ thµnh ®· bÞ h­ h¹i rÊt nghiªm träng ." ) 
		cd_writelog(date("%m-%d,%H:%M;")..campname.."ÊØ³ÇÊ§°Ü£¬ÈËÊý=="..GetMSPlayerCount(MISSIONID, 0)..";npcÊýÁ¿»¹ÓÐ, "..tbSOLDIER_NAME[1]..":"..GetMissionV(MS_1RSTNPC_TCNT)..";"..tbSOLDIER_NAME[2]..":"..GetMissionV(MS_1RSTNPC_TCNT+1)..";"..tbSOLDIER_NAME[3]..":"..GetMissionV(MS_1RSTNPC_TCNT+2)..";"..tbSOLDIER_NAME[4]..":"..GetMissionV(MS_1RSTNPC_TCNT+3)..";"..tbSOLDIER_NAME[5]..":"..GetMissionV(MS_1RSTNPC_TCNT+4)..";")
end 
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
tongaward_citywar(isWin);-- script viet hoa By http://tranhba.com  bang héi chu môc tiªu by chÝ s¬n 
PlayerIndex = tbPlayer[i]; 
-- script viet hoa By http://tranhba.com citycamp = GetMissionV(MS_CITYCAMP); 
camp = GetCamp(); 
SetCurCamp(camp); 
SetTaskTemp(200,0); 
SetLogoutRV(0); 
SetDeathScript(""); 
SetFightState(0) -- script viet hoa By http://tranhba.com  ®¸nh giÆc xong sau ®æi thµnh kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu #by Dan_Deng# 
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
-- script viet hoa By http://tranhba.com  SetCurCamp(camp); 
SetTaskTemp(200,1); 
SetLogoutRV(1); 
SetPunish(0); 
SetFightState(0); 
SetPKFlag(0); 
ForbidChangePK(1); 
SetTempRevPos(mapid, posx * 32, posy * 32); 
SetDeathScript( FILE_PLAYERDEATH ); 
end 

function cd_awardall() -- script viet hoa By http://tranhba.com  thñ thµnh thµnh c«ng ph¸t t­ëng 
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
oldPlayerIndex = PlayerIndex 
for i= 1, getn(tbPlayer) do 
PlayerIndex = tbPlayer[i]; 
AddItem(6,1,71,1,0,0,0) 
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
