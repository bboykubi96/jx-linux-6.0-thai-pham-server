-- script viet hoa By http://tranhba.com description: §­êng m«n xuÊt s­ nhiÖm vô tróc ti ®éng tÇng thø ba b¶o r­¬ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 
UTask_tm = GetTask(2) 
	if (UTask_tm == 60*256+60) then
if (HaveItem(49) == 0) then 
Say("R­¬ng bªn trong cã mét chu«i tµn ph¸ sinh tó ®İch thiÕt kiÕm ", 2,"CÇn /accept","Kh«ng cÇn /refuse") 
else 
Talk(1,"","B¶o r­¬ng ®· v« İch ") 
end 
	elseif (UTask_tm == 60*256+70) then 
Talk(1,"","Ng­¬i ®· më ra mét ng­êi kh¸c b¶o r­¬ng , kh«ng thÓ n÷a më ra b¶o nµy r­¬ng !") 
else 
Talk(1,"","Ng­¬i më ra b¶o r­¬ng , nh­ng lµ , nã gièng nh­ sinh tó liÔu !") 
end 
end; 

function accept() 
AddEventItem(49) 
Msg2Player("# lÊy ®­îc thÊt tinh tuyÖt mÖnh kiÕm ") 
-- script viet hoa By http://tranhba.com  SetTask(2, 67) 
AddNote(" ë tróc ti ®éng tÇng thø ba cã 2 c¸ b¶o r­¬ng , ®¸nh n¸t mét ng­êi trong ®ã , ®em lÊy ®­îc thÊt tinh tuyÖt mÖnh kiÕm . ") 
end; 

function refuse() 
end; 
