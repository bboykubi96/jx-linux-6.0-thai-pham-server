-- script viet hoa By http://tranhba.com  FILE_LEVEL = "\\settings\\npc\\player\\level_exp.txt"
Include("\\script\\lib\\gb_modulefuncs.lua")
Include("\\script\\task\\task_addplayerexp.lua")  -- script viet hoa By http://tranhba.com ������ۼӾ���Ĺ�������

TV_LAST_APPLY_TIME = 1571 -- script viet hoa By http://tranhba.com  l�n tr��c th�n th�nh truy�n c�ng th�i gian 
TV_CHUANGONG_TIMES = 1572 -- script viet hoa By http://tranhba.com  �� truy�n c�ng ��ch s� l�n 
TV_CHUANGONG_EAT = 1573 -- script viet hoa By http://tranhba.com  s� d�ng truy�n c�ng �an ��ch s� l�n 

IncludeLib("FILESYS") 
IncludeLib("LEAGUE") 
IncludeLib("SETTING") 
tabLevelRate = 
{ 
{100,119,95},-- script viet hoa By http://tranhba.com 100 t�i 120 c�p , truy�n c�ng kinh nghi�m v� 95% 
{120,149,90}, 
{150,160,80}, 
} 


function GetDesc(nItem) 
local nEndLevel = GetItemParam(nItem, 1); 
local nP2 = GetItemParam(nItem,2); 
local nP3 = GetItemParam(nItem,3); 
local nP4 = GetItemParam(nItem,4); 
local nRestExp = nP4 
nRestExp = SetByte(nRestExp, 3, GetByte(nP3,1)) 
nRestExp = SetByte(nRestExp, 4, GetByte(nP3,2)) 
	nLevelFullExp = tl_getUpLevelExp(nEndLevel+ 1)
	local fPerc = format("%.2f", (nEndLevel)+(nRestExp/nLevelFullExp) )
local str = " ti�n �an c�p b�c :"..fPerc.."\n c�n ��y l� m�t v� <color=yellow>"..nEndLevel.." c�p <color> ��ch tuy�t th� cao th� l�y to�n th�n v� c�ng h�a th�nh ti�n �an , th�p h�n 10 c�p ng��i c�a v�t d�ng sau c� th� l�p t�c ��t ���c ��i l��ng kinh nghi�m �i�m #"; 
return " th�t xin l�i , ��i v�t ph�m kh�ng th� s� d�ng "; 
end 

function main(nItem) 
if (gb_GetModule("Nguy�n th�n �an ") ~= 1) then 
Say("Th�t xin l�i , truy�n c�ng ch�c n�ng �� ��ng ��ng/nh�m , n�a m� ra th�i gian m�i ���c trang ��u nh�n tin t�c !", 0) 
return 1 
end 
if (ST_IsTransLife() == 1 and GetLevel() < 80) then 
Say("H�c < b�c ��u tr��ng sanh thu�t - t�m ph�p ng�y > l� c� th� s� d�ng nguy�n th�n �an .", 0); 
return 1 
end; 
local nEndLevel = GetItemParam(nItem, 1); 
local nP2 = GetItemParam(nItem,2); 
local nNameId = GetItemParam(nItem,5) 
if (GetLevel() > 10 or GetLastFactionNumber() ~= -1) then 
Say("Th�t xin l�i , b�n ng��i c�p v��t qua 10 c�p , ho�c �� nh�p m�n ph�i , kh�ng th� d�ng nguy�n th�n �an #",0) 
return 1 
elseif (LG_GetLeagueObjByRole(1,GetName()) ~= 0) then 
Say("Th�t xin l�i , c� th�y tr� quan h� nh� ch�i kh�ng th� d�ng nguy�n th�n �an #",0) 
return 1 
end 
local nowday = tonumber(date("%y%m%d")) 
WriteLog("[ truy�n c�ng ]#"..nowday.." Acc:"..GetAccount().."Role:"..GetName().." s� d�ng nguy�n th�n �an th�nh c�ng #Item: Level:"..nEndLevel.." Exp:"..nP2.." ItemParam5:"..nNameId) 
server_main(nEndLevel, nP2) 
end 
-- script viet hoa By http://tranhba.com Itemparam1 nguy�n nh� ch�i xu�ng c�p tr��c ��ch c�p b�c 
-- script viet hoa By http://tranhba.com ItemParam2 nguy�n nh� ch�i xu�ng c�p tr��c ��ch kinh nghi�m 
-- script viet hoa By http://tranhba.com ItemParam3 nguy�n nh� ch�i xu�ng c�p tr��c ��ch c�n d� l�i v�i kinh nghi�m cao Word 
-- script viet hoa By http://tranhba.com ItemParam4 nguy�n nh� ch�i xu�ng c�p tr��c ��ch c�n d� l�i v�i kinh nghi�m th�p Word 

