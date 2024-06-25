IncludeLib("LEAGUE") 
IncludeLib("TONG") 
Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\citywar_global\\ladder.lua")
MapTab = {}; 
MapTab[1]= {213, 1633, 3292}; 
MapTab[2]= {214, 1633, 3292}; 
MapTab[3]= {215, 1633, 3292}; 
MapTab[4]= {216, 1633, 3292}; 
MapTab[5]= {217, 1633, 3292}; 
MapTab[6]= {218, 1633, 3292}; 
MapTab[7]= {219, 1633, 3292}; 
MapTab[8]= {220, 1633, 3292}; 
MapCount = getn(MapTab); 

LGTSK_QINGTONGDING_COUNT = 1; -- script viet hoa By http://tranhba.com  ghi danh c�nh ��u ��ch khi�u chi�n l�nh s� l��ng 
LGTSK_CITYWAR_SIGNCOUNT = 2; -- script viet hoa By http://tranhba.com  tr��c m�t c�nh ��u ��ch s� l�n 

LEAGUETYPE_CITYWAR_SIGN = 508; 
LEAGUETYPE_CITYWAR_FIRST = 509; 
nCityWar_Item_ID_G = 6 -- script viet hoa By http://tranhba.com  c�ng th�nh chi�n th� v�t G ID 
nCityWar_Item_ID_D = 1 -- script viet hoa By http://tranhba.com  c�ng th�nh chi�n th� v�t D ID 
nCityWar_Item_ID_P = 1499 -- script viet hoa By http://tranhba.com  c�ng th�nh chi�n th� v�t P ID 
TIAOZHANLING_TASK_DATE = 1839 -- script viet hoa By http://tranhba.com  khi�u chi�n l�nh ghi ch�p nh�n l�y th�i k� ,1. th�i gian ( n�m %y),2. th�i gian ( th�ng ) , 3. th�i gian ( ng�y ),4. nh�n l�y s� l�n 
TIAOZHANLING_TASK_COUNT = 1840 -- script viet hoa By http://tranhba.com  khi�u chi�n l�nh giao n�p s� l�n 

function OnCancel() 
end; 

function PreEnterGame() 
-- kiem tra xem co phai doi truong hay ko
-- local szTongName, nTongID = GetTongName(); 
-- if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER and GetTongFigure() ~= TONG_MANAGER)) then 
-- Say("Ch� c� ��i tr��ng tr� l�n m�i c� th� tham gia t�nh n�ng n�y.")
-- return 
-- end
---
-- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i ch� � bang h�i �ang ti�n h�nh l�i ��i cu�c so t�i , l� t� ��ng ti�n v�o n�n n�i ch�n 
TongName, result = GetTong() 
if (TongName ~= "") then 
for i = 0, 7 do 
if (IsArenaBegin(i) == 1) then 
Tong1, Tong2 = GetArenaBothSides(i); 
if (Tong1 == TongName or Tong2 == TongName) then 
EnterBattle(i); 
return 
end; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  n�u kh�ng , xin/m�i nh� ch�i m�nh l�a ch�n ti�n v�o c�i n�o 
EnterGame(); 
end; 

function EnterGame() 
ExtraArenaInfo = {"<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) ", "<#> ( ��t tr�ng ) "}; 
for i = 0, 7 do 
if (IsArenaBegin(i) == 1) then 
Tong1, Tong2 = GetArenaBothSides(i); 
			ExtraArenaInfo[i + 1] = " ("..Tong1.." vs "..Tong2..") "
end; 
end; 

Say("Ng��i ngh� ti�n c�ng th�nh chi�n l�i ��i d� ch�n cu�c so t�i sao ??", 9, "<#> l�i ��i 1"..ExtraArenaInfo[1].."/EnterBattle", "<#> l�i ��i 2"..ExtraArenaInfo[2].."/EnterBattle", "<#> l�i ��i 3"..ExtraArenaInfo[3].."/EnterBattle", "<#> l�i ��i 4"..ExtraArenaInfo[4].."/EnterBattle", "<#> l�i ��i 5"..ExtraArenaInfo[5].."/EnterBattle", "<#> l�i ��i 6"..ExtraArenaInfo[6].."/EnterBattle", "<#> l�i ��i 7"..ExtraArenaInfo[7].."/EnterBattle", "<#> l�i ��i 8"..ExtraArenaInfo[8].."/EnterBattle","Kh�ng �i /OnCancel"); 
end; 

function EnterBattle(nBattleId) 

if (IsArenaBegin(nBattleId) ~= 1) then 
return 
end; 
-- DisabledStall(1)	--��ֹ��̯
-- ForbitTrade(1);		--��ֹ����
SetFightState(0) 
local tbRoom= GetRoomItems(0)
	for _,v in tbRoom do
	local G,D,P,nLevel = GetItemProp(v);
	if G == 1 then
		-- Msg2Player("fff")
		SetItemBindState(v ,-2)
		SyncItem(v)
	end
	end
-- script viet hoa By http://tranhba.com  thi�t tr� tr� v� �i�m 
M,X,Y = GetWorldPos(); 
SetTask(300, M); 
SetTask(301, X); 
SetTask(302, Y); 

	NewWorld(MapTab[nBattleId + 1][1], MapTab[nBattleId + 1][2], MapTab[nBattleId + 1][3]);
end; 


-- script viet hoa By http://tranhba.com  function main() 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ArenaMain(); 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  ghi danh ch� ��nh th�nh ph� l�i ��i cu�c so t�i [wxb 2004-3-31]( b� hoang 2006-11-22) 
function SignupACity(sel) 
	CityID = sel + 1;
if (IsSigningUp(CityID) == 1) then 
SetTaskTemp(15, CityID); 
AskClientForNumber("SignUpFinal", 1000000, 99999999,"Xin/m�i ��a v�o ��u ng�n ��ch s� ti�n :"); 
else 
Say("<#><"..GetCityAreaName(CityID).."<#> > th�nh , l�i ��i ghi danh c�n ch�a b�t ��u ", 0); 
end; 
end; 

-- script viet hoa By http://tranhba.com  ghi danh duy nh�t �ang ghi danh giai �o�n ��ch l�i ��i cu�c so t�i [wxb 2004-3-31]( b� hoang 2006-11-22) 
function SignUpTheOne() 
CityID = 0; 
for i = 1, 7 do 
if (IsSigningUp(i) == 1) then 
CityID = i; 
end; 
end; 

