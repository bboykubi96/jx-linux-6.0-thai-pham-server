FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
MAX_S_COUNT = 100; 
MAX_J_COUNT = 100; 
TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TIMER_2 = 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn thêi gian lµ 1 giê 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
-- script viet hoa By http://tranhba.com  nªn thay ®æi l­îng chØ h­íng ®Ých tr¹ng th¸i trÞ gi¸ 0 bµy tá chiÕn dÞch v× më ra , 1 bµy tá chiÕn dÞch ghi danh trung , 2 bµy tá chiÕn dÞch chiÕn ®Êu tiÕn hµnh trung , 3 bµy tá chiÕn dÞch míi võa kÕt thóc 

MS_SJTASKID = 20; 
MS_J_DEATHCOUNT = 3; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp kim nhµ ch¬i sè th­¬ng vong l­îng ®Ých thay ®æi l­îng ID 
MS_S_DEATHCOUNT = 4; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp tèng nhµ ch¬i sè th­¬ng vong l­îng ®Ých thay ®æi l­îng ID 

MS_S_SIGHCOUNT = 5;-- script viet hoa By http://tranhba.com  nhiÖm vô trung tèng ph­¬ng céng ghi danh nh©n sè cña 
MS_J_SIGHCOUNT = 6;-- script viet hoa By http://tranhba.com  nhiÖm vô trung kim ph­¬ng céng ghi danh nh©n sè cña 
MS_KEY = 7; -- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt b¶n ®å h¹ nhiÖm vô mét key , tøc mét ngÉu nhiªn sinh thµnh ®Õm ®Þnh 

MS_S_NPCDEATH = 8; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp tèng chiÕn ®Êu Npc tö vong sè l­îng ®Ých nhiÖm vô thay ®æi l­îng ID 
MS_J_NPCDEATH = 9; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp kim chiÕn ®Êu Npc tö vong sè l­îng ®Ých nhiÖm vô thay ®æi l­îng ID 

MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 

MS_S_SHOWKING = 11; -- script viet hoa By http://tranhba.com 0 means uncondition, 1 means condition but time no come ,2 mean all condition is ok ,and have showed. 
MS_J_SHOWKING = 12; 
MS_FIRSTSHOW = 13; -- script viet hoa By http://tranhba.com 1 means Song , 2 means Jing 


SJTASKID = 230; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt ID 
SJTASKVLAUE = 231; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt ®Ých trÞ gi¸ , ghi chÐp së chóc ph­¬ng , tèng v× 1 , kim v× 2 
SJTASKKEY = 232; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt ®Ých key sè 
SJKILLNPC = 233; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i giÕt Npc sè l­îng 
SJKILLPK = 234; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i PK nhµ ch¬i sè l­îng 

MS_TOTALPK = 250; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®¸nh chÕt kú tha nhµ ch¬i ®Ých tæng sè lÇn 
MS_TOTALKO = 251; -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ë PK chiÕn dÞch trung bÞ ®¸nh chÕt ®Ých tæng sè lÇn 

MS_SHOWKINGCOUNT = 100; -- script viet hoa By http://tranhba.com  mét ph­¬ng Npc sè th­¬ng vong l­îng , khi sè th­¬ng vong l­îng v­ît qua nªn trÞ gi¸ lóc , lµ chñ t­íng cã thÓ xuÊt hiÖn 
MS_PKCOUNT = 50;-- script viet hoa By http://tranhba.com  mét ph­¬ng nhµ ch¬i sè th­¬ng vong l­îng , khi sè l­îng v­ît qua nªn trÞ gi¸ , lµ chñ t­íng cã thÓ xuÊt hiÖn 


GO_TIME = 1800 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh thêi gian lµ nöa giê 
SHOWKINGTIME1 = 3600 * FRAME2TIME / TIMER_1 ; 
SHOWKINGTIME2 = 4200 * FRAME2TIME / TIMER_1; 

MS_SIGN_MONEY = 3000; -- script viet hoa By http://tranhba.com  tiÒn ghi danh 


