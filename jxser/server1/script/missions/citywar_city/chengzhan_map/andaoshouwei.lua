-- script viet hoa By http://tranhba.com  thÇm nãi thñ vÖ 
function main() 
Say("§©y lµ dïng cho bÝ mËt rêi/bá thµnh tËp kÝch ®Þch qu©n ®Ých mËt ®¹o # ng­¬i nghÜ sö dông c¸i nµy mËt ®¹o sao ?", 2,"Muèn /OnGo","Kh«ng muèn /OnCancel"); 
end 

function OnGo() 
local mapid = 221 
local i = random(0,1); 

if (i == 0) then 
NewWorld(mapid,1739,3513) 
else 
NewWorld(mapid,1836,3405) 
end 

SetFightState(1); 
end 

function OnCancel() 
end 