if (IsSigningUp(CityID) == 1) then 
SetTaskTemp(15, CityID); 
AskClientForNumber("SignUpFinal", 1000000, 99999999,"Xin/m�i ��a v�o ��u ng�n ��ch s� ti�n :"); 
else 
Say("<#><"..GetCityAreaName(CityID).."<#> > th�nh , l�i ��i ghi danh c�n ch�a b�t ��u ", 0); 
end; 
end; 

-- script viet hoa By http://tranhba.com  nh� ch�i ��a v�o ��u ng�n kim sau t�i ��y [wxb 2004-3-31]( b� hoang 2006-11-22) 
function SignUpFinal(Fee) 
CityID = GetTaskTemp(15); 
SignUpCityWarArena(CityID, Fee); 
end; 

-- script viet hoa By http://tranhba.com  tu�n tra ng�y h�m qua c�nh ��u khi�u chi�n l�nh ��ch t�nh hu�ng 
function citywar_CheckVotes() 
local nCityId = getSigningUpCity(1); 
local tbVotes = citywar_tbLadder:GetInfo() 
local szMsg = format("<dec><npc> ph�a d��i l� bang h�i tham gia c�nh ��u khi�u chi�n l�nh <%s>: <enter>%s%s%s<enter>", GetCityAreaName(nCityId), strfill_center("STT",4, " "), strfill_center("Bang h�i ", 20, " "), strfill_center("S� l��ng ", 20, " ")) 
local res = {} 
for i = 1, getn(tbVotes) do 
tinsert(res, strfill_center(i, 4, " ")) 
tinsert(res, strfill_center(tbVotes[i].szName, 20, " ")) 
tinsert(res, strfill_center(tbVotes[i].nValue, 20, " ")) 
tinsert(res, "<enter>") 
end 
PushString(szMsg) 
for i = 1, getn(res) do 
AppendString(res[i]) 
end 
szMsg = PopString() 
TaskSayList(szMsg,"C�m �n ! ta hi�u ./OnCancel") 
end 
-- script viet hoa By http://tranhba.com  nh�p kh�u 
function ArenaMain() 
-- CityID = 0; 
-- for i = 1, 7 do 
-- if (IsSigningUp(i) == 1) then 
-- CityID = i; 
-- end;
-- end
-- if CityID == 0 then
-- Say("L�i ��i bang h�i b�o danh l�c 18h h�ng ng�y. Ng��i quay l�i sau nh�",0)
-- return
-- end
Say(format("L�i ��i bang h�i %s �ang b�o danh, bang ch� ho�c tr��ng l�o nhanh tay b�o danh",GetCityAreaName(CityID)),5,
--"Ta mu�n b�o danh/SignUpTheOne",
--"Ta mu�n v�o l�i ��i bang h�i/PreEnterGame",
--" th��ng ngh� chi�m th�nh l�nh b�i /TokenCard",
--" mua c�ng th�nh chi�n ph� tr� d�ng c� /AskDeal",
"Ta ch� xem qua/OnCancel")
-- local nCityId = getSigningUpCity(1);-- script viet hoa By http://tranhba.com GetArenaTargetCity() 
-- if (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and getSignUpState(nCityId) == 1) then 
-- Say(format("B�y gi� c�ng th�nh chi�m th�nh <%s> �ang ghi danh , ng��i mu�n ghi danh sao ?",GetCityAreaName(nCityId)), 7,"Ghi danh c�ng th�nh chi�n /SignUpCityWar","Ta mu�n xem m�t ch�t c�ng th�nh chi�n ��ch ghi danh t�nh hu�ng /ViewCityWarTong","Ta mu�n xem m�t ch�t bang h�i khi�u chi�n l�nh ��ch s� l��ng /ViewTiaoZhanLing","Hi�u r� c�ng th�nh chi�n t�nh hu�ng /GameInfo","Th��ng ngh� chi�m th�nh l�nh b�i /TokenCard","Mua c�ng th�nh chi�n ph� tr� d�ng c� /AskDeal","C�i g� ��u kh�ng c�n /OnCancel"); 
-- else 
-- Say("��y l� th��ng ngh� c�ng th�nh chi�n ��ch ��a ph��ng , ng��i c� chuy�n g� kh�ng ?", 
-- 7, 
-- " ta t�i ��ng l�nh b�i /GiveTiaoZhanLing", 
-- " nh�n khi�u chi�n l�nh ��u ng�n t�nh hu�ng /citywar_CheckVotes" , 
-- " ta mu�n xem m�t ch�t bang h�i khi�u chi�n l�nh ��ch s� l��ng /ViewTiaoZhanLing", 
-- " hi�u r� c�ng th�nh chi�n t�nh hu�ng /GameInfo", 
-- " th��ng ngh� chi�m th�nh l�nh b�i /TokenCard", 
-- " mua c�ng th�nh chi�n ph� tr� d�ng c� /AskDeal", 
-- " c�i g� ��u kh�ng c�n /Cancel"); 
-- end; 
end; 

-- script viet hoa By http://tranhba.com  tra x�t �� ghi danh tham gia c�ng th�nh chi�n ��ch bang h�i 
function ViewCityWarTong() 
local caption = nil 
local nCityId = getSigningUpCity(1); 
local nlgID = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)) 
-- script viet hoa By http://tranhba.com LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), 
local nlgcount = LG_GetMemberCount(nlgID) 
if nlgcount == 0 then 
caption = "<dec> b�y gi� kh�ng c� bang h�i ghi danh c�ng th�nh ." 
else 
caption = "<dec> ghi danh c�ng th�nh chi�n ��ch bang h�i : \n" 
PushString(caption) 
for nindex=0,nlgcount do 
szTongName = LG_GetMemberInfo(nlgID,nindex) 
AppendString("<color=yellow>") 
AppendString(szTongName) 
AppendString("<color>\t") 
end 
caption = PopString() 
end 
local option = {"Tr� v� /ArenaMain","R�i �i /OnCancel"} 
TaskSay(caption, option) 
end 

