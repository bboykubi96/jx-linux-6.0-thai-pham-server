Include("\\script\\missions\\freshman_match\\tryout\\head.lua")
function main() 
if ( not validateDate( CP_UPTO_TRYOUT,CP_END_TRYOUT ) ) then 
return 
end 
orgworld = SubWorld 
for i = 1, getn( CP_MAPTAB ) do 
mapid = CP_MAPTAB[ i ][ 1 ] 
mapindex = SubWorldID2Idx( mapid ) 
if ( mapindex < 0 ) then 
print( "ANNOUNCE: vâ l©m t©n tó liªn cuéc so tµi khu vùc "..CP_MAPTAB[i][3].." kh«ng cã ë ®©y phôc vô khÝ th­îng , ", mapid ); 
else 
SubWorld = mapindex 
if( GetMissionV( MS_STATE ) > 0 ) then 
return 
end 
OpenMission(MISSIONID) 
str = date( "%m th¸ng %d ngµy " ).." thuéc vÒ vâ l©m "..CP_MAPTAB[ i ][ 3 ].." vâ l©m t©n tó liªn cuéc so tµi ®· b¾t ®Çu , nhµ ch¬i muèn ghi danh tham gia tranh tµi mêi ®­îc tr­íc khi an cïng vâ l©m t©n tó liªn cuéc so tµi quan viªn ®èi tho¹i . ghi danh ®iÒu kiÖn # cÊp bËc tõ 50 ®Õn 90 cÊp , tham gia tranh tµi sè lÇn Ýt h¬n so víi 40 lÇn ." 
WriteLog(date( "%Y n¨m %m th¸ng %d ngµy %H lóc M ph©n :" ).." vâ l©m "..CP_MAPTAB[ i ][ 3 ].." vâ l©m t©n tó liªn cuéc so tµi ®· b¾t ®Çu !" ) 
AddGlobalCountNews( str, 1 ) 
SetMissionV( MS_STATE, 1 ) 
SetMissionV( MS_ROUND, 1 ) 
end 
end 
SubWorld = orgworld 
end 