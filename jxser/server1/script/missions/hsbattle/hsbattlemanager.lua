-- script viet hoa By http://tranhba.com  dù thi l­u tr×nh 
-- script viet hoa By http://tranhba.com 1# cïng chñ nhËp khÈu ®İch Npc ®èi tho¹i , lùa chän tiÕn vµo thø mÊy c¸ chiÕn khu 
-- script viet hoa By http://tranhba.com 2# nÕu nh­ phï hîp ®iÒu kiÖn dù thi lµ tiÕn vµo chiÕn khu bªn trong # kh¸c mét tÊm b¶n ®å # , còng lÊy 0 trËn doanh m« thøc tiÕn vµo 
-- script viet hoa By http://tranhba.com 3# nhµ ch¬i cïng hai bªn Npc ®èi tho¹i , tù do lùa chän tham dù ®İch trËn doanh . 
-- script viet hoa By http://tranhba.com 4# nhµ ch¬i Pk tö vong sau ®em tù ®éng bŞ vÉn ra s©n bªn ngoµi , nh­ng ë bæn ®Şa ®å bªn trong 
-- script viet hoa By http://tranhba.com 5# khi nhµ ch¬i tö vong lóc , sÏ tù ®éng h­íng cïng b¶n ®å ®İch tÊt c¶ nhµ ch¬i c«ng bè tr­íc mÆt ®İch chiÕn huèng . 
-- script viet hoa By http://tranhba.com 6# nÕu nh­ cã thÓ , cã thÓ tõ Npc ®èi tho¹i trung hiÓu râ tr­íc mÆt ®İch tæng ®øng hµng thø 
-- script viet hoa By http://tranhba.com 7# tranh tµi cã thÓ dùa theo cÊp bËc chia lµm c¸c lo¹i cuéc so tµi trµng 
-- script viet hoa By http://tranhba.com  vµo chiÕn khu ®İch Npc# lùa chän trËn doanh ®İch Npc 

Include("\\script\\missions\\hsbattle\\hshead.lua");
Include("\\script\\tong\\tong_header.lua");
Include("\\script\\missions\\huashanqunzhan\\dailog.lua");
MapTab = {}; 
MapCount = 1; 
MapTab[1]= {212, 1577, 3288}; 

function main() 
-- script viet hoa By http://tranhba.com [DinhHQ] 
-- script viet hoa By http://tranhba.com 20110330: change request 30/03/2011 
--do 
--Talk(1, "","Chøc n¨ng t¹m thêi t¾t ") 
--return 
--end 
local tbSay = 
{ 
"<dec><npc> ®¹i hiÖp t×m ta cã chuyÖn g× ? ", 
--" Hoa S¬n tuyÖt ®Ønh l«i ®µi /HSBattle_Dailog_Main", 
} 
tinsert(tbSay,"Hoa S¬n l«i ®µi /#huashanqunzhan_SignUpMain(1)") 
tinsert(tbSay,"KÕt thóc ®èi tho¹i /OnCancel") 
CreateTaskSay(tbSay) 
end; 


function HSBattle_Dailog_Main() 
-- script viet hoa By http://tranhba.com  thiÕt trİ trë vÒ ®iÓm 
SetTask(300, 2); 
SetTask(301, 2605); 
SetTask(302, 3592); 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
Say("Tr­íc m¾t vÉn kh«ng cã ng­êi ghi danh l«i ®µi mét m×nh ®Êu , nghÜa sÜ muèn thö mét chót sao ?",0) 
return 
end 

OldSubWorld = SubWorld; 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 
if (ms_state == 0) then 
Say("Tr­íc m¾t vÉn kh«ng cã bÊt kú bang héi ghi danh tranh tµi ! nghÜa sÜ muèn thö mét chót sao ?", 3,"Cã thÓ !/OnRegister","Bang héi l«i ®µi quy t¾c lµ thÕ nµo d¹ng ®İch ? /OnHelp","§Ó cho ta muèn muèn !/OnCancel"); 
elseif (ms_state == 1) then 
OnReady(); 
elseif (ms_state == 2) then 
OnFighting(); 
else 
ErrorMsg(2) 
end; 

