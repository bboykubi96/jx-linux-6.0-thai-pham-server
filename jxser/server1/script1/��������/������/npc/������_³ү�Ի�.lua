-- script viet hoa By http://tranhba.com description: tay míi th«n _ Lç gia 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com -70 UTask_world42 
-- script viet hoa By http://tranhba.com update 2003/7/24 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bŞ thuéc tİnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world42=GetTask(70) 
if (UTask_world42==0) then 
Say("Sèng trªn ®êi kh«ng cã s¸ch hay nh×n thËt lµ nhµm ch¸n , trÊn nam ®İch l·o c¸t nhµ cã mét quyÓn s¸ch hay , nh­ng lµ ta kĞo kh«ng d­íi nĞt mÆt giµ nua ®i m­în ", 2,"Ta ®i gióp ng­¬i m­în /yes","Muèn nh×n s¸ch sÏ ph¶i ®i m­în . /no") 
elseif (UTask_world42==2) then 
Talk(1,""," lêi nh­ vËy tr­íc hÕt c¸m ¬n ng­¬i , c¸t l·o ®Çu ë trÊn trªn ®İch phİa nam .") 
elseif (UTask_world42==4) then 
Talk(2, "step2","C¸t l·o nãi muèn dïng di kiªn chİ ®æi kª thÇn lôc .","C¸i nµy l·o hå ly , muèn v× khã kh¨n ta # ®­îc råi , lµm phiÒn ng­¬i mang ®i cho h¾n ") 
elseif ((UTask_world42 == 6) and (HaveItem(189) == 0)) then -- script viet hoa By http://tranhba.com  s¸ch mÊt 
Talk(1,"","TiÓu tö , d¸m nh­ vËy , t¹i sao cÇm s¸ch bá ch¹y ? ") 
AddEventItem(189) 
Msg2Player(" lÊy ®­îc di kiªn chİ ") 
elseif ((UTask_world42==8) and (HaveItem(188) == 1)) then 
Talk(3, "WTask70_prise", " Lç ®¹i thóc , ®©y lµ ng­¬i muèn s¸ch .","ThËt tèt qu¸ ","§©y lµ da tr©u ®ai l­ng , ta kh«ng cÇn ph¶i , ®­a cho ng­¬i ®i . ") 
else 
Talk(1,"","Ng­êi tuæi trÎ , sèng trªn ®êi ph¶i nhiÒu ®i häc , kh«ng muèn thµnh thiªn mµi ®ao mµi kiÕm ") 
end 
end; 

function yes() 
Talk(1,""," lêi nh­ vËy tr­íc hÕt c¸m ¬n ng­¬i , c¸t l·o ®Çu ë trÊn trªn ®İch phİa nam .") 
SetTask(70,2) 
AddNote("TiÕp nhËn vô trî gióp Lç l·o ®Çu ®Õn trÊn nam t×m c¸t l·o ®Çu m­în s¸ch . ") 
Msg2Player("TiÕp nhËn vô trî gióp Lç l·o ®Çu ®Õn trÊn nam t×m c¸t l·o ®Çu m­în s¸ch . ") 
end 

function no() 
end 

function step2() 
AddEventItem(189) 
Msg2Player(" lÊy ®­îc di kiªn chİ ") 
SetTask(70,6) 
AddNote("Tõ Lç l·o chç lÊy ®­îc di kiªn chİ ") 
end 

function WTask70_prise() 
DelItem(188) 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
SetTask(70,10) 
AddRepute(5) -- script viet hoa By http://tranhba.com  thªm danh väng 5 ®iÓm 
AddNote("§em kª thÇn lôc cho Lç gia , hoµn thµnh nhiÖm vô , lÊy ®­îc mét c¸i da tr©u ®ai l­ng #. ") 
Msg2Player(" lÊy ®­îc mét c¸i da tr©u ®ai l­ng #. ") 
Msg2Player("Ng­¬i danh väng gia t¨ng 5 ®iÓm ") 
end 
