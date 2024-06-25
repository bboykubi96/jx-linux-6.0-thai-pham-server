-- script viet hoa By http://tranhba.com CheckCondition() cÇn nªn hµm sè dïng cho kiÓm tra cã hay kh«ng phï hîp gia nhËp ®iÒu kiÖn 

Include("\\script\\missions\\challenge\\challengehead.lua");

function main() 

V = GetMissionV(MS_STATE); 

-- script viet hoa By http://tranhba.com  nÕu nh­ ghi danh giai ®o¹n lêi cña , th«ng b¸o cßn thõa l¹i thêi gian 
-- script viet hoa By http://tranhba.com  nÕu nh­ chiÕn ®Êu giai ®o¹n lêi cña , th«ng b¸o chiÕn ®Êu cßn thõa l¹i thêi gian 
if (V == 1) then 
V1 = GetMissionV(MS_NEWSVALUE); 
RestTime = (GO_TIME - V1) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
str = "<#> cuéc so tµi trµng xö vu ghi danh giai ®o¹n , ghi danh thêi gian cßn l¹i :"..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 
Msg2Player(str); 
elseif(V == 2) then 
gametime = (floor(GetMSRestTime(MISSIONID,11) / 18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str = "<#> cuéc so tµi trµng xö vu chiÕn ®Êu giai ®o¹n , thêi gian chiÕn ®Êu cßn cã :"..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 
Msg2Player(str); 
end 

-- script viet hoa By http://tranhba.com  ph¸t triÓn ®iÓm 6 ®Ých trÞ gi¸ nÕu v× 1 , bµy tá nªn vai trß thuéc vÒ chiÕn khu nh©n viªn qu¶n lý . cã thÓ h­íng Npc cÇm vµo trµng ®¹o cô 
if (GetExtPoint(6) == 1 or GetCamp() == 6 ) then 
Say("Huynh ®µi lµ n¬i nµy chiÕn tr­êng ®Ých qu¶n lý ng­êi , ta cã c¸i g× cã thÓ gióp ng­¬i sao ? ", 7 ,"CÇm lªn hoµng ph­¬ng ®Ých vò khÝ /GetYellow","CÇm lªn tö ph­¬ng ®Ých vò khÝ /GetPurple" ,"Kia mêi/xin ng­¬i bªn c¹nh vò khÝ /GetWhite","Vøt trªn ng­êi ng­¬i ®Ých tÊt c¶ vò khÝ /ClearItems","Ra chiÕn tr­êng /GoWarCenter","Rêi ®i chiÕn tr­êng /LeaveCenter","Ta muèn võa nghÜ /OnCancel"); 
return 
end; 

-- script viet hoa By http://tranhba.com  ghi danh giai ®o¹n 
if (V == 1) then 
HaveCamp1 = HaveItem(350);-- script viet hoa By http://tranhba.com  hoµng ph­¬ng 
HaveCamp2 = HaveItem(347);-- script viet hoa By http://tranhba.com  tö ph­¬ng 
HaveCamp3 = HaveItem(348);-- script viet hoa By http://tranhba.com  ký gi¶ 

-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cã bÊt kú ®Ých vµo trµng ®¹o cô lêi cña 
if (HaveCamp1 == 0 and HaveCamp2 == 0 and HaveCamp3 == 0) then 
Say("Ng­¬i kh«ng cã bÊt kú mét lo¹i ' anh hïng lÖnh bµi ' , kh«ng thÓ ®i vµo !", 0) 
return 
end; 
if (GetTeamSize() == 0) then 
Say("Ng­¬i cßn ch­a häp thµnh ®éi , kh«ng thÓ ®i vµo !",0); 
return 
end; 

str1 = "<#> ng­¬i ®éi ngò cã "..GetTeamSize().."<#> ng­êi ! ng­¬i nghÜ gia nhËp bªn kia ?"; 
Say(str1 ,4,"Ta muèn gia nhËp hoµng ph­¬ng /JoinYellow","Ta muèn gia nhËp tö ph­¬ng /JoinPurple","Ta muèn ®i vµo ®i th¨m /JoinWhite","§Ó cho ta muèn võa nghÜ /OnCancle"); 

elseif (V == 2) then -- script viet hoa By http://tranhba.com  khai chiÕn giai ®o¹n 
HaveCamp3 = HaveItem(348); 
if (HaveCamp3 == 1) then 
Say("Ng­¬i b©y giê cã l¸ xanh biÕc anh hïng lµm . muèn tham chiÕn cßn lµ rêi ®i ?", 3,"§Õn cuéc so tµi trong s©n t©m /GoWarCenter","Rêi ®i cuéc so tµi trµng /LeaveWar","§Ó cho ta muèn võa nghÜ /OnCancel"); 
end; 
elseif (V == 0) then 
Say(" lÇn nµy ghi danh khiªu chiÕn thêi gian cßn ch­a tíi ",0); 
end; 

end; 

function ClearItems() 
ClearItem(347); 
ClearItem(348); 
ClearItem(350); 
end; 

function ClearItem(ItemId) 

Count = GetItemCount(ItemId); 
if (Count >= 1) then 
for i = 1, Count do 
DelItem(ItemId) 
end; 
end; 

end; 


function JoinYellow() 
if (HaveItem(350) >= 1) then 
CheckAndJoinCamp(1) 
else 
Say("Ng­¬i kh«ng cã thÇm hoµng anh hïng lµm , kh«ng thÓ ®i vµo !",0); 
end; 
end; 

function JoinPurple() 
if (HaveItem(347) >= 1) then 
CheckAndJoinCamp(2) 
else 
Say("Ng­¬i kh«ng cã m¸u ®á anh hïng lµm , kh«ng thÓ ®i vµo !",0); 
end; 
end; 

function JoinWhite() 
if (HaveItem(348) >= 1) then 
CheckAndJoinCamp(6) 
else 
Say("Ng­¬i kh«ng cã l¸ xanh biÕc anh hïng lµm , kh«ng thÓ ®i vµo !", 0); 
end; 
end; 


function GetYellow() 
AddEventItem(350); 
end; 

function GetPurple() 
AddEventItem(347); 
end; 

function GetWhite() 
AddEventItem(348); 
end; 


function OnCancel() 

end; 

function GoWarCenter() 
AddMSPlayer(MISSIONID, 6); 
SetCurCamp(0) 
NewWorld(CS_CampPos2[1], CS_CampPos2[2], CS_CampPos2[3]); 
end; 

function LeaveCenter() 
LeaveGame(0) 
SetCurCamp(GetCamp()) 
end; 


function CheckAndJoinCamp(Camp) 

if (IsCaptain() == 0) then 
Say("Ng­¬i cßn kh«ng cã häp thµnh ®éi hoÆc lµ kh«ng ph¶i lµ ®éi tr­ëng , kh«ng thÓ vµo ! ",0); 
return 
else 
		bHaveJoin = GetMissionV(MS_S_JOINED + Camp - 1);
if (bHaveJoin == 1) then 
Say("B©y giê ®· cã mét ng­êi kh¸c ®éi sö dông cïng c¸ mµu s¾c anh hïng lµm tham chiÕn liÔu ", 0); 
return 
end; 
end; 

Size = GetTeamSize(); 
if (Size > MAX_MEMBER_COUNT) then 
Say("Ng­¬i ®éi nh©n sè cña v­ît qua h¹n ®Þnh , xin/mêi ®iÒu chØnh h¹ n÷a ®i vµo !" , 0); 
return 
else 
OldPlayer = PlayerIndex; 
W,X,Y = GetWorldPos(); 
Size = GetTeamSize(); 

for i = 1, Size do 
PIdx = GetTeamMember(i); 
if (PIdx > 0) then 
PlayerIndex = PIdx; 
W1,X,Y = GetWorldPos(); 
if (W1 ~= W) then 
PlayerIndex = OldPlayer 
Say("Ng­¬i trong ®éi b©y giê cã mét ng­êi kh«ng cã ë ®©y chuÈn bÞ khu , xin/mêi ®iÒu chØnh sau n÷a ®i vµo tranh tµi !",0); 
return 
end; 
end 
end; 

PlayerIndex = OldPlayer; 

if (Camp == 1) then 
DelItem(350); 
elseif (Camp == 2) then 
DelItem(347) 
else 
DelItem(348) 
end 

JoinCampInTeam(Camp); 
end; 

end; 

function JoinCampInTeam(Camp) 
OldPlayer = PlayerIndex; 
local TeamTab = {}; 
Size = GetTeamSize(); 
Joined = 0; 
for i = 1, Size do 
TeamTab[i] = GetTeamMember(i); 
end; 
for i = 1, Size do 
PlayerIndex = TeamTab[i]; 
if (Camp ~= 6 and GetLevel() < 30) then 
Msg2MSAll(MISSIONID, GetName().."<#> kh«ng cã v­ît qua 30 cÊp , kh«ng thÓ tham gia !"); 
else 
			Joined = Joined + 1;
JoinCamp(Camp) 
end; 
end; 
if (Joined >= 1) then 
		SetMissionV(MS_S_JOINED + Camp - 1, 1);	
end; 

PlayerIndex = OldPlayer; 

end; 
