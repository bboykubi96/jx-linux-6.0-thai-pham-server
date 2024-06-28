-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn Thiªn v­¬ng t­íng l·nh ®èi tho¹i ba l¨ng tiÓu c¸ nhiÖm vô # Thiªn v­¬ng nhËp m«n 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp miÔn phİ ®­a ®Ö tö bæn m«n trë vÒ m«n ph¸i 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-09-05) lÇn n÷a söa sang l¹i nhiÖm vô thay ®æi l­îng khèng chÕ 

Include("\\script\\global\\¸÷ÅÉ½ÓÒıµÜ×Ó\\ÌìÍõ½ÓÒıµÜ×Ó.lua")

function main(sel) 
UTask_world18 = GetTask(46); 
if(UTask_world18 == 1) and (HaveItem(180) == 0) then 
Talk(1,"","Thiªn v­¬ng ®Ö tö # tú ba hoµn a , nÕu lµ cøu ng­êi ®İch , vËy dÜ nhiªn lµ nghÜa bÊt dung tõ , mÆc dï trong bang ®İch c¸c huynh ®Ö còng chê dïng , ta sÏ ®­a ng­¬i mét viªn ®i . ") 
AddEventItem(180) 
-- script viet hoa By http://tranhba.com  SetTask(46, 2) -- script viet hoa By http://tranhba.com  v× ph­¬ng tiÖn lµm l¹i nhiÖm vô , chØ cho ®¹o cô kh«ng thªm thay ®æi l­îng trŞ gi¸ 
Msg2Player("Ng­¬i lÊy ®­îc mét viªn tú ba hoµn . ") 
AddNote("Ng­¬i lÊy ®­îc mét viªn tú ba hoµn . ") 
else 
default_talk() 
end 
end; 
