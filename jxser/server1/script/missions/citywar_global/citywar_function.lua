IncludeLib("LEAGUE") 
IncludeLib("TITLE") 
Include("\\script\\lib\\gb_modulefuncs.lua");
TASK_ACTIVE_TITLE = 1122 
CW_TITLE_TIME = 7*24*60*60*18; 
TB_CITYWAR_ARRANGE = { 
{3,4},-- script viet hoa By http://tranhba.com  ph��ng t��ng 
{1,2},-- script viet hoa By http://tranhba.com  th�nh �� 
{2,3},-- script viet hoa By http://tranhba.com  ��i L� 
{5,6},-- script viet hoa By http://tranhba.com  bi�n kinh 
{4,5},-- script viet hoa By http://tranhba.com  t��ng d��ng 
{0,1},-- script viet hoa By http://tranhba.com  D��ng Ch�u 
{6,0},-- script viet hoa By http://tranhba.com  tr��c khi an 
} 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - mua c�ng th�nh chi�n ��o c� start 
function AskDeal() 
Say("Ph� tr� d�ng c� c�ng th�nh h�t s�c h�u hi�u d�ng , ch� c� th� d�ng nguy�n b�o mua ! kh�ch quan n�u nh� b� l� kh�ng mua th�t ch�nh l� ti�c nu�i !", 4, 
-- script viet hoa By http://tranhba.com " h�n th�ch r�ch /DealBuy", 
" nghi�t long h��ng xe /#DealBuy(1)", 
" t� t�p binh ph� /#DealBuy(2)", 
" ngoan c� binh ph� /#DealBuy(3)", 
" kh�ng c�n /OnCancelBuy"); 
end; 

function DealBuy(ItemID) 
if (ItemID == 0) then 
SetTaskTemp(15, 29); 
elseif (ItemID == 1) then 
SetTaskTemp(15, 30); 
elseif (ItemID == 2) then 
SetTaskTemp(15, 31); 
elseif (ItemID == 3) then 
SetTaskTemp(15, 32); 
else 
return 
end; 
Say("B�i v� mua ng��i r�t nhi�u ! kh�ch quan ch� c� th� mua m�t l�n ! ��ng � kh�ng ?", 2,"H�o /DoBuy","Ta mu�n m�t c�i /OnCancelBuy"); 
end; 

function DoBuy() 
TheItem = GetTaskTemp(15); 
if (TheItem >= 29 and TheItem <= 32) then 
if CalcEquiproomItemCount(4, 417, 1, -1) > 30 then
ConsumeEquiproomItem(30,4, 417, 1, -1)
AddItem(6,1,TheItem,1,0,0); 
WriteLog(format("%s d�ng 30 ti�n ��ng mua 1 c� c�ng th�nh ��o c� >> %s",GetName(),TheItem)); 
else
Say("Kh�ch quan l� c�ng ti�u nh�n n�i gi�n hay l� th�t ��ch kh�ng c� 30 ti�n ��ng?", 0); 
end
-- if (GetItemCountEx(343) > 0) then 
-- DelItemEx(343); 
-- AddItem(6,1,TheItem,1,0,0); 
-- WriteLog(format("%s d�ng 343 c� kim nguy�n b�o mua 1 c� c�ng th�nh ��o c� >> %s",GetName(),TheItem)); 
-- Say("Kh�ch quan th�t th�c h�a !", 0); 
-- else 
-- Say("Kh�ch quan l� c�ng ti�u nh�n n�i gi�n hay l� th�t ��ch kh�ng c� nguy�n b�o ?", 0); 
-- end; 
end; 
end; 
function OnCancelBuy() 
Say("Ch�c ngh�a s� k� khai ��c th�ng , s�m ng�y kh�i ho�n !", 0); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - mua c�ng th�nh chi�n ��o c� end 

-- script viet hoa By http://tranhba.com  ��t ���c ��n 7 ng�y sau 20:00 ph�n ��ch th�i gian trinh 
function getUsedLine() 
local nh = tonumber(GetLocalDate("%H")); 
local nm = tonumber(GetLocalDate("%M")); 
	return (CW_TITLE_TIME-((nh-20)*60+nm)*60*18);
end; 

-- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t ghi danh c�ng th�nh chi�n ��ch th�nh ph� 
-- script viet hoa By http://tranhba.com nSel=1, ghi danh #nSel=2, c�ng th�nh 
function getSigningUpCity(nSel) 
local nWeek = tonumber(GetLocalDate("%w")); 
for i = 1, getn(TB_CITYWAR_ARRANGE)do 
if (TB_CITYWAR_ARRANGE[i][nSel] == nWeek) then 
return i; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  ki�m tra d�n t��ng �i�u ki�n 
function check_award_condition(city_index, show_talk) 
if (city_index == 0) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� chi�m l�nh th�nh ph� ��ch bang ph�i m�i c� th� d�n t��ng , mang c�c huynh �� c�a ta �i chi�m l�nh m�t t�a th�nh �i !") 
end 
return 0 
end 

