-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - tr¨m ng­êi l«i ®µi NPC tö vong 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##npc_death.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-04-24 15:34:08 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\missions\\bairenleitai\\hundred_arena.lua");

-- script viet hoa By http://tranhba.com  lµ c¸i nµo l«i ®µi -- script viet hoa By http://tranhba.com  > ®µi chñ ®Ých tªn 
-- script viet hoa By http://tranhba.com  lµ thø mÊy quan ®Ých 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  GetNpcKind(nNpcIndex) 

function OnDeath(nNpcIndex) 

if PlayerIndex <= 0 then 
-- script viet hoa By http://tranhba.com  ®µi chñ thua 
print("HundredArenaNPC Killed By NoOne!!"); 
return 
end 

local nArenaID = ArenaNpc:GetNpcArena(nNpcIndex); 
if (HundredArena.tbArenaList[nArenaID]) then 
HundredArena.tbArenaList[nArenaID]:NpcDeath(); 
end 

end 
