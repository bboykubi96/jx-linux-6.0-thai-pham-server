
function main(sel) 
-- script viet hoa By http://tranhba.com  DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  kh«i phôc kú sö dông trë vÒ thµnh phï 
Say("Chóng ta trªn chiÕn tr­êng ®Ých phu xe , vµo sanh ra tö , lÊy sinh m¹ng tíi kiÕm tiÒn , xin ñng hé mÊy ng©n l­îng ®i !", 
8,"Ph­îng t­êng phñ /#cp_station(1)","Thµnh ®« phñ /#cp_station(11)","§¹i Lý #cp_station(162)","BiÖn kinh phñ /#cp_station(37)","T­¬ng d­¬ng phñ /#cp_station(78)","D­¬ng Ch©u phñ /#cp_station(80)","Tr­íc khi An phñ /#cp_station(176)","N¬i nµo ®Òu kh«ng muèn ®i !/OnCancel") 
end; 

tbCP_STATION = { 
[1] = { {1557, 3112}, {1537, 3237}, {1649, 3287}, {1656, 3167},"Ph­îng t­êng phñ " }, 
[11] = { {3193, 5192}, {3266, 5004}, {3011, 5101}, {3031, 4969},"Thµnh ®« phñ " }, 
[37] = { {1598, 3000}, {1866, 2930}, {1701, 3224}, {1636, 3191},"BiÖn kinh phñ " }, 
[78] = { {1592, 3377}, {1704, 3225}, {1508, 3147}, {1440, 3219},"T­¬ng d­¬ng phñ " }, 
[80] = { {1670, 2996}, {1598, 3201}, {1722, 3210}, {1834, 3063},"D­¬ng Ch©u phñ " }, 
[162] = { {1669, 3129}, {1696, 3280}, {1472, 3273},"§¹i Lý phñ " }, 
[176] = { {1603, 2917}, {1692, 3296}, {1375, 3337}, {1356, 3017},"Tr­íc khi An phñ " } 
} 


function cp_station(stationname) 
if (tbCP_STATION[stationname] == nil) then 
print("chefu cann't find station") 
return 
end 
local count = getn(tbCP_STATION[stationname]) - 1 
local randnum = random(count) 
SetLogoutRV(0) 
	Msg2Player("×øÎÈÁËÂð£¿ÎÒÃÇ×ß¡£"..tbCP_STATION[stationname][count+1])
NewWorld(stationname, tbCP_STATION[stationname][randnum][1], tbCP_STATION[stationname][randnum][2]) 
end 

function OnCancel() 
end
