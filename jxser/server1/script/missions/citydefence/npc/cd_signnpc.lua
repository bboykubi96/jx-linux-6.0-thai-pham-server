-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: cd_signnpc.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005- 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng # ghi danh ®iÓm ghi danh quan 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\citydefence\\headinfo.lua")
CD_SIGNNPCNAME = " thñ thµnh t­íng qu©n " 
function main() 
local signmap = SubWorldIdx2ID( SubWorld ) 
if ( signmap == tbDEFENCE_SIGNMAP[1] ) then 
camp = 1 
cityname = " tèng ph­¬ng " 
elseif ( signmap == tbDEFENCE_SIGNMAP[2] ) then 
camp = 2 
cityname = " kim ph­¬ng " 
else 
print("citydefence signmap error!!! mapid = "..signmap) 
return 
end 
local guanyuanname = cityname.." thñ thµnh t­íng qu©n " 

local level = GetLevel() 
if ( level < CD_LEVEL_LIMIT ) then 
Talk(1, "", CD_SIGNNPCNAME..": tiÓu quû tõ ®©u tíi ®©y ? kh«ng muèn sèng sao ? cÊp bËc cßn ch­a ®ñ #"..CD_LEVEL_LIMIT.." cÊp , ch¹y ®Õn tiÒn tuyÕn tíi , ng­¬i cho r»ng n¬i nµy lµ chç nµo ? kh«ng nªn ch¹y lo¹n , nÕu kh«ng chÕt thÕ nµo còng kh«ng biÕt !") 
Msg2Plalyer("CÊp bËc cao h¬n "..CD_LEVEL_LIMIT.." cÊp míi cã thÓ tham gia vÖ quèc chiÕn tranh .") 
return 
end 
local oldSubWorld = SubWorld 
signmap = SubWorldIdx2ID( SubWorld ) 
defencemap = signmap - 2 
defencesidx = SubWorldID2Idx( defencemap ) 

if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": phÝa tr­íc chiÕn tr­êng x¶y ra vÊn ®Ò , t¹m thêi kh«ng thÓ ®i vµo .", 0) 
print("citydefence defencemap error!!!! defencemap = "..defencemap) 
return 
end 

SubWorld = defencesidx; 
local state = GetMissionV(MS_STATE) 
if ( state ~= 1 and state ~= 2 ) then 
Say(CD_SIGNNPCNAME..": kh«ng cã g× muèn bÈm b¸o ®Ých còng kh«ng cÇn tíi phiÒn ta !", 0) 
Msg2Player("VÖ quèc giã löa liªn thµnh "..cityname.." thñ thµnh ho¹t ®éng cßn ch­a b¾t ®Çu .") 
SubWorld = oldSubWorld 
return 
end 

local randkey = GetMissionV( MS_RANDKEY ); 
local memcount = GetMSPlayerCount(MISSIONID, 0) 
local nday = tonumber(date("%m%d")); 
SubWorld = oldSubWorld 

if ( memcount >= MAX_MEMBERCOUNT ) then 
Talk(2, "", CD_SIGNNPCNAME..": ng­¬i lµ ai ?", CD_SIGNNPCNAME..": a # ng­¬i nghÜ gióp ta ®èi kh¸ng ®Þch nh©n ? ng­¬i thËt lµ yªu n­íc # qu©n ta ®Ých binh lùc ®Çy ®ñ , t©m ý cña ng­¬i rÊt tèt , nh­ng lµ mêi/xin ng­¬i trë vÒ ®i th«i . ") 
Msg2Player("B©y giê tham gia vÖ quèc liªn thµnh chiÕn tranh nh©n sè cña ®· ®ñ "..MAX_MEMBERCOUNT.." ng­êi , kh«ng thÓ vµo chiÕn tr­êng .") 
return 
end 

if ( GetTask( TASKID_FIRE_DAY ) == nday and GetTask( TASKID_FIRE_KEY ) ~= randkey ) then -- script viet hoa By http://tranhba.com  kh«ng cho phÐp ghi danh 
Say(CD_SIGNNPCNAME..": vÖ quèc liªn thµnh chiÕn tranh ho¹t ®éng 1 ngµy chØ cã thÓ tham gia mét lÇn , lÇn sau trë l¹i ®i !", 0) 
elseif ( nday ~= GetTask( TASKID_FIRE_DAY ) ) then -- script viet hoa By http://tranhba.com  cho phÐp ghi danh 
Say(CD_SIGNNPCNAME..": lý hai # tiÓu tö ng­¬i nhanh lªn ®i gäi tin/th¬ khiÕn cho tíi ®©y , ®Þch qu©n l¹i ®¸nh tíi # nga ? ng­¬i lµ ai ? b©y giê lµ lóc nµo ? cã ng­êi ë c«ng ta thµnh , ng­¬i nÕu lµ tiÕt lé qu©n c¬ lµ nÕu bÞ chÐm ®Çu biÕt kh«ng ? ",2,"T­íng qu©n # ta tíi gióp mét tay thñ thµnh #/want2joincd1","A ( ng­¬i kh«ng cã nãi g× , ch¼ng qua lµ c­êi mét tiÕng ) /laughtoleave") 
else 
Say(CD_SIGNNPCNAME..": a ? ng­¬i kh«ng ph¶i lµ ra chiÕn tr­êng liÔu sao ? cã ph¶i hay kh«ng ta hoa m¾t a ? enter> tÝnh / chän # ng­¬i chuÈn bÞ vµo ®i th«i !", 2,"Ta muèn gia nhËp /sure2joincd","Ta ch¼ng qua lµ ®i ngang qua xem mét chót /OnCancel") 
end 
end 

function sure2joincd() 
local oldSubWorld = SubWorld; 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencemap = signmap - 2 
local defencesidx = SubWorldID2Idx( defencemap ) 
if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": phÝa tr­íc chiÕn tr­êng x¶y ra vÊn ®Ò , t¹m thêi kh«ng thÓ ®i vµo .", 0) 
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
Say(CD_SIGNNPCNAME..": a # ng­¬i muèn trî gióp chóng ta kh¸ng ®Þch ? ai nha # nh÷ng ng­êi ®ã kh«ng ph¶i lµ binh lÝnh b×nh th­êng , bän hä vâ nghÖ cao c­êng , thuËt cìi ngùa cao minh , sÏ cßn ®Ó ¸m khÝ . ", 1,"T­íng qu©n # ng­¬i kh«ng sao chí ?/want2joincd2") 
end 

function want2joincd2() 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencemap = signmap - 2 
local defencesidx = SubWorldID2Idx( defencemap ) 
oldSubWorld = SubWorld 
SubWorld = defencesidx 
local cd_membercount = GetMSPlayerCount(MISSIONID, 0) 
SubWorld = oldSubWorld 
Say(CD_SIGNNPCNAME..": tèt l¾m # kh«ng cÇn nãi nhiÒu , tãm l¹i ta c¶m thÊy bän hä lai lÞch kh¶ nghi , chiÕn ®Êu trong lóc nÕu nh­ cã ng­êi nhÆt ®­îc th­ liÒn mang cho ta xem , ta cã träng th­ëng # tham gia thñ thµnh nh©n sè cña lµ <color=yellow>"..cd_membercount.."<color> ng­êi . ng­¬i chuÈn bÞ xong ra chiÕn tr­êng liÔu sao ?", 2,"§óng vËy !/sure2joincd","Ta tr­íc chuÈn bÞ mét chót !/OnCancel") 
end 

function laughtoleave() 
Talk(1, "", CD_SIGNNPCNAME..": ( sî ph¶i ®æ må h«i ") 
end 

function OnCancel() 
end
