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
print("ANNOUNCE: ��i h�i v� l�m h�i tr��ng "..CP_MAPTAB[i][3].." kh�ng c� � ��y sever, ", mapid); 
else 
SubWorld = mapindex 
if(GetMissionV(MS_STATE) > 0) then 
return 
end 
OpenMission(MISSIONID) 
str = date("%m th�ng %d ng�y ").." ��i h�i v� l�m "..CP_MAPTAB[i][3].." m�n ph�i d� ch�n �� m� m�i , m�i ���c � v�o tr��c khi an ��ch ��i h�i v� l�m h�i tr��ng ghi danh tranh t�i . ghi danh �i�u ki�n : c�p b�c l�n h�n 90 c�p , �t nh�t tham gia 20 l�n . l�n ��u ghi danh ��ng 90 v�n l��ng ." 
WriteLog(date("%Y n�m %m th�ng %d ng�y % l�c %M ph�n :").." ��i h�i v� l�m "..CP_MAPTAB[i][3].." m�n ph�i d� ch�n tranh t�i c�ng b�t ��u !") 
AddGlobalCountNews(str, 1) 
SetMissionV(MS_STATE, 1) 
SetMissionV(MS_ROUND, 1) 
end 
end 
SubWorld = orgworld 
end