-- script viet hoa By http://tranhba.com  gia nh�p m�t ph��ng ��ch Npc ��i �ng ch�n v�n 
-- script viet hoa By http://tranhba.com BattleId b�n ngo�i ��ch to�n c�c thay ��i l��ng , b�y t� tr��c m�t khi�u chi�n cu�c so t�i b�n �� ��ch bi�n s� (1-8) 

-- script viet hoa By http://tranhba.com HaveBeginWar(CityID) -- script viet hoa By http://tranhba.com  CityID(1-7) // b�y gi� m�t th�nh th� l� hay kh�ng �� m� chi�n , tr� v� tr� gi� l� m�t BOOL tr� gi� 
-- script viet hoa By http://tranhba.com GetCityAreaName(CityID) // l�y 1 ��n 7 ��ch th�nh khu t�n , tr� v� tr� gi� l� m�t ch� ph� chu�i 
-- script viet hoa By http://tranhba.com GetCityWarBothSides(CityID) // ��t ���c c�ng k�ch ph��ng c�ng th� ph��ng ��ch bang h�i t�n , tr� v� hai ch� ph� chu�i , theo nh� th� t� chia ra ��i bi�u c�ng k�ch ph��ng c�ng th� ph��ng 
-- script viet hoa By http://tranhba.com NotifyWarResult(CityID, WarResult) // tranh t�i sau khi k�t th�c , th�ng b�o Relay tranh t�i k�t qu� (WarResult v� BOOL tr� gi� b�y t� c�ng th�nh m�i l� hay kh�ng th�ng l�i ) 
-- script viet hoa By http://tranhba.com GetCityWarTongCamp(TongName) // ��t ���c tham d� c�ng th�nh chi�n t��ng quan ho�t ��ng ��ch bang h�i tr�n doanh , tr� v� INT t�c tr�n doanh ��i bi�u tr� gi� 
-- script viet hoa By http://tranhba.com IsArenaBegin(ArenaID) -- script viet hoa By http://tranhba.com  ArenaID(0-7) // ��t ���c tr��c m�t c�c l�i ��i tr�ng khu c� hay kh�ng b�t ��u , tr� v� BOOL 
-- script viet hoa By http://tranhba.com GetArenaCityArea(nArenaID) // ��t ���c tr��c m�t �ang ti�n h�nh ��ch l�i ��i cu�c so t�i l� nh�m v�o c�i n�o th�nh khu , tr� v� tr� gi� l� CityID 
-- script viet hoa By http://tranhba.com GetArenaBothSides(ArenaID) // ��t ���c m�t tr�ng l�i ��i cu�c so t�i song ph��ng t�n , tr� v� hai ch� ph� chu�i , theo nh� th� t� chia ra ��i bi�u gi�p ph��ng �t ph��ng 
-- script viet hoa By http://tranhba.com NotifyArenaResult(ArenaID, ArenaResult) // th�ng b�o m�t cu�c l�i ��i cu�c so t�i k�t th�c ��ch tranh t�i k�t qu� cho Relay, ArenaResult v� BOOL tr� gi� b�y t� ��ch gi�p m�i l� hay kh�ng chi�n th�ng 
-- script viet hoa By http://tranhba.com GetArenaLevel() // ��t ���c tr��c m�t l�i ��i cu�c so t�i ch� � ��i phi�n l�n , tr� v� tr� gi� 0: tranh t�i �� k�t th�c ho�c l� ch�a b�t ��u , 1: v�ng th� nh�t , 2/3/4/5 l�y lo�i n�y ��y 
-- script viet hoa By http://tranhba.com GetArenaTotalLevel() // ��t ���c tr��c m�t l�i ��i cu�c so t�i ��ch t�ng ��i phi�n l�n 
-- script viet hoa By http://tranhba.com GetCurArenaInfo() // ��t ���c tr��c m�t ��i phi�n l�n cu�c so t�i tr�nh 
-- script viet hoa By http://tranhba.com GetArenaTotalLevelByCity(CityID) // ��t ���c m�t th�nh ph� l�i ��i cu�c so t�i ��ch t�ng ��i phi�n l�n 
-- script viet hoa By http://tranhba.com GetArenaInfoByCity(CityID, ArenaLevel) // ��t ���c m�t th�nh ph� l�i ��i cu�c so t�i qu� ��ch s� li�u ,ArenaLevel: 0-Based 

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
Say(Tong1.." c�ng "..Tong2.." l�p t�c chu�n b� chi�n ��u , cu�c so t�i tr�ng �ang chu�n b� tr� , m�i ng��i c�ng chu�n b� xong ", 0); 
else 
Say("Th�i gian chi�n ��u c�n ch�a t�i !", 1,"Bi�t , ta �i tr��c /OnCancel"); 
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
Talk(8, "","Bang h�i l�i ��i l� tr�n giang h� c� bang h�i gi�a so t�i v� ngh� ��ch ��a ph��ng # ��y l� m�t c�ng b�nh c�nh tranh ��ch v� ��i/s�n nh�y ","Mu�n tham gia bang h�i l�i ��i , tr��c ph�i t�i h��ng ta th�n th�nh # th�n th�nh ng��i ph�i l� tranh t�i bang h�i ��ch bang ch� #","H�p th�nh ��i sau song ph��ng ��i tr��ng mu�n t�i ghi danh . song ph��ng bang ch� m�i ng��i mu�n ��ng I ng�n v�n l��ng ti�n ��t c�c . ","N�p ti�n ��t c�c sau , tranh t�i th�n th�nh li�n ho�n th�nh . � 2 c� ban c� th� so v�i cu�c so t�i trong l�c kh�ng th� ghi danh ","Th�n th�nh th�nh c�ng , song ph��ng ��i vi�n c� 10 ph�t gia nh�p tranh t�i . sau tranh t�i �em ch�nh th�c b�t ��u !","Th�ng b�i �em k� v�o song ph��ng tranh t�i t�ch ph�n . m�i v� bang h�i th�nh vi�n �em ��i ph��ng ��nh tr�ng th��ng ��ch �em c� 3 c� t�ch ph�n , ��i ph��ng b� kh�u tr� 1 c� t�ch ph�n ","Tranh t�i k�t th�c , t�ch ph�n cao bang h�i �em l�y ���c th�ng l�i #","Ngo�i ra , tranh t�i trung c� v�a kh�ng c� th�nh vi�n n�a tranh t�i l� th�ng l�i thu�c v� m�t m�t kh�c ","Th�ng l�i bang h�i �em c� th� thu h�i �� n�p ��ch 1 ng�n v�n l��ng , ngo�i ra , c�n c� th� l�y ���c 800 v�n l��ng ��ch t��ng th��ng c�ng 1 v�n 2 ng�n �i�m bang h�i kinh nghi�m . th�t b�i bang h�i kh�ng th� d�n tr� v� �� n�p ��ch ph� d�ng , c�n ph�i kh�u tr� 1 v�n 4 ng�n �i�m bang h�i kinh nghi�m "); 
end; 