function client_main(nEndLevel, nRestExp) 
if (nEndLevel < 80 or nEndLevel > 200) then 
return 
end 
if (nRestExp < 0) then 
nRestExp = 0 
end 

local str = "" 
local testlevel = 10; 
local testexp = 0; 
if (GetLevel() <= 10) then 
testlevel = GetLevel(); 
testexp = GetExp(); 
level, restexp = exp_clt_levelup(nEndLevel, GetLevel(), GetExp(), nRestExp) 
		local fullexp = tl_getUpLevelExp(level+1) -- script viet hoa By http://tranhba.com ���ȼ�������Ҫ�ľ������ֵ
local nPerc = floor((restexp/fullexp)*100) 
str = "\n<color=yellow> ng��i n�u d�ng sau , nh�ng t�ng l�n t�i "..level.." c�p c�ng c�n d� l�i "..nPerc.."% ��ch kinh nghi�m <color>"; 
else 
level, restexp = exp_clt_levelup(nEndLevel, 10, 0, nRestExp) 
		local fullexp = tl_getUpLevelExp(level+1) -- script viet hoa By http://tranhba.com ���ȼ�������Ҫ�ľ������ֵ
local nPerc = floor((restexp/fullexp)*100) 
str = "\n<color=yellow> 10 c�p nh�n v�t nh�ng t�ng l�n t�i "..level.." c�p c�ng c�n d� l�i "..nPerc.."% ��ch kinh nghi�m <color> "; 
end 
return str 
end 

function gw_item(level,restexp) 

nIt = AddItem(6,1,12,1,0,0,0) 
SetItemMagicLevel(nIt, 1, level) 
SetItemMagicLevel(nIt, 2, restexp) 

m1 = GetByte(restexp, 3) 
m2 = GetByte(restexp, 4) 
m = m1 
m = SetByte(m1, 2, m2) 

n1 = SetByte(restexp, 3,0) 
n = SetByte(n1, 4, 0) 

SetItemMagicLevel(nIt, 3, m) 
SetItemMagicLevel(nIt, 4, n) 
print(m,n) 
SyncItem(nIt) 
end 

function server_main(level,exp) 
exp_svr_levelup(level,exp) 
end 

function exp_getRate(endlevel) 
local nRate = 0 
for j = 1, getn(tabLevelRate) do 
if (endlevel >= tabLevelRate[j][1] and endlevel <= tabLevelRate[j][2] ) then 
nRate = tabLevelRate[j][3] 
return nRate 
end 
end 
return nRate 
end 

function exp_clt_levelup(endlevel, nowlevel, nowrestexp, restexp) 
if (endlevel > 200) then 
return 
end 

local lExp = 0; 
local nRate = exp_getRate(endlevel) 

if (nRate == 0) then 
return 
end 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
local nleveladd = 80 
for j = 1, getn(tabLevelRate) do 
if (endlevel >= tabLevelRate[j][1]) then 
nRate = tabLevelRate[j][3] 
local nlevelend = tabLevelRate[j][2] 

