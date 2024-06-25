function main() 
local eatexp = GetTask(1563) 
local randomexp = {500000, 1000000, 1500000} 
if(eatexp > 100000000) then -- script viet hoa By http://tranhba.com  sö dông kinh nghiÖm lín h¬n 20,000,000 , kh«ng thÓ ¨n n÷a 
Msg2Player("Ng­¬i ®· ¨n råi qu¸ nhiÒu X¶o Kh¾c Lùc , dÔ dµng tr­êng chó nha nga . ") 
return 1 
else 
local i = random(1, 3) 
AddOwnExp(randomexp[i]) 
		SetTask(1563,eatexp+randomexp[i])
if(GetTask(1563) >= 100000000) then 
Msg2Player("Ng­¬i ®· ¨n råi qu¸ nhiÒu X¶o Kh¾c Lùc , dÔ dµng tr­êng chó nha nga . ") 
end 
return 0 
end 
end
