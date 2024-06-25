-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu Hoµng Hµ ngän nguån 5to l­u tiªn ®éng mét tÇng 2 
-- script viet hoa By http://tranhba.com TrapID# t©y b¾c b¾c khu 15 

function main(sel) 
if GetLevel() < 50 then
Say("CÊp ®é 50 trë lªn míi cã thÓ di chuyÓn tíi map")
return 1
end

local checkexp = GetExpPercent()
if checkexp < -50 then
Say("HiÖn t¹i ®iÓm kinh nghiÖm v­ît -50% kh«ng thÓ di chuyÓn lªn map")
return 1
end

SetFightState(1); 
NewWorld(125, 1811, 3219); 


end;
