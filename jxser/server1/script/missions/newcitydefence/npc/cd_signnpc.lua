-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: cd_signnpc.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005- 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng # ghi danh �i�m ghi danh quan 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\newcitydefence\\head.lua")
CD_SIGNNPCNAME = " th� th�nh t��ng qu�n " 
function main() 
local signmap = SubWorldIdx2ID( SubWorld ) 
if ( signmap == tbDEFENCE_SIGNMAP[1] ) then 
camp = 1 
cityname = " t�ng ph��ng " 
defencemap = tbDEFENCE_MAPID[1] 
defencesidx = SubWorldID2Idx( defencemap ) 
elseif ( signmap == tbDEFENCE_SIGNMAP[2] ) then 
camp = 2 
cityname = " kim ph��ng " 
defencemap = tbDEFENCE_MAPID[2] 
defencesidx = SubWorldID2Idx( defencemap ) 
else 
print("citydefence signmap error!!! mapid = "..signmap) 
return 
end 
local guanyuanname = cityname.." th� th�nh t��ng qu�n " 

local level = GetLevel() 
if ( level < CD_LEVEL_LIMIT ) then 
Talk(1, "", CD_SIGNNPCNAME..": ti�u qu� t� ��u t�i ��y ? kh�ng mu�n s�ng a ? c�p b�c c�n ch�a �� #!"..CD_LEVEL_LIMIT.." c�p , ch�y ��n ti�n tuy�n , ng��i cho r�ng ��y l� n�i n�o ? kh�ng c�n lo�n �i , n�u kh�ng , ch�t th� n�o c�ng kh�ng bi�t !") 
Msg2Plalyer(" l�n nh�t c�p b�c "..CD_LEVEL_LIMIT.." c�p m�i c� th� tham gia v� qu�c chi�n tranh .") 
return 
end 
local oldSubWorld = SubWorld 

if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": ph�a tr��c chi�n tr��ng ph�t sinh v�n �� , t�m th�i kh�ng th� v�o .", 0) 
print("citydefence defencemap error!!!! defencemap = "..defencemap) 
return 
end 

SubWorld = defencesidx; 
local state = GetMissionV(MS_STATE) 
if ( state ~= 1 and state ~= 2 ) then 
Say(CD_SIGNNPCNAME..": kh�ng c� chuy�n g� b�m b�o , kh�ng n�n t�i qu�y r�y ta !", 0) 
Msg2Player("V� qu�c gi� l�a li�n th�nh "..cityname.." th� th�nh ho�t ��ng c�n ch�a b�t ��u .") 
SubWorld = oldSubWorld 
return 
end 

local randkey = GetMissionV( MS_RANDKEY ); 
local memcount = GetMSPlayerCount(MISSIONID, 0) 
local nday = tonumber(date("%m%d")); 
local time = GetMissionV(MS_SMALL_TIME) 
SubWorld = oldSubWorld 

if (time >= CALLBOSS_ZHUSHUAI) then 
Say(CD_SIGNNPCNAME..": ta vi�n qu�n �� b� ��ch qu�n ��nh x�c , kh�ng th� t�i ��y !", 2, "# �i�m t� t�p /OnCancel", " lu�n c�ng ban th��ng /cd_awardforpayout") 
return 
end 

if ( memcount >= MAX_MEMBERCOUNT ) then 
Talk(2, "", CD_SIGNNPCNAME..": ng��i l� ai ", CD_SIGNNPCNAME..": a , ng��i ngh� gi�p ta kh�ng ��ch ? ng��i th�t l� y�u n��c . qu�n ta binh l�c �� tr�n , ng��i m�nh kh�e t�m m�t m�nh , nh�ng l� , m�i/xin ng��i c�n l� tr� v� �i th�i . ") 
Msg2Player("Tham gia v� qu�c chi�n tranh nh�n s� c�a �� �� <color=yellow>"..MAX_MEMBERCOUNT.."<color> ng��i , kh�ng th� v�o chi�n tr��ng li�u .") 
return 
end 

-- script viet hoa By http://tranhba.com  if ( GetTask( TASKID_FIRE_DAY ) == nday and GetTask( TASKID_FIRE_KEY ) ~= randkey ) then -- script viet hoa By http://tranhba.com  kh�ng cho ph�p ghi danh 
-- script viet hoa By http://tranhba.com  Say(CD_SIGNNPCNAME.."# v� qu�c chi�n tranh chi gi� l�a li�n th�nh ho�t ��ng m�t ng�y ch� c� th� tham gia m�t cu�c , ng��i c�n l� th�t t�t d��ng tinh s�c du� , l�n sau tr� l�i �i . ", 0) 
-- script viet hoa By http://tranhba.com  elseif ( nday ~= GetTask( TASKID_FIRE_DAY ) ) then -- script viet hoa By http://tranhba.com  cho ph�p ghi danh 
if ( GetTask( TASKID_FIRE_KEY ) ~= randkey or GetTask( TASKID_FIRE_DAY ) ~= nday) then -- script viet hoa By http://tranhba.com  cho ph�p ghi danh 
Say(CD_SIGNNPCNAME..": L� nhi , ti�u t� ng��i nhanh �i g�i tin/th� khi�n cho t�i ��y , ��ch qu�n l�i ��nh t�i li�u . ng��i l� ai ? b�y gi� l� l�c n�o ? c� ng��i �ang ti�n c�ng ta th�nh tr� , ng��i c�n k�o d�i qu�n c� , �em b� gi�t ��u , bi�t kh�ng ?", 3,"T��ng qu�n , ta t�i gi�p th� th�nh !/#want2joincd1("..defencemap..")", " lu�n c�ng ban th��ng /cd_awardforpayout","Mang ( ng��i kh�ng n�i c�i g� , ch�ng qua l� c��i m�t ti�ng li�n �i ) /laughtoleave") 
cd_clear_lastsumexp(); -- script viet hoa By http://tranhba.com  thanh tr� l�n tr��c t�nh to�n ��ch m�t m�i k� kinh nghi�m tr� gi� 
else 
Say(CD_SIGNNPCNAME..": ng�ch , ng��i kh�ng ph�i l� ti�n v�o chi�n tr��ng li�u sao ? ch�ng l� l� ta hoa m�t ? <enter> t�t l�m , ng��i chu�n b� v�o �i th�i #", 3,"Ta mu�n gia nh�p /#sure2joincd("..defencemap..")", " lu�n c�ng ban th��ng /cd_awardforpayout","Ta ch�ng qua l� �i ngang qua /OnCancel") 
end 
end 

