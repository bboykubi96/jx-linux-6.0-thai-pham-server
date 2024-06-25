-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: cd_signnpc.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005- 
-- script viet hoa By http://tranhba.com Comment: cuèi tuÇn ho¹t ®éng # vÖ quèc chiÕn tranh chi giã löa liªn thµnh 
-- script viet hoa By http://tranhba.com  chøc n¨ng # ghi danh ®iÓm ghi danh quan 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Include("\\script\\missions\\newcitydefence\\head.lua")
CD_SIGNNPCNAME = " thñ thµnh t­íng qu©n " 
function main() 
local signmap = SubWorldIdx2ID( SubWorld ) 
if ( signmap == tbDEFENCE_SIGNMAP[1] ) then 
camp = 1 
cityname = " tèng ph­¬ng " 
defencemap = tbDEFENCE_MAPID[1] 
defencesidx = SubWorldID2Idx( defencemap ) 
elseif ( signmap == tbDEFENCE_SIGNMAP[2] ) then 
camp = 2 
cityname = " kim ph­¬ng " 
defencemap = tbDEFENCE_MAPID[2] 
defencesidx = SubWorldID2Idx( defencemap ) 
else 
print("citydefence signmap error!!! mapid = "..signmap) 
return 
end 
local guanyuanname = cityname.." thñ thµnh t­íng qu©n " 

local level = GetLevel() 
if ( level < CD_LEVEL_LIMIT ) then 
Talk(1, "", CD_SIGNNPCNAME..": tiÓu quû tõ ®©u tíi ®©y ? kh«ng muèn sèng a ? cÊp bËc cßn ch­a ®ñ #!"..CD_LEVEL_LIMIT.." cÊp , ch¹y ®Õn tiÒn tuyÕn , ng­¬i cho r»ng ®©y lµ n¬i nµo ? kh«ng cÇn lo¹n ®i , nÕu kh«ng , chÕt thÕ nµo còng kh«ng biÕt !") 
Msg2Plalyer(" lín nhÊt cÊp bËc "..CD_LEVEL_LIMIT.." cÊp míi cã thÓ tham gia vÖ quèc chiÕn tranh .") 
return 
end 
local oldSubWorld = SubWorld 

if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": phÝa tr­íc chiÕn tr­êng ph¸t sinh vÊn ®Ò , t¹m thêi kh«ng thÓ vµo .", 0) 
print("citydefence defencemap error!!!! defencemap = "..defencemap) 
return 
end 

SubWorld = defencesidx; 
local state = GetMissionV(MS_STATE) 
if ( state ~= 1 and state ~= 2 ) then 
Say(CD_SIGNNPCNAME..": kh«ng cã chuyÖn g× bÈm b¸o , kh«ng nªn tíi quÊy rÇy ta !", 0) 
Msg2Player("VÖ quèc giã löa liªn thµnh "..cityname.." thñ thµnh ho¹t ®éng cßn ch­a b¾t ®Çu .") 
SubWorld = oldSubWorld 
return 
end 

local randkey = GetMissionV( MS_RANDKEY ); 
local memcount = GetMSPlayerCount(MISSIONID, 0) 
local nday = tonumber(date("%m%d")); 
local time = GetMissionV(MS_SMALL_TIME) 
SubWorld = oldSubWorld 

if (time >= CALLBOSS_ZHUSHUAI) then 
Say(CD_SIGNNPCNAME..": ta viÖn qu©n ®· bÞ ®Þch qu©n ®¸nh xøc , kh«ng thÓ tíi ®©y !", 2, "# ®iÓm tô tËp /OnCancel", " luËn c«ng ban th­ëng /cd_awardforpayout") 
return 
end 

if ( memcount >= MAX_MEMBERCOUNT ) then 
Talk(2, "", CD_SIGNNPCNAME..": ng­¬i lµ ai ", CD_SIGNNPCNAME..": a , ng­¬i nghÜ gióp ta kh¸ng ®Þch ? ng­¬i thËt lµ yªu n­íc . qu©n ta binh lùc ®· trän , ng­¬i m¹nh kháe t©m mét m¶nh , nh­ng lµ , mêi/xin ng­¬i cßn lµ trë vÒ ®i th«i . ") 
Msg2Player("Tham gia vÖ quèc chiÕn tranh nh©n sè cña ®· ®ñ <color=yellow>"..MAX_MEMBERCOUNT.."<color> ng­êi , kh«ng thÓ vµo chiÕn tr­êng liÔu .") 
return 
end 