-- script viet hoa By http://tranhba.com  giao n�p khi�u chi�n l�nh 
function GiveTiaoZhanLing() 
if checkBangHuiLimit() == 0 then 
Say("Ng��ng ng�ng ! ng��i c�n kh�ng c� gia nh�p b�t k� bang ph�i #",0); 
return 0; 
end 
local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d"))); 
local nLibao = GetTask(TIAOZHANLING_TASK_DATE); 
local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3)); 
local nCount = GetTask(TIAOZHANLING_TASK_COUNT); 
if ( nOlddate == nDate and nCount >= 300) then 
Say("M�i ng�y nhi�u nh�t �� giao 300 t�m l�nh b�i . h�m nay ng��i �� �� giao li�u 300 t�m l�nh b�i , ng�y mai ti�p t�c �i ",0) 
return 0; 
end 
if ( nOlddate ~= nDate ) then 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d")))); 
SetTask(TIAOZHANLING_TASK_COUNT,0); 
end 

local szlgname = GetTongName(); 
-- script viet hoa By http://tranhba.com **** ph�n �o�n c� hay kh�ng s�ng l�p n�n x� �o�n 
checkCreatLG(szlgname); 

-- script viet hoa By http://tranhba.com ** ph�n �o�n c� hay kh�ng gia nh�p n�n x� �o�n 
checkJoinLG(szlgname); 
local szTongName, nTongID = GetTongName(); 
local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
if nsum >= 2000000000 then -- script viet hoa By http://tranhba.com  th��ng h�n ��t 20 �c l� kh�ng th� nh�c l�i ��ng 
Say("V� l�m l�m t�ng s� �� ��t th��ng h�n . l�c/khi kh�c th� l�i l�n n�a �i .",0) 
return 0; 
end 
-- script viet hoa By http://tranhba.com ** �� giao khi�u chi�n l�nh 
GiveItemUI("�� giao khi�u chi�n l�nh ","Khi�u chi�n l�nh c� th� ��i 20 v�n kinh nghi�m , bang h�i d�ng �� ghi danh c�ng th�nh chi�n .", "sure_GiveTiaoZhanLing", "OnCancel"); 
end 

function sure_GiveTiaoZhanLing(nCount) 
if nCount <= 0 then 
Say("Th�t ��ng ti�c , ng��i c�n kh�ng c� ��ng khi�u chi�n v�t ph�m cho ta ",2,"��ng v�t ph�m /GiveTiaoZhanLing","Ta mu�n v�a ngh� /OnCancel"); 
return 0; 
end 
for i = 1, nCount do 
local nItemidx = GetGiveItemUnit(i); 
local g, d, p = GetItemProp(nItemidx); 
if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then 
Say("Ta kh�ng mu�n kh�c , ch� c�n mang cho ta <color=yellow> khi�u chi�n l�nh <color> l� ���c r�i .", 2,"��ng v�t ph�m /GiveTiaoZhanLing","Ta mu�n v�a ngh� /OnCancel"); 
return 0; 
end; 
end; 
local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d"))); 
local nLibao = GetTask(TIAOZHANLING_TASK_DATE); 
local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3)); 
local nCountall = GetTask(TIAOZHANLING_TASK_COUNT); 
	if ( nOlddate == nDate and nCountall+nCount > 300) then
Say(format("Th�t ti�c nu�i , h�m nay ng��i �� n�p l�n %d khi�u chi�n l�nh , ch� c�n tr�/mang l�n ��ng %d l�nh b�i l� ���c r�i .",nCountall,300-nCountall),0) 
return 0; 
end 
if ( nOlddate ~= nDate ) then 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m")))); 
SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d")))); 
SetTask(TIAOZHANLING_TASK_COUNT,0); 
end 
local nCityId = getSigningUpCity(1); 
local szTongName, nTongID = GetTongName(); 
-- script viet hoa By http://tranhba.com local szplayName = GetName() 
-- script viet hoa By http://tranhba.com local nlg = LG_GetLeagueObj(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName); 
-- script viet hoa By http://tranhba.com local nlid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPE, szTongName); 
-- script viet hoa By http://tranhba.com local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE, szTongName, szplayName, LGTSK_QINGTONGDING_COUNT); 
local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
-- script viet hoa By http://tranhba.com ConsumeEquiproomItem(nCount, nCityWar_Item_ID_G, nCityWar_Item_ID_D, nCityWar_Item_ID_P, -1); 
for i = 1, nCount do 
local nItemidx = GetGiveItemUnit(i); 
RemoveItemByIndex(nItemidx) 
end; 
	SetTask(TIAOZHANLING_TASK_COUNT,nCountall+nCount);
-- script viet hoa By http://tranhba.com LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_CITYWAR_SIGNCOUNT, 1, "", "") 

LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, nCount, "", ""); 


-- script viet hoa By http://tranhba.com print(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, nCount, "", "") 
-- script viet hoa By http://tranhba.com  gia t�ng kinh nghi�m , �� giao 1 c� gia t�ng 20 v�n kinh nghi�m 
nAddExp = nCount * 5000 
AddOwnExp(nAddExp) 
Msg2Player(format("Ng��i �� n�p l�n %d khi�u chi�n l�nh , l�y ���c %d kinh nghi�m ",nCount,nAddExp)) 
WriteLog(format("[ c�ng th�nh chi�n _ ��ng khi�u chi�n l�nh ]Date:%s Account:%s Name:%s Tong:%s Count:%d Exp:%d",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szTongName,nCount,nAddExp)) 
end; 

-- script viet hoa By http://tranhba.com  tu�n tra khi�u chi�n l�nh 
function ViewTiaoZhanLing() 
local szTongName, nTongID = GetTongName(); 
if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER)) then 
Say("Th�t ��ng ti�c , ch� c� tr� gi�p c�ng tr��ng l�o m�i c� th� nh�n khi�u chi�n l�nh ��ch s� l��ng tin t�c .", 0); 
return 0 
end 
-- script viet hoa By http://tranhba.com local szlgname = GetTongName(); 
-- script viet hoa By http://tranhba.com **** ph�n �o�n c� hay kh�ng s�ng l�p n�n x� �o�n 
checkCreatLG(szTongName); 

