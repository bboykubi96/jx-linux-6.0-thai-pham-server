-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: smalltimer.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng # tÝnh giê khÝ , mçi 20 gi©y xóc ph¸t 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\newcitydefence\\head.lua")
tbAddNpcCount = {750, 100, 50, 10} 
tbNpcAddRadio = {90/120, 20/120, 10/120} 
TOTALNPCCOUNT = 180-- script viet hoa By http://tranhba.com 900 
tbGuaiWu = { 
	"\\settings\\maps\\newcitydefence\\guai001.txt",
	"\\settings\\maps\\newcitydefence\\guai002.txt",
	"\\settings\\maps\\newcitydefence\\guai003.txt",
} 

tbAimPos = { 
	"\\settings\\maps\\newcitydefence\\trappos1000.txt",
	"\\settings\\maps\\newcitydefence\\trappos2000.txt",
	"\\settings\\maps\\newcitydefence\\trappos3000.txt",
} 
ZHUSHUAI_POSFILE = "\\settings\\maps\\newcitydefence\\zhushuai.txt"
WEIBING_POSFILE = "\\settings\\maps\\newcitydefence\\weibing0001.txt"
JIANGJUN_POSFILE = "\\settings\\maps\\newcitydefence\\jiangjun.txt"
tbPos_BAOTAI = { 
{1828,2663},{1832,2669},{1835,2674},{1842,2679},{2180,2711},{2183,2716},{2186,2721},{2192,2726},{2208,3010},{2214,3017},{2218,3021},{2219,3014} 
} 
function OnTimer() 
	local t = GetMissionV( MS_SMALL_TIME ) + 1
SetMissionV( MS_SMALL_TIME, t ) 

local citycamp = GetMissionV( MS_CITYCAMP ) 
local cityname = GetMissionS(MS_S_CD_NAME) 

if ( t == RUNGAME_TIME ) then -- script viet hoa By http://tranhba.com  khai chiÕn ®· ®Õn giê , ®Ò kú thñ thµnh b¾t ®Çu , còng cµ nhãm ®Çu tiªn tr¸ch 
RunMission(MISSIONID) 
AddGlobalNews("VÖ quèc chiÕn tranh ®· më míi , "..tbDEFENCE_ANNOUNCE[citycamp]) 
Msg2MSAll( MISSIONID, "<color=yellow> ®Þch qu©n ®· më míi c«ng thµnh , v× b¶o vÖ chóng ta thµnh tr× , c¸c vÞ t­íng sÜ h­íng a !" ) 
cd_writelog(cityname.." b¶o vÖ \t thµnh tr× \t"..GetMSPlayerCount(MISSIONID, 0)) 
cd_buildfightnpc( t ) 
cd_callAttackCarNpc() 
-- script viet hoa By http://tranhba.com cd_callnpc(t) 
return 
end 

if ( t > RUNGAME_TIME ) then 
local RestTime = (TOTAL_TIME - t * SMALL_TIME) / FRAME2TIME 
local RestMin, RestSec = GetMinAndSec(RestTime); 

