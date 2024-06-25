function main() 
return 1; 
end 



function GetDesc(nItem) 
nQId = GetItemParam(nItem, 1); 
nAnswer = GetItemParam(nItem,2); 
nParam3 = GetItemParam(nItem,3); 
nEndTime = tonumber( GetQEndTime( nQId ) ); 
nEndYear = floor( nEndTime / 100000000 ); 
nEndMonth = mod( floor( nEndTime / 1000000 ), 100 ); 
nEndDay = mod( floor( nEndTime / 10000 ), 100 ); 
nEndHour = mod( floor( nEndTime / 100 ), 100 ); 
nEndMinute = mod( nEndTime, 100 ); 

if (nQId ~= 1000) then 
return "<color=Blue>"..GetQuestion(nQId).."\n ®Çu :<color=Yellow>"..GetChoose(nQId, nAnswer).."<color>\n".." ®æi t­ëng chÆn chØ nhËt kú #"..nEndMonth.." th¸ng "..nEndDay.." ngµy "..format( "%02d", nEndHour )..":"..format( "%02d", nEndMinute ); 
else 
str = format("<color=Blue> %s\n ®Çu : <color=Yellow> kim bµi :%d, ng©n bµi :%d, ®ång bµi :%d <color>", GetQuestion(nQId), GetByte(nAnswer, 1), GetByte(nAnswer, 2), nParam3) 
return str.."\n ®æi t­ëng chÆn chØ nhËt kú #"..nEndMonth.." th¸ng "..nEndDay.." ngµy "..format( "%02d", nEndHour )..":"..format( "%02d", nEndMinute ); 
end; 
end