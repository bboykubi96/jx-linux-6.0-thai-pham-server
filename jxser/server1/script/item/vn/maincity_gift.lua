-- script viet hoa By http://tranhba.com  ch� th�nh b�o v�t l� t�i 
-- script viet hoa By http://tranhba.com 7 ��i th�nh th� ph�c v� kh� ch� th�nh th�nh ch� t��ng th��ng 
-- script viet hoa By http://tranhba.com \script\item\vn\maincity_gift.lua 
-- script viet hoa By http://tranhba.com 2007-01-08 by t� kh�ng ph�i l� c� 

Include("\\script\\lib\\basic.lua");
function main(nItemIdx) 
local aryAward = { 
{0.0025, {0,164} }, 
{0.0025, {0,165} }, 
{0.0025, {0,167} }, 
{0.0025, {0,166} }, 
{0.002, {0,160} }, 
{0.002, {0,162} }, 
{0.002, {0,163} }, 
{0.002, {0,161} }, 
{0.002, {0,159} }, 
{0.0155, {4,353,1,1,1,1} }, 
{0.2068, {6,1,72,1,1,1} }, 
{0.0282, {6,1,125,1,1,1} }, 
{0.0517, {6,1,71,1,1,1} }, 
{0.6004, {6,1,124,1,1,1} }, 
{0.0258, {4,238,1,1,1,1} }, 
{0.0258, {4,239,1,1,1,1} }, 
{0.0258, {4,240,1,1,1,1} }} 
local nrand = random(); 
local nsum = 0; 
local tbitem = {}; 
for i = 1, getn(aryAward) do 
		nsum = aryAward[i][1] + nsum;
if (nrand <= nsum) then 
tbitem = aryAward[i][2]; 
break 
end; 
end; 

local nNewIdx = 0; 
if (getn(tbitem) == 2) then 
nNewIdx = AddGoldItem(unpack(tbitem)); 
elseif (getn(tbitem) == 6) then 
nNewIdx = AddItem(unpack(tbitem)); 
else 
return 1; 
end; 
WriteLog("[ l� ph�m th�nh ch� ]/t"..GetLocalDate("%Y-%m-%d %H:%M:%S\t").."Name:"..GetName().." Account:"..GetAccount().." ��t ���c "..GetItemName(nNewIdx)); 
Msg2Player("Ng�i ��t ���c <color=white>"..GetItemName(nNewIdx).."<color>"); 
end; 
