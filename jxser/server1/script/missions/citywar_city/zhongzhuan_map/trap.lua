-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n trung chuy�n b�n �� to th�nh chi�n ��a �� # c�ng th�nh ph��ng # 
-- script viet hoa By http://tranhba.com Trap ID# c�ng th�nh chi�n 
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\citywar_city\\camper.lua");

function main() 
SubWorldOld = SubWorld-- script viet hoa By http://tranhba.com  ghi ch�p nguy�n th�y ��ch SubWorld 
WorldID = SubWorldIdx2ID(SubWorld); -- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t b�n �� ��ch ID s� 

idx = SubWorldID2Idx(221); -- script viet hoa By http://tranhba.com  ��t ���c ch� chi�n tr�ng ch�nh l� hay kh�ng � v�n ph�c v� kh� trung 

if (idx < 0) then 
return -- script viet hoa By http://tranhba.com  kh�ng t�n t�i l� tr� v� 
end; 

SubWorld = idx; 
if (GetMissionV(MS_STATE) == 0) then 
Say("Phe ta b�y gi� �ang chu�n b� ra chi�n tr��ng ! xin m�i ng��i d��ng tinh s�c du� # an t�m m�t ch�t ch� n�ng !", 0); 
SubWorld = SubWorldOld; 
return 
end 


if (WorldID == 222) then -- script viet hoa By http://tranhba.com  n�u nh� tr��c m�t v� tr� l� � th� ph��ng ��ch ph�a sau , l� b�y t� gia nh�p ph�a sau 
CheckAndJoin(1) 
SubWorld = SubWorldOld; 
else -- script viet hoa By http://tranhba.com  n�u nh� tr��c m�t v� tr� l� � c�ng ph��ng ��ch ph�a sau , l� b�y t� mu�n gia nh�p c�ng ph��ng 
-- script viet hoa By http://tranhba.com T = GetMissionV(MS_NEWSVALUE); 

-- script viet hoa By http://tranhba.com  th� ph��ng tr��c c�ng ph��ng 5 ph�t v�o tr�ng 
-- script viet hoa By http://tranhba.com if (T < 5) then 
-- script viet hoa By http://tranhba.com  Say("Tr��c m�t phe ta qu�n ��i �ang t� t�p , l�p t�c c� th� ti�n v�o chi�n tr��ng , xin m�i ng��i d��ng tinh s�c du� # an t�m m�t ch�t ch� n�ng #",0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com end; 

CheckAndJoin(2) 
SubWorld = SubWorldOld; 
end; 
end; 

function CheckAndJoin(Camp) 
if (GetTongName() == GetMissionS(Camp)) then -- script viet hoa By http://tranhba.com  thu�c v� n�n bang h�i l� b�y t� nh� ch�i v� qu�n ch�nh quy , cho ph�p ti�n v�o 
if (GetJoinTongTime() >= 7200) then 
-- if 1==1 then
if (GetTask(TV_TASKKEY) ~= GetMissionV(MS_KEY)) then 
BT_SetData(PL_KEYNUMBER, 0) 
BT_SetData(PL_TOTALPOINT, 0) 
SetTask(1017, 0) 
SetTask(TV_SERIESKILL_REALY,0) 
BT_SetData(PL_BATTLECAMP, 0) 
SetTask(TV_TASKKEY , GetMissionV(MS_KEY)); 
BT_LeaveBattle() 
BT_ClearPlayerData() 
end; 
JoinCamp(Camp, 1); 
else 
if (JoinWithCard(Camp, 0) == 0) then 
Say("Ng��i gia nh�p bang h�i ��ch th�i gian qu� ng�n , kh�ng th� tham gia chi�n ��u !", 0); 
end; 
end; 
else 
JoinWithCard(Camp, 1) 
end; 
end; 

-- script viet hoa By http://tranhba.com return 0 b�y t� t�p ��u kh�ng c� , 1 b�y t� c� t�p 
function JoinWithCard(Camp, UI) 
CityID = GetWarOfCity(); 
-- script viet hoa By http://tranhba.com  n�u nh� �� s� d�ng qu� phi�u v�o tr�ng qu� , l� tr�c ti�p cho �i 
if (GetTask(TV_TASKKEY) == GetMissionV(MS_KEY) and GetTask(TV_TASKVALUE) == Camp) then 
JoinCamp(Camp,2) 
else 
if (CityID == 0) then 
print("Error! CityID == 0"); 
return 0 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� kh�ng c� phi�u l� kh�ng cho v�o 
CardItemID = 0; 
Camp = 1; 
if (GetItemCountEx(CardTab[CityID * 2 - 1]) >= 1) then 
CardItemID = CardTab[CityID * 2 - 1]; 
Camp = 2; 
elseif (GetItemCountEx(CardTab[CityID * 2]) >= 1) then 
CardItemID = CardTab[CityID * 2]; 
Camp = 1; 
else 
if (UI == 1) then 
Say("Ng��i kh�ng c� l�nh b�i l�m sao c� th� �i v�o ��y ! �i m�t ch�t !", 0); 
end 

SetPos(OuterPos[1][2], OuterPos[1][3]) 
return 0 
end; 

life = GetItemLife(CardItemID); 
life = floor(life / 1440); 
if (life > 5) then 
DelItemEx(CardItemID); 
Say(format(" l�nh b�i n�y t� %d ng�y kh�i m�t �i hi�u l�c , kh�ng th� s� d�ng ", life), 0); 
SetPos(OuterPos[1][2], OuterPos[1][3]) 
else 
DelItemEx(CardItemID); 
BT_SetData(PL_KEYNUMBER, 0) 
BT_SetData(PL_TOTALPOINT, 0) 
SetTask(1017, 0) 
SetTask(TV_SERIESKILL_REALY,0) 
SetTask(TV_TASKID, MISSIONID) 
SetTask(TV_TASKKEY , GetMissionV(MS_KEY)); 
SetTask(TV_TASKVALUE, Camp) 
SetTask(TV_CITYID, CityID) 
BT_LeaveBattle() 
BT_ClearPlayerData() 
JoinCamp(Camp,2) 
end 
end; 
return 1 
end; 
