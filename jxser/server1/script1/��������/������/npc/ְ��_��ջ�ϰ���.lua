-- script viet hoa By http://tranhba.com  long m«n trÊn ng­êi ®i ®­êng kh¸ch s¹n l·o b¶n n­¬ng tay míi nhiÖm vô # giíi thiÖu c«ng viÖc 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world25 = GetTask(25) 
UTask_world27 = GetTask(27) 
if (UTask_world25 == 3) then -- script viet hoa By http://tranhba.com  nhiÖm vô “ giíi thiÖu c«ng viÖc ” tiÕn hµnh trung 
Talk(5,"W25_step"," l·o b¶n , yÕu nh©n tay gióp mét tay sao ?","Gióp mét tay ? b©y giê cßn kÐm mét quÐt dän tiÓu nhÞ ","Cã ng­êi nghÜ ®Õn cã thÓ kh«ng ?","Muèn nh×n mét chót !","Tõ trong nguyªn ®Õn c¸i nµy , lÉn vµo phÇn c¬m ¨n kh«ng dÔ dµng a ") 
elseif (UTask_world27 == 0) and (GetLevel() >= 5) then 
Say("§i # cho ta t×m 3 khèi heo rõng thÞt ®·i kh¸ch !",2,"BiÕt /W27_get_yes","PhiÒn chÕt , t×m ng­êi kh¸c ®i ! /W27_get_no") 
elseif (UTask_world27 == 5) then 
i = GetItemCount(228) 
if (i >= 3) then 
for j = 1,i do DelItem(228) end 
Talk(1,"","Nga # ®éng t¸c rÊt nhanh sao # cho # c¸i nµy ®Ýnh c¸i mò ta còng ch­a dïng tíi # ®­a cho ng­¬i !") 
SetTask(27,10) 
AddRepute(9) 
AddNote("§em heo rõng thÞt mang ®i giao cho l·o b¶n , hoµn thµnh nhiÖm vô ") 
Msg2Player("§em heo rõng thÞt mang ®i giao cho l·o b¶n , hoµn thµnh nhiÖm vô ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
if(GetSex() == 0) then 
AddItem(0, 7, 6, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc mét khèi kh¨n tay ") 
else 
AddItem(0, 7, 10, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("Ph¶i nhËn ®­îc mét khèi h×nh trßn thiÕt ") 
end 
Msg2Player("Ng­¬i danh väng gia t¨ng 9 ®iÓm ") 
else 
Talk(1,""," lµm g× ®øng ë chç nµy ? xem ng­¬i nh­ vËy , cßn kh«ng mau ®i !") 
end 
elseif (UTask_world25 == 6) then 
Talk(1,"","A # ng­¬i nãi ng­êi kia tªn g× th­îng quan thu , gäi h¾n tíi . ta chç nµy cßn x¸c nhËn !") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","Oa oa # kh¸ch quan kh«ng ®­îc ®iÕm a ? ph­¬ng viªn tr¨m dÆm cßn kh«ng cã nhµ nµo cã thÓ so ®­îc víi ta ®©y long m«n trÊn ®©y , kh«ng tin ng­¬i cã thÓ ®i hái mét chót !") 
end 
end; 

function W25_step() 
Talk(1,"","Tèt l¾m , nhanh lªn ®i gäi thÇy thuèc tíi ®©y gióp ta !") 
SetTask(25,6) 
AddNote(" l·o b¶n ®¸p øng ®Ó cho th­îng quan thu tíi hç trî # mau ®­a c¸i tin tøc tèt nµy nãi cho h¾n biÕt #! ") 
Msg2Player(" l·o b¶n ®¸p øng ®Ó cho th­îng quan thu tíi hç trî # mau ®­a c¸i tin tøc tèt nµy nãi cho h¾n biÕt #! ") 
end 

function W27_get_yes() 
SetTask(27,5) 
AddNote("TiÕp nhËn vô # vµo trong rõng c©y b¾t ®­îc 3 khèi heo rõng thÞt trë l¹i giao cho l·o b¶n ") 
Msg2Player("TiÕp nhËn vô # vµo trong rõng c©y b¾t ®­îc 3 khèi heo rõng thÞt trë l¹i giao cho l·o b¶n ") 
end 

function W27_get_no() 
end 
