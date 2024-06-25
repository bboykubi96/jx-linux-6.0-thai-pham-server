-- script viet hoa By http://tranhba.com description: Hoa S¬n ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/17 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_world30 = GetByte(GetTask(30),1) 
if ((UTask_world30 == 5) and (HaveItem(50) == 0) and (random(0,99) < 50)) then 
Talk(1,"","Ng­¬i lÊy ®­îc mét thanh vò v­¬ng kiÕm # nh­ng lµ míi cÇm lªn nã liÒn c¾t thµnh liÔu 3 ®o¹n # nguyªn lai lµ gi¶ . ") 
Msg2Player("Ph¸t hiÖn vò v­¬ng kiÕm lµ gi¶ ®Ých ") 
end 
end; 
