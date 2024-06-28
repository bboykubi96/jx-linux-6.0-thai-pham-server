-- script viet hoa By http://tranhba.com description: §­êng m«n xuÊt s­ nhiÖm vô tróc ti ®éng tÇng thø ba b¶o r­¬ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 

UTask_tm = GetTask(2) 
	if (UTask_tm == 60*256+60) then
if (HaveItem(49) == 0) then 
Say("Mét v¹n l­îng b¹c . ", 2,"Muèn /accept","Kh«ng muèn /refuse") 
else 
Talk(1,"","Ng­¬i ®· më ra mét ng­êi kh¸c b¶o r­¬ng , kh«ng thÓ n÷a më ra b¶o nµy r­¬ng !") 
end 
	elseif (UTask_tm == 60*256+70) then
Talk(1,"","B¶o r­¬ng ®· v« Ých ") 
else 
Talk(1,"","Ng­¬i më ra b¶o r­¬ng , nh­ng lµ , nã gièng nh­ ®· sinh tó liÔu !") 
end 
end; 

function accept() 
Earn(10000) 
	SetTask(2, 60*256+70)
AddNote(" ë tróc ti ®éng tÇng thø ba b¶o r­¬ng trong ®¹t ®­îc mét v¹n l­îng b¹c . ") 
Msg2Player("§¹t ®­îc mét v¹n l­îng b¹c ") 
end; 

function refuse() 
end; 
