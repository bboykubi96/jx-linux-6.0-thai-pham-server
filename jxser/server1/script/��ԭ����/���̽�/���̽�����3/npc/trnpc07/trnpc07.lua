-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y H÷u hé ph¸p còng luËt İch c¸ch # ngµy nhÉn 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan # hñy bá cïng nµy ch©n h×nh d¹ng cò quan bé phËn # 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tr = GetTask(4) 
if (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 40*256) and (GetLevel() >= 40) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô khëi ®éng 
Say("C¨n cø tin/th¬ b¸o , triÒu ®×nh träng thÇn Th¸i óy <color=Red> liªu kú color> th× ra lµ h¼n lµ ®· dïng qua gian tÕ , mÆc dï h¾n ®· c¸o l·o vÒ quª , nh­ng quyÕt kh«ng thÓ ®Ó cho nã hoÆc lµ rêi ®i kim quèc , theo cã thÓ tin tin tøc , liªu kú cËp kú tïy tïng chuÈn bŞ lÊy ®¹o <color=Red> kiÕm c¸c <color> trë vÒ Tø Xuyªn , ta ph¸i ng­¬i lËp tøc ®éng th©n ®i tr­íc chÆn l¹i h¾n , nhÊt ®Şnh ph¶i lµm cho kiÕm c¸c thôc ®¹o trë thµnh h¾n t¸ng th©n ®Êt !", 2,"Thuéc h¹ tu©n lÖnh /L40_get_yes","Thuéc h¹ sî r»ng kh«ng thÓ ®am nµy tr¸ch nhiÖm nÆng nÒ /L40_get_no") 
		elseif (UTask_tr == 40*256+20) and (HaveItem(159) == 1) then
Talk(1,"L40_prise","§©y lµ ta ë liªu kú trªn ng­êi t×m ®­îc mËt th­ ") 
elseif (UTask_tr >= 10*256) and (UTask_tr < 40*256) then -- script viet hoa By http://tranhba.com  ch­a nhËn 40 cÊp nhiÖm vô 
Talk(1,""," luyÖn binh ngµn ngµy , dông binh nhÊt thêi , chØ cÇn toµn t©m toµn ı phôc vô bæn gi¸o , bæn gi¸o sÏ kh«ng b¹c ®·i ng­¬i !") 
elseif (UTask_tr > 40*256) and (UTask_tr < 50*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 40 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","Tin/th¬ b¸o <color=Red> liªu kú color> ®· ®Õn <color=Red> kiÕm c¸c thôc ®¹o ®İch khãa v©n ®éng <color> kiÕm c¸c mét d·y ®Şa h×nh phøc t¹p , ng­¬i cã thÓ tiªu İt tiÒn ®Ó cho <color=Red> « ®µn chñ color> dÉn ng­¬i ®i , nhanh ®i mau trë vÒ !") 
else -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,""," lµm ph¶n bæn gi¸o ng­êi cña , ta tuyÖt ®èi ®Ó cho h¾n sèng kh«ng b»ng chÕt !") 
end 
elseif (UTask_tr >= 70) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","NghÜ ®­îc ch­a ? muèn ë l¹i chç nµy , hoÆc lµ xu«i nam Trung Nguyªn ? ") 
else 
Talk(1,"","Ng­¬i lµ ai ? ch¼ng lÏ ng­¬i lµ Trung Nguyªn gi¸n ®iÖp ?") 
end 
end; 

function L40_get_yes() 
Talk(1,"","Tin/th¬ b¸o <color=Red> liªu kú color> ®· ®Õn <color=Red> kiÕm c¸c thôc ®¹o ®İch khãa v©n ®éng <color> kiÕm c¸c mét d·y ®Şa h×nh phøc t¹p , ng­¬i cã thÓ tiªu İt tiÒn ®Ó cho <color=Red> « ®µn chñ <color> dÉn ng­¬i ®i , nhanh ®i mau trë vÒ !") 
	SetTask(4, 40*256+20)
AddNote(" ë trªn trêi nhÉn d¹y tÇng thø ba thÊy H÷u hé ph¸p còng luËt İch c¸ch , tiÕp nhËn vô hµnh thİch , ®Õn khãa v©n ®éng ¸m s¸t liªu kú ") 
Msg2Player(" ë trªn trêi nhÉn d¹y tÇng thø ba thÊy H÷u hé ph¸p còng luËt İch c¸ch , tiÕp nhËn vô hµnh thİch , ®Õn khãa v©n ®éng ¸m s¸t liªu kú ") 
end; 

function L40_get_no() 
Talk(1,"","C¸i nµy chuyÖn nhá còng lµm kh«ng tèt , bæn gi¸o nu«i ng­¬i tíi lµm c¸i g× ?") 
end; 

function L40_prise() 
Talk(1, "", " lµm tèt l¾m , lÇn nµy lËp c«ng lín , ta nhÊt ®Şnh sÏ h­íng gi¸o chñ nãi ng­¬i ®İch h¶o tho¹i ") 
SetRank(59) 
DelItem(159) 
SetTask(4, 50*256) 
-- script viet hoa By http://tranhba.com  AddMagic(364) 
-- script viet hoa By http://tranhba.com  AddMagic(146) -- script viet hoa By http://tranhba.com  Ngò hiÒn chÊt 
add_tr(50) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i bŞ ®ãng cöa v× # ch­ëng kú thŞ , häc ®­îc bi t« giã m¸t . ") 
AddNote("Trë vÒ ngµy nhÉn d¹y , ®em mËt th­ giao cho H÷u hé ph¸p còng luËt İch c¸ch , hoµn thµnh hµnh thİch nhiÖm vô , th¨ng cÊp lµm ch­ëng kú thŞ ") 
end; 