-- script viet hoa By http://tranhba.com ** ph�n �o�n c� hay kh�ng gia nh�p n�n x� �o�n 
checkJoinLG(szTongName); 
-- script viet hoa By http://tranhba.com local nCityId = getSigningUpCity(1); 
-- script viet hoa By http://tranhba.com local szTongName, nTongID = GetTongName(); 
-- script viet hoa By http://tranhba.com local nlg = LG_GetLeagueObj(TIAOZHANLING_LGTYPE, szTongName); 
-- script viet hoa By http://tranhba.com local szplayName = GetName() 
-- script viet hoa By http://tranhba.com local nlid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPE, szTongName); 
-- script viet hoa By http://tranhba.com Msg2Player(nlid) 
-- script viet hoa By http://tranhba.com local nCurCount = LG_GetMemberTask(nlid, LGTSK_TIAOZHANLING_COUNT) 
local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 

Say(format("��t gi�p �� n�p l�n li�u <color=yellow>%d<color> khi�u chi�n l�nh .",nCurCount),0) 
end 

-- script viet hoa By http://tranhba.com  li�n quan t�i l�nh b�i ��ch x� l� start************************************************ 
function TokenCard() 
Say("Khi�u chi�n l�nh b�i mu�n �� l�i cho mu�n �i ti�p vi�n bang h�i c�ng th� th�nh ng��i c�a ! xin h�i m�t ch�t ngh�a s� ��ch m�c ��ch l� c�i g� ?", 4,"Mua chi�m th�nh l�nh b�i /BuyCard","Th� l�nh b�i /CheckCard", " lui v� l�nh b�i /ReturnCard","Kh�ng l�m c�i g� /OnCancel"); 
end; 

function BuyCard() 
if (GetName() == GetTongMaster()) then 
TongName, result = GetTong() 
for i = 1, 7 do 
Tong1, Tong2 = GetCityWarBothSides(i); 
if (Tong1 == TongName) then 
SetTaskTemp(15, CardTab[i * 2 - 1]); 
str_format = format("Th� ra l� ��i hi�p l� khi�u chi�n th�nh %s ng��i c�a , th�t l� l�i h�i , n�i n�y c� b�n c�ng th�nh l�nh b�i , l�nh b�i n�y c� c�t gi� ��t gi�p li�n minh 5 ng�y ��ch hi�u l�c , m�i l�nh b�i gi� %s hai .",GetCityAreaName(i),CardPrice); 
Say(str_format, 2,"Mua m�t ch�t /DealBuyCard","T�m th�i kh�ng c�n /OnCancel"); 
return 
elseif (Tong2 == TongName) then 
SetTaskTemp(15, CardTab[i * 2]); 
str_format = format("Th� ra l� ��i hi�p l� %s th�nh ��ch Th�i th� , n�i n�y c� b�n th� th�nh l�nh b�i , l�nh b�i n�y c� c�t gi� ��t gi�p li�n minh 5 ng�y ��ch hi�u l�c , m�i l�nh b�i gi� %s hai .",GetCityAreaName(i),CardPrice); 
Say(str_format, 2,"Mua m�t ch�t /DealBuyCard","T�m th�i kh�ng c�n /OnCancel"); 
return 
end; 
end; 
Say("Ng��i c�ng c�ng th� th�nh ��ch bang ph�i kh�ng c� quan h� # kh�ng th� s� d�ng chi�m th�nh l�nh b�i !", 0); 
else 
Say("Ch� c� bang ch� m�i c� th� mua chi�m th�nh l�nh b�i ", 0); 
end; 
end; 

function DealBuyCard(CardID) 
AskClientForNumber("PayForCard", 1, 30,"Ng��i ph�i nhi�u thi�u ?"); 
end; 

function PayForCard(count) 
CardItemID = GetTaskTemp(15); 
if (CardItemID > 0 and count > 0) then 
if (Pay(count * CardPrice) ~= 0) then 
for i = 1,count do 
AddEventItem(CardItemID); 
end; 
Say("Xin/m�i th�ch ��ng b�o t�n # l�nh b�i n�y l� tr�n chi�n tr��ng ��ng minh ��ch ch�ng ki�n # xin ch� � l�nh b�i ��ch th�i gian , ch� c� 5 ng�y ��ch hi�u l�c , n�u nh� qu� h�n th� kh�ng th� s� d�ng , c� th� ��n c�i n�y lui ��i c�ng c�m tr� v� ph� d�ng ", 0); 
end; 
end; 
end; 

function CheckCard() 
count = 0; 
CardItemID = 0; 
for i=1,14 do 
		newcount = count + GetItemCountEx(CardTab[i])
if (newcount > count) then 
CardItemID = CardTab[i]; 
count = newcount; 
end; 
end; 
if (count == 0) then 
Say("Tr�n ng��i ng��i kh�ng c� b�t k� l�nh b�i !", 0); 
elseif (count > 1) then 
Say("Ng��i mang theo qu� nhi�u chi�m th�nh l�nh b�i , kh�ng bi�t ng��i mu�n nghi�m ch�ng kia kh�i # xin/m�i ch� mang m�t t�m l�nh b�i l� t�t r�i !", 0); 
elseif (CardItemID ~= 0) then 
life = GetItemLife(CardItemID); 
if (life < 0) then 
Say("Kh�i n�y l�nh b�i ��ch t�nh hu�ng l� ......", 0); 
elseif (life < 7200) then 
Say(format("Nh�ng th� n�y c�ng th�nh l�nh b�i ��ch s� l��ng mu�n � %s ng�y tr��c ph�t ra , b�y gi� v�n nh� c� h�u hi�u l�c .",floor(life/1440)), 0) 
else 
Say(format("Nh�ng th� n�y c�ng th�nh l�nh b�i ��ch s� l��ng mu�n � %s ng�y tr��c ph�t ra , b�y gi� �� qu� h�n , kh�ng c� s� d�ng hi�u l�c .",floor(life/1440)), 0); 
end; 
end; 
end; 

function ReturnCard() 
count = 0; 
for i=1,14 do 
		count = count + GetItemCountEx(CardTab[i]);
end; 
if (count <= 0) then 
Say("Tr�n ng��i ng��i kh�ng c� b�t k� l�nh b�i !", 0); 
else 
str_format = format("C�ng th�nh l�nh b�i c� th� d�ng %s hai thu v� , ng��i ��ng � tr� l�i sao ?",count*ReturnCardPrice); 
Say(str_format, 2,"Ta mu�n tr� l�i /DealReturnCard","Kh�ng , ta ch�ng qua l� h�i m�t ch�t /OnCancel"); 
end; 
end; 

