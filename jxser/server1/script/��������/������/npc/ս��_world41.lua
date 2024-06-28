-- script viet hoa By http://tranhba.com  long m«n trÊn - cæ d­¬ng ®éng -“ yªu ®ao ” triÖu ph­¬ng ( thÕ giíi nhiÖm vô “ cøu tiÓu ®Ñp ”) 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2004-03-03) 

function OnDeath() 
Uworld41 = GetByte(GetTask(41),1) 
if (Uworld41 >= 10) and (Uworld41 < 100) and (HaveItem(352) == 0) and (random(0,99) < 50) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung h¬n n÷a kh«ng cã c¸i ch×a khãa , 50% ky tû sè 
if (Uworld41 == 10) then -- script viet hoa By http://tranhba.com  lÇn ®Çu tiªn ®¸nh lóc t¨ng lªn t×nh ®èi tho¹i , cïng thay ®æi l­îng phó trÞ gi¸ 
if (GetSex() == 0) then -- script viet hoa By http://tranhba.com  ®èi tho¹i nam n÷ bÊt ®ång 
Talk(1,"","Anh hïng tha m¹ng , ngµy h«m qua giµnh ®­îc tiÓu ®Ñp sau nµng liÒu chÕt kh«ng theo , b©y giê cßn nhèt ë ngôc tèi bªn trong ®©y . ®©y lµ c¸i ch×a khãa , chØ cÇu anh hïng bá qua cho nhá / tiÓu nh©n m¹ng chã !") 
else 
Talk(1,"","N÷ hiÖp tha m¹ng , ngµy h«m qua giµnh ®­îc tiÓu ®Ñp sau nµng liÒu chÕt kh«ng theo , b©y giê cßn nhèt ë ngôc tèi bªn trong ®©y . ®©y lµ c¸i ch×a khãa , chØ cÇu anh hïng bá qua cho nhá / tiÓu nh©n m¹ng chã !") 
end 
Uworld41 = SetByte(GetTask(41),1,30) 
SetTask(41,Uworld41) 
AddNote("§¸nh b¹i c­êng ®¹o ®Çu môc “ yªu ®ao ” triÖu ph­¬ng , lÊy ®­îc mét thanh më ra ngôc tèi cøu tiÓu ®Ñp ®Ých c¸i ch×a khãa ") 
end 
AddEventItem(352) -- script viet hoa By http://tranhba.com  c¬ quan c¸i ch×a khãa 
Msg2Player("B¾t ®­îc c¬ quan c¸i ch×a khãa ") 
end 
end; 
