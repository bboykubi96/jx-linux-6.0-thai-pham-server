-- script viet hoa By http://tranhba.com  d�ng h� l�a ch�n c�ch tuy�n b�y qu�n l�c ch�n c�a v�n 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");		-- script viet hoa By http://tranhba.com  2006��10��30�ռ������������г��г����Ժ��������йܵĽű�  by peres
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")
--Include("\\script\\t9team\\t9_hwid_head.lua")

arraymap = 
{ 
["1"] = " ph��ng t��ng ", 
["11"] = " th�nh �� ", 
["37"] = " bi�n kinh ", 
["80"] = " D��ng Ch�u ", 
["78"] = " t��ng d��ng ", 
["162"] = " ��i L� ", 
["176"] = " tr��c khi an ", 
["20"] = " giang t�n th�n ", 
["53"] = " ba l�ng huy�n ", 
["54"] = " nam nh�c tr�n ", 
["99"] = " v�nh nh�c tr�n ", 
["100"] = " Chu ti�n tr�n ", 
["101"] = " ��o h��ng th�n ", 
["121"] = " long m�n tr�n ", 
["153"] = " th�ch c� tr�n ", 
["174"] = " long tuy�n th�n ", 
["13"] = " Nga Mi ", 
["25"] = " ���ng m�n ", 
["49"] = " ng�y nh�n ", 
["59"] = " Thi�n v��ng ", 
["81"] = " V� ���ng ", 
["103"] = " Thi�u L�m ", 
["115"] = " C�i Bang ", 
["131"] = " C�n L�n ", 
["154"] = " th�y kh�i ", 
["183"] = " n�m ��c ", 
["208"] = " ��i lao ", 
["235"] = " hoa ��o ��o # m�t #", 
["236"] = " hoa ��o ��o # hai #", 
["237"] = " hoa ��o ��o # ba #", 
["238"] = " hoa ��o ��o # b�n #", 
["239"] = " hoa ��o ��o # n�m #", 
["240"] = " hoa ��o ��o # s�u #", 
["241"] = " hoa ��o ��o # b�y #", 
["835"] = " V� danh c�c ( m�t )", 
["836"] = " V� danh c�c ( hai )", 
["837"] = " V� danh c�c ( ba )", 
["838"] = " V� danh c�c ( b�n )", 
["839"] = " V� danh c�c ( n�m )", 
["840"] = " V� danh c�c ( s�u )", 
["586"] = " c�ng c�ng bang h�i b�n �� ", 
["587"] = " th�nh �� bang h�i b�n �� ", 
["588"] = " ��i L� bang h�i b�n �� ", 
["589"] = " ph��ng t��ng bang h�i b�n �� ", 
["590"] = " tr��c khi an bang h�i b�n �� ", 
["591"] = " t��ng d��ng bang h�i b�n �� ", 
["593"] = " D��ng Ch�u bang h�i b�n �� ", 
["594"] = " bi�n kinh bang h�i b�n �� ", 
["595"] = " c�ng c�ng bang h�i b�n �� ", 
["596"] = " c�ng c�ng bang h�i b�n �� ", 
["597"] = " c�ng c�ng bang h�i b�n �� ", 
["325"] = " B�o danh T�ng Kim ", 
}; 

Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\g7vn\\limitaccountperip.lua");
function judgeoffline(player_count, offline_count) 

	--dofile("script/global/judgeoffline.lua")
	--dofile("script/global/g7vn/g7configall.lua")

-- script viet hoa By http://tranhba.com  szHour = date("%H"); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(szHour); 