-- script viet hoa By http://tranhba.com local tong_master = GetTongMaster() 
-- script viet hoa By http://tranhba.com local player_name = GetName() 
-- script viet hoa By http://tranhba.com if (tong_master ~= player_name) then 
-- script viet hoa By http://tranhba.com  if (show_talk == 1) then 
-- script viet hoa By http://tranhba.com  Talk(1, "", "<#> ch� c� bang ch� m�i c� th� nh�n l�y bang h�i t��ng th��ng , g�i c�c ng��i bang ch� ��n ��y �i ") 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com return 0 
-- script viet hoa By http://tranhba.com end 

local wday = tonumber(GetLocalDate("%w")) -- script viet hoa By http://tranhba.com  h�m nay l� th� m�y ? 
local hour = tonumber(GetLocalDate("%H")) 
if (wday ~= 1 or hour < 9 or hour >= 20) then 
if (show_talk == 1) then 
Talk(1, "", "<#> m�i tu�n t� 9:00~20:00 l� d�n t��ng th�i gian , ��n l�c �� l�i �i ") 
end 
return 0 
end 

local ndate = tonumber(GetLocalDate("%Y%m%d")) 
if (ndate == get_citybonus_task(city_index, CITYINFO_LEAGUETASK_BONUS)) then 
if (get_city_orecount(city_index) <= get_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT)) then 
if (show_talk == 1) then 
Talk(1, "", "<#> tu�n n�y ��ch ph�n th��ng �� d�n ho�n , cu�i tu�n tr� l�i �i . ") 
end 
return 0 
end; 
else 
set_citybonus_task(city_index, CITYINFO_LEAGUETASK_BONUS, ndate); 
set_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, 0); 
end 

return 1 
end 

TSK_CITYTONG_DATE = 2518 
-- script viet hoa By http://tranhba.com  nh�n l�y chi�m th�nh bang h�i t��ng th��ng 
function talk_citytong_award() 
local city_index = gettongownercity() 
if (check_award_condition(city_index, 1) == 1) then 
Say("<#> chi�m th�nh bang h�i ph�n th��ng . chi�m th�nh gi�p th�nh vi�n c� th� ��n v� l�m truy�n nh�n ch� nh�n l�y 5 c�p huy�n tinh , m�i ng��i c� th� nh�n l�y 1 vi�n . gi�i h�n : �� th�nh ( tr��c khi an c�ng bi�n kinh ) nh�n l�y 300 vi�n 5 c�p huy�n tinh , th�nh ph� ( nh�ng th�nh th� kh�c ) nh�n l�y 200 vi�n 5 c�p huy�n tinh . � 18h00 sau n�u nh� c�n kh�ng c� d�n ho�n l�i c�a , nh� v�y bang ch� c� th� � 20h00 tr��c n�a nh�n l�y .", 
3, 
"<#> ta mu�n nh�n l�y huy�n tinh qu�ng th�ch /#take_tong_award(1)", 
"<#> ta l� bang ch� , tr� l�i d�n m�t l�n ph�n th��ng /take_tong_resaward", 
"<#> ta t�m th�i kh�ng d�n /nothing") 
end 
end 

-- script viet hoa By http://tranhba.com  nh�n l�y bao ti�n l� x� 
function take_tong_award(count) 
-- script viet hoa By http://tranhba.com  m�t bao ti�n l� x� chi�m m�t c�ch t� 
if (CalcFreeItemCellCount() < count) then 
Talk(1, "", "<#> l�ng c�a ng��i t�i ��y , s�a sang l�i h�o tr� l�i d�n t��ng .") 
return 
end 

local city_index = gettongownercity() 
if (check_award_condition(city_index, 0) == 0) then 
return 
end 

local nH = tonumber(GetLocalDate("%H")); 
if (nH >= 18) then 
Talk(1, "", "<#> m�i bang h�i ��ch d�n t��ng th�i gian l� 9h00 ��n 18h00, xin/m�i ��ng l�c t�i d�n t��ng . ��i v�i c�n kh�ng c� nh�n l�y ��ch ph�n th��ng , th�ng b�o bang ch� 20h00 t�i tr��c nh�n l�y ."); 
return 0; 
end; 
local today = tonumber(GetLocalDate("%Y%m%d")); 
local nMydate = GetTask(TSK_CITYTONG_DATE); 
if (nMydate ~= today) then 
AddItem(6,1,147,5,1,1); 
SetTask(TSK_CITYTONG_DATE, today); 
add_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, 1); 
local msg = format("%s %s (%s) nh�n l�y %s 5 c�p huy�n tinh t� kim s�n ch��ng m�n nh�n ch� ",GetLocalDate("[%y-%m-%d %H:%M] "),GetAccount(),GetName(),count) 
WriteLog(msg); 
Talk(1, "", "<#> ��y l� ng��i ��ch ph�n th��ng , xin/m�i nh�n l�y .") 
else 
Talk(1, "", "<#> ng��i �� l�nh tu�n n�y ��ch ph�n th��ng , ch� ch�t chu �i . "); 
end 
end 

