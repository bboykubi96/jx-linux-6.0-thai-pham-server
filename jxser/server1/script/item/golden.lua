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
str = format("<color=Blue> %d th�ng %d ng�y ho�ng kim v� s� \n bi�n s� :%d-%d", nEndMonth, nEndDay,nTime,nGlbId) 
else 
str = format("<color=Yellow> nh� �i�n th�nh h�i Trung qu�c ��i t��ng b�i ��m c�nh �o�n ho�ng kim v� s� \n bi�n s� :%d-%d, ��i t��ng nh�t k� 9 th�ng 1 ng�y -9 th�ng 2 ng�y 22#30 - 24#00" ,nTime,nGlbId); 
return str 
end 

return str.."\n ��i t��ng l�c �o�n # nh� �i�n th�nh h�i ho�t ��ng trong l�c ��ch 22:30 -- script viet hoa By http://tranhba.com - 24:00"; 

end
