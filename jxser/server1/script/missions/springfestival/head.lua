if (not __FESTIVAL07_HEAD__) then 
__FESTIVAL07_HEAD__ = 1; 

IncludeLib("BATTLE"); 
Include([[\script\lib\coordinate.lua]]); 
Include("\\script\\lib\\gb_taskfuncs.lua") -- script viet hoa By http://tranhba.com 
Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\pay.lua")


-- script viet hoa By http://tranhba.com  th��ng tr� gi� b� ph�n 
-- script viet hoa By http://tranhba.com DescLink_LiGuan = "<#><link=image[0,13]:\\spr\\npcres\\enemy\\enemy195\\enemy195_st.spr> �ng gi� n� en #<link>" 

CO_DATE_BEGIN = 20150209; 
CO_DATE_END = 20160223; 

CO_PREPAREMISSIONID = 30; 
CO_MISSIONID = 31; 
CO_MINIMUM = 5; 

CO_FRAME = 18; -- script viet hoa By http://tranhba.com  m�i gi�y 18 tr�nh 
CO_REFRASHTIME = 15 * CO_FRAME; -- script viet hoa By http://tranhba.com  m�i 15 gi�y c� m�t l�n tr�ch 
CO_VANISHTIME = 10 * CO_FRAME; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh d�ng l�i 3 gi�y 
CO_RUNINTERVER = 30 * CO_FRAME; -- script viet hoa By http://tranhba.com 30 gi�y m�t l�n , c� th� th�ng b�o tr� ch�i 
CO_MAXPLAYTIMES = 5; -- script viet hoa By http://tranhba.com  m�i ng��i nhi�u nh�t m�t ng�y ch�i 5 l�n 
CO_LEVELLIMIT = 50; -- script viet hoa By http://tranhba.com  nh� ch�i tham gia c�n nh� nh�t c�p b�c 

CO_PREPARETIME = 57; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� kh� 
CO_FAIRY_SMALLTIMERID = 58; -- script viet hoa By http://tranhba.com  c� tr�ch t�nh gi� kh� 
CO_REPORT_SMALLTIMERID = 59; -- script viet hoa By http://tranhba.com RunMission d�ng t�nh gi� kh� # 
CO_INTERVER = 5 * CO_FRAME; -- script viet hoa By http://tranhba.com 3 gi�y x�c ph�t c� tr�ch h�a thanh s� tr�ch x�c ph�t kh� 

-- script viet hoa By http://tranhba.com GLB tr� gi� 
GLB_CO_PHASE = 849; -- script viet hoa By http://tranhba.com  m�a xu�n ho�t ��ng ��ch th�i gian 
-- script viet hoa By http://tranhba.com =============== c�ng tr�ch t��ng quan ================== 
CO_NPCID = 1256; -- script viet hoa By http://tranhba.com  c� ra tr�ch ��ch NCP index 
CO_MAPID = {584, 585}; -- script viet hoa By http://tranhba.com  gi�ng sinh ho�t ��ng b�n �� Id 

CO_SMALLMAPCOUNT = 19; -- script viet hoa By http://tranhba.com  t�ng c�ng c� 12 t� ti�u b�n �� 
CO_MOUSECOUNT_MIN = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n �t nh�t c� ��a th� s� l��ng 
CO_MOUSECOUNT_MAX = 10; -- script viet hoa By http://tranhba.com  m�t ti�u b�n �� m�t l�n nhi�u nh�t c� ��a th� s� l��ng 
CO_MAXPLAYERCOUNT = 10; -- script viet hoa By http://tranhba.com  m�i tr� ch�i nhi�u nh�t 10 ng��i # 
CO_NIANSHOU_XUANYUN = 10; -- script viet hoa By http://tranhba.com  n�m th� m�i b� c�ng k�ch 10 l�n li�n b� h�n m� 
CO_ALL_MAXPLAYERCOUNT = 100; -- script viet hoa By http://tranhba.com  t�ng c�ng nhi�u nh�t 120 ng��i # 
-- script viet hoa By http://tranhba.com ========================================= 

