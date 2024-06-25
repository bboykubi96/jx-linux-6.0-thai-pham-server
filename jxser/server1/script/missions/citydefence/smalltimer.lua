-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: smalltimer.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng # tÝnh giê khÝ , mçi 20 gi©y xóc ph¸t 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\citydefence\\head.lua")
function OnTimer() 
	local t = GetMissionV( MS_SMALL_TIME ) + 1
SetMissionV( MS_SMALL_TIME, t ) 

local citycamp = GetMissionV( MS_CITYCAMP ) 
local cityname = GetMissionS(MS_S_CD_NAME) 

if ( t == RUNGAME_TIME ) then -- script viet hoa By http://tranhba.com  khai chiÕn ®· ®Õn giê , ®Ò kú thñ thµnh b¾t ®Çu , còng cµ nhãm ®Çu tiªn tr¸ch 
RunMission(MISSIONID) 
AddGlobalNews("VÖ quèc chiÕn tranh ®· më míi , "..tbDEFENCE_ANNOUNCE[citycamp]) 
Msg2MSAll( MISSIONID, "<color=yellow> ®Þch qu©n ®· më míi c«ng thµnh , v× b¶o vÖ chóng ta thµnh mäi ng­êi h­íng a !" ) 
cd_writelog(cityname.." b¾t ®Çu .\t nh©n sè \t"..GetMSPlayerCount(MISSIONID, 0)) 
cd_buildfightnpc() 
return 
end 

if ( t > RUNGAME_TIME ) then 
local RestTime = (TOTAL_TIME - t * SMALL_TIME) / FRAME2TIME 
local RestMin, RestSec = GetMinAndSec(RestTime); 

if ( mod( t, 9 ) == 0 ) then 
cd_sendmsg2msall() -- script viet hoa By http://tranhba.com  c¸ch mçi 10 phót , ®Ò kú tr­íc mÆt XX lo¹i h×nh tr¸ch , cßn cã bao nhiªu muèn giÕt 
end 
if ( mod(t, 15) == 0 ) then 
cd_callnpc() -- script viet hoa By http://tranhba.com  c¸ch mçi 10 phót , c¨n cø tr­íc 10 phót bÞ giÕt chÕt ®Ých b×nh th­êng tr¸ch sè l­îng , n÷a cµ míi mét lÇn 
end 
if ( mod(t, 60) == 0 and RestMin ~= 0) then 
cd_sendmsg2global() 
end 
if ( t < LASTREPORT_TIME ) then -- script viet hoa By http://tranhba.com  c¸ch mçi 5 phót ®Ò kú kÕt thóc thêi gian , cuèi cïng 5 phót mçi phót ®Ò kú mét lÇn 
if ( mod( t, 15 ) == 0 ) then 
Msg2MSAll( MISSIONID,"KÕt thóc thñ thµnh thêi gian <color=yellow>"..RestMin.." ph©n " ) 
end 
else 
if ( mod( t, 3 ) == 0 ) then 
Msg2MSAll( MISSIONID,"Ghi danh thêi gian cßn cã <color=yellow>"..RestMin.." ph©n " ) 
end 
end 
else 
if ( mod( t, 18 ) == 0 ) then -- script viet hoa By http://tranhba.com  ghi danh trong thêi gian , kh«ng cã 6 phót ®Ò kú ghi danh kÕt thóc thêi gian , còng ph¸t cæn ®éng tin tøc 
RestTime = (RUNGAME_TIME - t) * SMALL_TIME / FRAME2TIME; 
RestMin, RestSec = GetMinAndSec(RestTime); 
if ( RestMin > 0 ) then 
Msg2MSAll( MISSIONID,"Ghi danh thêi gian cßn cã <color=yellow>"..RestMin.." ph©n " ) 
AddGlobalNews("ChiÕn tranh b¾t ®Çu tiÕp nhËn ghi danh , muèn tham gia sao ?"..tbDEFENCE_ANNOUNCE[citycamp].." rêi ®i chiÕn cßn cã "..RestMin.." ph©n ") 
end 
end 
end 
end 

function cd_callnpc() 
local tempnpc_1 = GetMissionV( MS_1RSTNPC_CCNT ) 
local tempnpc_2 = GetMissionV( MS_2CNDNPC_CCNT ) 
local tempnpc_3 = GetMissionV( MS_3RDNPC_CCNT ) 
-- script viet hoa By http://tranhba.com  local tempnpc_4 = GetMissionV( MS_4THNPC_CCNT ) 
-- script viet hoa By http://tranhba.com  local tempnpc_5 = GetMissionV( MS_5THNPC_CCNT ) 

	local tempnpc_total = tempnpc_1 + tempnpc_2 + tempnpc_3;
if ( tempnpc_total <= 0 ) then 
return 
end 

local commonfile = GetMissionS( MS_S_CMNPCFILE ); 
local commonxypos = {}; 
local tbpos = {} 
local count = 0; 
local filehigh = GetTabFileHeight( commonfile ) - 1 

while ( count < tempnpc_total ) do -- script viet hoa By http://tranhba.com  ngÉu nhiªn lùa chän täa ®é biÓu ®Ých mét Ýt kh«ng t¸i diÔn ®Ých ®­îc , lµm npc ®Ých sèng l¹i ®iÓm 
rannum = random( filehigh ) 
flag, tbpos = cd_insertcell( tbpos, rannum ) 
if ( flag == 1 ) then 
			count = count + 1
