-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp xuÊt s­ nhiÖm vô thanh loa ®¶o b¶o r­¬ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function main() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 60*256+20) and (HaveItem(101) == 1) then
DelItem(101) 
Talk(2,"","Thiªn v­¬ng di th­ ®· bÞ ng­êi Kim cÇm ®i ","Trªn ®Êt cã mét Ýt chØ h­íng thanh loa ®¶o ®Ých dÊu hiÖu , xem ra s¸t thñ võa rêi ®i kh«ng l©u #. ") 
		SetTask(3, 60*256+40)
AddNote("Më ra Hå B¾c bªn ®Ých b¶o r­¬ng , míi biÕt Thiªn v­¬ng di th­ bÞ kim quèc s¸t thñ cÇm ®i . ") 
	elseif (UTask_tw == 60*256+40) then
Talk(1,"","B¶o r­¬ng lµ v« Ých ®Ých . ") 
else 
Talk(1,"","Kh«ng cã c¸i ch×a khãa , më kh«ng ra b¶o r­¬ng .") 
end 
end; 
