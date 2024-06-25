function main() 
local eattime = GetTask(1502) 
local eatexp = GetTask(1501) 
local eatmsg = {"<#> ng­¬i ¨n råi qu¸ nhiÒu tèng tö , ®· kh«ng thÓ tiÕp tôc ¨n råi #", 
"<#> ng­¬i c¶m thÊy rÊt b·o , ph¶i ®îi mét ®o¹n thêi gian míi cã thÓ ¨n tèng tö #", 
"<#> ng­¬i ¨n råi nhiÒu ®ñ ®İch tèng tö , ®©y ®· lµ ng­êi cuèi cïng #" 
} 
local randomexp = {10000, 20000, 50000} 
if(eatexp > 20000000) then -- script viet hoa By http://tranhba.com  sö dông kinh nghiÖm lín h¬n 20,000,000 , kh«ng thÓ ¨n n÷a 
Msg2Player(eatmsg[1]) 
return 1 
else 
		if (GetGameTime() > eattime + 60 * 60) then
local i = random(1, 3) 
AddOwnExp(randomexp[i]) 
			SetTask(1501, eatexp+randomexp[i])
SetTask(1502, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi chĞp tr­íc mÆt ë tuyÕn thêi gian 
if(GetTask(1501) > 20000000) then 
Msg2Player(eatmsg[3]) 
end 
return 0 
elseif (eattime == 0) then 
local i = random(1, 3) 
AddOwnExp(randomexp[i]) 
			SetTask(1501,eatexp+randomexp[i])
SetTask(1502, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi chĞp tr­íc mÆt ë tuyÕn thêi gian 
if(GetTask(1501) >20000000) then 
Msg2Player(eatmsg[3]) 
end 
return 0 
else 
Msg2Player(eatmsg[2]) 
return 1 
end 

end 
end
