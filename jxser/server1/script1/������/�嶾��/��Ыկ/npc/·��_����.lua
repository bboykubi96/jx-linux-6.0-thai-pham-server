-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC xİch h¹t tr¹i chñ tµn s¸t dŞ 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_wu = GetTask(10) 
if (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 30*256+10) then		-- script viet hoa By http://tranhba.com  ÈÎÎñ½øĞĞÖĞ
if (HaveItem(87) == 1) then 
Talk(2,"L30_step1","Ngu ngèc # c¸i nµy méc h­¬ng ®Ønh lµ gi¶ ®İch ","Tİnh / chän , còng kh«ng tr¸ch ng­¬i ®­îc , ng­¬i ch­a tõng thÊy qua méc h­¬ng ®Ønh . thËt méc h­¬ng ®Ønh ph¶i lµ t¸n ra s©u kİn lam quang , mµ c¸i nµy còng lµ ph¸t hoµng . ") 
else 
Talk(1,"","§Ó cho ta tù m×nh ®i b¾t tªn ph¶n ®å nµy . ta muèn ®em h¾n b¾t ®­îc n¨m ®éc ®éng ®Ó cho ®éc trïng c¾n chÕt h¾n ") 
end 
		elseif (UTask_wu == 30*256+20) then		-- script viet hoa By http://tranhba.com  ÈÎÎñÍê³É
if (HaveItem(221) == 1) then 
DelItem(221) 
L30_prise() 
else 
Talk(1,"","Nhí # méc h­¬ng ®Ønh ph¸t ra chİnh lµ lam quang . ") 
end 
elseif ((UTask_wu == 30*256) and (GetLevel() >= 30)) then -- script viet hoa By http://tranhba.com 30 cÊp nhiÖm vô 
Talk(4,"L30_get","Bæn gi¸o gi¸o quy , ph¶n gi¸o ng­êi chÕt , nh­ng lµ hÕt lÇn nµy tíi lÇn kh¸c cã ng­êi gan lín väng v× #","Ch¼ng lÏ cã ng­êi sÏ tù t×m ®­êng chÕt sao ? ","Hõ , ta tİn nhiÖm nhÊt ®İch mét th©n tİn , l¹i trém ta luyÖn ®éc b¶o khİ ‘ méc h­¬ng ®Ønh ’ , ch¹y trèn tíi Vò di s¬n lªn råi , hõ # h¾n cho lµ cã thÓ ch¹y tho¸t ®­îc bµn tay cña ta t©m sao ? ","§å tr¹i chñ tİnh to¸n xö trİ nh­ thÕ nµo h¾n ?") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Ta kh«ng ph¶i lµ kh«ng tin t­ëng ng­¬i , ch¼ng qua lµ mét mùc nh×n lĞn ta c¸i ®ã ng­êi kú qu¸i chİnh lµ ¨n trém . b¶o bèi nµy ta lµ d­êng nµo chËt vËt míi lÊy ®­îc ?") 
end 
else 
Talk(1,"","Ta b×nh sanh hËn nhÊt nh÷ng thø kia béi tİn nghÜa khİ ®İch tiÓu nh©n ") 
end 
end; 

function L30_get() 
Say("Ta b©y giê cho ng­¬i mét c¬ héi lËp c«ng , ®i Vò di s¬n th­îng b¾t ®­îc c¸i nµy ph¶n tÆc , ®o¹t l¹i méc h­¬ng ®Ønh . ng­¬i cã nguyÖn ı hay kh«ng ®i a ? ",2,"NguyÖn v× §å tr¹i chñ hiÖu mÖnh /L30_get_yes","Thuéc h¹ c«ng lùc cßn ch­a ®ñ ®Ó , chØ lo l¾ng kh«ng thÓ hoµn thµnh nhiÖm vô . /L30_get_no") 
end; 

function L30_get_yes() 
Talk(1, "","NÕu nh­ ng­¬i cã thÓ ®o¹t l¹i méc h­¬ng ®Ønh , ta liÒn th¨ng ng­¬i v× bãng tèi Diªm La ") 
	SetTask(10,30*256+10)
AddNote(" lÇn n÷a th­îng Vò di s¬n ®o¹t l¹i méc h­¬ng ®Ønh ") 
Msg2Player(" lÇn n÷a th­îng Vò di s¬n ®o¹t l¹i méc h­¬ng ®Ønh ") 
end; 

function L30_get_no() 
end; 

function L30_step1() 
Talk(1,""," lµ , thuéc h¹ c¸i nµy ®i ®o¹t l¹i thËt méc h­¬ng ®Ønh tíi ") 
	SetTask(10,30*256+20)
DelItem(87) 
AddNote("Trë/mang lªn Vò di s¬n ®o¹t l¹i thËt méc h­¬ng ®Ønh ") 
Msg2Player("Trë/mang lªn Vò di s¬n ®o¹t l¹i thËt méc h­¬ng ®Ønh ") 
end; 

function L30_prise() 
Talk(2,"","Méc h­¬ng ®Ønh # h¶o # h¶o # ta lu«n lu«n th­ëng ph¹t ph©n minh , ng­¬i lÇn nµy lËp c«ng lín , tõ h«m nay trë ®i , ta liÒn th¨ng ng­¬i lµm gèc d¹y ®İch bãng tèi Diªm La . ","§a t¹ §å tr¹i chñ #") 
SetTask(10,40*256) 
SetRank(52) 
-- script viet hoa By http://tranhba.com  AddMagic(68) 
-- script viet hoa By http://tranhba.com  AddMagic(384) 
-- script viet hoa By http://tranhba.com  AddMagic(64) 
-- script viet hoa By http://tranhba.com  AddMagic(69) 
add_wu(40) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm bãng tèi Diªm La . häc ®­îc vâ c«ng # u minh kh« l©u # v« h×nh cæ # xİch viªm thùc ngµy ") 
AddNote("§o¹t ®­îc méc h­¬ng ®Ønh mang vÒ cho tµn s¸t dŞ , th¨ng lµm bãng tèi Diªm La ") 
end; 
