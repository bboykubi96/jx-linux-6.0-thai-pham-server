-- script viet hoa By http://tranhba.com description: tay míi th«n _ tiÓu Long 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bÞ thuéc tÝnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world45=GetTask(73) 
if (UTask_world45 == 1) then 
Talk(4, "Fpay","Ta lµ tiÓu Long , tû tû ta ®ang t×m h¾n , mau trë vÒ ®i th«i !","Ta cßn kh«ng muèn trë vÒ , tû tû cho ta 10 hai , ®Ó cho ta mua ®­êng , nh­ng lµ ta ®em tiÒn vøt bá , tû tû sÏ m¾ng ta ","Ta t×m rÊt l©u , kh«ng cã t×m ®­îc . « « ...","Kh«ng cÇn lo l¾ng , ta cho ng­¬i 10 hai !") 
else 
Talk(1,"","Tû tû ®èi víi ta rÊt tèt , nh­ng lµ ta sî nµng !") 
end 
end 

function Fpay() 
if (GetCash() < 10) then 
Talk(1,"","Ta kh«ng cã tiÒn , kh«ng thÓ gióp ng­¬i !") 
else 
Pay(10) 
Talk(1,"","C¸m ¬n ng­¬i , ®iÒu nµy ®ai l­ng , ta kh«ng cÇn ph¶i , cho ng­¬i ®i !") 
SetTask(73,10) 
AddNote("T×m ®­îc tiÓu Long , cho h¾n tiÒn , thuyÕt phôc h¾n vÒ nhµ , nhiÖm vô hoµn thµnh . ") 
Msg2Player("T×m ®­îc tiÓu Long , cho h¾n tiÒn , thuyÕt phôc h¾n vÒ nhµ , nhiÖm vô hoµn thµnh . ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc mét c¸i da ®ai l­ng . ") 
AddRepute(5) 
Msg2Player("Ng­¬i danh väng gia t¨ng 5 ®iÓm ") 
end 
end 

function no() 
end 
