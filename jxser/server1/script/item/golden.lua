function main() 
return 1 
end 

-- script viet hoa By http://tranhba.com p1 time/1-2 
-- script viet hoa By http://tranhba.com  p2 gbl /1-2 
-- script viet hoa By http://tranhba.com  p3 time /3-4 
-- script viet hoa By http://tranhba.com p4 gbl /3-4 
function GetDesc(nItem) 

nP1 = GetItemParam(nItem, 1); 

nP2 = GetItemParam(nItem,2); 
nP3 = GetItemParam(nItem,3); 
nP4 = GetItemParam(nItem,4); 
nP5 = GetItemParam(nItem,5); 
nGlbId = SetByte(nP1, 3, GetByte(nP3,1)) 
nGlbId = SetByte(nGlbId, 4, GetByte(nP3,2)) 

nTime = SetByte(nP2, 3, GetByte(nP4,1)) 
nTime= SetByte(nTime, 4, GetByte(nP4,2)) 


nEndMonth = mod( floor( nTime/ 100000000 ), 100 ); 
nEndDay = mod( floor( nTime/ 1000000 ), 100 ); 

if (nP5 ~= 1000) then 
str = format("<color=Blue> %d th¸ng %d ngµy hoµng kim vÐ sè \n biªn sè :%d-%d", nEndMonth, nEndDay,nTime,nGlbId) 
else 
str = format("<color=Yellow> nh· ®iÓn thÞnh héi Trung quèc ®éi t­ëng bµi ®Õm c¹nh ®o¸n hoµng kim vÐ sè \n biªn sè :%d-%d, ®æi t­ëng nhËt kú 9 th¸ng 1 ngµy -9 th¸ng 2 ngµy 22#30 - 24#00" ,nTime,nGlbId); 
return str 
end 

return str.."\n ®æi t­ëng lóc ®o¹n # nh· ®iÓn thÞnh héi ho¹t ®éng trong lóc ®Ých 22:30 -- script viet hoa By http://tranhba.com - 24:00"; 

end
