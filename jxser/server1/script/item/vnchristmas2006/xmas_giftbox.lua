-- script viet hoa By http://tranhba.com  Created by Danielsun 2006-12-07 
-- script viet hoa By http://tranhba.com  gi�ng sinh h�p qu� 
-- script viet hoa By http://tranhba.com  theo nh� t� l� ��t ���c qu� gi�ng sinh t�i li�u 

TB_Giftbox = { 
-- script viet hoa By http://tranhba.com 1. v�t ph�m t�n 2. v�t ph�m ID 3. r�i xu�ng t� l� 
{"B�ng tuy�t ", 1312, 20 }, 
{"Gia t� ", 1313, 20 }, 
{"T�ng chi ", 1314, 20 }, 
{"Gi�ng sinh m�o ", 1315, 18 }, 
{"Vi c�n ( xanh bi�c )", 1316, 11 }, 
{"Vi c�n (# h�ng )", 1317, 5 }, 
{"T�ng ", 1318, 1 }, 
} 

function main() 

local PItem = 0; 
local PGetItem = random(); 
local PGetItem = PGetItem * 100; 
for ngift,mgift in TB_Giftbox do 
		PItem = PItem + TB_Giftbox[ngift][3];
if(PGetItem < PItem) then 
AddItem(6,1,TB_Giftbox[ngift][2],1,0,0,0); 
Msg2Player("Ng�i ��t ���c gi�ng sinh nguy�n li�u :"..TB_Giftbox[ngift][1]); 
return 
end 
end 
return 1; 
end 
