CP_MAPTAB = { 
{396, 397,"Thi�u L�m "}, 
{398, 399,"Thi�n v��ng "}, 
{400, 401,"���ng m�n "}, 
{402, 403,"N�m ��c "}, 
{404, 405,"Nga Mi "}, 
{406, 407,"Th�y kh�i "}, 
{408, 409,"C�i Bang "}, 
{410, 411,"Ng�y nh�n "}, 
{412, 413,"V� ���ng "}, 
{414, 415,"C�n L�n "} 
} 
MISSIONID = 18; 
MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
MS_ROUND = 4 -- script viet hoa By http://tranhba.com  ghi ch�p ng�y �� cu�c so t�i chuy�n ��ch ��i phi�n l�n 
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
print("ANNOUNCE: ��i h�i v� l�m h�i tr��ng "..CP_MAPTAB[i][3].." kh�ng c� � ��y ph�c v� kh� th��ng , ", mapid); 
else 
SubWorld = mapindex 
if(GetMissionV(MS_STATE) == 0) then 
OpenMission(MISSIONID) 
str = date( "%m th�ng %d ng�y " ).." thu�c v� v� l�m "..CP_MAPTAB[ i ][ 3 ].." v� l�m t�n t� li�n cu�c so t�i �� b�t ��u , nh� ch�i mu�n ghi danh tham gia tranh t�i m�i ���c tr��c khi an c�ng v� l�m t�n t� li�n cu�c so t�i quan vi�n (182, 202) ch� ghi danh . ghi danh �i�u ki�n # c�p b�c t� 50 ��n 89 c�p , tham gia tranh t�i s� l�n �t h�n so v�i 40 l�n ." 
WriteLog(date( "%Y n�m %m th�ng %d ng�y %H l�c M ph�n :" ).." v� l�m "..CP_MAPTAB[ i ][ 3 ].." d� ch�n m�n ph�i tranh t�i �� b�t ��u !" ) 
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