if ( mod( t, 9 ) == 0 ) then 
cd_sendmsg2msall() -- script viet hoa By http://tranhba.com  c¸ch mçi 3 phót , ®Ò kú tr­íc mÆt XX lo¹i h×nh tr¸ch , cßn cã bao nhiªu muèn giÕt 
end 
if ( mod(t, 60) == 0 and RestMin ~= 0) then 
cd_sendmsg2global() 
end 
if ( t < LASTREPORT_TIME ) then -- script viet hoa By http://tranhba.com  c¸ch mçi 5 phót ®Ò kú kÕt thóc thêi gian , cuèi cïng 5 phót mçi phót ®Ò kú mét lÇn 
if ( mod( t, 15 ) == 0 ) then 
Msg2MSAll( MISSIONID,"Thñ thµnh kÕt thóc thêi gian <color=yellow>"..RestMin.." ph©n " ) 
end 
else 
if ( mod( t, 3 ) == 0 ) then 
Msg2MSAll( MISSIONID,"Thñ thµnh kÕt thóc thêi gian <color=yellow>"..RestMin.." ph©n " ) 
end 
end 
if (t >= CALLBOSS_ZHUSHUAI) then 
if ( t == CALLBOSS_ZHUSHUAI) then 
call_boss_zhushuai() 
end 
else 
if ( mod(t, 3) == 0 ) then 
cd_callnpc(t) -- script viet hoa By http://tranhba.com  mçi 1 phót 
end 
end 
if ( mod( t, 15 )) == 0 then -- script viet hoa By http://tranhba.com  c¸ch mçi 5 phót cµ ba con c«ng thµnh xe 
cd_callAttackCarNpc() 
end 
else 
if ( mod( t, 18 ) == 0 ) then -- script viet hoa By http://tranhba.com  ghi danh trong thêi gian , mçi 6 phót ®Ò kú ghi danh kÕt thóc thêi gian , còng ph¸t cæn ®éng tin tøc 
RestTime = (RUNGAME_TIME - t) * SMALL_TIME / FRAME2TIME; 
RestMin, RestSec = GetMinAndSec(RestTime); 
if ( RestMin > 0 ) then 
Msg2MSAll( MISSIONID,"Ghi danh cßn thõa l¹i thêi gian lµ <color=yellow>"..RestMin.." ph©n " ) 
AddGlobalNews("ChiÕn tranh ®· më míi ghi danh , muèn tham gia sao ?"..tbDEFENCE_ANNOUNCE[citycamp].." khai chiÕn thêi gian cßn cã "..RestMin.." ph©n ") 
end 
end 
end 
end 

function cd_callAttackCarNpc() 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
if (citycamp == 1) then 
npccamp = 2 
end 
count_1 = cd_addsomenpc(tbTNPC_SOLDIER[npccamp][6], 3, tbGuaiWu, tbAimPos, tbSOLDIER_NAME[6], 1, nil, tbFILE_NPCDEATH[6]) 
if count_1 < 3 then 
print(count_1,"Háa ph¸o xe Ýt h¬n so víi 3.") 
end 
Msg2MSAll( MISSIONID, format("<color=yellow>%s ®èi ph­¬ng ®ang h­íng n¬i nµy tiÕn c«ng , mäi ng­êi cè g¾ng ph¶n kh¸ng a #!!!<color>", tbSOLDIER_NAME[6])) 
end 


function cd_buildfightnpc(t) 
cd_callnpc(t) 
local count = 0 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
if (citycamp == 1) then 
npccamp = 2 
end 
local fileheight = GetTabFileHeight( WEIBING_POSFILE ) - 1 
for i = 1, fileheight do 
		posx = GetTabFileData( WEIBING_POSFILE, i + 1, 1 )
		posy = GetTabFileData( WEIBING_POSFILE, i + 1, 2 )
local npcindex = AddNpc(tbTNPC_SOLDIER[ GetMissionV(MS_CITYCAMP) ][1], 95, SubWorld, posx, posy, 1,"C«ng thµnh t­íng qu©n ", 0) 
if (npcindex > 0) then 
SetNpcDeathScript(npcindex, FILE_SHOUCHENG_DEATH[1]) 
			count = count + 1
SetNpcCurCamp( npcindex, citycamp ) 
end 
end 
	SetMissionV(MS_SHOUCHENGWEIBING, GetMissionV(MS_SHOUCHENGWEIBING) + count)

count = 0 
local fileheight = GetTabFileHeight( JIANGJUN_POSFILE ) - 1 
for i = 1, fileheight do 
		posx = GetTabFileData(JIANGJUN_POSFILE, i + 1, 1)
		posy = GetTabFileData(JIANGJUN_POSFILE, i + 1, 2)
local npcindex = AddNpc(tbTNPC_SOLDIER[ GetMissionV(MS_CITYCAMP) ][2], 95, SubWorld, posx, posy, 1,"Thñ thµnh t­íng qu©n ", 1) 
if (npcindex > 0) then 
SetNpcDeathScript(npcindex, FILE_SHOUCHENG_DEATH[2]) 
			count = count + 1
SetNpcCurCamp(npcindex, citycamp) 
end 
end 
	SetMissionV(MS_SHOUCHENGWEIBING, GetMissionV(MS_SHOUCHENGWEIBING) + count)
SetMissionV( MS_SHOUCHENGJIANGJUN, count) 