end 
end 

cd_addcommonnpc( tempnpc_1, tempnpc_2, tempnpc_3, tbpos, commonfile ) 
cd_writelog(date("%m%d%H%M ")..format("call xiaoxiao = %d, call duizhang = %d, call xianfeng = %d",tempnpc_1, tempnpc_2, tempnpc_3)) 
SetMissionV( MS_1RSTNPC_CCNT, 0 ) -- script viet hoa By http://tranhba.com  cµ hoµn tr¸ch sau , lÇn n÷a ®Õm hÕt 
SetMissionV( MS_2CNDNPC_CCNT, 0 ) 
SetMissionV( MS_3RDNPC_CCNT, 0 ) 
end 

function cd_addcommonnpc( npccount_1, npccount_2, npccount_3, tbxypos, npcfile ) 
local count = 0 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
local npcname = " tèng qu©n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = " kim qu©n " 
end 

if ( npccount_1 > 0 ) then 
cd_addfightnpc(npcfile, 1, npccount_1, tbTNPC_SOLDIER[npccamp][1], tbSOLDIER_LEVEL[1], npcname..tbSOLDIER_NAME[1], 0, npccamp, tbFILE_NPCDEATH[1]) 
end 
if ( npccount_2 > 0 ) then 
		cd_addfightnpc(npcfile, (npccount_1 + 1), (npccount_1 + npccount_2), tbTNPC_SOLDIER[npccamp][2], tbSOLDIER_LEVEL[2], npcname..tbSOLDIER_NAME[2], 2, npccamp, tbFILE_NPCDEATH[2])
end 
if ( npccount_3 > 0 ) then 
		cd_addfightnpc(npcfile, (npccount_1 + npccount_2 + 1), (npccount_1 + npccount_2 + npccount_3), tbTNPC_SOLDIER[npccamp][3], tbSOLDIER_LEVEL[3], npcname..tbSOLDIER_NAME[3], 1, npccamp, tbFILE_NPCDEATH[3])
end 
end 


function cd_insertcell( tbnum, cell ) 
local flag = 0 

if( getn( tbnum ) == 0 ) then 
tbnum[ 1 ] = cell 
return 1, tbnum 
end 

for i = 1, getn( tbnum ) do 
if ( tbnum[i] == cell ) then 
flag = -1 
break 
end 
end 

if ( flag ~= -1 ) then 
		tbnum[ getn( tbnum ) + 1 ] = cell
return 1, tbnum 
end 
return 0, tbnum 
end 


function cd_sendmsg2msall() 
local restnpc_1 = GetMissionV( MS_1RSTNPC_TCNT ) 
local restnpc_2 = GetMissionV( MS_2CNDNPC_TCNT ) 
local restnpc_3 = GetMissionV( MS_3RDNPC_TCNT ) 
local restnpc_4 = GetMissionV( MS_4THNPC_TCNT ) 
local restnpc_5 = GetMissionV( MS_5THNPC_TCNT ) 

local szMsg = " thñ thµnh chiÕn b¸o :"; 
Msg2MSAll(MISSIONID,"Tham gia thñ thµnh ®Ých viÖn binh tr­íc bao gåm <color=yellow>"..GetMSPlayerCount(MISSIONID, 0).." ng­êi ") 
if ( restnpc_1 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." muèn gia t¨ng <color=yellow>"..tbSOLDIER_NAME[1].." "..restnpc_1.."<color> ng­êi " ) 
end 
if ( restnpc_2 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." muèn gia t¨ng <color=yellow>"..tbSOLDIER_NAME[2].." "..restnpc_2.."<color> ng­êi " ) 
end 
if ( restnpc_3 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." muèn gia t¨ng <color=yellow>"..tbSOLDIER_NAME[3].." "..restnpc_3.."<color> ng­êi " ) 
end 

if ( restnpc_1 == 0 and restnpc_2 == 0 and restnpc_3 == 0 ) then 
if ( restnpc_4 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." muèn gia t¨ng <color=yellow>"..tbSOLDIER_NAME[4].." "..restnpc_4.."<color> ng­êi " ) 
else 
Msg2MSAll( MISSIONID, szMsg.." muèn gia t¨ng <color=yellow>"..tbSOLDIER_NAME[5].." "..restnpc_5.."<color> ng­êi " ) 
end 
end 
cd_writelog(date("%m%d%H%M\t")..format("c# l t¹c %s %d\t%s %d\t%s %d\t%s %d\t%s %d",tbSOLDIER_NAME[1],restnpc_1,tbSOLDIER_NAME[2],restnpc_2,tbSOLDIER_NAME[3],restnpc_3,tbSOLDIER_NAME[4],restnpc_4,tbSOLDIER_NAME[5],restnpc_5)) 
end 

function cd_sendmsg2global() 
local szMsg = " vÖ quèc giã löa liªn thµnh "..GetMissionS(MS_S_CD_NAME).." chiÕn tranh ®ang kÞch liÖt ®Ých tiÕn hµnh ."..tbDEFENCE_ANNOUNCE[GetMissionV(MS_CITYCAMP)] 
AddGlobalNews(szMsg) 
end
