-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp l·o c¸ «ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function main() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) then 		-- script viet hoa By http://tranhba.com 40¼¶ÈÎÎñ
UTask_tw40sub = GetTask(14) 
if (UTask_tw40sub == 0) then -- script viet hoa By http://tranhba.com  tö nhiÖm vô khëi ®éng 
Talk(4,""," l·o nh©n gia , ®©y lµ ng­¬i c©u ®Õn ®İch l«ng xanh con rïa sao ?","§óng vËy , h«m nay thËt may m¾n , ®©y còng kh«ng ph¶i lµ dÔ dµng ®ông ph¶i chuyÖn cña t×nh ®©y !","T¹i h¹ ®ang muèn dïng nã lµm thuèc cøu ng­êi ®©y , ng­¬i cã thÓ ®em nã cho ta kh«ng ?","H«m nay mang ®İch måi c©u gièng nh­ kh«ng ®ñ , ng­¬i nÕu lµ cho ta t×m mÊy c¸i con giun ta liÒn ®em nã cho ng­¬i !") 
AddNote("NhËn ®µo con giun ®æi l«ng xanh con rïa nhiÖm vô ") 
Msg2Player("T×m mÊy con l«ng xanh con rïa trë vÒ cho l·o c¸ «ng liÒn cã thÓ ®æi ®Õn l«ng xanh con rïa ") 
SetTask(14,1) 
elseif (UTask_tw40sub == 9) and (HaveItem(150) == 1) then 
Talk(3, "","Nh­ thÕ nµo ? cã con giun sao ? ", " l·o nh©n gia # ng­¬i xem nh÷ng thø nµy ®ñ ch­a ?","RÊt tèt , l«ng xanh con rïa ®­a cho ng­¬i !") 
DelItem(150) 
AddEventItem(94) 
Msg2Player("T×m ®­îc l«ng xanh con rïa ") 
SetTask(14,10) 
AddNote("Mang ®Õn con giun ®­a cho c©u c¸ «ng ®æi lÊy l«ng xanh con rïa ") 
elseif (UTask_tw40sub >= 10) then 
if (HaveItem(94) == 0) then 
AddEventItem(94) 
Talk(2,""," l·o nh©n gia , ng­¬i ®­a cho ta ®İch l«ng xanh con rïa ta vøt bá !","A # ng­¬i thÕ nµo vËn tèt nh­ vËy ®©y # ta míi võa c©u ®Õn mét con , ng­¬i nhanh lªn cÇm ®i cøu ng­êi !") 
else 
Talk(1,""," l·o h¸n ta mçi ngµy ®Òu ë n¬i nµy c©u c¸ , n¬i nµy c¸ còng biÕt ta ") 
end 
else 
if (UTask_tw40sub ~= 0) and (UTask_tw40sub ~= 1) and (UTask_tw40sub ~= 3) and (UTask_tw40sub ~= 5) and (UTask_tw40sub ~= 7) and (UTask_tw40sub ~= 9) and (UTask_tw40sub ~= 10) then 
SetTask(14,0) 
Talk(1,"","TiÓu tö , xem ng­¬i khİ s¾c kh«ng ph¶i lµ rÊt tèt , hay lµ tr­íc nghØ ng¬i mét chót , cã c¸i g× tõ tõ nãi . ") 
else 
Talk(1,"","Cho ta t×m mÊy c¸i con giun ta liÒn ®em l«ng xanh con rïa ®­a cho ng­¬i . ") 
end 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","NhÑ mét chót , kh«ng muèn kinh ®éng c¸ cña ta ! ") 
else 
Talk(1,""," l·o h¸n ta mçi ngµy ®Òu ë n¬i nµy c©u c¸ , n¬i nµy c¸ còng biÕt ta ") 
end 
end 
end; 