SubWorld = OldSubWorld; 
end 


function OnHelp() 
Talk(8, "","Bang héi l«i ®µi lµ trªn giang hå c¸ bang héi häc tËp vâ nghÖ ®İch ®Şa ph­¬ng , ®©y lµ c«ng b×nh so tµi ®Şa ®iÓm ","Muèn tham gia bang héi l«i ®µi , ®Çu tiªn cÇn tíi gÆp ta th©n thØnh , th©n thØnh ng­êi cÇn lµ tranh tµi bang héi ®İch bang chñ . ","Häp thµnh ®éi sau , 2 bªn ®éi tr­ëng t­¬ng lai ghi danh , hai bªn bang chñ mçi ng­êi cÇn phã 1000 v¹n l­îng . ","Phã hoµn hËu , tranh tµi th©n thØnh kÕt thóc . ë nh÷ng kh¸c 2 c¸ bang héi thêi ®iÓm tranh tµi , kh«ng thÓ ghi danh ","Th©n thØnh sau khi thµnh c«ng , hai bªn thµnh viªn cã 10 phót tiÕn vµo ®Êu trµng . sau ®ã , tranh tµi chİnh thøc b¾t ®Çu !" ,"Th¾ng b¹i lÊy quyÕt víi song ph­¬ng tİch ph©n sè l­îng . hoa hång bang héi thµnh viªn lµm cho ®èi ph­¬ng träng th­¬ng ®İch , ®em ®¹t ®­îc 3 ph©n , ®èi ph­¬ng bŞ khÊu trõ 1 ph©n ","Tranh tµi kÕt thóc , c¸i nµo bang héi ®İch tİch ph©n cao , ®em ®¹t ®­îc th¾ng lîi !","Ngoµi ra , ë tranh tµi lóc , nÕu nh­ cã võa kh«ng cã tranh tµi thµnh viªn , kia th¾ng lîi ®em thuéc vÒ bªn kia . ","ChiÕn th¾ng ®İch bang héi cã thÓ thu håi 500 v¹n l­îng , ngoµi ra cßn cã thÓ ®¹t ®­îc 400 v¹n l­îng tiÒn th­ëng cïng 12000 chót kinh nghiÖm trŞ gi¸ # thua nhÊt ph­¬ng kh«ng thÓ cÇm trë vÒ ®· tr¶ tiÒn , cßn ph¶i bŞ khÊu trõ 14000 ®iÓm bang héi kinh nghiÖm trŞ gi¸ . "); 
end; 

function OnRegister() 
-- script viet hoa By http://tranhba.com  ghi danh 
if (GetTeamSize() ~= 2) then 
ErrorMsg(1) 
return 
else 
if (IsCaptain() ~= 1) then 
ErrorMsg(5) 
return 
end; 

OldPlayer = PlayerIndex; 
for i = 1, 2 do 
PlayerIndex = GetTeamMember(i); 
if (GetTongFigure() ~= TONG_MASTER or GetCash() < MS_SIGN_MONEY) then 
PlayerIndex = OldPlayer 
ErrorMsg(2) 
return 
end; 
end; 
PlayerIndex = OldPlayer; 

TongIdTab = {}; 
TongNameTab = {}; 
for i = 1, 2 do 
PlayerIndex = GetTeamMember(i); 
if (Pay(MS_SIGN_MONEY) == 0) then 
WriteLog(GetTongName().." bang héi ®ãng "..MS_SIGN_MONEY.." bang héi l«i ®µi tranh tµi thao t¸c phİ kh«ng thµnh c«ng !!!! "); 
PlayerIndex = OldPlayer 
ErrorMsg(3) 
return 
else 
TongNameTab[i], TongIdTab[i] = GetTongName(); 
WriteLog(TongNameTab[i].." bang héi ®ãng "..MS_SIGN_MONEY.." bang héi l«i ®µi tranh tµi thao t¸c phİ thµnh c«ng ! "); 
end; 
end; 
PlayerIndex = OldPlayer; 

OldSubWorld = SubWorld; 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
ErrorMsg(3) 
return 
end; 
SubWorld = idx; 

