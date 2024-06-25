-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y th¸nh ®éng mét tÇng ®Şch nh©n con nhÖn tinh # ngµy nhÉn xuÊt s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
Task_trtmp60 = GetTask(28) 
	if (UTask_tr == 60*256+50) and (GetBit(Task_trtmp60,2) == 0) then
SetTask(28, SetBit(Task_trtmp60,2,1)) 
AddNote(" lÊy ®­îc khÈu quyÕt “ thÇn tóc nhãm tê . ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ thÇn tóc nhãm tê . ") 
end 
end; 
