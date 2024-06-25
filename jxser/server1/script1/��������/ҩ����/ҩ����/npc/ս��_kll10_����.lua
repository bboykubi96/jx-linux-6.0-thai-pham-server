-- script viet hoa By http://tranhba.com  t©y b¾c b¾c khu d­îc v­¬ng cèc chiÕn ®Êu NPC ? ? # C«n L«n 10 cÊp nhiÖm vô # thµnh ®« h¸i thuèc nhiÖm vô # quyÒn nghiªng thiªn h¹ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-30) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-24) quyÒn nghiªng thiªn h¹ nhiÖm vô 

function OnDeath() 
UTask_kl = GetTask(9); 
Uworld132 = GetTask(132) 
	if (UTask_kl == 10*256+10) or (Uworld132 == 10) then		-- script viet hoa By http://tranhba.com ÈÎÎñÖĞ
if (HaveItem(112) == 0) then 
AddEventItem(112) 
Msg2Player("B¾t ®­îc tö môc tóc ") 
elseif (HaveItem(113) == 0) then 
AddEventItem(113) 
Msg2Player("B¾t ®­îc ®Şa cÈm cá ") 
elseif (HaveItem(114) == 0) then 
AddEventItem(114) 
Msg2Player("B¾t ®­îc thiÕn cá ") 
elseif (HaveItem(115) == 0) then 
AddEventItem(115) 
Msg2Player("B¾t ®­îc hæ nhÜ cá ") 
elseif (random(0,99) < 50) then 
AddEventItem(116) -- script viet hoa By http://tranhba.com  lÊy ®­îc kh¸c bèn d¹ng sau , nÕu nh­ kh«ng cã linh chi th× cã 50% c¬ héi ra linh chi 
Msg2Player("B¾t ®­îc linh chi ") 
end 
elseif (GetTask(75) == 10) and (GetTask(53) == 10) and (random(0,99) < 60) then -- script viet hoa By http://tranhba.com  quyÒn nghiªng thiªn h¹ nhiÖm vô , theo nh­ ky tû sè lÊy ®­îc 
AddEventItem(112) 
if (GetItemCount(112) >= 3) then 
Msg2Player("H¸i ®­îc 3 gèc c©y tö môc tóc , cã thÓ trë vÒ ®i phôc mÖnh ") 
else 
Msg2Player("H¸i ®­îc 1 gèc c©y tö môc tóc ") 
end 
end 
end; 
