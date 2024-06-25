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
print( "ANNOUNCE: v� l�m t�n t� li�n cu�c so t�i khu v�c "..CP_MAPTAB[i][3].." kh�ng c� � ��y ph�c v� kh� th��ng , ", mapid ); 
else 
SubWorld = mapindex 
if( GetMissionV( MS_STATE ) > 0 ) then 
return 
end 
OpenMission(MISSIONID) 
str = date( "%m th�ng %d ng�y " ).." thu�c v� v� l�m "..CP_MAPTAB[ i ][ 3 ].." v� l�m t�n t� li�n cu�c so t�i �� b�t ��u , nh� ch�i mu�n ghi danh tham gia tranh t�i m�i ���c tr��c khi an c�ng v� l�m t�n t� li�n cu�c so t�i quan vi�n ��i tho�i . ghi danh �i�u ki�n # c�p b�c t� 50 ��n 90 c�p , tham gia tranh t�i s� l�n �t h�n so v�i 40 l�n ." 
WriteLog(date( "%Y n�m %m th�ng %d ng�y %H l�c M ph�n :" ).." v� l�m "..CP_MAPTAB[ i ][ 3 ].." v� l�m t�n t� li�n cu�c so t�i �� b�t ��u !" ) 
AddGlobalCountNews( str, 1 ) 
SetMissionV( MS_STATE, 1 ) 
SetMissionV( MS_ROUND, 1 ) 
end 
end 
SubWorld = orgworld 
end 