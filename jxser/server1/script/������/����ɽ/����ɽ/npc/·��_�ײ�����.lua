-- script viet hoa By http://tranhba.com  Giang Nam khu la tiªu s¬n ng­êi ®i ®­êng _ l«i bé lang chñ .lua # tiªu diÖt h¸i hoa tÆc nhiÖm vô # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function main(sel) 
Uworld43 = GetTask(43) 
if (Uworld43 == 10) then 
Talk(6,"U43_10"," lang chñ # nhÊt ®Şnh cã ng­êi biÕt trªn nói thiÕu niªn chuyÖn cña t×nh , trªn tay th­êng cÇm c©y qu¹t , th­êng ng©m th¬ råi l¹i lµm tÆc ","Ngu xuÈn ! lµm c¸i g× ","Ta mêi ng­¬i ë ®©y trong chèn vâ l©m næi danh thanh . nãi chuyÖn kh«ng muèn th« lç . ","Kh«ng muèn lµm ta sî ! ta sÊt tr¸ giang hå lµ ng­¬i cßn kh«ng cã ra ®êi ®©y ","Ta biÕt ngµy gÇn ®©y ng­¬i th­êng cïng h¸i hoa tÆc ®ãng du , gian d©m phô n÷ # ng­¬i tèt nhÊt nãi ra tung tİch cña h¾n , nÕu kh«ng còng ph¶i bŞ liªn lôy ","Ta vÉn lu«n biÕt tÊt c¶ mäi chuyÖn # th× thÕ nµo ? ®¸nh th¾ng ta l¹i nãi # c¸p c¸p c¸p c¸p !") 
elseif (Uworld43 == 30) then -- script viet hoa By http://tranhba.com  ®¸nh xong cuång lang , tíi b¾t c¸i ch×a khãa 
Talk(4,"U43_30","ThËt xin lçi , t¹i h¹ cßn sao cã ®i xuèng thÊy Diªm v­¬ng nh­ng lµ ng­¬i mét trî thñ h¹ ®· r¬i vµo n¹i trong s«ng mÆt #","Ng¹ch ! tiÓu tö ng­¬i muèn lµm anh hïng a ? kh«ng ph¶i ai còng cã thÓ khi anh hïng !","Kh«ng cÇn nãi nhiÒu # nÕu kh«ng ng­¬i còng liÒn ®i xuèng cïng c¸c ®Ö tö cña ng­¬i hîp t¸ng liÔu ","TiÓu tö , xem ng­¬i lµ cã b¶n l·nh ng­êi cña , nÕu nh­ ta c¸i ch×a khãa giao cho ng­¬i cã ph¶i hay kh«ng cã thÓ tha ta mét m¹ng ?") 
elseif (Uworld43 >= 40) and (Uworld43 < 100) and (HaveItem(381) == 0) then -- script viet hoa By http://tranhba.com  hoÆc sau ®İch ®¶m nhiÖm mét b­íc trung c¸i ch×a khãa mÊt 
AddEventItem(381) 
Msg2Player("TiÕp tôc lÊy ®­îc l«i thi ") 
Talk(1,"","Ta muèn nh×n mét chót tiÓu tö ng­¬i cã thÓ lµm sao . c¸i ch×a khãa ë n¬i nµy , ng­¬i nÕu lµ cã thÓ nhËn ta 3 chiªu liÒn giao cho ng­¬i . ") 
elseif (Uworld43 >= 40) and (Uworld43 < 255) and (HaveItem(381) == 1) then 
Talk(1,"","Ng­¬i ®· cã ch×a khãa , cßn ph¶i hái ta c¸i g× ?") 
elseif (Uworld43 == 20) then -- script viet hoa By http://tranhba.com  ®èi tho¹i hoµn thµnh , ®¸nh cuång lang kh«ng hoµn thµnh 
Talk(1,"","KÎ ngu ! ng­¬i ®¸nh th¾ng thñ h¹ ta míi cã t­ c¸ch cïng ta ®Êu ") 
elseif (Uworld43 >= 255) then 
Talk(1,"","Ng­¬i thËt ®em ThiÕu chñ giÕt ?") 
else 
Talk(1,"","Kh«ng muèn hå ng«n lo¹n ng÷ # ch­a tõng xem qua bé d¸ng b©y giê sao ?") 
end 
end; 

function U43_10() 
SetTask(43,20) 
Msg2Player("Ng­¬i ®· cã ch×a khãa , cßn ph¶i hái ta c¸i g× ? ") 
end 

function U43_30() 
SetTask(43,40) 
AddEventItem(381) 
Msg2Player("§· b¾t ®­îc l«i thi , trë vÒ tr­íc khi an giao cho c«ng sai ®¹i ca , kÕ ho¹ch chuyÖn kÕ tiÕp ") 
end 
