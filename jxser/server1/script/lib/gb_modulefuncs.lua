-- script viet hoa By http://tranhba.com  øng dông Relay ®Ých chiÕn ®éi hÖ thèng thiÕt kÕ , toµn phôc vô khÝ tæ , cïng h­ëng ®Ých chøc n¨ng chèt më tr¹ng th¸i häc lÊy . 
-- script viet hoa By http://tranhba.com  nªn chøc n¨ng ®Ých ®Æc ®iÓm lµ # 
-- script viet hoa By http://tranhba.com 1# toµn phôc vô khÝ cã thÓ ®ång thêi pháng vÊn cïng söa ®æi 
-- script viet hoa By http://tranhba.com 2# cho dï më l¹i sau thªm t¸i trß ch¬i sau vÉn h÷u hiÖu 
-- script viet hoa By http://tranhba.com  thiÕu sãt lµ # nÕu nh­ ®ång thêi nhiÒu thai phôc vô khÝ söa ®æi nªn trÞ gi¸ lóc cã thÓ sÏ x¶y ra vÊn ®Ò , cho nªn xin tËn lùc sö dông Append ®Ých ph­¬ng thøc , tøc t¨ng lªn hoÆc ®Ö gi¶m m« thøc . 
-- script viet hoa By http://tranhba.com  nÕu nh­ Relay ®­¬ng c¬ hoÆc kh«ng cã h­ëng øng lóc , sÏ xuÊt hiÖn t×nh huèng dÞ th­êng . 
-- script viet hoa By http://tranhba.com  cho nªn vèn chøc n¨ng mét lo¹i øng dông víi ®èi víi trÞ sè ®é chuÈn x¸c kh«ng cao l¾m hoÆc lµ cã thÓ tiÕp nhËn cã ngé kÐm hiÖn t­îng ®Ých chøc n¨ng . 
-- script viet hoa By http://tranhba.com Designed By Romandou 2006.1.21 
IncludeLib("LEAGUE") 
RELAYTASK_GAMEMODULE = 502 -- script viet hoa By http://tranhba.com  cÊt gi÷ c¸c lo¹i chèt më ®Ých chiÕn ®éi ID 
RELAYTASK_MODULETASK = 1 -- script viet hoa By http://tranhba.com  cÊt gi÷ trß ch¬i chøc n¨ng chèt më tr¹ng th¸i nhiÖm vô thay ®æi l­îng ID 
-- script viet hoa By http://tranhba.com  mét chøc n¨ng ®Ých tr¹ng th¸i cã ba lo¹i , 0# kh«ng më ra UnUsed# , 1# më ra Started# , 2# t¾t Stopped# 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function gb_GetModule(szModuleName) 
local lid = LG_GetLeagueObj(RELAYTASK_GAMEMODULE, szModuleName) ; 
if (lid == 0 or lid == nil) then 
return 0 
end 
return LG_GetLeagueTask(lid, RELAYTASK_MODULETASK) 
end 

function gb_StopModule(szModuleName) 
OutputMsg("Game Module Is Stopped. -- script viet hoa By http://tranhba.com >"..szModuleName) 
gb_SetModule(szModuleName, 2) 
end 

function gb_StartModule(szModuleName) 
OutputMsg("Game Module Is Started. -- script viet hoa By http://tranhba.com >"..szModuleName) 
gb_SetModule(szModuleName, 1) 
end 

function OutputMsg(szMsg) 
WriteLog(szMsg) 
print(szMsg) 
end 

function gb_AutoStartModule(szModuleName) 
if (szModuleName == "") then 
return 
end 

local nState = gb_GetModule(szModuleName) 
if (nState == 0) then 
gb_StartModule(szModuleName) 
OutputMsg("New Game Module Is Started. -- script viet hoa By http://tranhba.com >"..szModuleName) 
elseif(nState == 1) then 
OutputMsg("Game Module Is Started. -- script viet hoa By http://tranhba.com >"..szModuleName) 
else 
OutputMsg("Game Module Is Stopped. -- script viet hoa By http://tranhba.com >"..szModuleName) 
end 

end 

function _gb_SetModule(szModuleName, nTaskID, nValue) 
local lid = LG_GetLeagueObj(RELAYTASK_GAMEMODULE, szModuleName) ; 
if (lid == 0 or lid == nil) then 
lid = LG_CreateLeagueObj() 
local memberObj = LGM_CreateMemberObj() 
LG_SetLeagueInfo(lid, RELAYTASK_GAMEMODULE, szModuleName) 
LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_GAMEMODULE, szModuleName) 
LG_AddMemberToObj(lid, memberObj) 
LG_ApplyAddLeague(lid) 
LG_FreeLeagueObj(lid) 
end 
LG_ApplySetLeagueTask(RELAYTASK_GAMEMODULE, szModuleName, nTaskID, nValue) 
end 

function gb_SetModule(szModuleName,nValue) 
_gb_SetModule(szModuleName,RELAYTASK_MODULETASK, nValue) 
end 