-- script viet hoa By http://tranhba.com  sparetime = GetTask(AEXP_TASKID); 
-- script viet hoa By http://tranhba.com  if (nHour >= AEXP_INVALIDTIMEBEGIN and nHour < AEXP_INVALIDTIMEEND) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng��i � ��y <color=red>"..AEXP_INVALIDTIMEBEGIN..":00<color>-<color=red>"..AEXP_INVALIDTIMEEND..":00<color> th�i gian �o�n b�n trong l�a ch�n c�ch tuy�n b�y qu�n , c� th� ti�p t�c b�y s�p giao d�ch , nh�ng l� s� kh�ng ��t ���c kinh nghi�m tr� gi� , s� kh�ng t� ��ng nh�n l�y ph�c duy�n . kho�ng th�i gian n�y h� th�ng s� kh�ng kh�u tr� ng��i c�ch tuy�n b�y qu�n th�i gian , m� ng��i nh�ng ti�n h�nh tr� ch�i th�i gian l� s� ti�p t�c t�nh to�n . ", 2,"Ng��i nh�t ��nh ph�i ti�n v�o c�ch tuy�n b�y qu�n sao ?/judgecontion","T�m th�i kh�ng c�n . /donothing"); 
-- script viet hoa By http://tranhba.com  return 5 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  judgecontion(); 
-- script viet hoa By http://tranhba.com  end 
judgecontion(); 

return 0 
end 

function judgecontion() 
-- script viet hoa By http://tranhba.com nmapsize = getn(arraymap); 
-- script viet hoa By http://tranhba.com blnin = 0; 
-- script viet hoa By http://tranhba.com for i=1,nmapsize do 
-- script viet hoa By http://tranhba.com if(arraymap[i] == mapid) then 
-- script viet hoa By http://tranhba.com blnin = 1; 
-- script viet hoa By http://tranhba.com break; 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com  n�u nh� t�i b��c n�y nh� v�y th�nh c�ng b�t ��u c�ch tuy�n b�y qu�n 
local tbSpareTime = {}; 
-- script viet hoa By http://tranhba.com  ��c hi�u r� r�ng c�u ho�n b�nh th��ng r� r�ng c�u ho�n b�ch c�u ho�n 
local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID, 
-- script viet hoa By http://tranhba.com  ��c hi�u k� n�ng r� r�ng c�u ho�n k� n�ng r� r�ng c�u ho�n k� n�ng b�ch c�u ho�n 
AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID}; 
local btime = 0; 
for i = 1, getn(tbAexpTask) do 
tbSpareTime[i] = {}; 
tbSpareTime[i][1] = GetTask(tbAexpTask[i]); 
tbSpareTime[i][2], tbSpareTime[i][3] = getFrame2MinAndSec(tbSpareTime[i][1]); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 
if (tbSpareTime[i][1] >= FRAME2TIME * 60 and btime ~= 1) then 
btime = 1; 
end; 
end; 


if (btime == 1 and IsCharged() == 1) then 
local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID); 
local szSkillExpName = ""; 
if (nSkillExpID ~= 0) then 
szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>"; 
else 
szSkillExpName = "<color=blue> kh�ng l�a ch�n k� n�ng <color>"; 
end 

