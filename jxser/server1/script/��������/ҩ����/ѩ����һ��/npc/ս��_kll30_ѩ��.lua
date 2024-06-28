-- script viet hoa By http://tranhba.com  C«n L«n tuyÕt b¸o s¬n ®éng chiÕn ®Êu NPC tuyÕt b¸o nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-30) 

function OnDeath() 
UTask_kl = GetTask(9); 
	if (UTask_kl == 30*256+10) and (GetItemCount("D?Minh Ch©u") < 3) and (random(0,99) < 60) then
AddEventItem(111) 
Msg2Player("B¾t ®­îc d¹ minh ch©u ") 
AddNote("T×m ®­îc d¹ minh ch©u ") 
end 
end; 