-- script viet hoa By http://tranhba.com  if ( GetTask( TASKID_FIRE_DAY ) == nday and GetTask( TASKID_FIRE_KEY ) ~= randkey ) then -- script viet hoa By http://tranhba.com  kh«ng cho phÐp ghi danh 
-- script viet hoa By http://tranhba.com  Say(CD_SIGNNPCNAME.."# vÖ quèc chiÕn tranh chi giã löa liªn thµnh ho¹t ®éng mét ngµy chØ cã thÓ tham gia mét cuéc , ng­¬i cßn lµ thËt tèt d­ìng tinh sóc duÖ , lÇn sau trë l¹i ®i . ", 0) 
-- script viet hoa By http://tranhba.com  elseif ( nday ~= GetTask( TASKID_FIRE_DAY ) ) then -- script viet hoa By http://tranhba.com  cho phÐp ghi danh 
if ( GetTask( TASKID_FIRE_KEY ) ~= randkey or GetTask( TASKID_FIRE_DAY ) ~= nday) then -- script viet hoa By http://tranhba.com  cho phÐp ghi danh 
Say(CD_SIGNNPCNAME..": Lý nhi , tiÓu tö ng­¬i nhanh ®i gäi tin/th¬ khiÕn cho tíi ®©y , ®Þch qu©n l¹i ®¸nh tíi liÔu . ng­¬i lµ ai ? b©y giê lµ lóc nµo ? cã ng­êi ®ang tiÕn c«ng ta thµnh tr× , ng­¬i cßn kÐo dµi qu©n c¬ , ®em bÞ giÕt ®Çu , biÕt kh«ng ?", 3,"T­íng qu©n , ta tíi gióp thñ thµnh !/#want2joincd1("..defencemap..")", " luËn c«ng ban th­ëng /cd_awardforpayout","Mang ( ng­¬i kh«ng nãi c¸i g× , ch¼ng qua lµ c­êi mét tiÕng liÒn ®i ) /laughtoleave") 
cd_clear_lastsumexp(); -- script viet hoa By http://tranhba.com  thanh trõ lÇn tr­íc tÝnh to¸n ®Ých mÖt mái kÕ kinh nghiÖm trÞ gi¸ 
else 
Say(CD_SIGNNPCNAME..": ng¹ch , ng­¬i kh«ng ph¶i lµ tiÕn vµo chiÕn tr­êng liÔu sao ? ch¼ng lÏ lµ ta hoa m¾t ? <enter> tèt l¾m , ng­¬i chuÈn bÞ vµo ®i th«i #", 3,"Ta muèn gia nhËp /#sure2joincd("..defencemap..")", " luËn c«ng ban th­ëng /cd_awardforpayout","Ta ch¼ng qua lµ ®i ngang qua /OnCancel") 
end 
end 

function sure2joincd(defencemap) 
local oldSubWorld = SubWorld; 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencesidx = SubWorldID2Idx( defencemap ) 
if ( defencesidx < 0 ) then 
Say(CD_SIGNNPCNAME..": phÝa tr­íc chiÕn tr­êng x¶y ra vÊn ®Ò , t¹m thêi kh«ng thÓ ®i vµo .", 0) 
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
Say(CD_SIGNNPCNAME..": thÕ nµo , ng­¬i kh«ng cã mang "..floor(FIRE_JOINUP_FEE / 10000).." v¹n l­îng , ta kh«ng thÓ cho ng­¬i ®i vµo . chuÈn bÞ xong tiÒn tíi t×m ta n÷a !", 0); 
return -1; 
end; 
end; 
cd_setsign_levelexp(); 
JoinMission(MISSIONID, GetMissionV( MS_CITYCAMP )) 
SubWorld = oldSubWorld 
end 

function want2joincd1(defencemap) 
Say(CD_SIGNNPCNAME..": a , ng­¬i nghÜ gióp ta kh¸ng ®Þch ? ai nha , mÊy c¸i nµy kh«ng gièng mét lo¹i binh lÝnh , bän hä vâ nghÖ cao c­êng , cìi ngùa rÊt lîi h¹i , cßn biÕt ®Ó ¸m khÝ . ", 1,"T­íng qu©n , ng­¬i kh«ng cã chuyÖn g× sao ? /#want2joincd2("..defencemap..")") 
end 

function want2joincd2(defencemap) 
local signmap = SubWorldIdx2ID( SubWorld ) 
local defencesidx = SubWorldID2Idx( defencemap ) 
oldSubWorld = SubWorld 
SubWorld = defencesidx 
local cd_membercount = GetMSPlayerCount(MISSIONID, 0) 
SetTask(TSKID_PLAYER_ZHANGONG,0) -- script viet hoa By http://tranhba.com  thanh kh«ng chiÕn c«ng trÞ gi¸ 
SubWorld = oldSubWorld 
Say(CD_SIGNNPCNAME..": ®­îc råi , kh«ng cÇn nhiÒu lêi , nh­ng lµ , ta c¶m gi¸c lai lÞch cña bän hä rÊt kh¶ nghi , ®ang chiÕn ®Êu lóc , nÕu nh­ ng­¬i nhÆt ®­îc th­ , liÒn mang ®Õn cho ta nh×n , ta ®em träng th­ëng ng­¬i . tham gia thñ thµnh nh©n sè cña v× <color=yellow>"..cd_membercount.."<color> ng­êi . ®Çu tiªn muèn ®ãng 10 v¹n tiÒn ghi danh , chuÈn bÞ xong ch­a ?", 2,"§èi víi !/#sure2joincd("..defencemap..")","§Ó cho ta tr­íc chuÈn bÞ mét chót !/OnCancel") 
end 

function laughtoleave() 
Talk(1, "", CD_SIGNNPCNAME.." ta kh«ng sî bän hä , muèn cho bän hä biÕt ng­êi Trung nguyªn sÜ ®Ých lîi h¹i ") 
end 

function cd_awardforpayout() 
if (camp == 1) then 
Talk(1, "", format("%s: nghe , mäi ng­êi muèn toµn lùc øng phã ®Þa chiÕn ®Êu .", CD_SIGNNPCNAME)) 
else 
Talk(1, "", format("%s: nam rÊt qu©n cßn ch­a nhôc chÝ , chóng ta quyÕt t©m c­íp lÊy chiÕn lîi phÈm , bän lÝnh muèn nÐm ®Çu l©u s¸i nhiÖt huyÕt míi ®­îc . c¸c vÞ dòng sÜ quyÕt chiÕn ®i . ", CD_SIGNNPCNAME)) 
end; 
end; 

function OnCancel() 
end