function OnReady() 
V = GetMissionV(MS_NEWSVALUE); 
RestTime = (GO_TIME - V) * 20; 

if (RestTime < 0) then 
RestTime=0 
end; 

RestMin, RestSec = GetMinAndSec(RestTime); 

str = "<#> n�i n�y �ang ti�n h�nh tranh t�i "..GetMissionS(3).."<#> c�ng th�nh khi�u chi�n , b�y gi� tranh t�i bang h�i l� :"..GetMissionS(1).."<#> ��i v�i "..GetMissionS(2).."<#>, v�o tr�ng th�i gian c�n c� "..RestMin.."<#> ph�n "..RestSec.."<#> gi�y ."; 
Say(str, 2,"Ta ph� h�p �i�u ki�n , mu�n th��ng cu�c so t�i tr�ng /OnJoin","Ta kh�ng mu�n th��ng cu�c so t�i tr�ng /OnCancel"); 
end; 

function ErrorMsg(ErrorId) 
if (ErrorId == 1) then 
Say("Mu�n th�n th�nh so t�i song ph��ng bang ch� tr��c ph�i h�p th�nh ��i sau n�a th�n th�nh tranh t�i ",0) 
elseif (ErrorId == 2) then 
Say("B�o l�i t�n ��ch n�u l� mu�n tham gia so t�i bang h�i ��i tr��ng , bang ch� mu�n d�n �� 1000 v�n l��ng ",0) 
elseif (ErrorId == 3) then 
Say("Ghi danh h� , xin li�n l�c nh�n vi�n qu�n l� #",0); 
elseif (ErrorId == 4) then 
Say("Ng��i kh�ng ph�i l� tranh t�i song ph��ng th�nh vi�n c�a bang h�i ho�c l� cu�c so t�i ng��i trong s�n ��m �� ��y , kh�ng th� �i v�o !", 0); 
elseif(ErrorId == 5) then 
Say("Ghi danh bang ch� l� mu�n b�y gi� ��i ng� ��ch ��i tr��ng ",0); 
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
	return Say("Ch� t� ��i c�a ng��i ph�i l� bang ch� m�i c� th� b�o danh l�c n�y. Xin ki�m tra l�i",0)
end
if (GetJoinTongTime() >= 7200) then 
JoinCamp(1); 
else 
Say("Ng��i gia nh�p bang h�i ��ch th�i gian qu� ng�n , kh�ng th� tham gia chi�n ��u !", 0); 
end; 
elseif (GetTongName() == GetMissionS(2)) then 
if (GetJoinTongTime() >= 7200) then 
if CheckIsCaptainAndTongMaster(GetTongName()) ~= 1 then
	return Say("Ch� t� ��i c�a ng��i ph�i l� bang ch� m�i c� th� b�o danh l�c n�y. Xin ki�m tra l�i",0)
end
JoinCamp(2); 
else 
Say("T ng��i gia nh�p bang h�i ��ch th�i gian qu� ng�n , kh�ng th� tham gia chi�n ��u !", 0); 
end; 
else 
ErrorMsg(4) 
end; 
end; 

function OnFighting() 
gametime = (floor(GetMSRestTime(MISSIONID,17)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = "<#> b�y gi� ng��i c�a song ph��ng ��m l� "..GetMSPlayerCount(MISSIONID, 1).."<#> "..GetMSPlayerCount(MISSIONID, 2).."<#>. th�i gian c�n th�a l�i "..RestMin.."<#> ph�n "..RestSec.."<#> gi�y ."; 
str = "<#> b�y gi� bang h�i "..GetMissionS(1).."<#> c�ng "..GetMissionS(2).."<#> �ang ti�n h�nh "; 
Say(str..str1, 0); 
end; 

function OnCancel() 

end; 