local szmsg = format("C�ch tuy�n �y th�c th�i gian c�n l�i # thi�n tinh b�ch c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter>��c bi�t r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter>Uy th�c r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter>Uy th�c b�ch c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter>K� n�ng thu�n th�c �� (%s): ��c hi�u k� n�ng r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter>��i k� n�ng b�ch c�u ho�n <color=red>%d<color>gi?<color=red>%d<color> ph�t ".. 
"<enter>K� n�ng b�ch c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter>���ng ���ng �y th�c n�u nh� c� thi�n tinh b�ch c�u ho�n hi�u qu� , �u ti�n n�n lo�i b�ch c�u ho�n c�ng �em kh�u tr� t��ng �ng hi�u qu� .", 
tbSpareTime[1][2],tbSpareTime[1][3], 
tbSpareTime[2][2],tbSpareTime[2][3], 
tbSpareTime[3][2],tbSpareTime[3][3], 
tbSpareTime[4][2],tbSpareTime[4][3], 
szSkillExpName, tbSpareTime[5][2],tbSpareTime[5][3], 
tbSpareTime[6][2],tbSpareTime[6][3], 
tbSpareTime[7][2],tbSpareTime[7][3]); 
local szSay = 
{ 
"B�t ��u �y th�c b�n h�ng /beginoffline", 
"L�a ch�n �y th�c b�n h�ng k� n�ng /#selectofflineskill('judgecontion')", 
"B�t ��u �y th�c tr�c tuy�n /begin_onlinecommission", 
"D�ng l�i �y th�c tr�c tuy�n /end_onlinecommission", 
"C�ch tuy�n th�i gian /offlineaward", 
"Ta suy ngh� m�t ch�t n�a /donothing" 
}; 
Describe(szmsg, getn(szSay), szSay[1], szSay[2], szSay[3], szSay[4], szSay[5], szSay[6]); 
else 
if (IsCharged() ~= 1) then 
Talk(1, "", "<#>B�i v� ng��i kh�ng ph�i l� h��ng v� ph�a tr��ng m�c , cho n�n kh�ng th� s� d�ng c�ch tuy�n �y th�c t�nh n�ng , xin/m�i sung tr� gi� sau �� s� d�ng n�n t�nh n�ng ."); 
return 
end; 
-- script viet hoa By http://tranhba.com beginoffline(); 

local tbSay = {}

if(uythacmienphi == 1) then
tinsert(tbSay,"B�t ��u �y th�c. /beginoffline")
end

if(cachtuyendantuong == 1) then
tinsert(tbSay,"C�ch tuy�n d�n t��ng /offlineaward")	
end

tinsert(tbSay,"Ta suy ngh� m�t ch�t n�a /donothing")
Say("<#>C�c h� s� d�ng ��i b�ch c�u ho�n kinh nghi�m �y th�c th�i gian c�n l�i <color=red>0<color> ph�t , ng��i c� th� s� d�ng ��c bi�t b�ch c�u ho�n ho�c l� b�ch c�u ho�n t�i gia t�ng m�nh �y th�c th�i gian . <enter>Ho�c l� l�a ch�n <color=yellow> mi�n ph� c�ch tuy�n �y th�c <color>, c�i n�y ch� c� th� ��t ���c m�t ch�t kinh nghi�m .", getn(tbSay), tbSay); 

end

end 

-- script viet hoa By http://tranhba.com  b�t ��u � tuy�n b�y qu�n 
function begin_onlinecommission() 
local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� c�n th�a l�i th�i gian 
local sparetime = getsparetime(); 
if (sparetime <= 0) then 
Say("<#>Ng��i c�n th�a l�i c�ch tuy�n b�y qu�n kinh nghi�m th�i gian l� 0 ph�t , ho�c l� c�ng kh�ng l�a ch�n c�ch tuy�n b�y qu�n k� n�ng , xin/m�i l�n n�a x�c nh�n sau s� d�ng n�a n�n ch�c n�ng . ", 0); 
return 3 
end 

if (GetOnlineCommissionStatus() ~= 0) then 
Msg2Player("<#> ng��i b�y gi� �� � � tuy�n b�y x�a v�o ") 
else 
Msg2Player("Ng�i �ang ��ng � � tuy�n �y th�c tr�ng th�i ") 
SetOnlineCommissionStatus(1) 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
-- script viet hoa By http://tranhba.com EnableClientInput(0) 
end 
end 

-- script viet hoa By http://tranhba.com  k�t th�c � tuy�n b�y qu�n 
function end_onlinecommission() 
if (GetOnlineCommissionStatus() == 0) then 
Msg2Player("<#>Tr��c m�t ng��i kh�ng c� � tuy�n �y th�c ") 
else 
SetOnlineCommissionStatus(0) 
-- script viet hoa By http://tranhba.com EnableClientInput(1) 
Msg2Player("<#>Ng��i �� h�y b� � tuy�n �y th�c ") 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
end 
end 

