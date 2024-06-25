-- script viet hoa By http://tranhba.com  Hoa S¬n tuyÖt ®Ønh dùng bang NPC 
-- script viet hoa By http://tranhba.com  By#Dan_Deng(2003-09-23) 
-- script viet hoa By http://tranhba.com edit by tiÓu l·ng nhiÒu h¬n (2007-09-14) 
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function about_tong() 
Talk(7,"","§Ó lËp bang héi lµm bang chñ, ng­êi ch¬i ph¶i cã ®¼ng cÊp tõ 61 trë lªn, ®· xuÊt s­ rêi khái m«n ph¸i ch÷ ®á trªn ®Çu, cã 1 nh¹c v­¬ng kiÕm vµ 1 v¹n l­îng trong r­¬ng, ®¼ng c¸p thèng so¸i 20 trë lªn, danh väng 200 trë lªn.","# ng­¬i hái thµnh lËp bang héi cã ®iÒu kiÖn g× , ta tíi tõ tõ nãi cho ng­¬i nghe !","§Çu tiªn ng­¬i nhÊt ®Şnh ph¶i ®· xuÊt s­ ®éc lËp x«ng x¸o giang hå # tiÕp theo ng­¬i kh«ng thÓ ë bÊt kú bang héi trung # lÇn n÷a ng­¬i muèn cô cã nhÊt ®Şnh giang hå danh väng # cuèi cïng ng­¬i thèng suÊt lùc kh«ng thÓ nhá víi 30 cÊp !","§¹t tíi nh÷ng thø nµy yªu cÇu sau ng­¬i chØ cÇn tõ tèng kim trªn chiÕn tr­êng ®¹t ®­îc mét thanh nh¹c v­¬ng kiÕm lÊy nµy lµm bang chñ tİn vËt lµ ®­îc råi . nÕu nh­ ng­¬i thµnh lËp ®İch bang ph¸i cã ®Çy ®ñ nhiÒu ng­êi ñng hé , c¸i nµy bang héi lµ cã thÓ trë thµnh chİnh thøc bang héi mµ vËn hµnh ","§Çu tiªn ng­¬i ph¶i cã n¨ng lùc , ë 3 ngµy bªn trong İt nhÊt ph¶i t×m ®­îc 16 c¸ cïng ng­¬i chİ thó t­¬ng ®Çu/®¾c ng­êi cña gia nhËp , nÕu nh­ kh«ng ®ñ liÒn kh«ng cã kh«ng cã biÖn ph¸p kh¸c , c¸i nµy 3 ngµy cã thÓ gäi lµ kh¶o nghiÖm kú '."," ë ng­¬i bang héi cã 16 ng­êi sau giang hå sÏ cho ng­¬i kh¶o nghiÖm , nÕu nh­ 3 h«m sau kh«ng ®ñ 16 ng­êi giang hå còng kh«ng thõa nhËn ng­¬i bang héi ","Cuèi cïng , thµnh lËp bang héi ph¶i cã ®¹i l­îng tiÒn b¹c . cè g¾ng ®¹t tíi môc tiªu ®i !") 
end 

function main(sel) 

dofile("script/global/g7vn/g7configall.lua")
dofile("script/Î÷±±ÄÏÇø/»ªÉ½/npc/kingofkingsoft.lua")

if(lapbanghoason == 0) then
	Say("Chøc n¨ng bang héi t¹m thêi ch­a më.")
	return 1;
end