sj_aryItems = { 
{ " tiªn th¶o lé ", {6,1,71,1,0,0}, 20 }, 
{ " thªm ch¹y hoµn ", {6,0,2,1,0,0}, 5 }, 
{ " trung häc ®Ö nhÞ cÊp hoµn ", {6,0,5,1,0,0}, 5 }, 
{ " cao nhanh chãng hoµn ", {6,0,4,1,0,0}, 5 }, 
{ " tr­êng mÖnh hoµn ", {6,0,1,1,0,0}, 5 }, 
{ " nhanh chãng hoµn ", {6,0,6,1,0,0}, 5 }, 
{ " ®éc phßng hoµn ", {6,0,10,1,0,0}, 5 }, 
{ " b¨ng phßng hoµn ", {6,0,7,1,0,0}, 5 }, 
{ " löa phßng hoµn ", {6,0,9,1,0,0}, 5 }, 
{ " l«i phßng hoµn ", {6,0,8,1,0,0}, 5 }, 
{ " ®¹i lùc hoµn ", {6,0,3,1,0,0}, 30 }, 
{ " ph¸o b«ng ", {6,0,11,1,0,0}, 1 }, 
{ " hoa hång m­a ", {6,0,20,1,0,0}, 2 }, 
{ " t©m t©m t­¬ng ¸nh phï ", {6,1,18,1,0,0}, 5 }, 
} 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function GameOver() 
idx = 0; 

for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1,idx, 0); 
if (idx == 0) then 
break 
end; 
if ( GetMSIdxGroup(1, idx) == 2) then -- script viet hoa By http://tranhba.com jing 
PlayerIndex = pidx; 
camp = GetCamp(); 
SetCurCamp(camp); 
SetTaskTemp(200,0); 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript(""); 
SetRevPos(100,45) 
-- script viet hoa By http://tranhba.com  SetFightState(1) 
SetFightState(0) -- script viet hoa By http://tranhba.com  ®¸nh giÆc xong sau ®æi thµnh kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu #by Dan_Deng# 
SetPunish(1) 
SetPKFlag(0) 
NewWorld(44, 1585,3215); 
else -- script viet hoa By http://tranhba.com song 
PlayerIndex = pidx; 
camp = GetCamp(); 
SetCurCamp(camp); 
SetTaskTemp(200,0) 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript(""); 
SetRevPos(78,33) 
-- script viet hoa By http://tranhba.com  SetFightState(1) 
SetFightState(0) -- script viet hoa By http://tranhba.com  ®¸nh giÆc xong sau ®æi thµnh kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu #by Dan_Deng# 
SetPunish(1) 
SetPKFlag(0) 
NewWorld(44, 886,4499); 
end; 
end; 


end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - chiÕn ®Êu hñy bá lêi cña , tr¶ l¹i nhµ ch¬i ®Ých tiÒn ghi danh -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GiveBackBonus() 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1, idx, 0); 
if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
Earn(MS_SIGN_MONEY); 
end; 
end; 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function WinBonus(WinGroup, LoserGroup) 
resultstr = ""; 
LCount = GetMissionV(LoserGroup + 4);
WCount = GetMissionV(WinGroup + 4);

TotalMoney = (LCount + WCount) * MS_SIGN_MONEY * 0.9 
Winner = GetMSPlayerCount(1, WinGroup); 
if (Winner > 0) then 
Bonus = TotalMoney / Winner; 
else 
Bonus = MS_SIGN_MONEY; 
end; 

MaxNpc_idx = 0; 
MaxPK_idx = 0; 
MaxNpc_c = 0; 
MaxPK_c = 0; 
sj_itemcount = getn(sj_aryItems) 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1, idx, WinGroup); 
if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
   		Earn(Bonus + MS_SIGN_MONEY);
AddLeadExp(500); -- script viet hoa By http://tranhba.com  By Dan( thèng suÊt kinh nghiÖm tõ 1000 ®æi thµnh 500) 
AddRepute(3); -- script viet hoa By http://tranhba.com  By Dan( danh väng tõ 20 ®æi thµnh 3) 
Msg2Player("Chóc mõng quý ph­¬ng ®¹t ®­îc th¾ng lîi # ng­¬i danh väng gia t¨ng 3 ®iÓm , thèng lÜnh kinh nghiÖm gia t¨ng 500 ®iÓm !") 


randitem = random(1, sj_itemcount); 
if (randitem > 0) then 
local szItemName = sj_aryItems[randitem][1]; 
local arySelItemID = sj_aryItems[randitem][2]; 
AddItem( arySelItemID[1], arySelItemID[2], arySelItemID[3], arySelItemID[4], arySelItemID[5], arySelItemID[6], 0); 
Msg2Player("Chóc mõng ng­¬i ®¹t ®­îc <#>"..szItemName); 
end; 