if ( tabLevelRate[j][2] >= (endlevel - 1) ) then 
nlevelend = endlevel - 1 
else 
nlevelend = tabLevelRate[j][2] 
end 

for i = nleveladd, nlevelend do 
				-- script viet hoa By http://tranhba.com print("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -:add level:["..i.."->"..(i+1).."] exp:"..tonumber(GetTabFileData(FILE_LEVEL, i + 1, 2)).." nRate:"..nRate)
				lExp = floor(tl_getUpLevelExp(i + 1) * nRate / 100)
nowlevel, nowrestexp = exp_addexp(nowrestexp, lExp, nowlevel) 
end 
			nleveladd = nlevelend + 1
else 
break 
end 
end 

nowlevel, nowrestexp = exp_addexp(nowrestexp, restexp * nRate / 100, nowlevel) 
return nowlevel, nowrestexp 
end 

function exp_svr_levelup(endlevel, restexp) 
if (endlevel > 200) then 
return 
end 

local lExp = 0; 

local nRate = exp_getRate(endlevel) 
if (nRate == 0) then 
return 
end 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
local nleveladd = 80 
for j = 1, getn(tabLevelRate) do 
if (endlevel >= tabLevelRate[j][1]) then 
nRate = tabLevelRate[j][3] 
local nlevelend = tabLevelRate[j][2] 

if ( tabLevelRate[j][2] >= (endlevel - 1) ) then 
nlevelend = endlevel - 1 
else 
nlevelend = tabLevelRate[j][2] 
end 

for i = nleveladd, nlevelend do 
				-- script viet hoa By http://tranhba.com print("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -:add level:["..i.."->"..(i+1).."] exp:"..tonumber(GetTabFileData(FILE_LEVEL, i + 1, 2)).." nRate:"..nRate)
				lExp = floor(tl_getUpLevelExp(i + 1, 2)* nRate / 100)
nowlevel, nowrestexp = exp_svr_addexp(lExp) 
end 
			nleveladd = nlevelend + 1
else 
break 
end 
end 

exp_svr_addexp(restexp * nRate / 100) 

return nowlevel, nowrestexp 
end 

function exp_addexp(curexp, n_exp, curlel)-- script viet hoa By http://tranhba.com  tr��c m�t chu�n b� th�ng c�p ��ch nh� ch�i ��ch kinh nghi�m # c�n gia t�ng ��ch kinh nghi�m # tr��c m�t ��ch c�p b�c ; tr� v� tr� gi� l� l�n t�i ��ch c�p b�c # kh�ng �� th�ng h� c�p m�t c�n d� l�i ��ch kinh nghi�m 
-- script viet hoa By http://tranhba.com print("addexp "..curexp..":"..n_exp) 

while( n_exp > 0 ) do 
		local fullexp = tl_getUpLevelExp(curlel+1) -- script viet hoa By http://tranhba.com ���ȼ�������Ҫ�ľ������ֵ

local needexp = fullexp - curexp -- script viet hoa By http://tranhba.com  th�c t� c�n kinh nghi�m tr� gi� 
	-- script viet hoa By http://tranhba.com 	print(curexp .."/"..fullexp..":+"..n_exp)

if (needexp <= n_exp) then -- script viet hoa By http://tranhba.com  n�u nh� �� th�ng v�n c�p 
			curlel= curlel + 1           -- script viet hoa By http://tranhba.com ����
n_exp = n_exp - needexp -- script viet hoa By http://tranhba.com  t�nh to�n c�n l�i bao nhi�u kinh nghi�m 
curexp = 0 
-- script viet hoa By http://tranhba.com  print("levelup:"..curlel) 
else 
		   	return curlel , curexp + n_exp
end 
end 

	return curlel , curexp + n_exp 

end 

function exp_svr_addexp(n_exp) 
tl_addPlayerExp(n_exp) 
end 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) 
end; 

function GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 