function check_if_can_offline() 

local nTripMode = GetTripMode() 
if nTripMode == TRIP_MODE_SERVER then 
Talk(1, "","Xin/m�i ��i hi�p tha th� , kh�ng th� � c�ng c�ng ph�c v� kh� s� d�ng �y th�c t�nh n�ng ") 
return 1 
end 
-- script viet hoa By http://tranhba.com  ��u ti�n ph�n �o�n d�ng h� ch� � khu v�c 
mapid = SubWorldIdx2MapCopy(SubWorld); 
strmapid = ""..mapid..""; 
-- script viet hoa By http://tranhba.com  kh�ng c� � tr��c m�t tr�n b�n �� 

if (arraymap[strmapid] == nil) then 
Say("<#>1 Ng��i kh�ng th� � n�i n�y khu v�c s� d�ng c�ch tuy�n b�y qu�n ch�c n�ng , m�i/xin ng��i ��n t��ng �ng ��c ��nh khu v�c # bao g�m t�t c� th�nh tr�n # th�n trang c�ng v�i th�p ��i b�n trong m�n ph�i # s� d�ng c�ch tuy�n b�y qu�n . ", 0); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng � m�t �t h�n ch� khu v�c , n�i th� d� nh� phu xe # Thi�n v��ng gi�p ch� 
if offlineCheckPermitRegion()~=1 then 
Say("<#>2 Ng��i kh�ng th� � n�i n�y khu v�c s� d�ng c�ch tuy�n b�y qu�n ch�c n�ng , m�i/xin ng��i ��n t��ng �ng ��c ��nh khu v�c # bao g�m t�t c� th�nh tr�n # th�n trang c�ng v�i th�p ��i b�n trong m�n ph�i # s� d�ng c�ch tuy�n b�y qu�n . ", 0); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� ��ch tr�ng th�i chi�n ��u 
if (GetFightState() ~= 0) then 
Say("<#>Ng��i tr��c m�t x� vu tr�ng th�i chi�n ��u trung , kh�ng c�ch n�o ti�n v�o c�ch tuy�n b�y qu�n tr�ng th�i , m�i/xin ng��i ti�n v�o kh�ng ph�i l� tr�ng th�i chi�n ��u sau s� d�ng n�a c�ch tuy�n b�y qu�n . ", 0); 
return 2 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� c�n th�a l�i th�i gian 
-- script viet hoa By http://tranhba.com  local sparetime = getsparetime(); 
-- script viet hoa By http://tranhba.com  if (sparetime <= 0) then 
-- script viet hoa By http://tranhba.com  Say("<#>Ng��i c�n th�a l�i c�ch tuy�n b�y qu�n kinh nghi�m th�i gian l� 0 ph�t , ho�c l� c�ng kh�ng l�a ch�n c�ch tuy�n b�y qu�n k� n�ng , xin/m�i l�n n�a x�c nh�n sau s� d�ng n�a n�n ch�c n�ng . ", 0); 
-- script viet hoa By http://tranhba.com  return 3 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  khi m�t m�y ph�c v� kh� nh�n s� c�a v��t qua 800 ng��i , l� kh�ng cho ph�p nh� ch�i � n�i n�y thai ph�c v� kh� b�n trong ti�n h�nh c�ch tuy�n b�y qu�n 
player_count = GetPlayerCount(); 
if mapid==78 then
	if player_count>100 then
	--Say("<#>B�y gi� c�i ch� n�y th�t s� l� ng��i ta t�p n�p , ng��i c�n l� ��n nh�ng th� kh�c th�nh tr�n # th�n trang ho�c l� m�n ph�i n�a ti�n h�nh c�ch tuy�n b�y qu�n �i . ",0); 
	--	return 1 
	end
end
if mapid==11 or mapid==1 or mapid==162 or mapid==37 or mapid==176 or mapid==80 then
	if player_count>150 then
