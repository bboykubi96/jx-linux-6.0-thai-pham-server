Include("\\script\\missions\\autohang\\head.lua");

g_nPassTimes = 0; 
g_bFreeTime = 0; -- script viet hoa By http://tranhba.com  miÔn phÝ thêi gian 

function OnTimer() 

g_bFreeTime = AEXP_IsFreeTimeDoubleExp(); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cã hay kh«ng miÔn phÝ , cïng víi kinh nghiÖm béi sè (>=1) 
SetAutoHangFreeFlag(g_bFreeTime, AEXP_FREEDATE_EXPFACTOR); 

-- script viet hoa By http://tranhba.com  nÕm thö ®i tr×nh tù b¶n bæn ®Ých OnTimer xö lý hµm sè 
nRun = TimerFuncForAutoHang(); 

-- script viet hoa By http://tranhba.com  phôc vô khÝ thiÕt trÝ OnTimer xö lý v× tr×nh tù b¶n bæn ( kh«ng hÒ n÷a xuèng phÝa d­íi thi hµnh ) 
if (nRun > 0) then 
return 1; 
end 

PlayerTab = {}; 
pidx = GetFirstPlayerAtSW(); 
i = 1; 
while (pidx > 0) do 
PlayerTab[i] = pidx; 
pidx = GetNextPlayerAtSW(); 
		i = i + 1;
end 

PCount = getn(PlayerTab); 

-- script viet hoa By http://tranhba.com  print("Tr­íc mÆt hoa ®µo ®¶o nh©n sè : "..PCount); 

OldPlayer = PlayerIndex; 
-- script viet hoa By http://tranhba.com  ngÉu nhiªn sinh ra may m¾n nhµ ch¬i , còng ®¹t ®­îc ngÉu nhiªn vËt phÈm - start 
nLockNum = floor(PCount / 100); 
for i = 1, nLockNum do 
nTemp = random(1, PCount); 
PlayerIndex = PlayerTab[nTemp]; 
if (g_bFreeTime == 1) then -- script viet hoa By http://tranhba.com  miÔn phÝ thêi gian 
AddItemForAutoHang(); -- script viet hoa By http://tranhba.com  may m¾n vËt phÈm 
else 
nPointTime = GetTask(AEXP_TASKID); 
if (nPointTime >= AEXP_TIME_UPDATE) then -- script viet hoa By http://tranhba.com  nÕu ng­êi nµy treo ky ®iÓm ®Õm ch­a ®ñ , th× kh«ng thÓ lÊy ®­îc may m¾n vËt phÈm liÔu 
AddItemForAutoHang(); 
end 
end 
end 
-- script viet hoa By http://tranhba.com  ngÉu nhiªn sinh ra may m¾n nhµ ch¬i , còng ®¹t ®­îc ngÉu nhiªn vËt phÈm - end 

-- script viet hoa By http://tranhba.com  gia t¨ng kinh nghiÖm trÞ gi¸ - start 
nValidCount = 0; -- script viet hoa By http://tranhba.com  h÷u hiÖu treo ky nhµ ch¬i nh©n sè 
nRet = 0; 
for i = 1, PCount do 
PlayerIndex = PlayerTab[i]; 
nRet = AEXP_AddHangExp(); 
if (nRet > 0) then 
			nValidCount = nValidCount + 1;
end 
end 
-- script viet hoa By http://tranhba.com  gia t¨ng kinh nghiÖm trÞ gi¸ - end 
PlayerIndex = OldPlayer; 

-- script viet hoa By http://tranhba.com  thèng kª tù ®éng treo ky nh©n sè 
	g_nPassTimes = g_nPassTimes + 1;
if (g_nPassTimes >= AEXP_STAT_FREQ) then 
CalcAutoHangPlayerCount(SubWorldIdx2ID(), PCount, nValidCount); 
g_nPassTimes = 0; 
end 
end; 

-- script viet hoa By http://tranhba.com  gia t¨ng mét treo ky nhµ ch¬i ®Ých kinh nghiÖm trÞ gi¸ 
-- script viet hoa By http://tranhba.com  nµy hµm sè ë OnTimer lóc bÞ AutoAddExpForAllPlayers ®iÒu dông 
function AEXP_AddHangExp() 

nLevel = GetLevel(); 
if (nLevel < AEXP_NEEDLEVEL) then 
Msg2Player("<#> c«ng lùc cña ng­¬i qu¸ kÐm # ®Õn "..AEXP_NEEDLEVEL.."<#> cÊp trë vÒ n÷a ®i #"); 
return -1; 
end 

nExp = 0; 
nPointTime = 0; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
if (g_bFreeTime == 1) then-- script viet hoa By http://tranhba.com  miÔn phÝ t¨ng gÊp béi kinh nghiÖm ngµy 
-- script viet hoa By http://tranhba.com  kh«ng cÇn tÞch t¸m ch¸o 
-- script viet hoa By http://tranhba.com  kinh nghiÖm t¨ng gÊp béi 
nExp = GetAutoHangExpValue(nLevel); 
nExp = nExp * AEXP_FREEDATE_EXPFACTOR; 
else -- script viet hoa By http://tranhba.com  b×nh th­êng ngµy 
nPointTime = GetTask(AEXP_TASKID); 

if (nPointTime == 0) then 
Msg2Player("ChØ cã tÞch t¸m ch¸o míi cã thÓ hÊp thu c¸i nµy ®¶o ®Ých tinh hoa , mêi/xin ng­¬i ®Õn hoa ®µo Èn sÜ chç mua chót ch¸o ."); -- script viet hoa By http://tranhba.com  Todo 
return -1; 
elseif (nPointTime < AEXP_TIME_UPDATE) then 
Msg2Player("TÞch t¸m ch¸o ®Ých hiÖu lùc mau kh«ng cã , ng­¬i ph¶i hoa ®µo Èn sÜ n¬i ®ã mua n÷a ®iÓm míi cã thÓ gia t¨ng c«ng lùc ."); -- script viet hoa By http://tranhba.com  Todo 
return -1; 
end 

nExp = GetAutoHangExpValue(nLevel); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com  ph©n lóc ®o¹n - start 
szHour = date("%H"); 
nHour = tonumber(szHour); 

if (nHour < 9) then -- script viet hoa By http://tranhba.com  r¹ng s¸ng (0~9) 
nExp = floor(nExp * 1.2); 
elseif (nHour < 18) then -- script viet hoa By http://tranhba.com  ban ngµy (9~18) 
nExp = nExp; 
elseif (nHour < 24) then -- script viet hoa By http://tranhba.com  buæi tèi (18~24) 
nExp = floor(nExp * 0.8); 
end; 
-- script viet hoa By http://tranhba.com  ph©n lóc ®o¹n - end 

if (nExp > 0) then 
if (g_bFreeTime == 0) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ miÔn phÝ , trõ thêi gian 
SetTask(AEXP_TASKID, nPointTime - AEXP_TIME_UPDATE); -- script viet hoa By http://tranhba.com  trõ thêi gian 
end 

AddOwnExp(nExp); -- script viet hoa By http://tranhba.com  thªm kinh nghiÖm 
Msg2Player("<#> ng­¬i kinh nghiÖm gia t¨ng "..nExp.."<#> ®iÓm ."); -- script viet hoa By http://tranhba.com  Todo 
else 
WriteLog(GetLoop()..date("%m%d-%H:%M").."Auto AddExp Error!") 
end 

return 1; 
end; 