Tong_name,oper = GetTong() 
if (oper == 0) and (GetTask(99) == 1) then 
Say("TiÕp tôc lËp ng­¬i bang héi , b¾t ®Çu chuyÖn giang hå nghiÖp !",2,"B¾t ®Çu dùng bang /Direct_CreateTong","Chê mét chót /wait_a_moment") 
elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 61) and (GetRepute() >= 200) and (GetLeadLevel() >= 20) and (HaveItem(195) == 1) then 
Talk(4,"create_pay","Nhµ ch¬i # kim s¬n ch­ëng m«n nh©n , xin hái ta muèn nh­ thÕ nµo míi cã thÓ gièng ng­¬i mét d¹ng trë thµnh khai t«ng lËp ph¸i trë thµnh mét gióp t«ng chñ ®©y ? ","Kim s¬n ch­ëng m«n nh©n # ®Çu tiªn ng­¬i muèn tin ch¾c m×nh cã t­¬ng øng n¨ng lùc , sau ®ã t×m ra mét d¹ng ®Æc biÖt vËt phÈm lµm bang chñ tİn vËt , nãi thİ dô nh­ ë trªn chiÕn tr­êng phÊn dòng giÕt ®Şch cã thÓ lÊy ®­îc nh¹c v­¬ng kiÕm ","Nhµ ch¬i # nh¹c v­¬ng kiÕm ? ng­¬i nãi lµ thanh kiÕm nÇy sao ? ","Kim s¬n ch­ëng m«n nh©n # th× ra lµ ng­¬i ®· cã nã . kh«ng tÖ , qu¶ nhiªn tuæi trÎ tµi cao . ") 
else -- script viet hoa By http://tranhba.com  nµy bé phËn v× thiÕu tØnh ®èi tho¹i , ®îi më réng . 
Say("<#>"..GetName().." cã chuyÖn g× kh«ng ?", 
2, 
"<#>T×m hiÓu c¸ch thøc thµnh lËp vµ x©y dùng bang héi !/about_tong", 
-- script viet hoa By http://tranhba.com  "<#> nhËn lÊy thµnh chñ bang héi t­ëng th­ëng /talk_citytong_award", 
"<#>Kh«ng cã g× /nothing") 
-- script viet hoa By http://tranhba.com  i = random(0,1) 
-- script viet hoa By http://tranhba.com  if (i == 0) then 
-- script viet hoa By http://tranhba.com  Talk(1,"","Kim s¬n ch­ëng m«n nh©n # nÕu nh­ muèn thµnh lËp m×nh bang héi , sÏ v× nã bá ra ®¹i l­îng thêi gian tinh lùc cïng t©m huyÕt , thiÕt kh«ng thÓ nöa ®­êng hñy bá . ") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Talk(4,"","Kim s¬n ch­ëng m«n nh©n # ng­¬i hái thµnh lËp bang héi cã ®iÒu kiÖn g× , ta tíi tõ tõ nãi cho ng­¬i nghe . ","Kim s¬n ch­ëng m«n nh©n # ®Çu tiªn ng­¬i nhÊt ®Şnh ph¶i ®· xuÊt s­ ®éc lËp x«ng x¸o giang hå # tiÕp theo ng­¬i kh«ng thÓ ë bÊt kú bang héi trung # lÇn n÷a ng­¬i muèn cô cã nhÊt ®Şnh giang hå danh väng # cuèi cïng ng­¬i thèng suÊt lùc kh«ng thÓ nhá víi 30 cÊp . ","Kim s¬n ch­ëng m«n nh©n # ®¹t tíi nh÷ng thø nµy yªu cÇu sau ng­¬i chØ cÇn tõ trªn chiÕn tr­êng ®¹t ®­îc mét thanh nh¹c v­¬ng kiÕm lÊy nµy lµm bang chñ tİn vËt lµ ®­îc råi . nÕu nh­ ng­¬i thµnh lËp ®İch bang ph¸i cã ®Çy ®ñ nhiÒu ng­êi ñng hé , c¸i nµy bang héi lµ cã thÓ trë thµnh chİnh thøc bang héi mµ vËn hµnh . ","Kim s¬n ch­ëng m«n nh©n # cuèi cïng , cã thÓ t­ëng t­îng ®­îc bang ph¸i vËn hµnh cßn cÇn ®¹i l­îng tiÒn b¹c , h­íng môc tiªu cña ng­¬i cè g¾ng lªn , ng­êi tuæi trÎ #") 
-- script viet hoa By http://tranhba.com  Talk(6,"","Kim s¬n ch­ëng m«n nh©n # ng­¬i hái thµnh lËp bang héi cã ®iÒu kiÖn g× , ta tíi tõ tõ nãi cho ng­¬i nghe . ","Kim s¬n ch­ëng m«n nh©n # ®Çu tiªn ng­¬i nhÊt ®Şnh ph¶i ®· xuÊt s­ ®éc lËp x«ng x¸o giang hå # tiÕp theo ng­¬i kh«ng thÓ ë bÊt kú bang héi trung # lÇn n÷a ng­¬i muèn cô cã nhÊt ®Şnh giang hå danh väng # cuèi cïng ng­¬i thèng suÊt lùc kh«ng thÓ nhá víi 30 cÊp . ","Kim s¬n ch­ëng m«n nh©n # ®¹t tíi nh÷ng thø nµy yªu cÇu sau ng­¬i chØ cÇn tõ trªn chiÕn tr­êng ®¹t ®­îc mét thanh nh¹c v­¬ng kiÕm lÊy nµy lµm bang chñ tİn vËt lµ ®­îc råi thµnh lËp bang héi liÔu . ","Kim s¬n ch­ëng m«n nh©n # bÊt qu¸ cßn ph¶i chó ı lµ , ng­¬i muèn tin ch¾c m×nh cã t­¬ng øng ¶nh h­ëng lùc cïng n¨ng lùc l·nh ®¹o , ng­¬i nhÊt ®Şnh ph¶i ë 3 ngµy bªn trong t×m ®­îc İt nhÊt 16 tªn chİ ®ång ®¹o hîp ng­êi tíi ñng hé ng­¬i , nÕu kh«ng bang héi còng kh«ng c¸ch nµo thµnh lËp , ba ngµy nay b×nh th­êng x­ng lµ “ kh¶o nghiÖm kú ” . ","Kim s¬n ch­ëng m«n nh©n # h¬n n÷a bÊt cø lóc nµo nÕu nh­ ng­¬i bang héi nh©n sè İt víi 16 ng­êi tho¹i , giang hå sÏ lËp tøc ®em ng­¬i bang héi lÇn n÷a tiÕn hµnh kh¶o nghiÖm , nÕu nh­ ë trong vßng ba ngµy kh«ng thÓ kh«i phôc l¹i 16 ng­êi trë lªn , giang hå ®ång ®¹o vÉn sÏ kh«ng thõa nhËn ng­¬i bang héi . ","Kim s¬n ch­ëng m«n nh©n # cuèi cïng , cã thÓ t­ëng t­îng ®­îc bang ph¸i vËn hµnh cßn cÇn ®¹i l­îng tiÒn b¹c , h­íng môc tiªu cña ng­¬i cè g¾ng lªn , ng­êi tuæi trÎ #") 
-- script viet hoa By http://tranhba.com  end 
end 
end 