--	Say("<#>B�y gi� c�i ch� n�y th�t s� l� ng��i ta t�p n�p , ng��i c�n l� ��n nh�ng th� kh�c th�nh tr�n # th�n trang ho�c l� m�n ph�i n�a ti�n h�nh c�ch tuy�n b�y qu�n �i . ",0); 
	--	return 1 
	end
end

local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT; 
if (mapid >= 835 and mapid <= 840) then 
nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;-- script viet hoa By http://tranhba.com 750 
end; 
if (player_count > nmax_count_limit) then 
Say("<#>B�y gi� c�i ch� n�y th�t s� l� ng��i ta t�p n�p , ng��i c�n l� ��n nh�ng th� kh�c th�nh tr�n # th�n trang ho�c l� m�n ph�i n�a ti�n h�nh c�ch tuy�n b�y qu�n �i . ",0); 
return 4 
end 


end 

function beginoffline() 

if(uythacroimang == 0) then
	Say("Mi�n ph� �y th�c �ang t�m ��ng")
	return
end

local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 
-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng � � tuy�n b�y qu�n 
if (GetOnlineCommissionStatus() ~= 0) then 
Say("<#>Xin/m�i t�m ng�ng � tuy�n �y th�c , sau �� ti�n h�nh c�ch tuy�n �y th�c .", 0) 
return 1 
end 

if GetCash() < 500 then
	--Say("M�i l�n �y th�c c�n ph�i c� 500 l��ng")
	--return
end

--Pay(500)

--SetTask(806 , 9)
-- script viet hoa By http://tranhba.com  b�t ��u c�ch tuy�n treo ky 
LimitAccountPerIP:Logout()
OfflineLive(PlayerIndex); 
--dologouttk()
end 



-- script viet hoa By http://tranhba.com  c�i g� ��u kh�ng l�m h�m s� , c� th� nhi�u ��a ph��ng �i�u d�ng ��n , s�a ��i ph�i th�i �i�m xin ch� � 
function donothing() 

end 

TASKID_OFFLINELIVE_EXP = { 
AEXP_SMALL_TIME_TASKID, 
AEXP_TASKID, 
AEXP_SPECIAL_TIME_TASKID, 
AEXP_TIANXING_TIME_TASKID 
} 

TASKID_OFFLINELIVE_SKILL = { 
AEXP_SMALL_SKILL_TASKID, 
AEXP_SKILL_TIME_TASKID, 
AEXP_SPECIAL_SKILL_TASKID 
} 

function getsparetime() 
-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� c�n th�a l�i th�i gian 
local nLeftTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_EXP) do 
		nLeftTime = nLeftTime + GetTask(TASKID_OFFLINELIVE_EXP[i])
end 
if (GetTask(AEXP_SKILL_ID_TASKID) ~= 0) then 
local nTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_SKILL) do 
			nTime = nTime + GetTask(TASKID_OFFLINELIVE_SKILL[i])
end 
if (nLeftTime < nTime) then 
nLeftTime = nTime 
end 
end 
return nLeftTime 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n c�ch tuy�n b�y qu�n k� n�ng 
function selectofflineskill() 
local aryExpSkill = getexpskill(); 
local nExpSkillCount = getn(aryExpSkill); 
local aryszExpSkill = {}; 
local szSayCmd = "Xin/m�i l�a ch�n �y th�c ch�c n�ng :"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill, "Tr� l�i /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ch tuy�n b�y qu�n k� n�ng 
function onSetUpgradeSkill(nUpgradeSkillID) 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
judgecontion(); 
end 

function offlineaward() 

if(cachtuyendantuong == 0) then
	Say("C�ch tuy�n th�i gian ch�c n�ng n�y �ang t�m ��ng")
	return
end 

local player = Player:New(PlayerIndex) 
DynamicExecute( 
		"\\script\\global\\offlineaward.lua",
"dlg_offlineaward", 
player) 
end 


