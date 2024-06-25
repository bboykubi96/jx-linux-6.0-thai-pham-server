-- script viet hoa By http://tranhba.com  ThiÕu L©m méc nh©n h¹ng chiÕn ®Êu NPC ? ? # ThiÕu L©m 10 cÊp nhiÖm vô # quyÒn nghiªng thiªn h¹ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

function OnDeath() 
UTask_sl = GetTask(7); 
	if (UTask_sl == 10*256+10) and (HaveItem(26) == 0) and (random(0,99) < 80) then
AddEventItem(26) 
Msg2Player("B¾t ®­îc kim liªn hoa . ") 
AddNote("T×m ®­îc kim liªn hoa . ") 
elseif (GetTask(75) == 10) and (GetTask(54) == 10) and (HaveItem(26) == 0) and (random(0,99) < 40) then -- script viet hoa By http://tranhba.com  quyÒn nghiªng thiªn h¹ nhiÖm vô , theo nh­ ky tû sè lÊy ®­îc 
AddEventItem(26) 
Msg2Player("B¾t ®­îc kim liªn hoa , cã thÓ trë vÒ ®i gÆp Th¸i ®¹i thóc . ") 
end 
end; 