-- script viet hoa By http://tranhba.com ========= nhi�m v� thay ��i l��ng =============== 
TK_CO_LEAVERMAPID = 1123; -- script viet hoa By http://tranhba.com  t�n tr� tr�ng s�ng tr�n ��ch mapid 
TK_CO_LEAVERPOSX = 1124; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i x t�a �� �i�m 
TK_CO_LEAVERPOSY = 1125; -- script viet hoa By http://tranhba.com  t�n tr� r�i �i tr� ch�i y t�a �� �i�m 

TK_CO_DAYKEY = 1126; -- script viet hoa By http://tranhba.com  ghi ch�p l� m�t ng�y kia 
TK_CO_PLAYTIMES = 1127; -- script viet hoa By http://tranhba.com  ghi ch�p m�t ng�y b�n trong ch�i s� l�n 
TK_CO_TOTAL = 1794; -- script viet hoa By http://tranhba.com  ghi ch�p t�ng c�ng ch�i bao nhi�u l�n # 

TK_CO_COUNT_ONETIME = 1128; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c �i�m bao nhi�u c� 

TK_CO_RANK = 1129; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c ��ch ��ng h�ng # 

TK_CO_GROUPID = 1130; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch Group s� 
TK_CO_EXP_BEISHU = 1131; -- script viet hoa By http://tranhba.com  ��t ���c kinh nghi�m b�i s� 
TK_CO_EXP_TIME = 1132; -- script viet hoa By http://tranhba.com  ��t ���c g�p ��i ��ch th�i gian 

TK_CO_ATTACKED_TIMES = 1133; -- script viet hoa By http://tranhba.com  ghi ch�p n�m th� b� c�ng k�ch s� l�n 
TK_CO_ATTACKED_INTERVER = 1134; -- script viet hoa By http://tranhba.com  b�nh th��ng nh� ch�i s� d�ng ��o c� gian c�ch 
-- script viet hoa By http://tranhba.com ================================ 

-- script viet hoa By http://tranhba.com MS b� ph�n # 
MS_CO_STATE = 1; 
MS_CO_TIMERSTATE = 2; -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p d�ng cho giao th� ��ch ti�n h�nh c� tr�ch h�a thanh tr� tr�ch #0# thanh tr� tr�ch #1# c� ra tr�ch 
MS_CO_NEWSVALUE = 3; -- script viet hoa By http://tranhba.com  
MS_CO_BEGINGMAPID = 10; -- script viet hoa By http://tranhba.com  ghi ch�p b�t ��u ��ch b�n �� ��ch ID 
MS_CO_PREPARENEWSVALUE = 5; -- script viet hoa By http://tranhba.com  chu�n b� tr�ng t�nh gi� thay ��i l��ng 
MS_CO_GAMECOUNT = 6; -- script viet hoa By http://tranhba.com  ghi ch�p m�t cu�c b�t ��u ��ch tr� ch�i c� ��m 
-- script viet hoa By http://tranhba.com  th��ng l��ng b� ph�n # 
FESTIVAL_SHREWMOUSE = "springfestival07"; 
CO_ANIMALNAME = "30 tu�i ng��i "; 
CO_MOUSENAME = " b�ch heo "; -- script viet hoa By http://tranhba.com  gi�ng sinh tinh linh t�n 
CO_GIFTNAME = " l�u l�i l� v�t "; -- script viet hoa By http://tranhba.com  l� v�t NPC ��ch t�n 
CO_SIGNNPCNAME = "<color=yellow> nha m�n sai d�ch <color>:"; -- script viet hoa By http://tranhba.com  ghi danh �ng gi� n� en ��ch t�n 
CO_MAPPOINTFLORDER = "springfestival2006"; 
FESTIVAL_OK = 1; -- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i kh�ng ��nh b�y t� 
FESTIVAL_NO = 0; -- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i h�y b� b�y t� 
FESTIVAL_ENTERSPEED = 16; -- script viet hoa By http://tranhba.com  ti�n h�nh tr� ch�i nh� ch�i ��ch t�c �� 
FESTIVAL_LEAVERSPEED = -1; -- script viet hoa By http://tranhba.com  r�i �i tr� ch�i nh� ch�i ��ch t�c �� 