for i = 1, getn(tbPos_BAOTAI) do 
if (mod(i, 2) == 0) then 
npcid = 1119 
else 
npcid = 1120 
end 
posx = tbPos_BAOTAI[i][1] * 32 
posy = tbPos_BAOTAI[i][2] * 32 
npcindex = AddNpc(npcid, 95, SubWorld, posx, posy, 1,"ThÇn binh ", 1) 
if (npcindex > 0) then 
SetNpcCurCamp(npcindex, npccamp) 
end 
end 
end 

function cd_callnpc(time) 
local restnpc_1 = GetMissionV( MS_RESTCOUNTNPC_1 ) 
	local restnpc_2 = GetMissionV( MS_RESTCOUNTNPC_1 + 1 )
	local restnpc_3 = GetMissionV( MS_RESTCOUNTNPC_1 + 2 )
	local restnpc_4 = GetMissionV( MS_RESTCOUNTNPC_1 + 3 )
-- script viet hoa By http://tranhba.com  local restnpc_5 = GetMissionV( MS_5THNPC_TCNT ) 

AddNpcC_1 = floor(TOTALNPCCOUNT * tbNpcAddRadio[1])-- script viet hoa By http://tranhba.com tbAddNpcCount[1] 
AddNpcC_2 = floor(TOTALNPCCOUNT * tbNpcAddRadio[2])-- script viet hoa By http://tranhba.com tbAddNpcCount[2] 
AddNpcC_3 = floor(TOTALNPCCOUNT * tbNpcAddRadio[3])-- script viet hoa By http://tranhba.com tbAddNpcCount[3] 

if ( GetMissionV(MS_CITYCAMP) == 1 ) then 
npccamp = 2 
else 
npccamp = 1 
end 
if ( mod( time, 30 ) == 0 ) then 
		restnpc_total = restnpc_1 + restnpc_2 + restnpc_3 + restnpc_4
AddNpcC_4 = 12 
else 
		restnpc_total = restnpc_1 + restnpc_2 + restnpc_3
AddNpcC_4 = 0 
end 
if ( restnpc_total >= MAX_NPC_COUNT ) then 
return 
end 

	if ( restnpc_total + TOTALNPCCOUNT > MAX_NPC_COUNT ) then
npc_total = MAX_NPC_COUNT - restnpc_total 
AddNpcC_1 = floor( npc_total * tbNpcAddRadio[1] ) 
AddNpcC_2 = floor( npc_total * tbNpcAddRadio[2] ) 
AddNpcC_3 = floor( npc_total * tbNpcAddRadio[3] ) 
end 
if (time == RUNGAME_TIME) then 
AddNpcC_4 = 24 
end 
count_1 = cd_addsomenpc(tbTNPC_SOLDIER[npccamp][1], AddNpcC_1, tbGuaiWu, tbAimPos, tbSOLDIER_NAME[1], 0, nil, tbFILE_NPCDEATH[1]) 
		SetMissionV( MS_RESTCOUNTNPC_1, GetMissionV( MS_RESTCOUNTNPC_1 ) + count_1 )

count_2 = cd_addsomenpc(tbTNPC_SOLDIER[npccamp][2], AddNpcC_2, tbGuaiWu, tbAimPos, tbSOLDIER_NAME[2], 2, nil, tbFILE_NPCDEATH[2]) 
		SetMissionV( MS_RESTCOUNTNPC_1 + 1, GetMissionV( MS_RESTCOUNTNPC_1 + 1 ) + count_2 )

count_3 = cd_addsomenpc(tbTNPC_SOLDIER[npccamp][3], AddNpcC_3, tbGuaiWu, tbAimPos, tbSOLDIER_NAME[3], 1, nil, tbFILE_NPCDEATH[3]) 
		SetMissionV( MS_RESTCOUNTNPC_1 + 2, GetMissionV( MS_RESTCOUNTNPC_1 + 2 ) + count_3 )

count_4 = cd_addsomenpc(tbTNPC_SOLDIER[npccamp][4], AddNpcC_4, tbGuaiWu, tbAimPos, tbSOLDIER_NAME[4], 1, 1, tbFILE_NPCDEATH[4]) 
		SetMissionV( MS_RESTCOUNTNPC_1 + 3, GetMissionV( MS_RESTCOUNTNPC_1 + 3 ) + count_4 )

cd_writelog(date("%m%d%H%M ")..format("call xiaoxiao = %d, call duizhang = %d, call xianfeng = %d, call zhujiang = %d",count_1, count_2, count_3, count_4)) 
end 

