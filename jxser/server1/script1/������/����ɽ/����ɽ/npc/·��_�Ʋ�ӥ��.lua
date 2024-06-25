-- script viet hoa By http://tranhba.com  Giang Nam khu la tiªu s¬n ng­êi ®i ®­êng _ v©n bé ­ng chñ .lua # tiªu diÖt h¸i hoa tÆc nhiÖm vô # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function main(sel) 
Uworld43 = GetTask(43) 
if (Uworld43 == 50) then 
Talk(5,"U43_50","Ng­¬i ®· cã ch×a khãa , cßn ph¶i hái ta c¸i g× ?","Trî Trô vi ng­îc , sÏ bŞ ng­êi trong thiªn h¹ thãa m¾ng !","Nãi bËy ! c¸i g× lµ ch¸nh c¸i g× lµ tµ ? ta liÒn thİch lµm ¸c , ng­¬i cã thÓ lµm g× ta ?","VËy ta mµ ®¾c téi víi !","Hõ ! ng­¬i cßn ch­a cã t­ c¸ch cïng ta ®Êu # ®Ó cho ta s¬n ­ng ®Ö tö cïng ng­¬i ch¬i mét håi ") 
elseif (Uworld43 == 70) then -- script viet hoa By http://tranhba.com  ®¸nh xong s¬n ­ng , tíi b¾t c¸i ch×a khãa 
Talk(2,"U43_70","Mau ®­a c¸i ch×a khãa giao ra ®©y !","H¶o tiÓu tö # chñ nh©n nhÊt ®Şnh sÏ v× l«i v©n hai bé b¸o thï ") 
elseif (Uworld43 >= 80) and (Uworld43 < 100) and (HaveItem(382) == 0) then -- script viet hoa By http://tranhba.com  hoÆc sau ®İch ®¶m nhiÖm mét b­íc trung c¸i ch×a khãa mÊt 
AddEventItem(382) 
Msg2Player("TiÕp tôc lÊy ®­îc v©n thi . ") 
Talk(1,"","Xem mét chót tiÓu tö ng­¬i cã thÓ lµm c¸i g× . c¸i ch×a khãa ë n¬i nµy , nÕu lµ ng­¬i cã thÓ nhËn ta 3 chiªu liÒn cho ng­¬i ") 
elseif (Uworld43 >= 80) and (Uworld43 < 255) and (HaveItem(382) == 1) then 
Talk(1,"","Ng­¬i ®· cã ch×a khãa , cßn ph¶i hái ta c¸i g× ?") 
elseif (Uworld43 == 60) then -- script viet hoa By http://tranhba.com  ®èi tho¹i hoµn thµnh , ®¸nh cuång lang kh«ng hoµn thµnh 
Talk(1,"","Hõ # ng­¬i cßn ch­a cã t­ c¸ch cïng ta ®Êu # tr­íc hÕt ®Ó cho ta s¬n ­ng ®Ö tö cïng ng­¬i ch¬i mét c¸i ") 
elseif (Uworld43 >= 255) then 
Talk(1,"","Ng­¬i thËt ®em ThiÕu chñ giÕt ?") 
else 
Talk(1,"","Chí nãi lung tung # ch­a tõng xem qua bé d¸ng b©y giê sao ?") 
end 
end; 

function U43_50() 
SetTask(43,60) 
Msg2Player("Ng­¬i thËt ®em ThiÕu chñ giÕt ? ") 
end 

function U43_70() 
SetTask(43,80) 
AddEventItem(382) 
Msg2Player(" lÊy ®­îc v©n thi , trë l¹i tr­íc khi an giao cho c«ng sai ®¹i ca , th­¬ng l­îng chuyÖn kÕ tiÕp ") 
end 
