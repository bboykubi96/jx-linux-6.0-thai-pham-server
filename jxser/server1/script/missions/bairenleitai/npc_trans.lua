-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - tr�m ng��i l�i ��i truy�n t�ng NPC 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##npc_trans.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-04-24 15:22:42 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ng��i mu�n �i ��u , ta mi�n ph� d�n ng��i �i :" 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tinsert(tbDailog, {"Ph��ng t��ng ph� ", wlls_want2go,{1}}); 
tinsert(tbDailog, {"Th�nh �� ph� ", wlls_want2go,{11}}); 
tinsert(tbDailog, {"��i L� ", wlls_want2go,{162}}); 
tinsert(tbDailog, {"Bi�n kinh ph� ", wlls_want2go,{37}}); 
tinsert(tbDailog, {"T��ng d��ng ph� ", wlls_want2go,{78}}); 
tinsert(tbDailog, {"D��ng Ch�u ph� ", wlls_want2go,{80}}); 
tinsert(tbDailog, {"Tr��c khi An ph� ", wlls_want2go,{176}}); 
tinsert(tbDailog, {"H�y b� "}) 
CreateNewSayEx(tbDailog.szTitleMsg, tbDailog) 
end 



tbCP_STATION = { 
[1] = { {1557, 3112}, {1537, 3237}, {1649, 3287}, {1656, 3167},"Ph��ng t��ng ph� "}, 
[11] = { {3193, 5192}, {3266, 5004}, {3011, 5101}, {3031, 4969},"Th�nh �� ph� " }, 
[37] = { {1598, 3000}, {1866, 2930}, {1701, 3224}, {1636, 3191},"Bi�n kinh ph� " }, 
[78] = { {1592, 3377}, {1704, 3225}, {1508, 3147}, {1440, 3219},"T��ng d��ng ph� " }, 
[80] = { {1670, 2996}, {1598, 3201}, {1722, 3210}, {1834, 3063},"D��ng Ch�u ph� " }, 
[162] = { {1669, 3129}, {1696, 3280}, {1472, 3273},"��i L� " }, 
[176] = { {1603, 2917}, {1692, 3296}, {1375, 3337}, {1356, 3017},"Tr��c khi An ph� " } 
} 

function wlls_want2go(stationname) 
if (tbCP_STATION[stationname] == nil) then 
print("chefu cann't find station") 
return 
end 

local count = getn(tbCP_STATION[stationname]) - 1 
local randnum = random(count) 
	Msg2Player("����������������"..tbCP_STATION[stationname][count+1])
NewWorld(stationname, tbCP_STATION[stationname][randnum][1], tbCP_STATION[stationname][randnum][2]) 

SetLogoutRV(0); 
end 
