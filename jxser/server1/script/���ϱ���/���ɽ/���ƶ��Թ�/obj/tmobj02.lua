-- script viet hoa By http://tranhba.com description: §­êng m«n 30 cÊp nhiÖm vô nói Thanh Thµnh m©y tr¾ng ®éng b¶o r­¬ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 30*256+30) and (HaveItem(98) == 1) then					-- script viet hoa By http://tranhba.com µÃµ½Ô¿³×Ò»
DelItem(98) 
AddEventItem(42) 
Msg2Player(" lÊy ®­îc # háa khÝ phæ #") 
		SetTask(2, 30*256+50)
AddNote("Khai r­¬ng , lÊy ®­îc # háa khÝ phæ # ") 
	elseif (UTask_tm >= 30*256+50) and (UTask_tm <= 30*256+60) and (HaveItem(42) == 0) then			-- script viet hoa By http://tranhba.com  µÀ¾ß¶ªÁË
AddEventItem(42) 
Talk(1,"","Th× ra lµ ng­¬i c©y ®uèc khÝ phæ bá vµo b¶o r­¬ng liÔu !") 
	elseif (UTask_tm > 30*256+30) then 
Talk(1,"","B¶o r­¬ng ®· v« Ých ") 
else 
Talk(1,"","Kh«ng cã c¸i ch×a khãa , kh«ng thÓ më ra b¶o r­¬ng !.") 
end 
end; 
