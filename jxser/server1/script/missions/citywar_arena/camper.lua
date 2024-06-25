-- script viet hoa By http://tranhba.com  gia nhËp mét ph­¬ng ®Ých Npc ®èi øng ch©n vèn 
-- script viet hoa By http://tranhba.com BattleId bªn ngoµi ®Ých toµn côc thay ®æi l­îng , bµy tá tr­íc mÆt khiªu chiÕn cuéc so tµi b¶n ®å ®Ých biªn sè (1-8) 

-- script viet hoa By http://tranhba.com HaveBeginWar(CityID) -- script viet hoa By http://tranhba.com  CityID(1-7) // b©y giê mét thµnh thÞ lµ hay kh«ng ®· më chiÕn , trë vÒ trÞ gi¸ lµ mét BOOL trÞ gi¸ 
-- script viet hoa By http://tranhba.com GetCityAreaName(CityID) // lÊy 1 ®Õn 7 ®Ých thµnh khu tªn , trë vÒ trÞ gi¸ lµ mét ch÷ phï chuçi 
-- script viet hoa By http://tranhba.com GetCityWarBothSides(CityID) // ®¹t ®­îc c«ng kÝch ph­¬ng cïng thñ ph­¬ng ®Ých bang héi tªn , trë vÒ hai ch÷ phï chuçi , theo nh­ thø tù chia ra ®¹i biÓu c«ng kÝch ph­¬ng cïng thñ ph­¬ng 
-- script viet hoa By http://tranhba.com NotifyWarResult(CityID, WarResult) // tranh tµi sau khi kÕt thóc , th«ng b¸o Relay tranh tµi kÕt qu¶ (WarResult v× BOOL trÞ gi¸ bµy tá c«ng thµnh míi lµ hay kh«ng th¾ng lîi ) 
-- script viet hoa By http://tranhba.com GetCityWarTongCamp(TongName) // ®¹t ®­îc tham dù c«ng thµnh chiÕn t­¬ng quan ho¹t ®éng ®Ých bang héi trËn doanh , trë vÒ INT tøc trËn doanh ®¹i biÓu trÞ gi¸ 
-- script viet hoa By http://tranhba.com IsArenaBegin(ArenaID) -- script viet hoa By http://tranhba.com  ArenaID(0-7) // ®¹t ®­îc tr­íc mÆt c¸c l«i ®µi trµng khu cã hay kh«ng b¾t ®Çu , trë vÒ BOOL 
-- script viet hoa By http://tranhba.com GetArenaCityArea(nArenaID) // ®¹t ®­îc tr­íc mÆt ®ang tiÕn hµnh ®Ých l«i ®µi cuéc so tµi lµ nh»m vµo c¸i nµo thµnh khu , trë vÒ trÞ gi¸ lµ CityID 
-- script viet hoa By http://tranhba.com GetArenaBothSides(ArenaID) // ®¹t ®­îc mét trµng l«i ®µi cuéc so tµi song ph­¬ng tªn , trë vÒ hai ch÷ phï chuçi , theo nh­ thø tù chia ra ®¹i biÓu gi¸p ph­¬ng Êt ph­¬ng 
-- script viet hoa By http://tranhba.com NotifyArenaResult(ArenaID, ArenaResult) // th«ng b¸o mét cuéc l«i ®µi cuéc so tµi kÕt thóc ®Ých tranh tµi kÕt qu¶ cho Relay, ArenaResult v× BOOL trÞ gi¸ bµy tá ®Ých gi¸p míi lµ hay kh«ng chiÕn th¾ng 
-- script viet hoa By http://tranhba.com GetArenaLevel() // ®¹t ®­îc tr­íc mÆt l«i ®µi cuéc so tµi chç ë ®æi phiªn lÇn , trë vÒ trÞ gi¸ 0: tranh tµi ®· kÕt thóc hoÆc lµ ch­a b¾t ®Çu , 1: vßng thø nhÊt , 2/3/4/5 lÊy lo¹i nµy ®Èy 
-- script viet hoa By http://tranhba.com GetArenaTotalLevel() // ®¹t ®­îc tr­íc mÆt l«i ®µi cuéc so tµi ®Ých tæng ®æi phiªn lÇn 
-- script viet hoa By http://tranhba.com GetCurArenaInfo() // ®¹t ®­îc tr­íc mÆt ®æi phiªn lÇn cuéc so tµi tr×nh 
-- script viet hoa By http://tranhba.com GetArenaTotalLevelByCity(CityID) // ®¹t ®­îc mét thµnh phè l«i ®µi cuéc so tµi ®Ých tæng ®æi phiªn lÇn 
-- script viet hoa By http://tranhba.com GetArenaInfoByCity(CityID, ArenaLevel) // ®¹t ®­îc mét thµnh phè l«i ®µi cuéc so tµi qu¶ ®Ých sè liÖu ,ArenaLevel: 0-Based 

Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\lib\\common.lua")
function main() 
ms_state = GetMissionV(MS_STATE); 
if (ms_state == 0) then 
WorldID = SubWorldIdx2ID(SubWorld); 
ArenaID = WorldID - 213; 
if (IsArenaBegin(ArenaID) ~= 0) then 
Tong1, Tong2 = GetArenaBothSides(ArenaID); 
Tong1 = safeshow(Tong1) 
Tong2 = safeshow(Tong2) 
Say(Tong1.." cïng "..Tong2.." lËp tøc chuÈn bÞ chiÕn ®Êu , cuéc so tµi trµng ®ang chuÈn bÞ trø , mçi ng­êi còng chuÈn bÞ xong ", 0); 
else 
Say("Thêi gian chiÕn ®Êu cßn ch­a tíi !", 1,"BiÕt , ta ®i tr­íc /OnCancel"); 
end; 
elseif (ms_state == 1) then 
OnReady(); 
elseif (ms_state == 2) then 
OnFighting(); 
else 
ErrorMsg(3) 
end; 
end; 

