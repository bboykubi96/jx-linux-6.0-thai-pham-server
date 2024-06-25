-- script viet hoa By http://tranhba.com  t©y nam b¾c khu Tr­êng giang ngän nguån to nh¹n th¹ch ®éng 
-- script viet hoa By http://tranhba.com Trap ID# t©y nam b¾c khu 17 

function main(sel) 
if GetLevel() < 70 then
Say("CÊp ®é 70 trë lªn míi cã thÓ di chuyÓn tíi map")
return 1
end

local checkexp = GetExpPercent()
if checkexp < -50 then
Say("HiÖn t¹i ®iÓm kinh nghiÖm v­ît -50% kh«ng thÓ di chuyÓn lªn map")
return 1
end

SetFightState(1) 
NewWorld(10, 1603, 3209); 

AddTermini(21) 

end;