function create_pay() 
Say("Kim s¬n ch­ëng m«n nh©n # nh­ vËy , ng­¬i chØ cÇn cã ®Çy ®ñ tiÒn b¹c ®Ó cho bang ph¸i cã thÓ vËn chuyÓn lªn lµ ®­îc råi , nãi thİ dô nh­ cã c¸ 1 v¹n l­îng b¹c ®i . ",2,"Kh«ng thµnh vÊn ®Ò , ta ®· cã 2000 v¹n l­îng b¹c /create_pay_yes","Qu¸ phİ tiÒn , İt mét chót cã ®­îc hay kh«ng /create_pay_no") 
end 

function create_pay_yes() 
if (GetCash() >= 10000) then 
Pay(10000) -- script viet hoa By http://tranhba.com  thu lÖ phİ 
DelItem(195) -- script viet hoa By http://tranhba.com  thñ tiªu t­¬ng quan ®¹o cô 
SetTask(99,1) -- script viet hoa By http://tranhba.com  còng ®¸nh th­îng dÊu hiÖu # ®ång thêi ®Şnh nghÜa v× trong bang ph¸i ®İch ng­êi thø nhÊt # tøc bang chñ b¶n th©n ## 
Direct_CreateTong() -- script viet hoa By http://tranhba.com  b¾t ®Çu dùng bang 
else 
Talk(1,"","Kim s¬n ch­ëng m«n nh©n # ng­¬i tùa hå còng kh«ng cã nhiÒu tiÒn nh­ vËy a , nh­ vËy lµ kh«ng ®­îc . chê ng­¬i cã ®Çy ®ñ kinh tÕ n¨ng lùc tíi t×m ta n÷a ®i . ") 
end 
end 

function create_pay_no() 
Talk(1,"","Kim s¬n ch­ëng m«n nh©n # ë duy tr× bang héi ®İch b×nh th­êng vËn hµnh vèn chİnh lµ rÊt phİ tiÒn , nÕu nh­ ng­¬i ®iÒu nµy còng th¶o giíi hoµn giíi , theo l·o phu thÊy cßn ch­a ph¶i muèn dùng bang ®İch h¶o . ") 
end 

