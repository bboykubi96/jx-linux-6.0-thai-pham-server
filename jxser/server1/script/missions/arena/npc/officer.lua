Include("\\script\\missions\\arena\\player.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\maps\\checkmap.lua")
IncludeLib("TITLE") 

local tbTitle2Id = 
{ 
[" §éc c« cÇu b¹i "] = 237, 
[" vâ l©m chİ t«n "] = 238, 
[" mét ®¹i t«ng s­ "] = 239, 
[" tuyÖt thÕ cao thñ "] = 240, 
[" næi tiÕng giang hå "] = 241, 
[" hiÖp danh lan xa "] = 242, 
[" vâ l©m t©n tó "] = 243, 
[" míi vµo giang hå "] = 244, 
[" nhËp m«n ®Ö tö "] = 245, 
} 

function want_get_title() 
local szTitle = " ®¹i hiÖp mçi tuÇn tham gia ®ñ 20 trµng c¹nh kü chiÕn liÒn cã thÓ lÊy ®­îc c¹nh kü chiÕn danh hiÖu " 
local tbOpt = 
{ 
{"Ta muèn dÉn danh hiÖu ", get_title, {}}, 

{"Ta ch¼ng qua lµ xem mét chót "}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

function get_title() 
if tbPlayer:GetTitleFlag() ~= 0 then 
return Talk(1, "","Mét tuÇn chØ dÉn mét lÇn ") 
end 

if tbPlayer:GetCurCount() < tbPlayer.PER_WEEK_COUNT then 
return Talk(1, "", format("Muèn tham gia ®ñ %d trµng míi cã thÓ nhËn lÊy ", tbPlayer.PER_WEEK_COUNT)) 
end 

local szTitle = tbPlayer:GetTitle() 
local nTitleId = %tbTitle2Id[szTitle] 
if not nTitleId then 
return 
end 

tbPlayer:SetTitleFlag() 
	local nTime = GetCurServerTime() + 60*60*24*7
nTime = tonumber(FormatTime2String("%m%d%H%M", nTime)) 
SetTask(TASK_ACTIVE_TITLE, nTitleId); 
Title_AddTitle(nTitleId, 2, nTime) 
Title_ActiveTitle(nTitleId) 
end 

function show_introduction() 
local szTitle = " c¸c vŞ h¶o # s©n ®Êu ®· ë trong chèn giang hå réng r·i tuyªn truyÒn liÔu <enter> ghi danh # ®iÓm kİch con chuét bªn ph¶i kiÖn tiÕn vµo ë vµo trang chİnh mÆt bªn ph¶i th­îng gi¸c ®İch s©n ®Êu b¶n khèi më ra ghi danh giíi mÆt ; <enter> s©n ®Êu vinh dù huy ch­¬ng : mçi th¸ng gÆp ®Çu 20 trµng cã thÓ nhËn lÊy vinh dù huy ch­¬ng , ®¹i hiÖp ®¸nh ®ñ 20 trµng còng cã thÓ nhËn lÊy nh÷ng kh¸c vinh dù huy ch­¬ng ; <enter> chiÕn ®éi cÊp bËc : c¨n cø ng­¬i ë ®©y chiÕn ®éi trung ®İch ng­êi biÓu hiÖn sÏ ®Ò cao hoÆc rít xuèng ng­¬i chiÕn ®éi cÊp bËc ; <enter> vinh dù huy ch­¬ng cöa hµng # sö dông vinh dù huy ch­¬ng mua c¸c lo¹i quı träng ®¹o cô " 
local tbOpt = 
{ 
{"Cã thÓ !", }, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

function open_credits_shop() 
local nMapId = GetWorldPos() 
if (IsFreshmanMap(nMapId) == 1 or IsCityMap(nMapId) == 1) and GetFightState() == 0 then 
Sale(175, 16) 
else 
Msg2Player("ChØ cã thÓ ë thµnh phè cïng n«ng th«n chê an toµn khu vùc khai cöa hµng .") 
end 
end 


function main() 
-- script viet hoa By http://tranhba.com  t¾t s©n ®Êu kü n¨ng - Modified By NgaVN - 20120305 
do 
Talk(1,"","Kü n¨ng t¹m ®ãng/nh¾m !") 
return 
end 
local szTitle = " ®¹i hiÖp h¶o , b¶n th©n lµ s©n ®Êu quan viªn ." 
local tbOpt = 
{ 
{"NhËn lÊy vèn chu s©n ®Êu chiÕn ®éi danh hiÖu ", want_get_title, {}}, 
{"Khai s©n ®Êu vinh dù cöa hµng ", open_credits_shop, {}}, 
{"Giíi thiÖu s©n ®Êu tİnh n¨ng ", show_introduction, {}}, 
{"Hñy bá "}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end
