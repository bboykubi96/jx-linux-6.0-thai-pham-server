-- script viet hoa By http://tranhba.com  long m«n trÊn ng­êi ®i ®­êng th­îng quan thu tay míi nhiÖm vô # giíi thiÖu c«ng viÖc 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world25 = GetTask(25) 
if (UTask_world25 == 0) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Talk(2,"W25_get","V× tr¸nh nĞ chiÕn lo¹n , t¹i h¹ tõ trong nguyªn ®Õn c¸i nµy . nh­ng lµ kh«ng biÕt b©y giê nªn ®i h­íng ph­¬ng nµo !","Ng­¬i cã thÓ t×m c¸ c«ng viÖc , chËm n÷a chËm muèn chuyÖn sau nµy !") 
elseif (UTask_world25 == 6) then 
Talk(1,"W25_prise","Qu¸n trä l·o b¶n ®ång ı cho ng­¬i ®i gióp mét tay !") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","## Trung Nguyªn ®İch chiÕn tranh thËt sù lµ qu¸ th¶m thiÕt , ta bŞ b¾t ®i run rÈy ®· hai n¨m , thËt sù lµ kh«ng chŞu næi míi ch¹y trèn , hy väng cã thÓ ë n¬i nµy trÊn nhá b×nh an qu¸ mét ®êi #") 
end 
end; 

function W25_get() 
Say("T¹i h¹ ®èi víi c¸i nµy mét d·y mét chót còng kh«ng biÕt , còng kh«ng biÕt n¬i nµo chøa chÊp ta !",2,"Gióp h¾n nghÜ biÖn ph¸p ! /W25_get_yes","Khİch lÖ h¾n ! /W25_get_no") 
end 

function W25_get_yes() 
Talk(1,"","Chê ta gióp ng­¬i hái mét chót cã hay kh«ng thİch hîp c«ng viÖc !") 
SetTask(25,3) 
AddNote("TiÕp nhËn nhiÖm vô cho th­îng quan thu giíi thiÖu c«ng viÖc ") 
Msg2Player("TiÕp nhËn nhiÖm vô cho th­îng quan thu giíi thiÖu c«ng viÖc ") 
end 

function W25_get_no() 
Talk(1,"","Nh­ vËy ta ®· gióp kh«ng ®­îc ng­¬i . nh­ng lµ ng­¬i ph¶i tin t­ëng thiªn v« tuyÖt nh©n ®­êng . lªn tinh thÇn tíi . sÏ cã biÖn ph¸p !") 
end 

function W25_prise() 
Talk(1,"","Ta thËt kh«ng biÕt thÕ nµo c¶m t¹ ng­¬i míi ph¶i , ®©y lµ ta ch¹y trèn trªn ®­êng phßng th©n ®İch ®å , hy väng ng­¬i cã thÓ dïng ®İch th­îng ") 
SetTask(25,10) 
AddRepute(3) 
AddNote("Nãi cho th­îng quan thu t×m ®­îc c«ng t¸c , hoµn thµnh nhiÖm vô ") 
Msg2Player("Nãi cho th­îng quan thu t×m ®­îc c«ng t¸c , hoµn thµnh nhiÖm vô ") 
i = random(0,8) 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(i <= 5) then 
AddItem(0, 0, i, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
else 
i = i - 6 
AddItem(0, 1, i, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
end 
Msg2Player(" lÊy ®­îc mét thanh binh khİ ") 
Msg2Player("Ng­¬i danh väng gia t¨ng 3 ®iÓm ") 
end 