function Direct_CreateTong() 
CreateTong(1) -- script viet hoa By http://tranhba.com  b¾n ra dùng bang ®èi tho¹i khu«ng , kÕt thóc ch©n vèn khèng chÕ 
end 

function wait_a_moment() 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc mét nhµ ch¬i chç ë bang héi chiÕm lÜnh ®İch thµnh phè , trë vÒ t¸c dÉn trŞ gi¸ 
function gettongownercity() 
-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i bang héi tªn 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 

-- script viet hoa By http://tranhba.com  chia ra lÊy ®­îc b¶y ®¹i thµnh thŞ ®İch bang héi tªn cïng nhµ ch¬i bang héi tªn so s¸nh 
local strCityTongName 

for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "" and strCityTongName == strTongName) then 
return nCityID 
end 
end 

-- script viet hoa By http://tranhba.com  bµy tá nhµ ch¬i chç ë bang héi kh«ng cã chiÕm lÜnh thµnh phè 
return 0 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra dÉn t­ëng ®iÒu kiÖn 
function check_award_condition(city_index, show_talk) 
if (city_index == 0) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã chiÕm lÜnh thµnh phè ®İch bang ph¸i míi cã thÓ dÉn t­ëng , dÉn huynh ®Ö cña m×nh ®i chiÕm lÜnh mét tßa thµnh ®i !") 
end 
return 0 
end 

local tong_master = GetTongMaster() 
local player_name = GetName() 
if (tong_master ~= player_name) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã bang chñ míi cã thÓ nhËn lÊy bang ph¸i t­ëng th­ëng , gäi bang chñ tíi ®©y ") 
end 
return 0 
end 

local wday = tonumber(date("%w")) -- script viet hoa By http://tranhba.com  h«m nay lµ thø mÊy ? 
local hour = tonumber(date("%H")) 
if (wday ~= 1 or hour < 9 or hour >= 20) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã mçi tuÇn mét 9:00~20:00 míi lµ dÉn t­ëng thêi gian , ®Õn lóc ®ã trë l¹i ®i ") 
end 
return 0 
end 

local date = tonumber(date("%Y%m%d")) 
if (date == get_citybonus_date(city_index)) then 
if (show_talk == 1) then 
Talk(1, "", "<#> tuÇn nµy ®İch phÇn th­ëng ®· lÜnh , cuèi tuÇn trë l¹i ®i . ") 
end 
return 0 
end 

return 1 
end 

-- script viet hoa By http://tranhba.com  nhËn lÊy thµnh chñ bang héi t­ëng th­ëng 
function talk_citytong_award() 
local city_index = gettongownercity() 
if (check_award_condition(city_index, 1) == 1) then 
Say("<#> nhËn lÊy thµnh chñ bang héi t­ëng th­ëng ", 
2, 
"<#> ta muèn dÉn 60 c¸ /#take_tong_award(60)", 
"<#> ta t¹m thêi kh«ng dÉn /nothing") 
end 
end 

-- script viet hoa By http://tranhba.com  nhËn lÊy bao tiÒn l× x× 
function take_tong_award(count) 
-- script viet hoa By http://tranhba.com  mét bao tiÒn l× x× chiÕm mét c¸ch tö 
if (CalcFreeItemCellCount() < count) then 
Talk(1, "", "<#> l­ng cña ng­¬i tói ®Çy , söa sang l¹i sau n÷a dÉn t­ëng .") 
return 
end 

local city_index = gettongownercity() 
if (check_award_condition(city_index, 0) == 0) then 
return 
end 

local today = tonumber(date("%Y%m%d")) 
set_citybonus_date(city_index, today) 
-- script viet hoa By http://tranhba.com  cho bao tiÒn l× x× 
for i = 1, count do 
AddItem(6,1,1535,1,1,1) 
end 
local msg = date("[%y-%m-%d %H:%M] ") .. GetAccount() .. "(".. GetName().. ") get " .. count .. " <#> ®¹i bao tiÒn l× x× from kim s¬n ch­ëng m«n nh©n " 
WriteLog(msg); 
Talk(1, "", "<#> ®©y lµ ng­¬i cöa ®İch phÇn th­ëng , cÇm ®i ®i ") 
end 