if (GetTask(SJKILLNPC) > MaxNpc_c) then 
MaxNpc_idx = pidx 
MaxNpc_c = GetTask(SJKILLNPC) 
end; 

if (GetTask(SJKILLPK) > MaxPK_c) then 
MaxPK_idx = pidx; 
MaxPK_c = GetTask(SJKILLPK) 
end; 
end; 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - giÕt Npc nhiÒu nhÊt ng­êi lÊy ®­îc mét mãn trang bÞ 
if (MaxNpc_idx > 0) then 
PlayerIndex = MaxNpc_idx ; 
sex = GetSex(); 
if (sex == 0) then -- script viet hoa By http://tranhba.com  nam trang 
-- script viet hoa By http://tranhba.com  cho y phôc , tham sæ v× 0,2,0-13(0,6 nam , 7,13 n÷ ),8-9,0-4,70-99 
p1 = random(0,6); 
p2 = random(8,9); 
p3 = random(0,4); 
p4 = random(50,70); 
AddItem(0,2,p1,p2,p3,p4,6,6,0,0,0,0); 
resultstr = "<#> ng­¬i giÕt NPC ®Þch nh©n cao nhÊt ph©n sè v× "..GetName().."<#>, ng­¬i giÕt chÕt "..MaxNpc_c.."<#> ®Þch nh©n !"; 
else 
-- script viet hoa By http://tranhba.com  cho y phôc , tham sæ v× 0,2,0-13(0,6 nam , 7,13 n÷ ),8-9,0-4,70-99 
p1 = random(7,13); 
p2 = random(8,9); 
p3 = random(0,4); 
p4 = random(50,70); 
AddItem(0,2,p1,p2,p3,p4,6,6,0,0,0,0); 
resultstr = "<#> ng­¬i giÕt NPC ®Þch nh©n cao nhÊt ph©n sè v× "..GetName().."<#>, ng­¬i giÕt chÕt "..MaxNpc_c.."<#> ®Þch nh©n !"; 
end; 
AddRepute(30) 
Msg2Player("Ng­¬i ®¹t ®­îc 30 ®iÓm danh ng¾m trÞ gi¸ cïng mét bé trang bÞ !"); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -PK nh©n sè nhiÒu nhÊt ng­êi lÊy ®­îc mét thanh vò khÝ 
if (MaxPK_idx > 0) then 
PlayerIndex = MaxPK_idx ; 
-- script viet hoa By http://tranhba.com p1 = random(0,5); 
-- script viet hoa By http://tranhba.com p2 = random(8,9); 
-- script viet hoa By http://tranhba.com p3 = random(0,4); 
-- script viet hoa By http://tranhba.com p4 = random(70,99); 
-- script viet hoa By http://tranhba.com AddItem(0,0,p1,p2,p3,p4,7,7,7,0,0,0); 
-- script viet hoa By http://tranhba.com Msg2Player("Ng­¬i thu ®­îc mét thanh vò khÝ !"); 
AddRepute(15) 
AddLeadExp(5000); -- script viet hoa By http://tranhba.com  By Dan( thèng suÊt kinh nghiÖm tõ 1000 ®æi thµnh 500) 
Msg2Player("Chóc mõng , ë chç nµy lÇn chiÕn dÞch trung , ng­¬i lµ cã PK trÞ gi¸ cao nhÊt ng­êi , ®¹t ®­îc 15 ®iÓm danh ng¾m trÞ gi¸ , thèng lÜnh kinh nghiÖm gia t¨ng 5000 ®iÓm !") 
resultstr = resultstr .."<#> . PK nhµ ch¬i ng­êi cao nhÊt v× "..GetName().."<#>, sè l­îng :"..MaxPK_c; 
end; 

return resultstr; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function SJ_JoinJ() 
LeaveTeam() 
AddMSPlayer(1,2); 
SetCurCamp(2); 
SetTaskTemp(200,1) 
SetFightState(0); 
SetLogoutRV(1); 
SetPos(47584/32, 106880/32); 
SetPunish(0); 
-- script viet hoa By http://tranhba.com SetRevPos(100,45) 
SetRevPos(44,50) 
SetTempRevPos(44, 1573*32 ,3874 * 32); 
SetCreateTeam(0); 
SetTask(SJTASKID, MS_SJTASKID); 
SetTask(SJTASKKEY, GetMissionV(MS_KEY)); 
SetTask(SJTASKVLAUE, 2); 
str = GetName().."<#> gia nhËp kim ph­¬ng trËn doanh "; 
Msg2MSAll(1,str); 
SetPKFlag(1) 
ForbidChangePK(1); 
SetDeathScript("\\script\\missions\\ËÎ½ðÕ½³¡pkÕ½\\Ö÷½ÇËÀÍö1.lua");

