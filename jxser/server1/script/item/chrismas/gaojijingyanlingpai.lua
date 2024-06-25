Include([[\script\item\chrismas\chrismasitem.lua]]); 

function main() 
local tabidx = itemmapcheck(TAB_ACTION); 
if (0 == tabidx) then 
return 1; 
end; 
if (TAB_ACTION[tabidx][7][1] ~= 0 and TAB_ACTION[tabidx][7][2] ~= 0) then 
SetTask(TAB_ACTION[tabidx][7][1], 4) 
		SetTask(TAB_ACTION[tabidx][7][2], GetCurServerTime() + 30)
end; 

Msg2Player("<#> ng­¬i sö dông mét <color=0xB5FDD7> cao cÊp kinh nghiÖm lÖnh bµi <color> , 30 gi©y bªn trong ®¹t ®­îc kinh nghiÖm v× th× ra lµ 4 lÇn . ") 
end;