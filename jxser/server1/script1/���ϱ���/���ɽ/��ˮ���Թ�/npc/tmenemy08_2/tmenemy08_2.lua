-- script viet hoa By http://tranhba.com description: §­êng m«n 50 cÊp nhiÖm vô nói Thanh Thµnh vang n­íc ®éng qu¸i vËt 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  nhiÖm vô nµy ®· ®ñ phøc t¹p , muèn ®em nã hñy bá , th¶ vµo kú tha nhiÖm vô trung ®i dïng . 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 50*256+80) and (HaveItem(48) == 0)) then
Msg2Player(" lÊy ®­îc gi¶ # ¸m khÝ phæ # , nguyªn lai lµ mét quyÓn kh«ng cã ch÷ thiªn th­ ") 
end 
end; 
