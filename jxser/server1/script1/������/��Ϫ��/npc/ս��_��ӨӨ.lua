-- script viet hoa By http://tranhba.com  chiÕn ®Êu _ b¹ch o¸nh o¸nh .lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-13) 

function OnDeath() 
Uworld50 = GetTask(50) 
if (Uworld50 == 31) then -- script viet hoa By http://tranhba.com  hai ng­êi còng ®¸nh b¹i , cã thÓ lÊy ®­îc tay dô 
SetTask(50,40) 
AddEventItem(383) 
Msg2Player("§¸nh b¹i b¹ch o¸nh o¸nh ") 
Talk(2,"","B¹ch c« n­¬ng # ®©y chÝnh lµ ­u thÕ cña ng­¬i sao ?","Ng­êi nµy thËt lµ cã v« Ých lo l¾ng chuyÖn cña ng­êi kh¸c t×nh ®©y , ®¹i kim quèc sÏ kh«ng bá qua ng­¬i ") 
elseif (Uworld50 == 30) then 
SetTask(50,32) 
Msg2Player("§¸nh b¹i b¹ch o¸nh o¸nh ") 
Talk(1,"","A ! ta bÞ th­¬ng . mËt khiÕn cho ®¹i nh©n , ®i mau !") 
elseif (Uworld50 == 40) and (HaveItem(383) == 0) then -- script viet hoa By http://tranhba.com  lÇn n÷a lÊy ®­îc tay dô 
SetTask(50,40) 
AddEventItem(383) 
Msg2Player("§¸nh b¹i b¹ch o¸nh o¸nh ") 
Talk(2,"","B¹ch c« n­¬ng # ®©y chÝnh lµ ­u thÕ cña ng­¬i sao ?","Ng­êi nµy thËt lµ cã v« Ých lo l¾ng chuyÖn cña ng­êi kh¸c t×nh ®©y , ®¹i kim quèc sÏ kh«ng bá qua ng­¬i ") 
end 
end 