-- script viet hoa By http://tranhba.com  ®©y lµ nhµ ch¬i nép tiÒn ghi danh , chÝnh thøc gia nhËp ®éi ngò lµ ®Ò kú ®èi tho¹i 

Talk(2, "","Kim quèc ®Ých dòng sÜ , hoan nghªnh ng­¬i ®Õn # b©y giê tèng qu©n ch­a xuÊt hiÖn , mäi ng­êi tr­íc h¬i chuyÖn nghØ ng¬i . ","Ph¸t hiÖn tèng qu©n sau , mäi ng­êi ph¶i nghe tõ thñ lÜnh hiÖu lÖnh , tr­íc lÊy tèng qu©n chñ t­íng thñ cÊp ng­êi cã träng th­ëng !"); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function SJ_JoinS() 
LeaveTeam() 
AddMSPlayer(1,1); 
SetCurCamp(1); 
SetTaskTemp(200,1); 
SetFightState(0); 
str = GetName().."<#> gia nhËp tèng ph­¬ng trËn doanh "; 
SetDeathScript("\\script\\missions\\ËÎ½ðÕ½³¡pkÕ½\\Ö÷½ÇËÀÍö.lua");
SetLogoutRV(1); 
SetCreateTeam(0); 
SetPunish(0) 
-- script viet hoa By http://tranhba.com SetRevPos(78,33) 
SetRevPos(44,49) 
SetPos(31168/32, 133472/32); 
SetTempRevPos(44, 1515 * 32, 3980 * 32); 
Msg2MSAll(1,str); 
SetTask(SJTASKID, MS_SJTASKID); 
SetTask(SJTASKKEY, GetMissionV(MS_KEY)); 
SetTask(SJTASKVLAUE, 1); 
SetPKFlag(1) 
ForbidChangePK(1); 
Talk(2,"","Ng­¬i m¹nh kháe , hoan nghªnh ng­¬i gia nhËp tèng qu©n , b©y giê qu©n Kim ch­a xuÊt hiÖn , mäi ng­êi tr­íc h¬i chuyÖn nghØ ng¬i . ","Mét khi phÝa tr­íc kÌn hiÖu thæi vang , chiÕn ®Êu sÏ b¾t ®Çu . "); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com Group bµy tá ®èi tho¹i ®Ých chñ qu¶n lµ kia ph­¬ng ®Ých , 1 v× tèng , 2 v× kim ph­¬ng 
-- script viet hoa By http://tranhba.com State bµy tá tr­íc mÆt chiÕn dÞch ®Ých tr¹ng th¸i 
function CheckLastBattle(Group, State) 

if (Group == 1) then 
JoinFun = SJ_JoinS; 
else 
JoinFun = SJ_JoinJ; 
end; 

local MKey = GetMissionV(MS_KEY); -- script viet hoa By http://tranhba.com  tr­íc mÆt chiÕn dÞch ®Ých duy nhÊt Key con ngùa 
local Taskid = GetTask(SJTASKID); -- script viet hoa By http://tranhba.com  nªn chiÕn dÞch lo¹i h×nh ID 
local TaskV = GetTask(SJTASKVLAUE); 

if (Taskid == MS_SJTASKID) then 
local TaskKey = GetTask(SJTASKKEY) 
if (TaskKey == MKey) then 
if (TaskV == Group) then 
JoinFun(); 
if (State == 2) then 
SetFightState(1); 
end; 
Msg2Player("Hoan nghªnh ng­¬i lÇn n÷a trë l¹i chiÕn tr­êng !"); 
elseif (State == 2) then 
return 2 -- script viet hoa By http://tranhba.com  bµy tá kh«ng ph¶i lµ tr­íc mÆt trËn doanh 
else 
return 0 
end 
return 1; 
else 
-- script viet hoa By http://tranhba.com  Say("Ng­¬i thiÖn tiÖn rêi chøc thñ ®i tíi sai lÇm chiÕn tr­êng #",0); 
return 0; 
end; 
end; 
return 0; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function CheckGoFight() 
V1 = GetMissionV(5); 
V2 = GetMissionV(6); 
if (V1 >= MAX_S_COUNT and V2 >= MAX_J_COUNT) then 
RunMission(1); 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kiÓm tra cã ®­îc hay kh«ng ®Ó cho chñ t­íng xuÊt hiÖn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function CheckShowKing(Group) 