OpenMission(MISSIONID); 
for i = 1, 2 do 
			SetMissionV(MS_TONG1ID + i - 1, TongIdTab[i]);
end; 

SetMissionS(1, TongNameTab[1]); -- script viet hoa By http://tranhba.com 1#2 hai MissionString cÊt gi÷ bang héi ®İch tªn 
SetMissionS(2, TongNameTab[2]); 

str = "<#> b¾t ®Çu bang héi l«i ®µi , hai bªn v× "..TongNameTab[1].."<#> cïng "..TongNameTab[2]; 
AddGlobalNews(str); 
SubWorld = OldSubWorld; 
Msg2Team("C¸c vŞ ®· hoµn thµnh ghi danh , xin/mêi chuÈn bŞ . 10 phót sau ®em chİnh thøc khai chiÕn "); 
Say("C¸c vŞ ®· hoµn thµnh ghi danh , xin/mêi chuÈn bŞ . 10 phót sau ®em chİnh thøc khai chiÕn ",0); 
end; 
end; 

function OnReady() 
str = "<#> tr­íc m¾t bang héi l«i ®µi ®ang ®øng ë tiÕn vµo ®Êu trµng giai ®o¹n , xin/mêi "..GetMissionS(1).."<#> cïng "..GetMissionS(2).." bang héi thµnh viªn <#> nhanh lªn mét chót tiÕn vµo ®Êu trµng , chuÈn bŞ b¾t ®Çu tranh tµi !"; 
Say(str, 2,"Ta thİch hîp ®iÒu kiÖn , ta muèn tiÕn vµo ®Êu trµng /OnJoin","Ta muèn m­în c¬ héi nµy trî gióp mäi ng­êi trë nªn c­êng ®¹i h¬n /OnCancel"); 
end; 

function ErrorMsg(ErrorId) 
if (ErrorId == 1) then 
Say("Song ph­¬ng bang héi muèn th©n thØnh tranh tµi , ®Çu tiªn muèn thµnh lËp häp thµnh ®éi sau míi cã thÓ th©n thØnh . ",0) 
elseif (ErrorId == 2) then 
Say("Ghi danh bang chñ cÇn lµ tr­íc m¾t ®éi ngò ®İch ®éi tr­ëng , h¬n n÷a muèn dÉn ®ñ 500 v¹n l­îng ",0) 
elseif (ErrorId == 3) then 
Say("Ghi danh xuÊt hiÖn h­ , xin liªn l¹c nh©n viªn qu¶n lı ",0); 
elseif (ErrorId == 4) then 
Say("Ng­¬i kh«ng ph¶i lµ ®ang so tµi thµnh viªn cña bang héi , kh«ng thÓ vµo !", 0); 
elseif(ErrorId == 5) then 
Say("Ghi danh bang chñ cÇn lµ tr­íc m¾t ®éi ngò ®İch ®éi tr­ëng ",0); 
else 

end; 

return 
end; 

function OnJoin() 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
return 
end 

OldSubWorld = SubWorld; 
SubWorld = idx; 

if (GetTongName() == GetMissionS(1)) then 
JoinCamp(1) 
elseif (GetTongName() == GetMissionS(2)) then 
JoinCamp(2) 
else 
ErrorMsg(4) 
end; 

ms_state = GetMissionV(MS_STATE); 
if (ms_state == 2) then 
SetFightState(1) 
elseif(ms_state == 1) then 
SetFightState(0) 
else 
return 
end; 
SubWorld=OldSubWorld 

end; 

function OnFighting() 
str = "<#> tr­íc m¾t bang héi l«i ®µi ®ang tiÕn hµnh tranh tµi , xin/mêi "..GetMissionS(1).."<#> cïng "..GetMissionS(2).."<#> bang héi thµnh viªn tiÕn vµo tranh tµi ®Êu trµng !"; 
Say(str, 2,"Ta phï hîp ®iÒu kiÖn , ta muèn tiÕn vµo ®Êu trµng /OnJoin","Ta kh«ng phï hîp ®iÒu kiÖn , ta kh«ng muèn tiÕn vµo ! /OnCancel"); 
end; 

function OnCancel() 
end; 
