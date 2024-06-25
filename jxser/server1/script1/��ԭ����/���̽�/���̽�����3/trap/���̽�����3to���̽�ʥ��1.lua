-- script viet hoa By http://tranhba.com description: Trung Nguyªn b¾c khu ngµy nhÉn bªn trong phßng häc 3to ngµy nhÉn d¹y th¸nh ®éng 1 ngµy nhÉn d¹y ra s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguyªn b¾c khu 5 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main(sel) 
UTask_tr = GetTask(4); 
-- script viet hoa By http://tranhba.com  if (GetFaction() ~= "tianren") then 
	if (UTask_tr >= 60*256+50) and (GetFaction() == "tianren") then
NewWorld(51, 1666, 3291) 
SetFightState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyÓn ®æi thµnh tr¹ng th¸i chiÕn ®Êu 
	elseif (UTask_tr > 60*256) and (UTask_tr < 60*256+50) then
Talk(1,"","Ng­¬i kh«ng cã ®em n¨m ®em ®o¹n kiÕm cho hoµn nhan hång liÖt , kh«ng thÓ vµo th¸nh ®éng .") 
SetPos(1749, 3081) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm 
else 
Talk(1,"","§©y lµ ngµy nhÉn d¹y th¸nh ®éng , ®i vµo ng­êi kh«ng thÓ ®i ra .") 
SetPos(1749, 3081) -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm 
end 
end; 
