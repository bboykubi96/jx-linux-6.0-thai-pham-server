-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: cd_signnpc.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005- 
-- script viet hoa By http://tranhba.com Comment: cu�i tu�n ho�t ��ng # v� qu�c chi�n tranh chi gi� l�a li�n th�nh 
-- script viet hoa By http://tranhba.com  ch�c n�ng # ghi danh �i�m ghi danh quan 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\citydefence\\headinfo.lua")
CD_SIGNNPCNAME = " th� th�nh t��ng qu�n " 
function main() 
local signmap = SubWorldIdx2ID( SubWorld ) 
if ( signmap == tbDEFENCE_SIGNMAP[1] ) then 
camp = 1 
cityname = " t�ng ph��ng " 
elseif ( signmap == tbDEFENCE_SIGNMAP[2] ) then 
camp = 2 
cityname = " kim ph��ng " 
else 
print("citydefence signmap error!!! mapid = "..signmap) 
return 
end 
local guanyuanname = cityname.." th� th�nh t��ng qu�n " 

local level = GetLevel() 
if ( level < CD_LEVEL_LIMIT ) then 
Talk(1, "", CD_SIGNNPCNAME..": ti�u qu� t� ��u t�i ��y ? kh�ng mu�n s�ng sao ? c�p b�c c�n ch�a �� #"..CD_LEVEL_LIMIT.." c�p , ch�y ��n ti�n tuy�n t�i , ng��i cho r�ng n�i n�y l� ch� n�o ? kh�ng n�n ch�y lo�n , n�u kh�ng ch�t th� n�o c�ng kh�ng bi�t !") 
Msg2Plalyer("C�p b�c cao h�n "..CD_LEVEL_LIMIT.." c�p m�i c� th� tham gia v� qu�c chi�n tranh .") 
return 
end 
local oldSubWorld = SubWorld 
signmap = SubWorldIdx2ID( SubWorld ) 
defencemap = signmap - 2 
defencesidx = SubWorldID2Idx( defencemap ) 

if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": ph�a tr��c chi�n tr��ng x�y ra v�n �� , t�m th�i kh�ng th� �i v�o .", 0) 
print("citydefence defencemap error!!!! defencemap = "..defencemap) 
return 
end 

SubWorld = defencesidx; 
local state = GetMissionV(MS_STATE) 
if ( state ~= 1 and state ~= 2 ) then 
Say(CD_SIGNNPCNAME..": kh�ng c� g� mu�n b�m b�o ��ch c�ng kh�ng c�n t�i phi�n ta !", 0) 
Msg2Player("V� qu�c gi� l�a li�n th�nh "..cityname.." th� th�nh ho�t ��ng c�n ch�a b�t ��u .") 
SubWorld = oldSubWorld 
return 
end 

local randkey = GetMissionV( MS_RANDKEY ); 
local memcount = GetMSPlayerCount(MISSIONID, 0) 
local nday = tonumber(date("%m%d")); 
SubWorld = oldSubWorld 

if ( memcount >= MAX_MEMBERCOUNT ) then 
Talk(2, "", CD_SIGNNPCNAME..": ng��i l� ai ?", CD_SIGNNPCNAME..": a # ng��i ngh� gi�p ta ��i kh�ng ��ch nh�n ? ng��i th�t l� y�u n��c # qu�n ta ��ch binh l�c ��y �� , t�m � c�a ng��i r�t t�t , nh�ng l� m�i/xin ng��i tr� v� �i th�i . ") 
Msg2Player("B�y gi� tham gia v� qu�c li�n th�nh chi�n tranh nh�n s� c�a �� �� "..MAX_MEMBERCOUNT.." ng��i , kh�ng th� v�o chi�n tr��ng .") 
return 
end 