Include([[\script\missions\libfestival\head.lua]]); 

-- script viet hoa By http://tranhba.com  c� hay kh�ng �ang ho�t ��ng th�i gian 
function sf06_isactive() 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate < CO_DATE_BEGIN or nDate > CO_DATE_END or gb_GetTask("shut_springfestival07", 1) == 1) then 
return 0 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  sinh th�nh m�t t��ng ��i vu tr��c m�t nh� ch�i ��ch ch�n h�ng 
function festival_make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  ki�m tra n�n nh� ch�i c� hay kh�ng c�n �ang trong tr� ch�i , th�nh c�ng tr� v� PlayerIndex n�u kh�ng tr� v� nil 
function festival_check_pl(szPlayName) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � tr��c m�t ph�c v� kh� 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(CO_MISSIONID, nPlIdx) -- script viet hoa By http://tranhba.com  nh� ch�i c� hay kh�ng � ch� ��nh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 
-- script viet hoa By http://tranhba.com  ki�m tra ��o c� c� ���c hay kh�ng b� s� d�ng 
function itemuseplacecheck(nType) -- script viet hoa By http://tranhba.com nType :1�� c�ng c�ng ��o c� #2�� n�m th� chuy�n d�ng ��o c� #3�� b�nh th��ng nh� ch�i chuy�n nghi�p ��o c� 
local ww, xx, yy = GetWorldPos(); 
if (CO_MAPID[2] ~= ww) then 
Talk(1, "","N�n v�t ph�m ch� d�ng v�i m�a xu�n ho�t ��ng ."); 
return 0; 
end; 

if (GetTask(TK_FE_GROUPID) <= FE_SMALLMAPCOUNT and 2 == nType) then 
Talk(1, "","Ch� c� ��nh tr�ch nh� ch�i m�i c� th� s� d�ng n�n m�t n� "); 
return 0; 
end; 

if (GetTask(TK_FE_GROUPID) > FE_SMALLMAPCOUNT and 3 == nType) then 
Talk(1, "","Ch� c� m�t lo�i nh� ch�i m�i c� th� s� d�ng n�n v�t ph�m ."); 
return 0; 
end; 

return 1 
end; 
-- script viet hoa By http://tranhba.com  t�m ���c ��i l�p tr�n doanh , n�m th� ��> nh� ch�i , nh� ch�i ��> n�m th� 
function festival_getgroupid(nGroupId) 
if (nGroupId < 1) then 
return nil 
end; 

if (nGroupId > CO_SMALLMAPCOUNT) then 
return nGroupId - CO_SMALLMAPCOUNT; 
else 
        return nGroupId + CO_SMALLMAPCOUNT;
end; 
end; 

function festival_go_other_place() -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nBeginMapID = GetMissionV(MS_CO_BEGINGMAPID); 
local nGroupId = GetTask(TK_CO_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, CO_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\elf_]]..nMapId..[[.txt]]; 
local PosX, PosY = getadata(szFile); 
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_go_back(nBeginMapID) -- script viet hoa By http://tranhba.com  ng�u nhi�n truy�n t�i �i�m ban ��u 
local nGroupId = GetTask(TK_CO_GROUPID); 

	local nMapId = nBeginMapID + nGroupId - 1;
	nMapId = mod(nMapId, CO_SMALLMAPCOUNT) + 1;
local szFile = [[\settings\maps\]]..CO_MAPPOINTFLORDER..[[\player.txt]]; 
	local PosX, PosY = getadatatow(szFile, 8 + 8 * nMapId, 15 + 8 * nMapId);
SetPos(floor(PosX / 32), floor(PosY / 32)); 
SubWorld = OldSubWorld; 
end; 

function festival_checkinterver() 
local gametime = GetGameTime(); 
if (GetTask(TK_CO_ATTACKED_INTERVER) > gametime) then 
return 0; 
else 
        SetTask(TK_CO_ATTACKED_INTERVER, gametime + 2);
return 1; 
end; 
end; 
end; 