function DealReturnCard() 
money = 0; 
for i=1,14 do 
count = GetItemCountEx(CardTab[i]); 
if (count > 0) then 
			money = money + count * ReturnCardPrice;
for j=1,count do DelItemEx(CardTab[i]) end; 
end; 
end; 
Earn(money); 
end; 
-- script viet hoa By http://tranhba.com  li�n quan t�i l�nh b�i ��ch x� l� end************************************************** 

-- script viet hoa By http://tranhba.com AskDeal c�ng th�nh chi�n ph� tr� ��o c� chuy�n t�i citywar_global\\citywar_function.lua 

-- script viet hoa By http://tranhba.com  hi�u r� c�ng th�nh chi�n t�nh hu�ng start************************************************ 
function GameInfo() 
Say("Mu�n m� th�nh th� n�o ?", 9, GetCityAreaName(1).."/CityInfo", GetCityAreaName(2).."/CityInfo", GetCityAreaName(3).."/CityInfo", GetCityAreaName(4).."/CityInfo", GetCityAreaName(5).."/CityInfo", GetCityAreaName(6).."/CityInfo", GetCityAreaName(7).."/CityInfo", "Tr?v?ArenaMain","Kh�ng c�n /OnCancel"); 
end; 

-- script viet hoa By http://tranhba.com " cu�c so t�i tr�nh an b�i /ArenaInfo", 
-- script viet hoa By http://tranhba.com " t� v� k�t qu� /AllArenaInfo", 
function CityInfo(nSel) 
	local nCityId =  nSel + 1;
SetTaskTemp(245, nCityId); 
if (nCityId < 1 or nCityId > 7) then 
return 
end; 
Say(format("Mu�n m� c�ng th�nh chi�n %s ��ch tin t�c g� ?",GetCityAreaName(nCityId)), 4, 
" ghi danh t�nh hu�ng /RegisterInfo", 
" c�ng th�nh chi�n s� /CityWarInfo", 
" tr� v� /GameInfo", 
" kh�ng c�n /OnCancel"); 
end; 

function RegisterInfo() 
local nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 

local nHour = tonumber(GetLocalDate("%H")); 
if (nHour<18 or nHour>=19) then 
Say("B�y gi� kh�ng ph�i l� c�ng th�nh chi�n ��ch ghi danh th�i gian .", 2,"Tr� v� /GameInfo","Kh�ng c�n /OnCancel"); 
return 0; 
end; 
if (nCityId ~= getSigningUpCity(1) or getSignUpState(nCityId) ~= 1) then 
Say(format("B�y gi� c�ng th�nh chi�n <%s> kh�ng c� � ��y ghi danh giai �o�n .",GetCityAreaName(nCityId)), 2,"Tr� v� /GameInfo","Kh�ng c�n /OnCancel"); 
return 0; 
end; 

local szElector = getCityWarElector(cityid_to_lgname(nCityId))-- script viet hoa By http://tranhba.com "< t�m v� >" 
if (szElector == "" or szElector == nil) then 
szElector = "< t�m th�i kh�ng >"; 
end; 
Say(format("C�ng th�nh chi�n <%s> �ang chu�n b� , d� thi bang h�i l�nh b�i ��ng h�ng th� ��u ti�n l� : %s<color=red><enter> n�u nh� c� bang h�i ��ch l�nh b�i s� l��ng c�ng th� nh�t gi�ng nhau , l� t� h� th�ng ng�u nhi�n ch�n l�a ng�y mai c�ng th�nh gi�p .<color>",GetCityAreaName(nCityId),szElector), 2,"Tr� v� /GameInfo","Kh�ng c�n /OnCancel"); 
end; 


function getCityWarElector(szLeagueName) 
local leagueObj = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName) 

if (leagueObj == 0) then 
return 
end; 
local nMem = LG_GetMemberCount(leagueObj); 
if (nMem < 1) then 
return 
end; 
local szMem = ""; 
local tbMem = {}; 
for i = 0, nMem - 1 do 
szMem = LG_GetMemberInfo(leagueObj, i); 
ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szLeagueName, szMem, LGTSK_QINGTONGDING_COUNT); 
if (getn(tbMem) == 0) then 
tbMem[1] = {szMem, ncount}; 
else 
if (ncount == tbMem[1][2]) then 
				tbMem[getn(tbMem) + 1] = {szMem, ncount};
elseif (ncount > tbMem[1][2]) then 
tbMem = {}; 
				tbMem[getn(tbMem) + 1] = {szMem, ncount};
end; 
end; 
end; 
-- script viet hoa By http://tranhba.com local szMem = LG_GetMemberInfo(leagueObj, 0) 
return tbMem[random(getn(tbMem))][1]; 
-- script viet hoa By http://tranhba.com return LG_GetMemberInfo(leagueObj, 0) 
end; 

-- script viet hoa By http://tranhba.com  cu�c so t�i tr�nh an b�i -( b� hoang 2006-11-22) 
function ArenaInfo() 
nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 
Say(GetArenaSchedule(nCityId), 0); 
end; 

function AllArenaInfo() 
nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 
-- script viet hoa By http://tranhba.com Say(GetArenaInfoByCity(nCityId), 0); 
end; 

function CityWarInfo() 
local nCityId = GetTaskTemp(245); 

if (nCityId < 1 or nCityId > 7) then 
return 
end; 
local str_format = format("C�ng th�nh chi�n <%s> ng�y mai : ",GetCityAreaName(nCityId)); 
local str1, str2 = GetCityWarBothSides(nCityId); 
if (str1 ~= "" and str2 ~= "" ) then 
if (nCityId == getSigningUpCity(2)) then 
str_format = format("C�ng th�nh chi�n <%s> h�m nay : ",GetCityAreaName(nCityId)); 
if (HaveBeginWar(nCityId) == 1) then 
str_format = format("D��i m�t <%s> x� vu c�ng th�nh chi�n giai �o�n : ",GetCityAreaName(nCityId)); 
end; 
end; 
str_format = format("Th� ph��ng %s l� %s, c�ng m�i l� %s!",str_format,str2,str1); 
Say(str_format , 2,"Tr� v� /GameInfo","Kh�ng c�n /OnCancel"); 
else 
Say(format("D��i m�t %s c�n kh�ng c� ti�n v�o c�ng th�nh chi�n giai �o�n !",GetCityAreaName(nCityId)) , 2,"Tr� v� /GameInfo","Kh�ng c�n /OnCancel"); 
end; 
end; 


