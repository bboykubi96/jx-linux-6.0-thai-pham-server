-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - tr¨m ng­êi l«i ®µi truyÒn tèng NPC 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##npc_trans.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-04-24 15:22:42 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ng­¬i muèn ®i ®©u , ta miÔn phÝ dÉn ng­¬i ®i :" 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tinsert(tbDailog, {"Ph­îng t­êng phñ ", wlls_want2go,{1}}); 
tinsert(tbDailog, {"Thµnh ®« phñ ", wlls_want2go,{11}}); 
tinsert(tbDailog, {"§¹i Lý ", wlls_want2go,{162}}); 
tinsert(tbDailog, {"BiÖn kinh phñ ", wlls_want2go,{37}}); 
tinsert(tbDailog, {"T­¬ng d­¬ng phñ ", wlls_want2go,{78}}); 
tinsert(tbDailog, {"D­¬ng Ch©u phñ ", wlls_want2go,{80}}); 
tinsert(tbDailog, {"Tr­íc khi An phñ ", wlls_want2go,{176}}); 
tinsert(tbDailog, {"Hñy bá "}) 
CreateNewSayEx(tbDailog.szTitleMsg, tbDailog) 
end 



tbCP_STATION = { 
[1] = { {1557, 3112}, {1537, 3237}, {1649, 3287}, {1656, 3167},"Ph­îng t­êng phñ "}, 
[11] = { {3193, 5192}, {3266, 5004}, {3011, 5101}, {3031, 4969},"Thµnh ®« phñ " }, 
[37] = { {1598, 3000}, {1866, 2930}, {1701, 3224}, {1636, 3191},"BiÖn kinh phñ " }, 
[78] = { {1592, 3377}, {1704, 3225}, {1508, 3147}, {1440, 3219},"T­¬ng d­¬ng phñ " }, 
[80] = { {1670, 2996}, {1598, 3201}, {1722, 3210}, {1834, 3063},"D­¬ng Ch©u phñ " }, 
[162] = { {1669, 3129}, {1696, 3280}, {1472, 3273},"§¹i Lý " }, 
[176] = { {1603, 2917}, {1692, 3296}, {1375, 3337}, {1356, 3017},"Tr­íc khi An phñ " } 
} 

function wlls_want2go(stationname) 
if (tbCP_STATION[stationname] == nil) then 
print("chefu cann't find station") 
return 
end 

local count = getn(tbCP_STATION[stationname]) - 1 
local randnum = random(count) 
	Msg2Player("×øºÃÁËÂð£¿ÎÒÃÇ×ßÁË"..tbCP_STATION[stationname][count+1])
NewWorld(stationname, tbCP_STATION[stationname][randnum][1], tbCP_STATION[stationname][randnum][2]) 

SetLogoutRV(0); 
end 
