-- script viet hoa By http://tranhba.com  Created by Danielsun 2006-12-07 
-- script viet hoa By http://tranhba.com  gi¸ng sinh hép quµ 
-- script viet hoa By http://tranhba.com  theo nh­ tû lÖ ®¹t ®­îc quµ gi¸ng sinh tµi liÖu 

TB_Giftbox = { 
-- script viet hoa By http://tranhba.com 1. vËt phÈm tªn 2. vËt phÈm ID 3. r¬i xuèng tû lÖ 
{"B«ng tuyÕt ", 1312, 20 }, 
{"Gia tö ", 1313, 20 }, 
{"Tïng chi ", 1314, 20 }, 
{"Gi¸ng sinh m¹o ", 1315, 18 }, 
{"Vi c©n ( xanh biÕc )", 1316, 11 }, 
{"Vi c©n (# hång )", 1317, 5 }, 
{"Tïng ", 1318, 1 }, 
} 

function main() 

local PItem = 0; 
local PGetItem = random(); 
local PGetItem = PGetItem * 100; 
for ngift,mgift in TB_Giftbox do 
		PItem = PItem + TB_Giftbox[ngift][3];
if(PGetItem < PItem) then 
AddItem(6,1,TB_Giftbox[ngift][2],1,0,0,0); 
Msg2Player("Ngµi ®¹t ®­îc gi¸ng sinh nguyªn liÖu :"..TB_Giftbox[ngift][1]); 
return 
end 
end 
return 1; 
end 
