function main() 
-- script viet hoa By http://tranhba.com  gia t¨ng mét khèi ®¸ vôn 

AddEventItem(351); 
Msg2Player("Chóc mõng ngµi # ngµi lÊy ®­îc mét khèi nói s«ng x· t¾c ®å m¶nh vôn #"); 
Name = GetName(); 
str = format("Chóc mõng #%s lÊy ®­îc mét khèi nói s«ng x· t¾c ®å m¶nh vôn #", Name); 
AddGlobalNews(str); 
WriteLog(date("%m%d%H%M")..str); 
DelObject(); 
end;
