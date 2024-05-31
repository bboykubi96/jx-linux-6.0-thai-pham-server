Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/hongngoc.lua")
if (GetPK() == 0) then 
Say("Ngµi tr­íc mÆt PK trÞ gi¸ ®· v× 0 liÔu , kh«ng cÇn sö dông n÷a . ", 0); 
Msg2Player("Ngµi tr­íc mÆt PK trÞ gi¸ ®· v× 0 liÔu , kh«ng cÇn sö dông n÷a . "); 
return 1; 
end; 
local diempk=GetPK()
SetPK(diempk-1);	
end
