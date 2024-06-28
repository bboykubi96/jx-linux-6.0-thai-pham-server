-- script viet hoa By http://tranhba.com  chiÕn ®Êu _ kim quèc bİ khiÕn cho .lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-13) 

function OnDeath() 
Uworld50 = GetTask(50) 
if ((Uworld50 == 32) or (Uworld50 == 40)) and (HaveItem(383) == 0) then -- script viet hoa By http://tranhba.com  hai ng­êi còng ®¸nh b¹i , cã thÓ lÊy ®­îc tay dô 
SetTask(50,40) 
AddEventItem(383) 
Msg2Player("§¸nh b¹i b¹ch o¸nh o¸nh ") 
Talk(2,"","B¹ch c« n­¬ng ! ®©y chİnh lµ ­u thÕ cña ng­¬i sao ?","Ng­¬i thÕ nµo cã r·nh rçi qu¶n chuyÖn cña ng­êi ta a , ®¹i kim quèc sÏ kh«ng bá qua ng­¬i ") 
elseif (Uworld50 == 30) then 
SetTask(50,31) 
Talk(1,"","B¹ch hiÓu xu , ch¹y mau !") 
end 
end 
