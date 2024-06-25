-- script viet hoa By http://tranhba.com  tiÓu hång bao chøc n¨ng bao tiÒn l× x× sö dông 
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
-- script viet hoa By http://tranhba.com  elseif (ng == 6 and np == 2393) then -- script viet hoa By http://tranhba.com  ®¹i Bµn nh­îc t©m tr¶i qua cho 100% kinh nghiÖm 
end 

sutra_addexp(exp) 
Msg2Player(" ë cÈn thËn nghiªn cøu Bµn nh­îc t©m tr¶i qua sau , ngµi c¶m gi¸c toµn th©n tho¶i m¸i , kinh nghiÖm thùc chiÕn kh«i phôc kh«ng Ýt . ") 
return 0 
end 

Msg2Player("Ngµi nghiªn cøu Bµn nh­îc t©m tr¶i qua nöa ngµy , nh­ng lµ nh­ cò cßn ch­a lÜnh ngé c¸i g× ") 
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
