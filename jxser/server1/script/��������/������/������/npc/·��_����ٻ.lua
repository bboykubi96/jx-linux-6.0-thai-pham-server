-- script viet hoa By http://tranhba.com  thóy khãi cöa yªn hiÓu xinh ®Ñp 20 cÊp nhiÖm vô #40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_cy = GetTask(6) 
if (GetSeries() == 2) and (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  nhiÖm vô t­¬ng quan cïng víi m«n ph¸i ®èi tho¹i 
		if (UTask_cy >= 20*256+10) and (UTask_cy < 30*256) then		-- script viet hoa By http://tranhba.com 20¼¶ÈÎÎñ½øĞĞÖĞ
if (GetTimerId() == 8) then 
StopTimer() -- script viet hoa By http://tranhba.com  gi¶i ®éc 
Msg2Player("Ng­¬i tróng ®éc cßn kh«ng cã mæ ") 
Talk(1,"L20_check","S­ muéi mau tíi ®©y , ta gióp ng­¬i gi¶i ®éc .") 
else 
L20_check() 
end 
elseif (UTask_cy == 20*256) and (GetLevel() >= 20) then -- script viet hoa By http://tranhba.com 20 cÊp nhiÖm vô 
Say("Yªn hiÓu xinh ®Ñp # bæn m«n nu«i rÊt nhiÒu kim phong , nh÷ng thø nµy kim phong muèn ¨n mét lo¹i ®Æc thï hoa mËt ## ®¹i m¹n ®µ la hoa ®İch hoa mËt . gÇn nhÊt hoa mËt dïng hÕt råi , ng­¬i cã thÓ gióp ta th¶i m­êi buéi c©y hoa trë l¹i sao ? ",2,"Cã thÓ !/L20_get_yes","§Ö tö c«ng phu : thêi gian cßn kĞm , sî r»ng kh«ng lµm ®­îc /L20_get_no") 
		elseif (UTask_cy == 40*256+30) then							-- script viet hoa By http://tranhba.com 40¼¶ÈÎÎñÍê³É
L40_prise() 
elseif ((UTask_cy == 40*256) and (GetLevel() >= 40)) then -- script viet hoa By http://tranhba.com 40 cÊp nhiÖm vô khëi ®éng 
Say("Nghe nãi thµnh §¹i Lı cã mét ¸c ph¸ch , ®Æc biÖt m¹nh c­íp d©n n÷ , kh«ng biÕt h¹i chÕt bao nhiªu v« téi thiÕu n÷ , ng­¬i nguyÖn ı ®i diÖt trõ thÕ gian nµy thø b¹i ho¹i sao ?",2," lÇn nµy ta ®em v× d©n trõ h¹i /L40_get_yes","§Ö tö c«ng phu : thêi gian cßn kĞm , sî r»ng kh«ng lµm ®­îc /L40_get_no") 
elseif (UTask_cy > 40*256) and (UTask_cy < 50*256) then -- script viet hoa By http://tranhba.com 40 cÊp nhiÖm vô tiÕn hµnh trung 
Talk(1,"","H¾n cã rÊt nhiÒu thñ h¹ , s­ muéi ph¶i cÈn thËn !") 
else 
Talk(1,"","Nam nh©n kh«ng cã g× tèt , s­ muéi ph¶i cÈn thËn , h¾n lµm chuyÖn ®Òu kh«ng ph¶i lµ chuyÖn g× tèt .") 
end 
else 
Talk(1,"","Nam nh©n kh«ng cã tèt ! ") 
end 
end; 

function L20_get_yes() 
Talk(3,"","M¹n ®µ la hoa në ë t©y b¾c ®İch mét trªn s­ên nói . ng­¬i h¸i hoa ®İch thêi ®iÓm ph¶i cÈn thËn , ®¹i m¹n ®µ la hoa cã kŞch ®éc , v× vËy nhÊt ®Şnh ph¶i ë h¹n ®Şnh thêi gian bªn trong h¸i ®­îc hoa , nÕu kh«ng sÏ tróng ®éc mµ chÕt . "," ë trong thêi gian ng¾n h¸i ®Õn 10 ®ãa hoa thËt lµ phiÒn to¸i .","Cho nªn s­ muéi h¸i ®Õn 10 ®ãa sau ph¶i nhanh lªn mét chót trë l¹i ") 
	SetTask(6,20*256+10)
AddNote("§i h¸i 10 ®ãa ®¹i m¹n ®µ la hoa , cÈn thËn hoa cã ®éc , ë trong thêi gian ng¾n muèn h¸i ®Õn 10 ®ãa mang vÒ ") 
Msg2Player("§i h¸i 10 ®ãa ®¹i m¹n ®µ la hoa , cÈn thËn hoa cã ®éc , ë trong thêi gian ng¾n muèn h¸i ®Õn 10 ®ãa mang vÒ ") 
end; 

function L20_get_no() 
end; 

function L20_check() 
i = GetItemCount(1) 
for j = 1, i do DelItem(1) end -- script viet hoa By http://tranhba.com  kiÓm tra cã hay kh«ng 10 ®ãa hoa 
if (i >= 10) then -- script viet hoa By http://tranhba.com  nÕu nh­ cã 10 c¸ lµ hoµn thµnh nhiÖm vô 
Talk(1,"","<#> yªn hiÓu xinh ®Ñp :"..i.."<#> ®¹i m¹n ®µ la hoa ®· ®ñ råi , s­ muéi thËt lµ cã b¶n l·nh , cã thÓ trë thµnh nhŞ phÈm hoa khiÕn cho ") 
SetTask(6,30*256) 
SetRank(33) 
-- script viet hoa By http://tranhba.com  AddMagic(269) 
add_cy(30) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm thóy khãi cöa nhŞ phÈm hoa khiÕn cho , häc ®­îc b¨ng t©m xinh ®Ñp ¶nh vâ c«ng . ") 
AddNote("H¸i ®Õn 10 ®ãa ®¹i m¹n ®µ la hoa , hoµn thµnh nhiÖm vô , th¨ng lµm nhŞ phÈm hoa khiÕn cho ") 
else 
Talk(2,"","Yªn hiÓu xinh ®Ñp # nh­ng lµ ng­¬i cßn kh«ng cã th¶i ®ñ m­êi ®ãa ®¹i m¹n ®µ la hoa nha , kh«ng cã mét lÇn th¶i ®ñ m­êi ®ãa lµ kh«ng cã İch lîi g× .","Xin s­ muéi mét lÇn n÷a ®i mét chuyÕn ®i .") 
		SetTask(6,20*256+10)
end 
end; 

function L40_get_yes() 
Talk(1,"","H¶o , chuyÖn nµy liÒn giao cho ng­¬i .") 
	SetTask(6,40*256+10)
AddNote("TiÕp nhËn vô # d¹y dç thµnh §¹i Lı bªn trong ®İch ¸c ph¸ch ") 
Msg2Player("TiÕp nhËn vô # d¹y dç thµnh §¹i Lı bªn trong ®İch ¸c ph¸ch ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
Talk(2,"","S­ tû , ta ®· cøu ra liÔu tÊt c¶ bŞ ¸c ph¸ch b¾t ®i ®İch c« g¸i , cßn hung h¨ng d¹y dç h¾n , h¾n còng kh«ng d¸m n÷a v× kh«ng ph¶i lµ t¸c ng¹t liÔu !","Chóng ta thóy khãi cöa ®İch ®Ö tö chØ cÇn xuÊt thñ , còng ch­a cã kh«ng lµm ®­îc chuyÖn cña , b¶n l·nh cña ng­¬i thËt lµ cµng ngµy cµng m¹nh , tiÕp tôc cè g¾ng ®i ") 
SetTask(6,50*256) 
SetRank(77) 
-- script viet hoa By http://tranhba.com  AddMagic(100) 
add_cy(50) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm thóy khãi cöa hoa thÇn sö ng­êi , häc ®­îc hé thÓ hµn b¨ng . ") 
AddNote("Cøu ra liÔu tÊt c¶ bŞ ¸c ph¸ch b¾t ®i ®İch c« g¸i , cßn hung h¨ng d¹y dç h¾n , hoµn thµnh 40 cÊp nhiÖm vô , th¨ng lµm thóy khãi cöa hoa thÇn sö ng­êi ") 
end; 