function OnHelp() 
Talk(8, "","Bang héi l«i ®µi lµ trªn giang hå c¸ bang héi gi÷a so tµi vâ nghÖ ®Ých ®Þa ph­¬ng # ®©y lµ mét c«ng b×nh c¹nh tranh ®Ých vâ ®µi/sµn nh¶y ","Muèn tham gia bang héi l«i ®µi , tr­íc ph¶i tíi h­íng ta th©n thØnh # th©n thØnh ng­êi ph¶i lµ tranh tµi bang héi ®Ých bang chñ #","Häp thµnh ®éi sau song ph­¬ng ®éi tr­ëng muèn tíi ghi danh . song ph­¬ng bang chñ mçi ng­êi muèn ®ãng I ngµn v¹n l­îng tiÒn ®Æt cäc . ","Nép tiÒn ®Æt cäc sau , tranh tµi th©n thØnh liÒn hoµn thµnh . ë 2 c¸ ban cã thÓ so víi cuéc so tµi trong lóc kh«ng thÓ ghi danh ","Th©n thØnh thµnh c«ng , song ph­¬ng ®éi viªn cã 10 phót gia nhËp tranh tµi . sau tranh tµi ®em chÝnh thøc b¾t ®Çu !","Th¾ng b¹i ®em kÕ vµo song ph­¬ng tranh tµi tÝch ph©n . mçi vÞ bang héi thµnh viªn ®em ®èi ph­¬ng ®¸nh träng th­¬ng ®Ých ®em cã 3 c¸ tÝch ph©n , ®èi ph­¬ng bÞ khÊu trõ 1 c¸ tÝch ph©n ","Tranh tµi kÕt thóc , tÝch ph©n cao bang héi ®em lÊy ®­îc th¾ng lîi #","Ngoµi ra , tranh tµi trung cã võa kh«ng cã thµnh viªn n÷a tranh tµi lµ th¾ng lîi thuéc vÒ mét mÆt kh¸c ","Th¾ng lîi bang héi ®em cã thÓ thu håi ®· nép ®Ých 1 ngµn v¹n l­îng , ngoµi ra , cßn cã thÓ lÊy ®­îc 800 v¹n l­îng ®Ých t­ëng th­ëng cïng 1 v¹n 2 ngµn ®iÓm bang héi kinh nghiÖm . thÊt b¹i bang héi kh«ng thÓ dÉn trë vÒ ®· nép ®Ých phÝ dông , cßn ph¶i khÊu trõ 1 v¹n 4 ngµn ®iÓm bang héi kinh nghiÖm "); 
end; 

function OnReady() 
V = GetMissionV(MS_NEWSVALUE); 
RestTime = (GO_TIME - V) * 20; 

if (RestTime < 0) then 
RestTime=0 
end; 

RestMin, RestSec = GetMinAndSec(RestTime); 

