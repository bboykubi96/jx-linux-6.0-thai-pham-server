-- script viet hoa By http://tranhba.com  hunyuanlinglu.lua wangbin 2010-4-13 
Include("\\script\\global\\jingli.lua")

function main() 
do 
Say("Ng­¬i cÇm uèng hÕt mét h¬i mµ kh«ng cã g× x¶y ra. H×nh nh­ lµ hµng gi¶.")
return 1
 end
return Use(PlayerIndex) 
end 


function Use(playerindex) 
local player = Player:New(playerindex) 
local potion = HunyuanPotion:New(player) 
if (potion:Use() == 1) then 
return 0 
else 
return 1 
end 
end 
