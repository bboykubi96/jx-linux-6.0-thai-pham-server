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
CP_UPTO_TRYOUT = 5051620 
CP_END_TRYOUT = 5052224 
CP_BEGIN_HOUR = 20 
CP_END_HOUR = 24 



function CP_CheckOpenTime() 
if (tonumber(date("%y%m%d%H")) >= CP_UPTO_TRYOUT and tonumber(date("%y%m%d%H")) < CP_END_TRYOUT) then 
if(tonumber(date("%H")) >= CP_BEGIN_HOUR and tonumber(date("%H")) < CP_END_HOUR) then 
orgworld = SubWorld 
for i = 1, getn(CP_MAPTAB) do 
mapid = CP_MAPTAB[i][1] 
mapindex = SubWorldID2Idx(mapid) 
if (mapindex < 0) then 
print("ANNOUNCE: ��i h�i v� l�m h�i tr��ng "..CP_MAPTAB[i][3].." kh�ng c� � ��y sever, ", mapid); 
else 
SubWorld = mapindex 
if(GetMissionV(MS_STATE) == 0) then 
OpenMission(MISSIONID) 
str = date("%m th�ng g%d ng�y ").." ��i h�i v� l�m "..CP_MAPTAB[i][3].." m�n ph�i d� ch�n tranh t�i b�t ��u , m�i ���c � v�o tr��c khi an ��ch ��i h�i v� l�m h�i tr��ng ghi danh tranh t�i . # ghi danh �i�u ki�n : 90 c�p tr� l�n , �t nh�t tham gia 20 l�n . l�n ��u ghi danh mu�n ��ng 10 v�n l��ng ." 
WriteLog(date("%Y n�m %m th�ng g%d ng�y % l�c %M ph�n :").." ��i h�i v� l�m "..CP_MAPTAB[i][3].." m�n ph�i d� ch�n tranh t�i �� b�t ��u !") 
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
