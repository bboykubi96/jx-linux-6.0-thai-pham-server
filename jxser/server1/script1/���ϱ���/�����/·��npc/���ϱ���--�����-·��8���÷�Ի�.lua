-- script viet hoa By http://tranhba.com  t©y nam b¾c khu giang t©n th«n ng­êi ®i ®­êng 8 ng« hång mai ®èi tho¹i 
-- script viet hoa By http://tranhba.com  giang t©n th«n tay míi nhiÖm vô # Ng« l·o cha ®Ých thuèc 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bÞ thuéc tÝnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world21 = GetTask(49); 
if (UTask_world21 == 3) then 
Talk(1,"","C¸m ¬n ng­¬i cho ta cha hèt thuèc , ®©y lµ ta míi võa lµm giµy , ng­¬i nÕu lµ kh«ng chª sÏ cÇm ®i !") 
SetTask(49, 10) 
AddRepute(6) 
AddNote("Hoµn thµnh gióp Ng« l·o hèt thuèc nhiÖm vô ") 
Msg2Player("Hoµn thµnh gióp Ng« l·o hèt thuèc nhiÖm vô ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0)then 
AddItem(0,5,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc mét ®«i giµy cá ") 
else 
AddItem(0,5,2,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc mét ®«i tó hoa giµy ") 
end 
Msg2Player("Ng­¬i danh väng gia t¨ng 6 ®iÓm ") 
else 
Talk(1,"","Ng« hång mai # mÑ ta muèn ¨n tái nª b¹ch thÞt , nh­ng lµ b¸n thÞt ®Ých gièng nh­ kh«ng cã ®i ra , c¸i nµy nh­ng nh­ thÕ nµo cho ph¶i ? ") 
end 
end; 
