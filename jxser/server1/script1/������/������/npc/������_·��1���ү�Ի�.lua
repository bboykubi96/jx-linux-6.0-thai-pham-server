-- script viet hoa By http://tranhba.com  nam nh¹c trÊn # ng­êi ®i ®­êng # Bµnh ®¹i gia ( tªn c©u ch¹y löa nhiÖm vô ) 
-- script viet hoa By http://tranhba.com  2004/4/17 tªn c©u ch¹y löa nhiÖm vô by fangjieying 

Include("\\script\\global\\repute_head.lua")

function main() 
Uworld76 = GetTask(76) 
-- script viet hoa By http://tranhba.com  if (GetLevel() >= 60) and (Uworld76 == 0) then -- script viet hoa By http://tranhba.com  phï hîp nhiÖm vô ®iÒu kiÖn 
-- script viet hoa By http://tranhba.com  Talk (8,"","Nhµ ch¬i # l·o ®¹i gia , ngµi ®İch trµ uèng vµo mét híp liÒn miÖng ®Çy sinh t©n , kÑt ph¹p hoµn toµn kh«ng cã a . ","Bµnh ®¹i gia # kh«ng dèi g¹t ngµi nãi , tiÓu l·o nhi mÊy thËp niªn c«ng phu , còng hoa ë n¬i nµy phİa trªn . ","Nhµ ch¬i # t¹i h¹ kinh niªn b«n ba , th­êng bŞ ngµy ®éc chi h¹i , nÕu cã thÓ ngµy ngµy uèng ®­îc ngµi ®İch trµ l¹nh , vËy th× thËt lµ mét qu¸ nhanh ho¹t . ","Bµnh ®¹i gia # ch¼ng lÏ ng­¬i lµ ng­êi trong giang hå ? ","Nhµ ch¬i # kh«ng tÖ , l·o ®¹i gia thËt lµ ¸nh m¾t nh­ ®uèc . ","Bµnh ®¹i gia # ai nha # thËt tèt qu¸ . tiÓu huynh ®Ö , ta thÊy ng­¬i anh khİ bøc ng­êi , l¹i lµ giang hå b»ng h÷u . tiÓu l·o nhi c¸i nµy cã mét viÖc muèn mêi ng­¬i gióp mét tay , nÕu cã thÓ thµnh lµ ng­¬i h«m ®ã ®­îc chi khæ còng cã thÓ tù mæ . ","Nhµ ch¬i # ®¹i gia ngµi thiÕt m¹c chiÕt s¸t tiÓu tö , cã chuyÖn cø viÖc nãi . ","Bµnh ®¹i gia # tiÓu huynh ®Ö nh×n ta bªn ng­êi con ngùa nµy . ") 
-- script viet hoa By http://tranhba.com  SetTask(76,10) 
-- script viet hoa By http://tranhba.com  Msg2Player("Dß xĞt Bµnh ®¹i gia bªn c¹nh m· ") 
if (Uworld76 == 10) then 
Talk (1,"","Dß xĞt Bµnh ®¹i gia bªn c¹nh m· . ") 
elseif (Uworld76 == 20) then 
SetTask(76,25) 
Talk (3,"W76_get","Mao s¾c thuÇn khiÕt , th©n thÓ c­êng tr¸ng , ch¹y gÊp nh­ bay , thËt lµ thÊt h¶o m· a . ","Ng­¬i thËt lµ cã ¸nh m¾t , ch¼ng qua lµ gÇn nhÊt nã ng· bÖnh , cÇn nhanh lªn mét chót trŞ liÖu . ","# ®¸ng tiÕc ta kh«ng ph¶i lµ thÇy thuèc , kh«ng thÓ gi¶i quyÕt . ") 
elseif (Uworld76 == 25) then -- script viet hoa By http://tranhba.com  c¾t ®øt sau nÆng tiÕp nhËn vô ®İch xö lı 
Talk(1,"W76_get","Nh­ thÕ nµo , ®ång ı gióp ta sao ?") 
elseif (Uworld76 == 60) then 
Talk(1,"W76_prise","Qu¶ nhiªn ch÷a hÕt , kh«ng hiÓu nªn thÕ nµo c¶m t¹ ng­¬i !") 
elseif (Uworld76 == 30) then -- script viet hoa By http://tranhba.com  nhiÖm vô tiÕn hµnh trung 
if (HaveItem(393) == 0) then -- script viet hoa By http://tranhba.com  th­ mÊt xö lı 
Talk (1,"","Kh«ng ngê ng­¬i nh­ vËy kh«ng cÈn thËn , tİnh / chän , ta n÷a viÕt mét phong ®i . ") 
AddEventItem(393) -- script viet hoa By http://tranhba.com  th«ng dông th­ 
else 
Talk (1,"","TiÓu huynh ®Ö , nã bÖnh kh«ng thÓ chê l©u , ph¶i nhanh lªn mét chót ®i ") 
end 
elseif (Uworld76 == 70) then -- script viet hoa By http://tranhba.com  nhiÖm vô ®· hoµn thµnh 
Talk(1,"","MÆc dï nã sÏ kh«ng nãi , nh­ng lµ , ta c¶m thÊy nã rÊt gièng ng­êi ") 
else 
Talk(1,"","Bµnh ®¹i gia # ng­êi tuæi trÎ , kh«ng cã chuyÖn g× häc ®iÓm thñ nghÖ , kh«ng muèn c¶ ngµy câng thanh kiÕm ®¶ ®¶ s¸t s¸t . ") 
end 
end 

function W76_get() 
Say("Kh«ng cÇn tiÓu huynh ®Ö xuÊt thñ , ta biÕt mét ng­êi , y thuËt cao minh , hy väng ng­¬i cã thÓ gióp ta !",2,"Kh«ng thµnh vÊn ®Ò , ta nhÊt ®Şnh gióp ng­¬i /W76_get_yes","H«m nay ta cã viÖc , h«m nµo ®i /no") 
end 

function W76_get_yes() -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Talk(2,"","# h¶o , ta cã phong th­ , ng­¬i ®­a cho h¾n , h¾n nhÊt ®Şnh tíi . h¾n ch÷a khái ngùa cña ta sau , ta tªn lµ h¾n d¹y y thuËt cña ng­¬i , ng­¬i cïng h¾n h÷u duyªn , lÇn nµy nhÊt ®Şnh ®­îc . ") 
SetTask(76,30) 
AddEventItem(393) -- script viet hoa By http://tranhba.com  th«ng dông th­ 
Msg2Player("NhËn ®­îc mét phong th¬ , ®i d­îc v­¬ng cèc cøu m· ") 
AddNote("NhËn ®­îc mét phong th¬ , ®i d­îc v­¬ng cèc cøu m· ") 
end 

function W76_prise() 
Talk(1,"","Bµnh ®¹i gia kh«ng cÇn kh¸ch khİ , ta còng tõ trong häc ®­îc mét İt b¶n l·nh ") 
SetTask(76,70) 
add_repute = ReturnRepute(40,70,3) -- script viet hoa By http://tranhba.com  danh väng t­ëng th­ëng # lín nhÊt 40 ®iÓm , tõ 70 cÊp khëi mçi cÊp ®Ö gi¶m 3% 
AddRepute(add_repute) 
Msg2Player("NhiÖm vô hoµn thµnh , ng­¬i danh väng gia t¨ng "..add_repute.." ®iÓm .") 
AddNote("Ch÷a khái m· ®İch bÖnh , hoµn thµnh nhiÖm vô ") 
end 

function no() 
end 