str = "<#> n¬i nµy ®ang tiÕn hµnh tranh tµi "..GetMissionS(3).."<#> c«ng thµnh khiªu chiÕn , b©y giê tranh tµi bang héi lµ :"..GetMissionS(1).."<#> ®èi víi "..GetMissionS(2).."<#>, vµo trµng thêi gian cßn cã "..RestMin.."<#> ph©n "..RestSec.."<#> gi©y ."; 
Say(str, 2,"Ta phï hîp ®iÒu kiÖn , muèn th­îng cuéc so tµi trµng /OnJoin","Ta kh«ng muèn th­îng cuéc so tµi trµng /OnCancel"); 
end; 

function ErrorMsg(ErrorId) 
if (ErrorId == 1) then 
Say("Muèn th©n thØnh so tµi song ph­¬ng bang chñ tr­íc ph¶i häp thµnh ®éi sau n÷a th©n thØnh tranh tµi ",0) 
elseif (ErrorId == 2) then 
Say("B¸o l¹i tªn ®Ých nÕu lµ muèn tham gia so tµi bang héi ®éi tr­ëng , bang chñ muèn dÉn ®ñ 1000 v¹n l­îng ",0) 
elseif (ErrorId == 3) then 
Say("Ghi danh h­ , xin liªn l¹c nh©n viªn qu¶n lý #",0); 
elseif (ErrorId == 4) then 
Say("Ng­¬i kh«ng ph¶i lµ tranh tµi song ph­¬ng thµnh viªn cña bang héi hoÆc lµ cuéc so tµi ng­êi trong s©n ®Õm ®· ®Çy , kh«ng thÓ ®i vµo !", 0); 
elseif(ErrorId == 5) then 
Say("Ghi danh bang chñ lµ muèn b©y giê ®éi ngò ®Ých ®éi tr­ëng ",0); 
else 

end; 

return 
end; 

function CheckIsCaptainAndTongMaster(szTong)
	--- check xem chu party co phai la bang chu hay khong
if  GetTongMaster() == GetName() then return 1 end-- ban than la bang chu khong can kiem tra  doi
local nTeamSize = GetTeamSize(); 
if nTeamSize == 0 then return 0 end -- khong co to doi
local nOld = PlayerIndex
for i=1,nTeamSize  do
	PlayerIndex = GetTeamMember(i)
	if GetTongName() == szTong and GetTongMaster() == GetName() and IsCaptain() == 1 then PlayerIndex = nOld return 1 end
end
PlayerIndex = nOld
return 0
end

function OnJoin() 
if (GetTongName() == GetMissionS(1)) then 
if CheckIsCaptainAndTongMaster(GetTongName()) ~= 1 then
	return Say("Chñ tæ ®éi cña ng­¬i ph¶i lµ bang chñ míi cã thÓ b¸o danh lóc nµy. Xin kiÓm tra l¹i",0)
end
if (GetJoinTongTime() >= 7200) then 
JoinCamp(1); 
else 
Say("Ng­¬i gia nhËp bang héi ®Ých thêi gian qu¸ ng¾n , kh«ng thÓ tham gia chiÕn ®Êu !", 0); 
end; 
elseif (GetTongName() == GetMissionS(2)) then 
if (GetJoinTongTime() >= 7200) then 
if CheckIsCaptainAndTongMaster(GetTongName()) ~= 1 then
	return Say("Chñ tæ ®éi cña ng­¬i ph¶i lµ bang chñ míi cã thÓ b¸o danh lóc nµy. Xin kiÓm tra l¹i",0)
end
JoinCamp(2); 
else 
Say("T ng­¬i gia nhËp bang héi ®Ých thêi gian qu¸ ng¾n , kh«ng thÓ tham gia chiÕn ®Êu !", 0); 
end; 
else 
ErrorMsg(4) 
end; 
end; 

function OnFighting() 
gametime = (floor(GetMSRestTime(MISSIONID,17)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = "<#> b©y giê ng­êi cña song ph­¬ng ®Õm lµ "..GetMSPlayerCount(MISSIONID, 1).."<#> "..GetMSPlayerCount(MISSIONID, 2).."<#>. thêi gian cßn thõa l¹i "..RestMin.."<#> ph©n "..RestSec.."<#> gi©y ."; 
str = "<#> b©y giê bang héi "..GetMissionS(1).."<#> cïng "..GetMissionS(2).."<#> ®ang tiÕn hµnh "; 
Say(str..str1, 0); 
end; 

function OnCancel() 

end; 