-- script viet hoa By http://tranhba.com  hi�u r� c�ng th�nh chi�n t�nh hu�ng end************************************************** 

-- script viet hoa By http://tranhba.com  nh�n l�y c�ng th�nh t�n v�t start************************************************** 
function checkIsTakeQingtongDing(szTongName, nTongID, nCityId) 
if (nTongID == 0 or GetTongMaster()~= GetName()) then 
Say("Ch� c� ghi danh c�ng th�nh bang h�i ��ch bang ch� c�ng � l�nh b�i tranh t�i trung th�t b�i bang h�i bang ch� m�i c� th� d�n t�n v�t .", 0); 
return 0; 
end; 
if (nCityId < 1 or nCityId > 7) then 
return 0; 
end; 

local nHour = tonumber(GetLocalDate("%H")); 
if (nHour < 19) then 
Say("Nh�n l�y c�ng th�nh t�n v�t ��ch th�i gian �� k�t th�c , m�i ng�y � 19h00 ��n 24h00 �o�n th�i gian n�y trung , tranh �o�t l�nh b�i th�t b�i bang h�i c� th� ��n ta ch� n�y t�i nh�n l�y khi�u chi�n l�nh .", 0) 
return 0; 
end; 

if (getSignUpState(nCityId) == 1) then 
Say(format("Ghi danh tham gia %s th�nh ng�y mai tranh �o�t l�nh b�i c�n ch�a k�t th�c , c� th� ti�p t�c tham gia .",GetCityAreaName(nCityId)), 0); 
return 0; 
end; 

local szChallenger = GetCityWarBothSides(nCityId); 
if (szChallenger == szTongName) then 
Say(format("��t gi�p �� th�nh v� ng�y mai c�ng th�nh %s ��ch bang h�i , c�ng th�nh t�n v�t �� tr� l�i cho Th�i th� li�u .",GetCityAreaName(nCityId)), 0); 
return 0; 
end; 

local szChallenger = GetCityOwner(nCityId); 
if (szChallenger == szTongName) then 
Say(format("Ng��i l� %s th�nh ��ch Th�i th� , kh�ng n�n ��n th�m b� c�ng th�nh t�n v�t .",GetCityAreaName(nCityId)), 0); 
return 0; 
end; 

local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 
if (FALSE(nlid)) then 
Say("C�n kh�ng c� ghi danh tham gia ng�y mai c�ng th�nh chi�n , n�i n�y kh�ng c� ng��i t�n v�t .", 0); 
return 0; 
end; 
return 1; 
end; 

function getSignUpState(nCityId) 
return LG_GetLeagueTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), 1); 
end; 

function TakeQingtongDing() 
local szTongName, nTongID = GetTongName(); 
local nCityId = getSigningUpCity(1); 
if (checkIsTakeQingtongDing(szTongName, nTongID, nCityId) ~= 1) then 
return 0 
end; 
local ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT); 

if (ncount < 1) then 
Say("Ghi danh c�ng th�nh t�n v�t ta �� c�ng c�n cho ng��i li�u .", 0); 
else 
Say(format("Ng��i c� %s khi�u chi�n l�nh , d�n l�nh b�i tr��c xin/m�i tr��c s�a sang l�i t�i �eo l�ng .",ncount), 3,"Ta mu�n d�n l�m /#sure_takeQingtongDing("..ncount..")","Tr� v� /ArenaMain","M�t c�i tr� l�i /OnCancel"); 
end; 
end; 

function sure_takeQingtongDing(ncount) 
local szTongName, nTongID = GetTongName(); 
local nCityId = getSigningUpCity(1); 
if (checkIsTakeQingtongDing(szTongName, nTongID, nCityId) == 1) then 
local nFree = CalcFreeItemCellCount(); 
if (nFree > 6) then 
local szMsg = format("��y l� <color=yellow>%s<color> khi�u chi�n c�a ng��i l�m .",ncount); 
if (nFree < ncount) then 
szMsg = format("Ng��i c� <color=yellow>%s<color> khi�u chi�n l�nh , b�i v� t�i �eo l�ng kh�ng gian ch�a �� , ta tr� l�i t�i tr��c ��ch %s kh�i . c�n c� <color=yellow>%s<color> kh�ng c� nh�n l�y , h�m nay 24h00 tr��c nh�n l�y !",ncount,nFree,(ncount - nFree)); 
ncount = nFree; 
end; 
for i =1, ncount do 
AddItem(nCityWar_Item_ID_G,nCityWar_Item_ID_D,nCityWar_Item_ID_P,1,1,1);-- script viet hoa By http://tranhba.com qingtongding 
end; 
LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, -nFree); 
WriteLog(format("[ tranh �o�t c�ng th�nh l�m ]%s Name:%s Account:%s Tong:%s th�nh ph� %s nh�n l�y khi�u chi�n l�nh %s",date(),GetName(),GetAccount(),szTongName,cityid_to_lgname(nCityId),ncount)); 
Say(szMsg, 0); 
else 
Say("T�i �eo l�ng kh�ng gian ch�a �� . ch� � mu�n � 24h00 tr��c ��n c�i n�y d�n th� h�i �m v�t , n�u nh� kh�ng ��n th� kh�ng th� n�a nh�n l�y .", 0); 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  nh�n l�y c�ng th�nh t�n v�t end**************************************************** 

-- script viet hoa By http://tranhba.com  ghi danh c�ng th�nh chi�n start**************************************************** 
function SignUpCityWar() 
local nCityId = getSigningUpCity(1); 

local szTongName, nTongID = GetTongName(); 

if (checkSignUpCityWar(szTongName, nTongID, nCityId) ~= 1) then 
return 0; 
end; 

local szMsg = format("<dec> b�y gi� �ang ti�n h�nh %s th�nh ghi danh .",GetCityAreaName(nCityId)); 
local szElector = getCityWarElector(cityid_to_lgname(nCityId))-- script viet hoa By http://tranhba.com "< t�m v� >" 

