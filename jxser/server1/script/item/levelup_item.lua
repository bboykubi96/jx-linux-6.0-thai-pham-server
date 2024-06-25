-- script viet hoa By http://tranhba.com  FILE_LEVEL = "\\settings\\npc\\player\\level_exp.txt"
Include("\\script\\lib\\gb_modulefuncs.lua")
Include("\\script\\task\\task_addplayerexp.lua")  -- script viet hoa By http://tranhba.com ¸øÍæ¼ÒÀÛ¼Ó¾­ÑéµÄ¹«¹²º¯Êı

TV_LAST_APPLY_TIME = 1571 -- script viet hoa By http://tranhba.com  lÇn tr­íc th©n thØnh truyÒn c«ng thêi gian 
TV_CHUANGONG_TIMES = 1572 -- script viet hoa By http://tranhba.com  ®· truyÒn c«ng ®İch sè lÇn 
TV_CHUANGONG_EAT = 1573 -- script viet hoa By http://tranhba.com  sö dông truyÒn c«ng ®an ®İch sè lÇn 

IncludeLib("FILESYS") 
IncludeLib("LEAGUE") 
IncludeLib("SETTING") 
tabLevelRate = 
{ 
{100,119,95},-- script viet hoa By http://tranhba.com 100 tíi 120 cÊp , truyÒn c«ng kinh nghiÖm v× 95% 
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
local str = " tiªn ®an cÊp bËc :"..fPerc.."\n cßn ®©y lµ mét vŞ <color=yellow>"..nEndLevel.." cÊp <color> ®İch tuyÖt thÕ cao thñ lÊy toµn th©n vâ c«ng hãa thµnh tiªn ®an , thÊp h¬n 10 cÊp ng­êi cña vËt dïng sau cã thÓ lËp tøc ®¹t ®­îc ®¹i l­îng kinh nghiÖm ®iÓm #"; 
return " thËt xin lçi , ®æi vËt phÈm kh«ng thÓ sö dông "; 
end 

function main(nItem) 
if (gb_GetModule("Nguyªn thÇn ®an ") ~= 1) then 
Say("ThËt xin lçi , truyÒn c«ng chøc n¨ng ®· ®ãng ®ãng/nh¾m , n÷a më ra thêi gian mêi ®­îc trang ®Çu nh×n tin tøc !", 0) 
return 1 
end 
if (ST_IsTransLife() == 1 and GetLevel() < 80) then 
Say("Häc < b¾c ®Èu tr­êng sanh thuËt - t©m ph¸p ngµy > lµ cã thÓ sö dông nguyªn thÇn ®an .", 0); 
return 1 
end; 
local nEndLevel = GetItemParam(nItem, 1); 
local nP2 = GetItemParam(nItem,2); 
local nNameId = GetItemParam(nItem,5) 
if (GetLevel() > 10 or GetLastFactionNumber() ~= -1) then 
Say("ThËt xin lçi , bän ng­¬i cÊp v­ît qua 10 cÊp , hoÆc ®· nhËp m«n ph¸i , kh«ng thÓ dïng nguyªn thÇn ®an #",0) 
return 1 
elseif (LG_GetLeagueObjByRole(1,GetName()) ~= 0) then 
Say("ThËt xin lçi , cã thÇy trß quan hÖ nhµ ch¬i kh«ng thÓ dïng nguyªn thÇn ®an #",0) 
return 1 
end 
local nowday = tonumber(date("%y%m%d")) 
WriteLog("[ truyÒn c«ng ]#"..nowday.." Acc:"..GetAccount().."Role:"..GetName().." sö dông nguyªn thÇn ®an thµnh c«ng #Item: Level:"..nEndLevel.." Exp:"..nP2.." ItemParam5:"..nNameId) 
server_main(nEndLevel, nP2) 
end 
-- script viet hoa By http://tranhba.com Itemparam1 nguyªn nhµ ch¬i xuèng cÊp tr­íc ®İch cÊp bËc 
-- script viet hoa By http://tranhba.com ItemParam2 nguyªn nhµ ch¬i xuèng cÊp tr­íc ®İch kinh nghiÖm 
-- script viet hoa By http://tranhba.com ItemParam3 nguyªn nhµ ch¬i xuèng cÊp tr­íc ®İch cßn d­ l¹i víi kinh nghiÖm cao Word 
-- script viet hoa By http://tranhba.com ItemParam4 nguyªn nhµ ch¬i xuèng cÊp tr­íc ®İch cßn d­ l¹i víi kinh nghiÖm thÊp Word 

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
		local fullexp = tl_getUpLevelExp(level+1) -- script viet hoa By http://tranhba.com ±¾µÈ¼¶Éı¼¶ĞèÒªµÄ¾­Ñé×î´óÖµ
local nPerc = floor((restexp/fullexp)*100) 
str = "\n<color=yellow> ng­¬i nÕu dïng sau , nh­ng t¨ng lªn tíi "..level.." cÊp còng cßn d­ l¹i "..nPerc.."% ®İch kinh nghiÖm <color>"; 
else 
level, restexp = exp_clt_levelup(nEndLevel, 10, 0, nRestExp) 
		local fullexp = tl_getUpLevelExp(level+1) -- script viet hoa By http://tranhba.com ±¾µÈ¼¶Éı¼¶ĞèÒªµÄ¾­Ñé×î´óÖµ
local nPerc = floor((restexp/fullexp)*100) 
str = "\n<color=yellow> 10 cÊp nh©n vËt nh­ng t¨ng lªn tíi "..level.." cÊp còng cßn d­ l¹i "..nPerc.."% ®İch kinh nghiÖm <color> "; 
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

function exp_addexp(curexp, n_exp, curlel)-- script viet hoa By http://tranhba.com  tr­íc mÆt chuÈn bŞ th¨ng cÊp ®İch nhµ ch¬i ®İch kinh nghiÖm # cÇn gia t¨ng ®İch kinh nghiÖm # tr­íc mÆt ®İch cÊp bËc ; trë vÒ trŞ gi¸ lµ lªn tíi ®İch cÊp bËc # kh«ng ®ñ th¨ng h¹ cÊp mét cßn d­ l¹i ®İch kinh nghiÖm 
-- script viet hoa By http://tranhba.com print("addexp "..curexp..":"..n_exp) 

while( n_exp > 0 ) do 
		local fullexp = tl_getUpLevelExp(curlel+1) -- script viet hoa By http://tranhba.com ±¾µÈ¼¶Éı¼¶ĞèÒªµÄ¾­Ñé×î´óÖµ

local needexp = fullexp - curexp -- script viet hoa By http://tranhba.com  thùc tÕ cÇn kinh nghiÖm trŞ gi¸ 
	-- script viet hoa By http://tranhba.com 	print(curexp .."/"..fullexp..":+"..n_exp)

if (needexp <= n_exp) then -- script viet hoa By http://tranhba.com  nÕu nh­ ®ñ th¨ng vèn cÊp 
			curlel= curlel + 1           -- script viet hoa By http://tranhba.com Éı¼¶
n_exp = n_exp - needexp -- script viet hoa By http://tranhba.com  tİnh to¸n cßn l¹i bao nhiªu kinh nghiÖm 
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