if (Group == 1) then 
groupvalue1 = MS_S_NPCDEATH; -- script viet hoa By http://tranhba.com  ghi chÐp S ph­¬ng Npc tö vong sè l­îng ®Ých tham sæ Id 
groupvalue2 = MS_S_DEATHCOUNT;-- script viet hoa By http://tranhba.com  ghi chÐp S ph­¬ng nhµ ch¬i tö vong sè l­îng ®Ých tham sæ Id 
else 
groupvalue1 = MS_J_NPCDEATH; 
groupvalue2 = MS_J_DEATHCOUNT; 
end; 

NpcDCount = GetMissionV(groupvalue1); 

if (NpcDCount < MS_SHOWKINGCOUNT) then 
return 0; 
end; 

PlayerDCount = GetMissionV(groupvalue2); 

if (PlayerDCount < MS_PKCOUNT) then 
return 0; 
end; 

if (Group == 1) then 
SetMissionV(MS_S_SHOWKING, 1) 
else 
SetMissionV(MS_J_SHOWKING, 1) 
end; 

return 1; 

end; 

function ShowTheKing(Group) 

if (Group == 1) then 
HideNpc("Nam Tèng t­íng qu©n ",1); 
str1 = " t×nh b¸o : tr­íc m¾t phe ta chiÕn sù ¨n chÆc , §¹i t­íng qu©n ®· tù m×nh ®Õn trËn tiÒn ®èc chiÕn , thÒ víi trËn ®Þa cïng chÕt sèng ! c¸c t­íng sÜ cè g¾ng lªn ®¸nh lui tíi ph¹m ®Þch qu©n , lËp b¶o §¹i t­íng qu©n v« ng¹i !"; 
str2 =" t×nh b¸o : c¸c t­íng sÜ ! ®Þch qu©n th­¬ng vong th¶m träng , ®Þch qu©n §¹i t­íng ®· kh«ng ngåi yªn ! c¸c t­íng sÜ tiÕp tôc cè g¾ng , giÕt chÕt ®Þch qu©n §¹i t­íng !"; 
Msg2MSGroup(1,str1, 1); 
Msg2MSGroup(1,str2, 2); 
str3 = "<#> tèng kim ®¹i chiÕn chiÕn dÞch b¸o c¸o : tèng ph­¬ng chñ t­íng ®· ë tèng doanh trung xuÊt hiÖn !"; 
AddGlobalCountNews(str3 , 3); 
return 0 
end; 

if (Group == 2) then 
HideNpc("Kim quèc §¹i t­íng ",1); 
str1 = " t×nh b¸o : tr­íc m¾t phe ta chiÕn sù ¨n chÆc , §¹i t­íng qu©n ®· tù m×nh ®Õn trËn tiÒn ®èc chiÕn , thÒ víi trËn ®Þa cïng chÕt sèng ! c¸c t­íng sÜ cè g¾ng lªn ®¸nh lui tíi ph¹m ®Þch qu©n , lËp b¶o §¹i t­íng qu©n v« ng¹i !"; 
str2 = " t×nh b¸o : c¸c t­íng sÜ ! ®Þch qu©n th­¬ng vong th¶m träng , ®Þch qu©n §¹i t­íng ®· kh«ng ngåi yªn ! c¸c t­íng sÜ tiÕp tôc cè g¾ng , giÕt chÕt ®Þch qu©n §¹i t­íng !"; 
Msg2MSGroup(1,str1, 2); 
Msg2MSGroup(1,str2, 1); 
str3 = "<#> tèng kim ®¹i chiÕn chiÕn dÞch b¸o c¸o : kim quèc chñ t­íng ®· ë trËn doanh xuÊt hiÖn , tù m×nh ®èc chiÕn !"; 
AddGlobalCountNews(str3 , 3); 
return 0 
end; 

return 1; 

end; 