if (szElector == "" or szElector == nil) then 
szElector = "< t�m th�i kh�ng >"; 
end; 

local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 

if (FALSE(nlid)) then 
szMsg = szMsg.." ch� c�n c� ' khi�u chi�n l�nh ' li�n c� th� tham gia tranh �o�t . tranh �o�t quy t�c : c�n kh�ng c� chi�m th�nh ��ch 18 c�p tr� l�n bang h�i c� th� s� d�ng ' khi�u chi�n l�nh ' tham gia c�nh tranh . c�nh tranh th�i gian l� m�i ng�y 18h00 ��n 19h00. 19h00 tr��c , l�y ���c khi�u chi�n l�nh nhi�u nh�t bang h�i c� quy�n tham gia ng�y mai tham gia c�ng th�nh chi�n .<color=red><enter> n�u nh� c� bang h�i ��ch l�nh b�i s� l��ng c�ng li�t v�o �� nh�t tho�i h� th�ng �em ng�u nhi�n r�t ra l�y m�t ti�n h�nh ng�y mai c�ng th�nh .<color><enter> b�y gi� x�p h�ng th� nh�t ��ch bang h�i l� #"..szElector 
else 

local nCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT); 

-- script viet hoa By http://tranhba.com print(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT) 
szMsg = format("%s tranh �o�t quy t�c : c�n kh�ng c� chi�m th�nh ��ch 18 c�p tr� l�n bang h�i c� th� s� d�ng ' khi�u chi�n l�nh ' tham gia c�nh tranh . c�nh tranh th�i gian l� m�i ng�y 18h00 ��n 19h00. 19h00 tr��c , l�y ���c khi�u chi�n l�nh nhi�u nh�t bang h�i c� quy�n tham gia ng�y mai tham gia c�ng th�nh chi�n .<color=red><enter> n�u nh� c� bang h�i ��ch l�nh b�i s� l��ng c�ng li�t v�o �� nh�t tho�i h� th�ng �em ng�u nhi�n r�t ra l�y m�t ti�n h�nh ng�y mai c�ng th�nh .<color><enter> b�y gi� x�p h�ng th� nh�t ��ch bang h�i l� #%s<enter> ��t gi�p tranh �o�t %s ��ch khi�u chi�n l�nh s� l��ng l� %s",szMsg,szElector,szTongName,nCount) 
end; 
TaskSayList(szMsg,"Ta mu�n c�nh tranh l�nh b�i /want_signupcitywar","Tr� v� /ArenaMain","Ta mu�n m�t c�i /OnCancel"); 
end; 

function want_signupcitywar() 
-- script viet hoa By http://tranhba.com local nCityId = getSigningUpCity(1); 
local szTongName, nTongID = GetTongName(); 
-- script viet hoa By http://tranhba.com local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 


local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
if nCurCount <= 0 then 
Say("��t gi�p kh�ng c� khi�u chi�n l�nh , kh�ng th� n�p l�n , xin/m�i g�p nh�t khi�u chi�n l�nh sau n�y t�i t�m ta n�a .",0) 
return 0 
end 
if nCurCount > 1000000 then 
nCurCount = 1000000 
end 
AskClientForNumber("sure_signupcitywar", 0,nCurCount,"N�p l�n khi�u chi�n l�nh ") 
-- script viet hoa By http://tranhba.com if (FALSE(nlid)) then 
-- script viet hoa By http://tranhba.com if (GetCash() >= 10000000) then 
-- script viet hoa By http://tranhba.com GiveItemUI("C�ng th�nh chi�n th� v�t ","Xin/m�i �em c�ng th�nh chi�n th� v�t �� khi�u chi�n l�nh b� v�o �i . ", "sure_signupcitywar", "OnCancel"); 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com Say(" l�n ��u ti�n ghi danh c�ng th�nh chi�n c�n gi�c d�ng/��ng <color=yellow>1000W hai <color> b�c , tr�n ng��i ng��i kh�ng c� mang nhi�u ti�n nh� v�y . ng��i tr��c chu�n b� xong ti�n ghi danh tr� l�i �i . ", 0); 
-- script viet hoa By http://tranhba.com end; 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com local nNum = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName,LGTSK_CITYWAR_SIGNCOUNT); 
-- script viet hoa By http://tranhba.com if (nNum >= 3) then 
-- script viet hoa By http://tranhba.com Say("Ng�i ��ch c�nh ��u s� l�n �� ��t t�i <color=yellow>3 l�n <color> , ng�i b�y gi� kh�ng th� ti�p t�c ��u ch� , xin/m�i ng�i ch� ��i c�nh ��u k�t qu� c�ng b� . ", 0); 
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com GiveItemUI("C�ng th�nh chi�n th� v�t ","M�i khi�u chi�n l�nh c� th� ��i l�y 5 v�n ch�t kinh nghi�m , khi�u chi�n l�nh c� th� d�ng �� ghi danh bang h�i c�ng th�nh chi�n . ", "sure_signupcitywar", "OnCancel"); 
-- script viet hoa By http://tranhba.com end; 
-- script viet hoa By http://tranhba.com end; 
end; 

function sure_signupcitywar(nCount) 
-- script viet hoa By http://tranhba.com Msg2Player(nCount) 

local nCityId = getSigningUpCity(1);-- script viet hoa By http://tranhba.com GetArenaTargetCity() 
if not (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and getSignUpState(nCityId) == 1) then 
Talk(1, "","B�y gi� kh�ng ph�i l� c�ng th�nh chi�n ��ch ghi danh th�i gian .") 
return 1 
end 




local szTongName, nTongID = GetTongName(); 
local nTongCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT) 
if nCount > nTongCurCount or nCount > 1000000 then 
Say("Khi�u chi�n l�nh kh�ng �� , kh�ng th� n�p l�n , xin/m�i ti�p t�c thu t�p sau tr� l�i .",0) 
return 1 
end 
local nCityId = getSigningUpCity(1); 
local nlg = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)); 
local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName); 
if (FALSE(nlid)) then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n th�nh vi�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n th�nh vi�n ��ch tin t�c ( vai tr� t�n # ch�c v� # x� �o�n lo�i h�nh # x� �o�n t�n ) 
LGM_SetMemberInfo(nMemberID, szTongName, 0, LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)); 
LG_AddMemberToObj(nlg, nMemberID); 
local ret = LGM_ApplyAddMember(nMemberID, "", "") 
LGM_FreeMemberObj(nMemberID) 
end; 

