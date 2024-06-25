-- script viet hoa By http://tranhba.com CheckCondition() c�n n�n h�m s� d�ng cho ki�m tra c� hay kh�ng ph� h�p gia nh�p �i�u ki�n 

Include("\\script\\missions\\challenge\\challengehead.lua");

function main() 

V = GetMissionV(MS_STATE); 

-- script viet hoa By http://tranhba.com  n�u nh� ghi danh giai �o�n l�i c�a , th�ng b�o c�n th�a l�i th�i gian 
-- script viet hoa By http://tranhba.com  n�u nh� chi�n ��u giai �o�n l�i c�a , th�ng b�o chi�n ��u c�n th�a l�i th�i gian 
if (V == 1) then 
V1 = GetMissionV(MS_NEWSVALUE); 
RestTime = (GO_TIME - V1) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
str = "<#> cu�c so t�i tr�ng x� vu ghi danh giai �o�n , ghi danh th�i gian c�n l�i :"..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 
Msg2Player(str); 
elseif(V == 2) then 
gametime = (floor(GetMSRestTime(MISSIONID,11) / 18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str = "<#> cu�c so t�i tr�ng x� vu chi�n ��u giai �o�n , th�i gian chi�n ��u c�n c� :"..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 
Msg2Player(str); 
end 

-- script viet hoa By http://tranhba.com  ph�t tri�n �i�m 6 ��ch tr� gi� n�u v� 1 , b�y t� n�n vai tr� thu�c v� chi�n khu nh�n vi�n qu�n l� . c� th� h��ng Npc c�m v�o tr�ng ��o c� 
if (GetExtPoint(6) == 1 or GetCamp() == 6 ) then 
Say("Huynh ��i l� n�i n�y chi�n tr��ng ��ch qu�n l� ng��i , ta c� c�i g� c� th� gi�p ng��i sao ? ", 7 ,"C�m l�n ho�ng ph��ng ��ch v� kh� /GetYellow","C�m l�n t� ph��ng ��ch v� kh� /GetPurple" ,"Kia m�i/xin ng��i b�n c�nh v� kh� /GetWhite","V�t tr�n ng��i ng��i ��ch t�t c� v� kh� /ClearItems","Ra chi�n tr��ng /GoWarCenter","R�i �i chi�n tr��ng /LeaveCenter","Ta mu�n v�a ngh� /OnCancel"); 
return 
end; 

-- script viet hoa By http://tranhba.com  ghi danh giai �o�n 
if (V == 1) then 
HaveCamp1 = HaveItem(350);-- script viet hoa By http://tranhba.com  ho�ng ph��ng 
HaveCamp2 = HaveItem(347);-- script viet hoa By http://tranhba.com  t� ph��ng 
HaveCamp3 = HaveItem(348);-- script viet hoa By http://tranhba.com  k� gi� 

-- script viet hoa By http://tranhba.com  n�u nh� kh�ng c� b�t k� ��ch v�o tr�ng ��o c� l�i c�a 
if (HaveCamp1 == 0 and HaveCamp2 == 0 and HaveCamp3 == 0) then 
Say("Ng��i kh�ng c� b�t k� m�t lo�i ' anh h�ng l�nh b�i ' , kh�ng th� �i v�o !", 0) 
return 
end; 
if (GetTeamSize() == 0) then 
Say("Ng��i c�n ch�a h�p th�nh ��i , kh�ng th� �i v�o !",0); 
return 
end; 

str1 = "<#> ng��i ��i ng� c� "..GetTeamSize().."<#> ng��i ! ng��i ngh� gia nh�p b�n kia ?"; 
Say(str1 ,4,"Ta mu�n gia nh�p ho�ng ph��ng /JoinYellow","Ta mu�n gia nh�p t� ph��ng /JoinPurple","Ta mu�n �i v�o �i th�m /JoinWhite","�� cho ta mu�n v�a ngh� /OnCancle"); 

elseif (V == 2) then -- script viet hoa By http://tranhba.com  khai chi�n giai �o�n 
HaveCamp3 = HaveItem(348); 
if (HaveCamp3 == 1) then 
Say("Ng��i b�y gi� c� l� xanh bi�c anh h�ng l�m . mu�n tham chi�n c�n l� r�i �i ?", 3,"��n cu�c so t�i trong s�n t�m /GoWarCenter","R�i �i cu�c so t�i tr�ng /LeaveWar","�� cho ta mu�n v�a ngh� /OnCancel"); 
end; 
elseif (V == 0) then 
Say(" l�n n�y ghi danh khi�u chi�n th�i gian c�n ch�a t�i ",0); 
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
Say("Ng��i kh�ng c� th�m ho�ng anh h�ng l�m , kh�ng th� �i v�o !",0); 
end; 
end; 

function JoinPurple() 
if (HaveItem(347) >= 1) then 
CheckAndJoinCamp(2) 
else 
Say("Ng��i kh�ng c� m�u �� anh h�ng l�m , kh�ng th� �i v�o !",0); 
end; 
end; 

function JoinWhite() 
if (HaveItem(348) >= 1) then 
CheckAndJoinCamp(6) 
else 
Say("Ng��i kh�ng c� l� xanh bi�c anh h�ng l�m , kh�ng th� �i v�o !", 0); 
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
Say("Ng��i c�n kh�ng c� h�p th�nh ��i ho�c l� kh�ng ph�i l� ��i tr��ng , kh�ng th� v�o ! ",0); 
return 
else 
		bHaveJoin = GetMissionV(MS_S_JOINED + Camp - 1);
if (bHaveJoin == 1) then 
Say("B�y gi� �� c� m�t ng��i kh�c ��i s� d�ng c�ng c� m�u s�c anh h�ng l�m tham chi�n li�u ", 0); 
return 
end; 
end; 

Size = GetTeamSize(); 
if (Size > MAX_MEMBER_COUNT) then 
Say("Ng��i ��i nh�n s� c�a v��t qua h�n ��nh , xin/m�i �i�u ch�nh h� n�a �i v�o !" , 0); 
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
Say("Ng��i trong ��i b�y gi� c� m�t ng��i kh�ng c� � ��y chu�n b� khu , xin/m�i �i�u ch�nh sau n�a �i v�o tranh t�i !",0); 
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
Msg2MSAll(MISSIONID, GetName().."<#> kh�ng c� v��t qua 30 c�p , kh�ng th� tham gia !"); 
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
