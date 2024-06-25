-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y 20 cÊp nhiÖm vô tiÓu Hoµng chã 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 20*256+50) and ( HaveItem(125) == 0) then				-- script viet hoa By http://tranhba.com È¡Ïû¶ÔÈÎÎñÎïÆ·ÓĞÎŞµÄÅĞ¶Ï£¬ÒÔ±ãÖØ×öÈÎÎñ
SetPropState() 
AddEventItem(125) 
Msg2Player("T×m ®­îc mÊt ®İch tiÓu Hoµng chã . ") 
AddNote("T×m ®­îc mÊt ®İch tiÓu Hoµng chã . ") 
end 
end; 