function cd_addsomenpc(npcid, num, tbnpcfile, tbaimfile, npctitle, boss, zhujiang, npcdeathfile) 
if ( num <= 0 ) then 
return 0 
end 
local file_num = getn( tbnpcfile ) 
local commonxypos = {} 
local tbpos = {} 
local count = 0 
local tolcount = 0 
local posnum = 0 

for i = 1, file_num do 
count = 0 
if (i == 2) then 
tolnpc = num - floor( num * 2 / file_num ) 
else 
tolnpc = floor( num * 1 / file_num ) 
end 
		tolcount = cd_addcommonnpc(tolnpc, tbnpcfile[i], tbaimfile[i], npcid, 95, npctitle, boss, zhujiang, npcdeathfile) + tolcount
end 
return tolcount 
end 

function cd_addcommonnpc(tolnpc, bornfile, aimfile, npcid, npclevel, npctitle, boss, zhujiang, npcdeathfile) 
local count_1 = 0 
local count_2 = 0 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
local npcname = " tèng qu©n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = " kim qu©n " 
end 

local tbborn_pos = {} 
local tbaim_pos = {} 
local bornfilehigh = GetTabFileHeight( bornfile ) - 1 
local aimfilehigh = GetTabFileHeight( aimfile ) - 1 

local posx = 0 
local posy = 0 
local npcindex = 0 
local s_npcid = npcid 
for j = 1, tolnpc do 
rannum_1 = random( bornfilehigh ) 
posx, posy = bt_getadata(bornfile) 

aimx, aimy = bt_getadata(aimfile) 

if (zhujiang ~= nil) then 
			s_npcid = npcid + random(0,1)
end 
-- script viet hoa By http://tranhba.com if (npctitle == " t¹c ®¹n xe ") then 
-- script viet hoa By http://tranhba.com print(npctitle, posx, posy) 
-- script viet hoa By http://tranhba.com end 
npcindex = AddNpc( s_npcid, npclevel, SubWorld, posx, posy, 1, npcname..npctitle, boss ) 
if( npcindex > 0 ) then 
SetNpcCurCamp( npcindex, npccamp ) 
			count_2 = count_2 + 1
SetNpcDeathScript( npcindex, npcdeathfile ) 
SetNpcAI(npcindex,9,20,-1,-1,-1,-1,-1,0,aimx, aimy); 
end 
end 
return count_2 
end 

function cd_sendmsg2msall() 
local restnpc_1 = GetMissionV( MS_MAXCOUNTNPC_1 ) 
	local restnpc_2 = GetMissionV( MS_MAXCOUNTNPC_1 + 1 )
	local restnpc_3 = GetMissionV( MS_MAXCOUNTNPC_1 + 2 )
	local restnpc_4 = GetMissionV( MS_MAXCOUNTNPC_1 + 3 )
	local restnpc_5 = GetMissionV( MS_MAXCOUNTNPC_1 + 4 )

local szMsg = ""; 
Msg2MSAll(MISSIONID, format("Tr­íc m¾t thñ thµnh t¨ng viÖn nh©n sè cña v× <color=yellow>%d ng­êi , thñ thµnh t­íng sÜ v× <color=yellow>%d ng#i; thñ thµnh trÞ gi¸ %d ®iÓm .",GetMSPlayerCount(MISSIONID, 0),GetMissionV(MS_SHOUCHENGWEIBING),GetMissionV(MS_HOMEDEFENCE))) 
if (GetMissionV(MS_SMALL_TIME) < CALLBOSS_ZHUSHUAI) then 
if ( restnpc_1 ~= 0 ) then 
szMsg = szMsg..tbSOLDIER_NAME[1].." <color=yellow>"..restnpc_1.."<color>ng#i " 
end 
if ( restnpc_2 ~= 0 ) then 
szMsg = szMsg..tbSOLDIER_NAME[2].." <color=yellow>"..restnpc_2.."<color>ng#i " 
end 
if ( restnpc_3 ~= 0 ) then 
szMsg = szMsg..tbSOLDIER_NAME[3].." <color=yellow>"..restnpc_3.."<color>ng#i " 
end 
if ( restnpc_4 ~= 0 ) then 
szMsg = szMsg..tbSOLDIER_NAME[4].." <color=yellow>"..restnpc_4.."<color>ng#i " 
end 
end 
if ( restnpc_5 ~= 0) then 
szMsg = szMsg..tbSOLDIER_NAME[5].." <color=yellow>"..restnpc_5.."<color>ng#i " 
end 
if (szMsg == "") then 
else 
Msg2MSAll(MISSIONID,"Thñ thµnh chiÕn th«ng b¸o # tr­íc m¾t ®èi ph­¬ng binh lùc v× "..szMsg) 
end 
cd_writelog(date("%m%d%H%M\t")..format("Cßn thõa l¹i %s %d\t%s %d\t%s %d\t%s %d\t%s %d\t thñ thµnh vÖ binh %d",tbSOLDIER_NAME[1],restnpc_1,tbSOLDIER_NAME[2],restnpc_2,tbSOLDIER_NAME[3],restnpc_3,tbSOLDIER_NAME[4],restnpc_4,tbSOLDIER_NAME[5],restnpc_5, GetMissionV(MS_SHOUCHENGWEIBING))) 
end 

