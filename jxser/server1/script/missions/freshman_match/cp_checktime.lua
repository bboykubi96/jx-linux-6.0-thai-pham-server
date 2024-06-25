CP_MAPTAB = { 
{396, 397,"ThiÕu L©m "}, 
{398, 399,"Thiªn v­¬ng "}, 
{400, 401,"§­êng m«n "}, 
{402, 403,"N¨m ®éc "}, 
{404, 405,"Nga Mi "}, 
{406, 407,"Thóy khãi "}, 
{408, 409,"C¸i Bang "}, 
{410, 411,"Ngµy nhÉn "}, 
{412, 413,"Vâ §­¬ng "}, 
{414, 415,"C«n L«n "} 
} 
MISSIONID = 18; 
MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
MS_ROUND = 4 -- script viet hoa By http://tranhba.com  ghi chÐp ngµy ®ã cuéc so tµi chuyÖn ®Ých ®æi phiªn lÇn 
CP_UPTO_TRYOUT = 5060120 
CP_END_TRYOUT = 5061023 
CP_BEGIN_HOUR = 20 
CP_END_HOUR = 23 



function CP_CheckOpenTime() 
if (tonumber(date("%y%m%d%H")) >= CP_UPTO_TRYOUT and tonumber(date("%y%m%d%H")) < CP_END_TRYOUT) then 
if(tonumber(date("%H")) >= CP_BEGIN_HOUR and tonumber(date("%H")) < CP_END_HOUR) then 
orgworld = SubWorld 
for i = 1, getn(CP_MAPTAB) do 
mapid = CP_MAPTAB[i][1] 
mapindex = SubWorldID2Idx(mapid) 
if (mapindex < 0) then 
print("ANNOUNCE: ®¹i héi vâ l©m héi tr­êng "..CP_MAPTAB[i][3].." kh«ng cã ë ®©y phôc vô khÝ th­îng , ", mapid); 
else 
SubWorld = mapindex 
if(GetMissionV(MS_STATE) == 0) then 
OpenMission(MISSIONID) 
str = date( "%m th¸ng %d ngµy " ).." thuéc vÒ vâ l©m "..CP_MAPTAB[ i ][ 3 ].." vâ l©m t©n tó liªn cuéc so tµi ®· b¾t ®Çu , nhµ ch¬i muèn ghi danh tham gia tranh tµi mêi ®­îc tr­íc khi an cïng vâ l©m t©n tó liªn cuéc so tµi quan viªn (182, 202) chç ghi danh . ghi danh ®iÒu kiÖn # cÊp bËc tõ 50 ®Õn 89 cÊp , tham gia tranh tµi sè lÇn Ýt h¬n so víi 40 lÇn ." 
WriteLog(date( "%Y n¨m %m th¸ng %d ngµy %H lóc M ph©n :" ).." vâ l©m "..CP_MAPTAB[ i ][ 3 ].." dù chän m«n ph¸i tranh tµi ®· b¾t ®Çu !" ) 
AddGlobalCountNews(str, 1) 
SetMissionV(MS_STATE, 1) 
SetMissionV(MS_ROUND, 1) 
end 
end 
end 
SubWorld = orgworld 
end 
end 
end 
