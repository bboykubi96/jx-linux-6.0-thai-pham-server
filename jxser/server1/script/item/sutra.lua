-- script viet hoa By http://tranhba.com  ti�u h�ng bao ch�c n�ng bao ti�n l� x� s� d�ng 
-- script viet hoa By http://tranhba.com  By Spe(2004-01-01) 

NUM20E = 2000000000; 

function main(nItemIdx) 
local ng, _, np = GetItemProp(nItemIdx); 

local exp=GetExp(); 

if (exp < 0) then 
exp = exp*-1; 
if (ng == 6 and np == 12) then 
if (exp >= NUM20E) then 
exp = NUM20E; 
end 
elseif (ng == 6 and np == 2392) then 
exp = floor (exp / 2); 
-- script viet hoa By http://tranhba.com  elseif (ng == 6 and np == 2393) then -- script viet hoa By http://tranhba.com  ��i B�n nh��c t�m tr�i qua cho 100% kinh nghi�m 
end 

sutra_addexp(exp) 
Msg2Player(" � c�n th�n nghi�n c�u B�n nh��c t�m tr�i qua sau , ng�i c�m gi�c to�n th�n tho�i m�i , kinh nghi�m th�c chi�n kh�i ph�c kh�ng �t . ") 
return 0 
end 

Msg2Player("Ng�i nghi�n c�u B�n nh��c t�m tr�i qua n�a ng�y , nh�ng l� nh� c� c�n ch�a l�nh ng� c�i g� ") 
return 1; 
end 


function sutra_addexp(n_exp) 
local n_count = 100; 
while (n_exp > 0) do 
if (n_exp >= 20e8) then 
AddOwnExp(20e8); 
n_exp = n_exp - 20e8; 
else 
AddOwnExp(n_exp); 
n_exp = 0; 
break 
end 
end 
end 