-- script viet hoa By http://tranhba.com LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_CITYWAR_SIGNCOUNT, 1, "", "") 

local nCurCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT); 

-- script viet hoa By http://tranhba.com LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, nCount, "", ""); 
-- script viet hoa By http://tranhba.com print(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, nCount) 
citywar_tbLadder:AddOneInGameServer(nTongID, cityid_to_lgname(nCityId), szTongName, nCount) 


LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, -nCount, "", ""); 

	WriteLog(format("[���ṥ����]%s Name:%s Account:%s TongName:%s ���� %s ���ṥ������: %s",date(),GetName(),GetAccount(),szTongName,cityid_to_lgname(nCityId),(nCount + nCurCount)));

	local szFirstTong = checkFirstSignUpChallenger(cityid_to_lgname(nCityId), szTongName, nCount + nCurCount);
if (szFirstTong == szTongName) then 
		Say(format(" %s�����ս���Ƶ����������ǣ�<color=yellow>%s<color>��, ���е�һ, ������ˣ�����Ҫ��ע����仯.",szTongName,(nCount + nCurCount)), 0);
else 
		Say(format(" %s�����ս���Ƶ����������ǣ�<color=yellow>%s<color>��. ���е�һ����%s,��������Ŭ��.",szTongName,(nCount + nCurCount),szFirstTong), 0);
end; 
end; 

function checkSignUpCityWar(szTongName, nTongID, nCityId) 
local nHour = tonumber(GetLocalDate("%H")); 
if (nTongID == 0 or GetTongMaster() ~= GetName()) then 
Say("Ng��i kh�ng ph�i l� bang ch� . � 18h00 ��n 19h00, �o�n th�i gian n�y , c�n kh�ng c� chi�m th�nh ��ch 18 c�p tr� l�n bang h�i bang ch� c� th� ghi danh tham gia h�m nay sau ��ch c�ng th�nh chi�n .", 0); 
elseif (nHour < 18 or nHour >= 19) then 
Say("B�y gi� kh�ng ph�i l� c�ng th�nh chi�n ��ch ghi danh th�i gian . m�i ng�y 18h00 ��n 19h00, c�n kh�ng c� chi�m th�nh ��ch 18 c�p tr� l�n bang h�i c� th� ��n c�i n�y ghi danh tham gia h�m nay sau ��ch c�ng th�nh chi�n .", 0); 
--elseif (TONG_GetExpLevel(nTongID) < 18) then 
--Say("Y�u c�u mu�n 18 c�p tr� l�n bang h�i m�i c� th� ghi danh h�m nay sau ��ch c�ng th�nh chi�n .", 0); 
elseif (checkCityOwner(szTongName) ~= 0) then 
Say("Ng��i l� th�nh ch� , kh�ng c�n ghi danh c�ng th�nh .", 0); 
elseif (checkCItyChallenger(szTongName) ~= 0) then 
Say(format("Ng��i �� l� khi�u chi�n ph��ng %s, kh�ng th� tranh �o�t h�m nay l�nh b�i .",GetCityAreaName(checkCItyChallenger(szTongName))), 0); 
elseif (getSignUpState(nCityId) ~= 1) then 
Say("B�y gi� c�n kh�ng c� b�t ��u ghi danh c�ng th�nh , d��ng t�c tinh th�n chu�n b� ", 0); 
else 
return 1; 
end; 
return 0; 
end; 

function checkCityOwner(szTongName) 
for i=1, 7 do 
if (GetCityOwner(i) == szTongName) then 
return i; 
end; 
end; 
return 0; 
end; 

function checkCItyChallenger(szTongName) 
for i=1, 7 do 
if (GetCityWarBothSides(i) == szTongName) then 
return i; 
end; 
end; 
return 0; 
end; 

function checkFirstSignUpChallenger(szLeagueName, szTongName, nCurCount) 
local szFirstTong = getCityWarElector(szLeagueName) 
local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName) 

if (FALSE(szFirstTong)) then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n th�nh vi�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n th�nh vi�n ��ch tin t�c ( vai tr� t�n # ch�c v� # x� �o�n lo�i h�nh # x� �o�n t�n ) 
LGM_SetMemberInfo(nMemberID, szTongName, 0, LEAGUETYPE_CITYWAR_FIRST, szLeagueName); 
LG_AddMemberToObj(nlid, nMemberID); 
local ret = LGM_ApplyAddMember(nMemberID, "", "") ; 

LGM_FreeMemberObj(nMemberID); 
if (ret == 1) then 
LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szTongName, LGTSK_QINGTONGDING_COUNT, nCurCount); 
end; 
return szTongName; 
end; 

nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLeagueName); 
local nCount = LG_GetMemberCount(nlid); 
local szTemTong = szFirstTong; 
for i = 0, nCount - 1 do 
local szMem = LG_GetMemberInfo(nlid, i); 
if (szMem == szFirstTong) then 
local nMemCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szLeagueName, szMem, LGTSK_QINGTONGDING_COUNT); 

if (nMemCount <= nCurCount) then 
szTemTong = szTongName; 
break 
end; 
end; 
end; 

nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName); 
if (szTemTong ~= szFirstTong) then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n th�nh vi�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n th�nh vi�n ��ch tin t�c ( vai tr� t�n # ch�c v� # x� �o�n lo�i h�nh # x� �o�n t�n ) 
LGM_SetMemberInfo(nMemberID, szTemTong, 0, LEAGUETYPE_CITYWAR_FIRST, szLeagueName); 
LG_AddMemberToObj(nlid, nMemberID); 
local ret = LGM_ApplyAddMember(nMemberID, "", "") ; 
LGM_FreeMemberObj(nMemberID); 
		-- script viet hoa By http://tranhba.com LG_ApplyDoScript(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szFirstTong, "\\script\\event\\citywar.lua", "citywar_removemem", szLeagueName.." "..szFirstTong);
-- script viet hoa By http://tranhba.com LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szFirstTong); 
end; 
return getCityWarElector(szLeagueName); 
end; 
-- script viet hoa By http://tranhba.com  ghi danh c�ng th�nh chi�n end****************************************************** 
