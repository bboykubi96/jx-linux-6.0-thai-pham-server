-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com description: tay míi th«n _ bß bß 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com Modify:2003/7/21 wangzg 
-- script viet hoa By http://tranhba.com update 2003/7/22 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  chê ®îi kiÓm tr¾c còng thñ tiªu vò khİ ®İch hµm sè , b©y giê tr­íc chØ cho phĞp ®­a tiÒn 

function main(sel) 
UTask_world37=GetTask(65) 
if (UTask_world37==2) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc nhiÖm vô 
Say("Ta muèn ®i khi ®¹i hiÖp liÔu , gièng nh­ ng­¬i mét d¹ng kh¾p n¬i hµnh hiÖp tr­îng nghÜa ",2,"Khuyªn /reason", " ñng hé /help") 
elseif (UTask_world37==9) then -- script viet hoa By http://tranhba.com  lùa chän khuyªn 
Say(" lµm ®¹i hiÖp rÊt khã , luyÖn c«ng còng muèn rÊt l©u ",0) 
elseif (UTask_world37==10) then -- script viet hoa By http://tranhba.com  lùa chän ñng hé 
Say("Ta muèn ®i khi ®¹i hiÖp liÔu , gièng nh­ ng­¬i mét d¹ng kh¾p n¬i hµnh hiÖp tr­îng nghÜa ",0) 
else 
Say("S¸ch th­îng nh÷ng thø kia ®¹i hiÖp rÊt uy phong , nÕu lµ cã thÓ gièng nh­ bän hä mét d¹ng lµ tèt ",0) 
end 
end; 

function reason() -- script viet hoa By http://tranhba.com  lùa chän khuyªn bß bß 
Talk(3,"prise","Phİa ngoµi ng­êi xÊu rÊt hung ®İch , ng­¬i cßn nhá nh­ vËy , c¨n b¶n c«ng còng kh«ng cã luyÖn h¶o thÕ nµo ®i hµnh hiÖp tr­îng nghÜa nha ?"," õ/d¹ , ng­¬i nãi còng ®óng , vËy chê ta tr­ëng thµnh ®i ngay hµnh hiÖp tr­îng nghÜa !","§èi víi , tr­íc ®em c¨n b¶n c«ng luyÖn h¶o , sau nµy xong ®i ®¸nh ng­êi xÊu . ") 
end; 

function prise() 
Talk(1,"","VËy ta vÒ nhµ tr­íc . c¸m ¬n ng­¬i , ta chç nµy cã chót kim chÕ thuèc , sÏ ®­a cho ng­¬i ®i !") 
AddItem(1,0,0,1,0,0) 
AddItem(1,0,0,1,0,0) 
AddItem(1,0,0,1,0,0) 
SetTask(65,9) 
AddRepute(6) -- script viet hoa By http://tranhba.com  danh väng thªm 6 ®iÓm 
AddNote("T×m ®­îc bß bß , khuyªn h¾n vÒ nhµ , nhiÖm vô hoµn thµnh . ") 
Msg2Player("Khuyªn bß bß vÒ nhµ , nhiÖm vô hoµn thµnh . ") 
Msg2Player(" lÊy ®­îc ba tói kim chÕ thuèc ") 
Msg2Player("Ng­¬i giang hå thanh thÕ gia t¨ng 6 ®iÓm . ") 
end; 

function help() -- script viet hoa By http://tranhba.com  lùa chän trî gióp bß bß 
-- script viet hoa By http://tranhba.com  Say("Nhµ ch¬i # cßn nhá tuæi , còng rÊt cã chİ khİ . ",3,"§­a mét thanh vò khİ /arm","§­a mét chót b¹c /money","Ta suy nghÜ l¹i mét chót /wait") 
Say("Cßn nhá tuæi , còng rÊt cã chİ khİ !",2,"§­a mét chót b¹c /money","Ta suy nghÜ l¹i mét chót /wait") -- script viet hoa By http://tranhba.com  chê cã thÓ kiÓm tr¾c vò khİ l¹i dïng phİa trªn c©u nµy , b©y giê tr­íc chØ ®­a tiÒn 
end 

function arm() 
if x==0 then -- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cã vò khİ 
Say("Ta b©y giê kh«ng cã vò khİ ?",3,"§­a mét thanh vò khİ /arm","§­a mét chót b¹c /money","Ta suy nghÜ l¹i mét chót /wait") 
else 
-- script viet hoa By http://tranhba.com  cho vò khİ 
Talk(1,"","C¸m ¬n ng­¬i , ng­¬i thËt tèt !") 
AddOwnExp(100) 
SetTask(65,10) 
AddNote("T×m ®­îc bß bß , cho h¾n mét thanh vò khİ , ñng hé h¾n ®¹i hiÖp méng ") 
end 
end 

function money() 
if (GetCash() < 100) then 
-- script viet hoa By http://tranhba.com  Say("Nhµ ch¬i # ai nha , trªn ng­êi ta kh«ng cã mang tiÒn g× . ",3,"§­a mét thanh vò khİ /arm","§­a mét chót b¹c /money","Ta suy nghÜ l¹i mét chót /wait") 
Talk(1,"","Trªn ng­êi ta kh«ng cã mang tiÒn , chê ta trë l¹i ") -- script viet hoa By http://tranhba.com  chê cã thÓ kiÓm tr¾c vò khİ l¹i dïng phİa trªn c©u nµy , b©y giê tr­íc chØ ®­a tiÒn 
else 
Pay(100) 
Talk(1,"","C¸m ¬n ng­¬i , ng­¬i thËt tèt !") 
AddOwnExp(100) 
SetTask(65,11) 
AddRepute(4) 
AddNote("T×m ®­îc bß bß , cho h¾n mét thanh vò khİ , ñng hé h¾n ®¹i hiÖp méng . hoµn thµnh nhiÖm vô ") 
Msg2Player("T×m ®­îc bß bß , cho h¾n mét thanh vò khİ , ñng hé h¾n ®¹i hiÖp méng . hoµn thµnh nhiÖm vô ") 
Msg2Player("Ng­¬i kinh nghiÖm giang hå gia t¨ng ! ") 
Msg2Player("Ng­¬i giang hå thanh thÕ gia t¨ng 4 ®iÓm . ") 
end 
end 

function wait() 
end 
