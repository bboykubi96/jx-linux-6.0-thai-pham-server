-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: smalltimer.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-08-28 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng # t�nh gi� kh� , m�i 20 gi�y x�c ph�t 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\citydefence\\head.lua")
function OnTimer() 
	local t = GetMissionV( MS_SMALL_TIME ) + 1
SetMissionV( MS_SMALL_TIME, t ) 

local citycamp = GetMissionV( MS_CITYCAMP ) 
local cityname = GetMissionS(MS_S_CD_NAME) 

if ( t == RUNGAME_TIME ) then -- script viet hoa By http://tranhba.com  khai chi�n �� ��n gi� , �� k� th� th�nh b�t ��u , c�ng c� nh�m ��u ti�n tr�ch 
RunMission(MISSIONID) 
AddGlobalNews("V� qu�c chi�n tranh �� m� m�i , "..tbDEFENCE_ANNOUNCE[citycamp]) 
Msg2MSAll( MISSIONID, "<color=yellow> ��ch qu�n �� m� m�i c�ng th�nh , v� b�o v� ch�ng ta th�nh m�i ng��i h��ng a !" ) 
cd_writelog(cityname.." b�t ��u .\t nh�n s� \t"..GetMSPlayerCount(MISSIONID, 0)) 
cd_buildfightnpc() 
return 
end 

if ( t > RUNGAME_TIME ) then 
local RestTime = (TOTAL_TIME - t * SMALL_TIME) / FRAME2TIME 
local RestMin, RestSec = GetMinAndSec(RestTime); 

if ( mod( t, 9 ) == 0 ) then 
cd_sendmsg2msall() -- script viet hoa By http://tranhba.com  c�ch m�i 10 ph�t , �� k� tr��c m�t XX lo�i h�nh tr�ch , c�n c� bao nhi�u mu�n gi�t 
end 
if ( mod(t, 15) == 0 ) then 
cd_callnpc() -- script viet hoa By http://tranhba.com  c�ch m�i 10 ph�t , c�n c� tr��c 10 ph�t b� gi�t ch�t ��ch b�nh th��ng tr�ch s� l��ng , n�a c� m�i m�t l�n 
end 
if ( mod(t, 60) == 0 and RestMin ~= 0) then 
cd_sendmsg2global() 
end 
if ( t < LASTREPORT_TIME ) then -- script viet hoa By http://tranhba.com  c�ch m�i 5 ph�t �� k� k�t th�c th�i gian , cu�i c�ng 5 ph�t m�i ph�t �� k� m�t l�n 
if ( mod( t, 15 ) == 0 ) then 
Msg2MSAll( MISSIONID,"K�t th�c th� th�nh th�i gian <color=yellow>"..RestMin.." ph�n " ) 
end 
else 
if ( mod( t, 3 ) == 0 ) then 
Msg2MSAll( MISSIONID,"Ghi danh th�i gian c�n c� <color=yellow>"..RestMin.." ph�n " ) 
end 
end 
else 
if ( mod( t, 18 ) == 0 ) then -- script viet hoa By http://tranhba.com  ghi danh trong th�i gian , kh�ng c� 6 ph�t �� k� ghi danh k�t th�c th�i gian , c�ng ph�t c�n ��ng tin t�c 
RestTime = (RUNGAME_TIME - t) * SMALL_TIME / FRAME2TIME; 
RestMin, RestSec = GetMinAndSec(RestTime); 
if ( RestMin > 0 ) then 
Msg2MSAll( MISSIONID,"Ghi danh th�i gian c�n c� <color=yellow>"..RestMin.." ph�n " ) 
AddGlobalNews("Chi�n tranh b�t ��u ti�p nh�n ghi danh , mu�n tham gia sao ?"..tbDEFENCE_ANNOUNCE[citycamp].." r�i �i chi�n c�n c� "..RestMin.." ph�n ") 
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

while ( count < tempnpc_total ) do -- script viet hoa By http://tranhba.com  ng�u nhi�n l�a ch�n t�a �� bi�u ��ch m�t �t kh�ng t�i di�n ��ch ���c , l�m npc ��ch s�ng l�i �i�m 
rannum = random( filehigh ) 
flag, tbpos = cd_insertcell( tbpos, rannum ) 
if ( flag == 1 ) then 
			count = count + 1
end 
end 

cd_addcommonnpc( tempnpc_1, tempnpc_2, tempnpc_3, tbpos, commonfile ) 
cd_writelog(date("%m%d%H%M ")..format("call xiaoxiao = %d, call duizhang = %d, call xianfeng = %d",tempnpc_1, tempnpc_2, tempnpc_3)) 
SetMissionV( MS_1RSTNPC_CCNT, 0 ) -- script viet hoa By http://tranhba.com  c� ho�n tr�ch sau , l�n n�a ��m h�t 
SetMissionV( MS_2CNDNPC_CCNT, 0 ) 
SetMissionV( MS_3RDNPC_CCNT, 0 ) 
end 

function cd_addcommonnpc( npccount_1, npccount_2, npccount_3, tbxypos, npcfile ) 
local count = 0 
local citycamp = GetMissionV( MS_CITYCAMP ) 
local npccamp = 1 
local npcname = " t�ng qu�n " 
if ( citycamp == 1 ) then 
npccamp = 2 
npcname = " kim qu�n " 
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

local szMsg = " th� th�nh chi�n b�o :"; 
Msg2MSAll(MISSIONID,"Tham gia th� th�nh ��ch vi�n binh tr��c bao g�m <color=yellow>"..GetMSPlayerCount(MISSIONID, 0).." ng��i ") 
if ( restnpc_1 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." mu�n gia t�ng <color=yellow>"..tbSOLDIER_NAME[1].." "..restnpc_1.."<color> ng��i " ) 
end 
if ( restnpc_2 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." mu�n gia t�ng <color=yellow>"..tbSOLDIER_NAME[2].." "..restnpc_2.."<color> ng��i " ) 
end 
if ( restnpc_3 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." mu�n gia t�ng <color=yellow>"..tbSOLDIER_NAME[3].." "..restnpc_3.."<color> ng��i " ) 
end 

if ( restnpc_1 == 0 and restnpc_2 == 0 and restnpc_3 == 0 ) then 
if ( restnpc_4 ~= 0 ) then 
Msg2MSAll( MISSIONID, szMsg.." mu�n gia t�ng <color=yellow>"..tbSOLDIER_NAME[4].." "..restnpc_4.."<color> ng��i " ) 
else 
Msg2MSAll( MISSIONID, szMsg.." mu�n gia t�ng <color=yellow>"..tbSOLDIER_NAME[5].." "..restnpc_5.."<color> ng��i " ) 
end 
end 
cd_writelog(date("%m%d%H%M\t")..format("c# l t�c %s %d\t%s %d\t%s %d\t%s %d\t%s %d",tbSOLDIER_NAME[1],restnpc_1,tbSOLDIER_NAME[2],restnpc_2,tbSOLDIER_NAME[3],restnpc_3,tbSOLDIER_NAME[4],restnpc_4,tbSOLDIER_NAME[5],restnpc_5)) 
end 

function cd_sendmsg2global() 
local szMsg = " v� qu�c gi� l�a li�n th�nh "..GetMissionS(MS_S_CD_NAME).." chi�n tranh �ang k�ch li�t ��ch ti�n h�nh ."..tbDEFENCE_ANNOUNCE[GetMissionV(MS_CITYCAMP)] 
AddGlobalNews(szMsg) 
end