function take_tong_resaward() 
local city_index = gettongownercity() 
if (check_award_condition(city_index, 0) == 0) then 
return 
end 

local nH = tonumber(GetLocalDate("%H")); 
if (nH < 18 or nH >= 20) then 
Talk(1, "", "<#> bang ch� c� th� � 18h00 ��n 20:00 l�n th� hai d�n ph�n th��ng , xin/m�i ��ng l�c t�i d�n ."); 
return 0; 
end; 

if (GetName() ~= GetTongMaster()) then 
Talk(1, "", "<#> ch� c� bang ch� m�i c� th� l�n n�a nh�n l�y thu�c v� bang h�i ph�n th��ng . xin b�o cho ��t gi�p m�t tay ch� � 20h00 tr��c ��n c�i n�y d�n t��ng ."); 
return 0; 
end; 

local nFreecell = CalcFreeItemCellCount(); 
if (nFreecell < 20) then 
Talk(1, "", "<#> t�i �eo l�ng kh�ng gian kh�ng �� , xin/m�i s�a sang l�i t�i �eo l�ng .") 
return 0; 
end; 

local nCount = get_city_orecount(city_index) - get_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT); 

for i = 1, nCount do 
AddItem(6,1,147,5,1,1); 
end; 
add_citybonus_task(city_index, CITYINFO_LEAGUETASK_COUNT, nCount); 
local msg = format("%s %s (%s) nh�n l�y %s 5 c�p huy�n tinh t� kim s�n ch��ng m�n nh�n ",GetLocalDate("[%y-%m-%d %H:%M] "),GetAccount(),GetName(),count) 
WriteLog(msg); 
Say(format("��y l� ��t gi�p ��ch ph�n th��ng , %s vi�n huy�n tinh c�n c� !",nCount), 0); 
end; 

function get_city_orecount(cityid) 
if (cityid == 4 or cityid == 7) then 
return 300; 
else 
return 200; 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  l�y ���c m�t nh� ch�i ch� � bang h�i chi�m l�nh ��ch th�nh ph� , tr� v� t�c d�n tr� gi� 
function gettongownercity() 
-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i bang h�i t�n 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 

-- script viet hoa By http://tranhba.com  chia ra l�y ���c b�y ��i th�nh th� ��ch bang h�i t�n c�ng nh� ch�i bang h�i t�n so s�nh 
local strCityTongName 

for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "" and strCityTongName == strTongName) then 
return nCityID 
end 
end 

-- script viet hoa By http://tranhba.com  b�y t� nh� ch�i ch� � bang h�i kh�ng c� chi�m l�nh th�nh ph� 
return 0 
end 

-- script viet hoa By http://tranhba.com  n�u v� nil ho�c 0 , tr� v� 1 , n�u kh�ng tr� v� 0 
function FALSE(nValue) 
if (nValue == nil or nValue == 0 or nValue == "") then 
return 1 
else 
return nil 
end 
end 

LEAGUETYPE_CITYWAR_SIGN = 508; 
LEAGUETYPE_CITYWAR_FIRST = 509; 
function checkCityWarLeague() 
for i = 1, 7 do 
local szLg = cityid_to_lgname(i); 
local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLg); 
if (FALSE(nlid)) then 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_SIGN, szLg) -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n tin t�c ( lo�i h�nh # t�n ) 
local ret = LG_ApplyAddLeague(nNewLeagueID, "", ""); 
LG_FreeLeagueObj(nNewLeagueID); 
end; 

nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLg); 
if (FALSE(nlid)) then 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_FIRST, szLg) -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n tin t�c ( lo�i h�nh # t�n ) 
local ret = LG_ApplyAddLeague(nNewLeagueID, "", ""); 
LG_FreeLeagueObj(nNewLeagueID); 
end; 
end; 
end; 

function cityid_to_lgname(nCityID) 
return GetCityAreaName(nCityID); 
end; 

-- script viet hoa By http://tranhba.com  c�n � m�t m�y ph�c v� kh� th��ng thi h�nh l� ���c 
-- script viet hoa By http://tranhba.com  cho n�n , ph�n �o�n c� Hoa S�n ��ch b�n �� 

-- script viet hoa By http://tranhba.com Relay thi h�nh thi�t tr� c�ng th�nh ph��ng 
function citywar_appointchallenger(szCityName, szTongName) 
if (SubWorldID2Idx(2) >= 0 and not FALSE(szCityName) and not FALSE(szTongName)) then 
AppointChallenger(szCityName, szTongName) 
end; 
end; 

-- script viet hoa By http://tranhba.com Relay thi h�nh thi�t tr� th�nh ch� 
function citywar_appointviceroy(szCityName, szTongName) 
if (SubWorldID2Idx(2) >= 0 and not FALSE(szCityName) and not FALSE(szTongName)) then 
AppointViceroy(szCityName, szTongName) 
end; 
end; 
