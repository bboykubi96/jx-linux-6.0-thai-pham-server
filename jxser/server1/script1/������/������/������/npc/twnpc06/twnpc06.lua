-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp c¸ phô hµ tÈu 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(205) == 1 then 
allbrother_0801_FindNpcTaskDialog(205) 
return 0; 
end 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) then 		-- script viet hoa By http://tranhba.com 40¼¶ÈÎÎñ
UTask_tw40sub = GetTask(14) 
if (UTask_tw40sub == 3) then -- script viet hoa By http://tranhba.com  tö nhiÖm vô khëi ®éng 
Talk(1,"","Nam nh©n ta ra hå bé c¸ , mÊy ngµy nay ph¶i trë vÒ nhµ , h¾n thİch nhÊt uèng ng©n nhÜ h¹t sen thang , kh«ng khĞo trong nhµ ®İch h¹t sen còng dïng hÕt råi , ta b©y giê ®ang bÒ bén trø giÆt quÇn ¸o , ng­¬i cã thÓ gióp ta ®i ba l¨ng huyÒn tiÖm t¹p hãa mua chót h¹t sen trë l¹i sao ?") 
SetTask(14, 5) 
AddNote(" ë trªn trêi v­¬ng ®¶o n­íc tr¹i thÊy c¸ phô hµ tÈu gióp nµng ®Õn ba l¨ng huyÒn tiÖm t¹p hãa mua chót h¹t sen trë l¹i ") 
Msg2Player(" ë trªn trêi v­¬ng ®¶o n­íc tr¹i thÊy c¸ phô hµ tÈu gióp nµng ®Õn ba l¨ng huyÒn tiÖm t¹p hãa mua chót h¹t sen trë l¹i ") 
elseif (UTask_tw40sub == 5) then 
if (HaveItem(148) == 1) then -- script viet hoa By http://tranhba.com  tö nhiÖm vô hoµn thµnh 
Talk(1,"","C¸m ¬n ng­¬i gióp ta mua vÒ liÔu h¹t sen , c¸i nµy 3 c¸ trøng gµ ®­a cho ng­¬i ") 
DelItem(148) 
AddEventItem(149) 
Msg2Player(" lÊy ®­îc 3 c¸ trøng gµ ") 
SetTask(14, 7) 
AddNote("§em h¹t sen giao cho hµ tÈu , lÊy ®­îc 3 c¸ trøng gµ ") 
else 
Talk(1,""," ë ba l¨ng huyÒn tiÖm b¸ch hãa cã h¹t sen b¸n ") 
end 
elseif (UTask_tw40sub == 7) then 
if (HaveItem(149) == 0) then 
AddEventItem(149) 
Talk(2,"","Hµ tÈu ! ta kh«ng cÈn thËn ®em trøng gµ ®¸nh n¸t liÔu , chŞ d©u cã thÓ cho thªm ta mÊy sao ?","Xem ng­¬i rÊt lo l¾ng a , n¬i nµy cßn cã 3 c¸ trøng gµ , ®­a cho ng­¬i !") 
else 
Talk(1,"","Ng©n nhÜ h¹t sen thang mau lµm xong , thÕ nµo cßn kh«ng cã nh×n thÊy h¾n trë l¹i a ") 
end 
elseif (UTask_tw40sub == 0) then 
Talk(1,"","Ai cã thÓ ®ñ ®em ta h¹t sen mua vÒ liÒn thËt tèt qu¸ ") 
else 
Talk(1,"","Chång ta thÕ nµo b©y giê cßn ch­a cã trë vÒ ") 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","Nam nh©n ta lµ mét ng­êi ®µng hoµng , ®Õn b©y giê vÉn chØ lµ c¸ phã ®¹o dÉn , kh«ng biÕt lóc nµo míi cã thÓ thµnh ng­êi !") 
else 
Talk(1,""," ë bæn bang ®İch ®«ng ®¶o hé ph¸p trong , Lé l·o hé ph¸p ®èi víi bän thuéc h¹ réng nhÊt cho , H¹ hé ph¸p tho¹i İt nhÊt , v­¬ng tr­íc khiÕn cho lµm ng­êi nhÊt ngay th¼ng , d­¬ng bªn ph¶i khiÕn cho nhÊt kh«n khĞo cã thÓ lµm , cæ bªn tr¸i khiÕn cho sao …… lµm ng­êi nhÊt viªn ho¹t ,") 
end 
end 
end; 