function sure2joincd(defencemap) 
local oldSubWorld = SubWorld; 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencesidx = SubWorldID2Idx( defencemap ) 
if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": ph�a tr��c chi�n tr��ng x�y ra v�n �� , t�m th�i kh�ng th� �i v�o .", 0) 
print("citydefence defencemap error!!!! defencemap = "..defencemap) 
return 
end 
SubWorld = defencesidx 
local state = GetMissionV( MS_STATE ) 
local time = GetMissionV(MS_SMALL_TIME) 
local memcount = GetMSPlayerCount(MISSIONID, 0) 
if ( state ~= 1 and state ~= 2 ) then 
SubWorld = oldSubWorld 
return 
end 
if (time >= CALLBOSS_ZHUSHUAI) then 
SubWorld = oldSubWorld 
return 
end 
if (memcount >= MAX_MEMBERCOUNT) then 
SubWorld = oldSubWorld 
return 
end 
local randkey = GetMissionV( MS_RANDKEY ) 
local nday = tonumber(date("%m%d")) 
if ( GetTask( TASKID_FIRE_KEY ) ~= randkey or GetTask( TASKID_FIRE_DAY ) ~= nday) then 
if (Pay(FIRE_JOINUP_FEE) == 1) then 
SetTask( TASKID_FIRE_DAY, nday) 
SetTask( TASKID_FIRE_KEY, randkey) 
else 
Say(CD_SIGNNPCNAME..": th� n�o , ng��i kh�ng c� mang "..floor(FIRE_JOINUP_FEE / 10000).." v�n l��ng , ta kh�ng th� cho ng��i �i v�o . chu�n b� xong ti�n t�i t�m ta n�a !", 0); 
return -1; 
end; 
end; 
cd_setsign_levelexp(); 
JoinMission(MISSIONID, GetMissionV( MS_CITYCAMP )) 
SubWorld = oldSubWorld 
end 

function want2joincd1(defencemap) 
Say(CD_SIGNNPCNAME..": a , ng��i ngh� gi�p ta kh�ng ��ch ? ai nha , m�y c�i n�y kh�ng gi�ng m�t lo�i binh l�nh , b�n h� v� ngh� cao c��ng , c�i ng�a r�t l�i h�i , c�n bi�t �� �m kh� . ", 1,"T��ng qu�n , ng��i kh�ng c� chuy�n g� sao ? /#want2joincd2("..defencemap..")") 
end 

function want2joincd2(defencemap) 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencesidx = SubWorldID2Idx( defencemap ) 
oldSubWorld = SubWorld 
SubWorld = defencesidx 
local cd_membercount = GetMSPlayerCount(MISSIONID, 0) 
SetTask(TSKID_PLAYER_ZHANGONG,0) -- script viet hoa By http://tranhba.com  thanh kh�ng chi�n c�ng tr� gi� 
SubWorld = oldSubWorld 
Say(CD_SIGNNPCNAME..": ���c r�i , kh�ng c�n nhi�u l�i , nh�ng l� , ta c�m gi�c lai l�ch c�a b�n h� r�t kh� nghi , �ang chi�n ��u l�c , n�u nh� ng��i nh�t ���c th� , li�n mang ��n cho ta nh�n , ta �em tr�ng th��ng ng��i . tham gia th� th�nh nh�n s� c�a v� <color=yellow>"..cd_membercount.."<color> ng��i . ��u ti�n mu�n ��ng 10 v�n ti�n ghi danh , chu�n b� xong ch�a ?", 2,"��i v�i !/#sure2joincd("..defencemap..")","�� cho ta tr��c chu�n b� m�t ch�t !/OnCancel") 
end 

function laughtoleave() 
Talk(1, "", CD_SIGNNPCNAME.." ta kh�ng s� b�n h� , mu�n cho b�n h� bi�t ng��i Trung nguy�n s� ��ch l�i h�i ") 
end 

function cd_awardforpayout() 
if (camp == 1) then 
Talk(1, "", format("%s: nghe , m�i ng��i mu�n to�n l�c �ng ph� ��a chi�n ��u .", CD_SIGNNPCNAME)) 
else 
Talk(1, "", format("%s: nam r�t qu�n c�n ch�a nh�c ch� , ch�ng ta quy�t t�m c��p l�y chi�n l�i ph�m , b�n l�nh mu�n n�m ��u l�u s�i nhi�t huy�t m�i ���c . c�c v� d�ng s� quy�t chi�n �i . ", CD_SIGNNPCNAME)) 
end; 
end; 

function OnCancel() 
end
