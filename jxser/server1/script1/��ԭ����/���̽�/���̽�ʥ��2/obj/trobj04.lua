-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y th¸nh ®éng tÇng hai b¶o r­¬ng ngµy nhÉn d¹y ra s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4) 
	if (UTask_tr == 60*256+70) then
if (HaveItem(132) == 1) then 
Talk(1,"","B¶o r­¬ng ®· v« Ých ") 
elseif (HaveItem(102) == 1) then 
DelItem(102) 
AddEventItem(132) 
-- script viet hoa By http://tranhba.com  SetTask(4, 68) 
AddNote("Më ra b¶o r­¬ng , lÊy ®­îc ngµy nhÉn th¸nh da dª s¸ch mét quyÓn ") 
Msg2Player("Më ra b¶o r­¬ng , lÊy ®­îc da dª s¸ch mét quyÓn ") 
else 
Talk(1,"","Kh«ng cã c¸i ch×a khãa , më kh«ng ra b¶o r­¬ng .") 
end 
else 
Talk(1,"","Kh«ng cã c¸i ch×a khãa , më kh«ng ra b¶o r­¬ng .") 
end 
end; 