if ( GetTask( TASKID_FIRE_DAY ) == nday and GetTask( TASKID_FIRE_KEY ) ~= randkey ) then -- script viet hoa By http://tranhba.com  kh�ng cho ph�p ghi danh 
Say(CD_SIGNNPCNAME..": v� qu�c li�n th�nh chi�n tranh ho�t ��ng 1 ng�y ch� c� th� tham gia m�t l�n , l�n sau tr� l�i �i !", 0) 
elseif ( nday ~= GetTask( TASKID_FIRE_DAY ) ) then -- script viet hoa By http://tranhba.com  cho ph�p ghi danh 
Say(CD_SIGNNPCNAME..": l� hai # ti�u t� ng��i nhanh l�n �i g�i tin/th� khi�n cho t�i ��y , ��ch qu�n l�i ��nh t�i # nga ? ng��i l� ai ? b�y gi� l� l�c n�o ? c� ng��i � c�ng ta th�nh , ng��i n�u l� ti�t l� qu�n c� l� n�u b� ch�m ��u bi�t kh�ng ? ",2,"T��ng qu�n # ta t�i gi�p m�t tay th� th�nh #/want2joincd1","A ( ng��i kh�ng c� n�i g� , ch�ng qua l� c��i m�t ti�ng ) /laughtoleave") 
else 
Say(CD_SIGNNPCNAME..": a ? ng��i kh�ng ph�i l� ra chi�n tr��ng li�u sao ? c� ph�i hay kh�ng ta hoa m�t a ? enter> t�nh / ch�n # ng��i chu�n b� v�o �i th�i !", 2,"Ta mu�n gia nh�p /sure2joincd","Ta ch�ng qua l� �i ngang qua xem m�t ch�t /OnCancel") 
end 
end 

function sure2joincd() 
local oldSubWorld = SubWorld; 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencemap = signmap - 2 
local defencesidx = SubWorldID2Idx( defencemap ) 
if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": ph�a tr��c chi�n tr��ng x�y ra v�n �� , t�m th�i kh�ng th� �i v�o .", 0) 
print("citydefence defencemap error!!!! defencemap = "..defencemap) 
return 
end 
SubWorld = defencesidx 
local state = GetMissionV( MS_STATE ) 
if ( state ~= 1 and state ~= 2 ) then 
SubWorld = oldSubWorld 
return 
end 
SetTask( TASKID_FIRE_DAY, tonumber(date("%m%d")) ) 
SetTask( TASKID_FIRE_KEY, GetMissionV( MS_RANDKEY ) ) 
JoinMission(MISSIONID, GetMissionV( MS_CITYCAMP )) 
SubWorld = oldSubWorld 
end 

function want2joincd1() 
Say(CD_SIGNNPCNAME..": a # ng��i mu�n tr� gi�p ch�ng ta kh�ng ��ch ? ai nha # nh�ng ng��i �� kh�ng ph�i l� binh l�nh b�nh th��ng , b�n h� v� ngh� cao c��ng , thu�t c�i ng�a cao minh , s� c�n �� �m kh� . ", 1,"T��ng qu�n # ng��i kh�ng sao ch� ?/want2joincd2") 
end 

function want2joincd2() 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencemap = signmap - 2 
local defencesidx = SubWorldID2Idx( defencemap ) 
oldSubWorld = SubWorld 
SubWorld = defencesidx 
local cd_membercount = GetMSPlayerCount(MISSIONID, 0) 
SubWorld = oldSubWorld 
Say(CD_SIGNNPCNAME..": t�t l�m # kh�ng c�n n�i nhi�u , t�m l�i ta c�m th�y b�n h� lai l�ch kh� nghi , chi�n ��u trong l�c n�u nh� c� ng��i nh�t ���c th� li�n mang cho ta xem , ta c� tr�ng th��ng # tham gia th� th�nh nh�n s� c�a l� <color=yellow>"..cd_membercount.."<color> ng��i . ng��i chu�n b� xong ra chi�n tr��ng li�u sao ?", 2,"��ng v�y !/sure2joincd","Ta tr��c chu�n b� m�t ch�t !/OnCancel") 
end 

function laughtoleave() 
Talk(1, "", CD_SIGNNPCNAME..": ( s� ph�i �� m� h�i ") 
end 

function OnCancel() 
end
