function GetDesc(nItem) 
return "" 
end 

-- script viet hoa By http://tranhba.com  �i�u th� l� b�a ��i v�i bao nhi�u trong ph�m vi ��ch tr�ch t�o t�c d�ng 
function testAround(nDist) 
local tbList,nCount = GetAroundNpcList(nDist, 8) 
for i = 1,nCount do 
local nNpcIndex = tbList[i] 
local nNpcId = GetNpcSettingIdx(nNpcIndex) 
if nNpcId == 849 then 
local szNpcName = GetNpcName(nNpcIndex) 
Msg2Player(format("%s trong ph�m vi %d", szNpcName, nDist)) 
end 
end 
end 

function main(nItem) 
local nMapId, nX, nY = GetWorldPos() 
if nMapId ~= 395 then 
Msg2Player("N�n v�t ph�m ch� c� th� � ng�y b�o kho b�n �� b�n trong s� d�ng ") 
return 1 
end 

local tbList,nCount = GetAroundNpcList(20, 8)-- script viet hoa By http://tranhba.com  kho�ng c�ch 20 ��i kh�i l�m m�t b�nh ph�m vi 
for i = 1,nCount do 
local nNpcIndex = tbList[i] 
local nNpcId = GetNpcSettingIdx(nNpcIndex) 
if nNpcId == 849 then 
local szNpcName = GetNpcName(nNpcIndex) 
Msg2Player(szNpcName.." kh�ng l�a �� gi�m xu�ng ") 
AddNpcSkillState(nNpcIndex, 1041, 1, 1, 18 * 60 * 60) 
end 
end 

Msg2Player("Ng�i s� d�ng m�t r�t lui l�a ph� ") 
WriteLog(format("Account:%s[Name:%s] s� d�ng r�t lui l�a ph� ", 
GetAccount(), 
GetName()) 
); 
return 
end 
