Include("\\script\\missions\\championship\\tryout\\head.lua")
function main() 
if ( not validateDate(CP_UPTO_TRYOUT,CP_END_TRYOUT) ) then 
return 
end 
orgworld = SubWorld 
for i = 1, getn(CP_MAPTAB) do 
mapid = CP_MAPTAB[i][1] 
mapindex = SubWorldID2Idx(mapid) 
if (mapindex < 0) then 
print("ANNOUNCE: ®¹i héi vâ l©m héi tr­êng "..CP_MAPTAB[i][3].." kh«ng cã ë ®©y sever, ", mapid); 
else 
SubWorld = mapindex 
if(GetMissionV(MS_STATE) > 0) then 
return 
end 
OpenMission(MISSIONID) 
str = date("%m th¸ng %d ngµy ").." ®¹i héi vâ l©m "..CP_MAPTAB[i][3].." m«n ph¸i dù chän ®· më míi , mêi ®­îc ë vµo tr­íc khi an ®Ých ®¹i héi vâ l©m héi tr­êng ghi danh tranh tµi . ghi danh ®iÒu kiÖn : cÊp bËc lín h¬n 90 cÊp , Ýt nhÊt tham gia 20 lÇn . lÇn ®Çu ghi danh ®ãng 90 v¹n l­îng ." 
WriteLog(date("%Y n¨m %m th¸ng %d ngµy % lóc %M ph©n :").." ®¹i héi vâ l©m "..CP_MAPTAB[i][3].." m«n ph¸i dù chän tranh tµi cïng b¾t ®Çu !") 
AddGlobalCountNews(str, 1) 
SetMissionV(MS_STATE, 1) 
SetMissionV(MS_ROUND, 1) 
end 
end 
SubWorld = orgworld 
end