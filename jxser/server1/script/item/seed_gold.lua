-- script viet hoa By http://tranhba.com  ho�ng kim m�m m�ng s� d�ng sau c� th� call ra m�t ho�ng kim c�y gi�ng sinh 
-- script viet hoa By http://tranhba.com renbin 


IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 
Include("\\script\\global\\forbidmap.lua")

function main() 

if ( GetFightState() == 1 ) then 
local w,x,y = GetWorldPos() 
local mapindex = SubWorldID2Idx(w) 
if ( mapindex < 0 ) then 
Msg2Player("Get MapIndex Error.") 
return 1 
end 
if ( CheckAllMaps(w) == 1 ) then 
Msg2Player("N�i n�y ��t nh��ng kh�ng th�ch h�p b�i d�c m�m m�ng , c�n l� mang n� �i d� ngo�i �i #") 
return 1 
end 
local posx = x*32 
local posy = y*32 
bossid = 618 
bosslvl = 1 
i = random (1,5) - 1 
AddNpc(bossid,bosslvl,mapindex,posx,posy,1,GetName().." ��ch ho�ng kim c�y gi�ng sinh ",1) 
-- script viet hoa By http://tranhba.com 		CallNpc(i,bossid + i,bosslvl,GetName().."�Ļƽ�ʥ����",0,1)
Msg2Player("Ng��i tr�ng m�t g�c c�y ho�ng kim c�y gi�ng sinh , nhanh l�n di�u b�o b�i �i ") 
return 0 
else 
Msg2Player("C�m �n ng��i b�i d�c ta , b�t qu� ta ch� c� th� � d� ngo�i sinh tr��ng nga , mau d�n ta �i cho #") 
return 1 
end 

end
