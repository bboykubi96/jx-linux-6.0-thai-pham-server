-- script viet hoa By http://tranhba.com description: tay míi th«n _ t« ®¹i mô 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com 71 UTask_world43 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com Update: Dan_Deng(2003-08-07) 

function main() 
UTask_world43=GetTask(71) 
if ((UTask_world43==0) and (GetLevel() >= 3)) then -- script viet hoa By http://tranhba.com  gia nhËp cÊp bËc h¹n chÕ 
Talk(2, "select","Ta nghŞch ngîm ®İch con trai , ng­¬i nghÜ nh­ thÕ nµo , cã chuyÖn g× ?") 
elseif (UTask_world43==2) then 
Talk(2, "","Ta khuyªn T« ®Ö cè g¾ng häc tËp , ng­¬i kh«ng cÇn lo l¾ng .","RÊt tèt , ta kh«ng hiÓu thÕ nµo c¶m t¹ ng­¬i , ®©y lµ kim sang thuèc , ng­¬i cÇm lªn ®i !") 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
SetTask(71,4) 
AddNote("Cïng t« ®¹i mô nãi , ®· thuyÕt phôc trong nhµ ®İch t« trung , nhiÖm vô hoµn thµnh . ") 
Msg2Player("Cïng t« ®¹i mô nãi , ®· thuyÕt phôc trong nhµ ®İch t« trung , nhiÖm vô hoµn thµnh . ") 
Msg2Player("Cã ba tói kim sang thuèc . ") 
AddRepute(6) 
Msg2Player("Ng­¬i giang hå danh väng gia t¨ng 3 ®iÓm . ") 
elseif (UTask_world43==3) then 
Talk(2, "","§¹i mô , ta biÕt t« trung cã chİ khİ , h¾n nghÜ ®Õn chiÕn tr­êng giÕt ®Şch , nam nhi chİ ë bèn ph­¬ng . ®Ó cho h¾n dùa theo lı t­ëng cña m×nh ®i lµm ®i .", "#, con trai lín , kh«ng thÓ l­u l¹i . h¾n cã chİ h­íng , ta còng kh«ng cã thÓ ng¨n c¶n , c¸m ¬n ng­¬i , c¸i nµy kim sang thuèc ng­¬i cÇm ®i ®i !") 
Msg2Player("Cã 3 tói kim sang thuèc . ") 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
AddItem(1,0,0,1,0,0,0) 
SetTask(71,5) 
AddNote("Trî gióp t« ®¹i mô hiÓu t« trung ®İch lùa chän , nhiÖm vô hoµn thµnh ") 
Msg2Player("Trî gióp t« ®¹i mô hiÓu t« trung ®İch lùa chän , nhiÖm vô hoµn thµnh ") 
Msg2Player("Cã 3 tói kim sang thuèc . ") 
AddRepute(4) 
Msg2Player("Ng­¬i giang hå danh väng gia t¨ng 4 ®iÓm . ") 
else 
Say("Nh÷ng n¨m nµy , mÑ con chóng ta hai cuéc sèng gian khæ , nghÜ ®Õn chÕt trËn ®İch t­íng c«ng , ta liÒn muèn khãc , hy väng con ta b×nh an v« sù ", 0) 
end 
end; 

function select() 
Say("H¾n vèn lµ hiÕu häc , gÇn nhÊt l¹i muèn nhËp ngò giÕt ®Şch , thËt kh«ng hiÓu h¾n muèn c¸i g× ?", 2,"Ta gióp ng­¬i ®i hái h¾n /yes","C¸i nµy ta kh«ng hiÓu /no") 
end 

function yes() 
SetTask(71,1) 
AddNote("TiÕp nhËn vô # gióp t« ®¹i mô hiÓu râ con trai ®İch ı t­ëng . ") 
Msg2Player("TiÕp nhËn vô # gióp t« ®¹i mô hiÓu râ con trai ®İch ı t­ëng . ") 
end 

function no() 
end 
