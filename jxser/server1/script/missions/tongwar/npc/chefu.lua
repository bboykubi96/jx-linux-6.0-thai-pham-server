
function main(sel) 
-- script viet hoa By http://tranhba.com  DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  kh�i ph�c k� s� d�ng tr� v� th�nh ph� 
Say("Ch�ng ta tr�n chi�n tr��ng ��ch phu xe , v�o sanh ra t� , l�y sinh m�ng t�i ki�m ti�n , xin �ng h� m�y ng�n l��ng �i !", 
8,"Ph��ng t��ng ph� /#cp_station(1)","Th�nh �� ph� /#cp_station(11)","��i L� #cp_station(162)","Bi�n kinh ph� /#cp_station(37)","T��ng d��ng ph� /#cp_station(78)","D��ng Ch�u ph� /#cp_station(80)","Tr��c khi An ph� /#cp_station(176)","N�i n�o ��u kh�ng mu�n �i !/OnCancel") 
end; 

tbCP_STATION = { 
[1] = { {1557, 3112}, {1537, 3237}, {1649, 3287}, {1656, 3167},"Ph��ng t��ng ph� " }, 
[11] = { {3193, 5192}, {3266, 5004}, {3011, 5101}, {3031, 4969},"Th�nh �� ph� " }, 
[37] = { {1598, 3000}, {1866, 2930}, {1701, 3224}, {1636, 3191},"Bi�n kinh ph� " }, 
[78] = { {1592, 3377}, {1704, 3225}, {1508, 3147}, {1440, 3219},"T��ng d��ng ph� " }, 
[80] = { {1670, 2996}, {1598, 3201}, {1722, 3210}, {1834, 3063},"D��ng Ch�u ph� " }, 
[162] = { {1669, 3129}, {1696, 3280}, {1472, 3273},"��i L� ph� " }, 
[176] = { {1603, 2917}, {1692, 3296}, {1375, 3337}, {1356, 3017},"Tr��c khi An ph� " } 
} 


function cp_station(stationname) 
if (tbCP_STATION[stationname] == nil) then 
print("chefu cann't find station") 
return 
end 
local count = getn(tbCP_STATION[stationname]) - 1 
local randnum = random(count) 
SetLogoutRV(0) 
	Msg2Player("�������������ߡ�"..tbCP_STATION[stationname][count+1])
NewWorld(stationname, tbCP_STATION[stationname][randnum][1], tbCP_STATION[stationname][randnum][2]) 
end 

function OnCancel() 
end
