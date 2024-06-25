-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - l«i ®µi Trap 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##trap_arena.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-04-24 17:22:25 

-- script viet hoa By http://tranhba.com  ====================================================== 


function main(index) 
-- script viet hoa By http://tranhba.com HundredArena.tbFieldList[index]:InTrap(); 

	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:InTrap", index)	
end 
