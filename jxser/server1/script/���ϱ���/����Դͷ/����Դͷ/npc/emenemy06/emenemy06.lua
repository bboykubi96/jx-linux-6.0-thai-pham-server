-- script viet hoa By http://tranhba.com description: ph竔 Nga Mi Trng giang ng鋘 ngu錸 thanh c飊g 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/6 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 

function OnDeath() 
UTask_em = GetTask(1); 
	if ((UTask_em == 60*256+50) and (HaveItem(24) == 0) and (random(0,99) < 20)) then		-- script viet hoa By http://tranhba.com 任务中，并且没有烟玉指环，则有20%机率
AddEventItem(24) 
-- script viet hoa By http://tranhba.com  SetTask(1, 68) 
AddNote("Цnh b筰 thanh c飊g ph秐  , b総 頲 kh鉯 ng鉵 tay ng鋍 ho祅 ") 
Msg2Player("Цnh b筰 thanh c飊g ph秐  , b総 頲 kh鉯 ng鉵 tay ng鋍 ho祅 ") 
end 
end; 
