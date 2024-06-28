-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån mª cung b¶o r­¬ng C«n L«n xuÊt s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main() 
UTask_kl = GetTask(9) 
	if (UTask_kl == 60*256+20) then
if ((HaveItem(11) == 1) and (HaveItem(12) == 1) and (HaveItem(13) == 1) and (HaveItem(14) == 1) and (HaveItem(15) == 1)) then 
DelItem(11) 
DelItem(12) 
DelItem(13) 
DelItem(14) 
DelItem(15) 
AddEventItem(16) 
AddNote("BÞ ph¸i ®i cÇm n¨m mµu th¹ch ") 
Msg2Player("Ng­¬i dïng tíi ph­¬ng ®Ých 5 c¸i ch×a khãa më ra c¸i r­¬ng cÇm ngò th¶i th¹ch ") 
else 
Talk("Kh«ng cã kia 5 c¸i ch×a khãa , ng­¬i kh«ng c¸ch nµo khai c¸i r­¬ng cÇm ®¸ ") 
end 
else 
Talk(1,"","C¸i nµy b¶o r­¬ng khãa næi lªn ") 
end 
end; 