function cd_sendmsg2global() 
local szMsg = " vÖ quèc giã löa liªn thµnh "..GetMissionS(MS_S_CD_NAME).." chiÕn tranh ®ang ®øng ë kÞch chiÕn giai ®o¹n ."..tbDEFENCE_ANNOUNCE[GetMissionV(MS_CITYCAMP)] 
AddGlobalNews(szMsg) 
end 

function call_boss_zhushuai() 
local npcfile = ZHUSHUAI_POSFILE-- script viet hoa By http://tranhba.com GetMissionS( MS_S_SRNPCFILE ); 
local filehigh = GetTabFileHeight( npcfile ) - 1 
if ( filehigh <= 0 or filehigh == nil ) then 
print("zhushuai file error ") 
return 
end 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
local npcname = " tèng qu©n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = " kim qu©n " 
end 
cd_addgoldennpc(npcfile, tbTNPC_SOLDIER[npccamp][5], tbSOLDIER_LEVEL[5], npcname..tbSOLDIER_NAME[5], 1, npccamp, tbFILE_NPCDEATH[5]) 
cd_writelog(date("%m%d%H%M ")..format("Call yuanshuai = %d", filehigh)) 

SetMissionV( MS_BOSS5_DOWN, 1 ) 
Msg2MSAll( MISSIONID, "<color=pink> thñ thµnh chiÕn b¸o :"..npcname..tbSOLDIER_NAME[5].." m×nh ra trËn , c¸c vÞ binh lÝnh ph¶i cÈn thËn phßng thñ !" ) 
end 

function cd_addgoldennpc(npcfile, npcid, npclevel, npcname, boss, npccamp, deathscript) 
local posx = 0; 
local posy = 0; 
local npcindex = 0; 
local tbNpcpos = {}; 
local aimx = 0 
local aimy = 0 
local filehigh = GetTabFileHeight(npcfile); 
for i = 1, filehigh - 1 do 
tbNpcpos[i] = i; 
end 
for i = 1, filehigh - 1 do 
rannum = random(filehigh - 1); 
temp = tbNpcpos[i]; 
tbNpcpos[i] = tbNpcpos[rannum]; 
tbNpcpos[rannum] = temp; 
end 
for i = 1, filehigh - 1 do 

if (tbNpcpos[i] >= 1 and tbNpcpos[i] <= 3) then 
aimfile = tbAimPos[1] 
elseif (tbNpcpos[i] >= 4 and tbNpcpos[i] <= 7) then 
aimfile = tbAimPos[2] 
else 
aimfile = tbAimPos[3] 
end 
		posx = GetTabFileData( npcfile, tbNpcpos[i] + 1, 1 );
		posy = GetTabFileData( npcfile, tbNpcpos[i] + 1, 2 );
aimx, aimy = bt_getadata(aimfile) 
series = floor((i - 1) / 2); 
		npcindex = AddNpcEx( (npcid + i - 1), npclevel, series, SubWorld, posx, posy, 1, npcname, boss );
if( npcindex > 0 ) then 
SetNpcCurCamp( npcindex, npccamp ) 
SetNpcDeathScript( npcindex, deathscript ) 
SetNpcAI(npcindex,9,20,-1,-1,-1,-1,-1,0,aimx, aimy); 
end 
end 
end
