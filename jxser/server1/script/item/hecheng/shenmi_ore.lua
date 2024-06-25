MAXNUM_GIFT = 10 

function main() 
Talk(1, "GiveUIForShenmi_Ore","Hîp thµnh thÇn bİ qu¸ng th¹ch # mçi lÇn bá vµo <color=yellow>10<color> c¸ <color=yellow>10 cÊp <color> ®İch gµ n¨m thÇn bİ lÔ vËt , liÒn cã thÓ hîp thµnh ra mét thÇn bİ qu¸ng th¹ch . ") 
return 
end 

function GiveUIForShenmi_Ore() 
GiveItemUI("ThÇn bİ qu¸ng th¹ch hîp thµnh ","T¹i h¹ mÆt ®İch vËt phÈm lan bªn trong bá vµo 10 c¸ 10 cÊp ®İch gµ n¨m thÇn bİ lÔ vËt , liÒn cã thÓ hîp thµnh mét thÇn bİ qu¸ng th¹ch . ", "Covert_ShenmiOre", "onCancel" ); 
end 

function Covert_ShenmiOre(nCount) 
local q = 0 
local d = 0 
local num = 0 
local maxCount = 0 
if (nCount == 0) then 
Talk(1, "GiveUIForShenmi_Ore", "<#> g× còng kh«ng cho , ng­¬i nghÜ lµm g× nha . ") 
return 
end 
if (nCount >10 ) then 
Talk(1, "GiveUIForShenmi_Ore", "<#> ng­¬i bá vµo ®İch vËt phÈm sè l­îng gièng nh­ kh«ng ®óng , thÊy râ rµng n÷a ®Ó ®i #") 
return l 
end 

for i = 1, nCount do 
local itemIdx = GetGiveItemUnit( i ) 
local g,d,_ = GetItemProp(itemIdx) 
if(g ~= 4 or d ~= 518) then 
Talk(1, "GiveUIForShenmi_Ore","<#> ng­¬i cho lµ t«m th­íc ®å a , thÊy thÕ nµo kh«ng hiÓu chiÕp ? " ) 
return 
end 
function checkGiftCount(idx,count) -- script viet hoa By http://tranhba.com  kiÓm tr¾c thÇn bİ nãi cô ®İch sè l­îng 
local num = GetItemStackCount(idx) 
				if(count + num > MAXNUM_GIFT) then -- script viet hoa By http://tranhba.com  ÊıÁ¿Ì«¶à
Talk(1, "GiveUIForShenmi_Ore", "<#> ng­¬i cho ®å qu¸ nhiÒu , kh«ng thÊy râ , ngÊt ……") 
return nil 
end 
return num 
end 
num = checkGiftCount(itemIdx,maxCount) 
if (not num) then 
return 
else 
			maxCount = maxCount + num
end 
end 
if (maxCount ~= 10) then 
Talk(1, "GiveUIForShenmi_Ore", "<#> ng­¬i cho gµ n¨m thÇn bİ lÔ vËt sè l­îng kh«ng ®ñ còng #") 
return 
else 
for i=1,nCount do 
RemoveItemByIndex(GetGiveItemUnit( i )) 
end 
AddItem(6, 1, 398, 1, 1, 1, 1) 
Talk(1, "","Chóc mõng ng­¬i hîp thµnh ra khái mét thÇn bİ qu¸ng th¹ch #") 
Msg2Player("Ng­¬i ®¹t ®­îc mét thÇn bİ qu¸ng th¹ch ") 
return 
end 
end 

function onCancel() 
end
