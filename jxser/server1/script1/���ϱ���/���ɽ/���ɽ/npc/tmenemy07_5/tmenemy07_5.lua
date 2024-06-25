-- script viet hoa By http://tranhba.com description: §­êng m«n 40 cÊp nhiÖm vô nói Thanh Thµnh n¨m lo¹i ®Æc s¾c qu¸i vËt # c¶nh tö kú sñng vËt 5# 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if (UTask_tm == 40*256+20) then
SetTaskTemp(4,SetBit(GetTaskTemp(4),5,1)) -- script viet hoa By http://tranhba.com  chØ cÇn ë nhiÖm vô trung , liÒn c­ìng b¸ch thiÕt trİ t¹m thêi thay ®æi l­îng thø 5 vŞ 
end 
end; 
