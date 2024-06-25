-- script viet hoa By http://tranhba.com  øng dông Relay ®Ých chiÕn ®éi hÖ thèng thiÕt kÕ , toµn phôc vô khÝ tæ , cïng h­ëng ®Ých nhiÖm vô míi thay ®æi l­îng chøc n¨ng . 
-- script viet hoa By http://tranhba.com  nªn nhiÖm vô thay ®æi l­îng ®Ých ®Æc ®iÓm lµ # 
-- script viet hoa By http://tranhba.com 1# toµn phôc vô khÝ cã thÓ ®ång thêi pháng vÊn cïng söa ®æi 
-- script viet hoa By http://tranhba.com 2# cho dï më l¹i sau thªm t¸i trß ch¬i sau vÉn h÷u hiÖu 
-- script viet hoa By http://tranhba.com  thiÕu sãt lµ # nÕu nh­ ®ång thêi nhiÒu thai phôc vô khÝ söa ®æi nªn trÞ gi¸ lóc cã thÓ sÏ x¶y ra vÊn ®Ò , cho nªn xin tËn lùc sö dông Append ®Ých ph­¬ng thøc , tøc t¨ng lªn hoÆc ®Ö gi¶m m« thøc . 
-- script viet hoa By http://tranhba.com  nÕu nh­ Relay ®­¬ng c¬ hoÆc kh«ng cã h­ëng øng lóc , sÏ xuÊt hiÖn t×nh huèng dÞ th­êng . 
-- script viet hoa By http://tranhba.com  cho nªn vèn chøc n¨ng mét lo¹i øng dông víi ®èi víi trÞ sè ®é chuÈn x¸c kh«ng cao l¾m hoÆc lµ cã thÓ tiÕp nhËn cã ngé kÐm hiÖn t­îng ®Ých chøc n¨ng . 
-- script viet hoa By http://tranhba.com Designed By Romandou 2005.11.14 

IncludeLib("LEAGUE") 
RELAYTASK_LEAGUEID = 500 

function gb_GetTask(szModuleName, nTaskID) 
local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName) ; 
if (lid == 0 or lid == nil) then 
return 0 
end 
return LG_GetLeagueTask(lid,nTaskID) 
end 

function gb_SetTask(szModuleName, nTaskID, nValue) 
local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName) ; 
if (lid == 0 or lid == nil) then 
print("lid = nil") 
lid = LG_CreateLeagueObj() 
local memberObj = LGM_CreateMemberObj() 
LG_SetLeagueInfo(lid, RELAYTASK_LEAGUEID, szModuleName) 
LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_LEAGUEID, szModuleName) 
LG_AddMemberToObj(lid, memberObj) 
		LG_ApplyAddLeague(lid,"\\script\\lib\\gb_taskfuncs.lua", "OnCreateModule")
LG_FreeLeagueObj(lid) 
end 

LG_ApplySetLeagueTask(RELAYTASK_LEAGUEID, szModuleName, nTaskID, nValue) 
end 

function OnCreateModule(nLeagueType, szLeagueName, szMemberName, bSucceed) 
if (bSucceed == 0) then 
WriteLog("gb_Task Build Fail: "..szLeagueName.."szMember"..szMemberName) 
print("gb_Task Build Fail: "..szLeagueName.."szMember"..szMemberName) 
end 
print("gb_Task Build Success: "..szLeagueName.."szMember"..szMemberName) 
end 

function gb_AppendTask(szModuleName, nTaskID, nAppendValue) 
local lid = LG_GetLeagueObj(RELAYTASK_LEAGUEID, szModuleName) ; 
if (lid == 0 or lid == nil) then 
print("append nil") 
lid = LG_CreateLeagueObj() 
local memberObj = LGM_CreateMemberObj() 
LG_SetLeagueInfo(lid , RELAYTASK_LEAGUEID, szModuleName) 
LGM_SetMemberInfo(memberObj, szModuleName, 0, RELAYTASK_LEAGUEID, szModuleName) 
LG_AddMemberToObj(lid , memberObj) 
		LG_ApplyAddLeague(lid ,"\\script\\lib\\gb_taskfuncs.lua", "OnCreateModule")
LG_FreeLeagueObj(lid) 
end 
LG_ApplyAppendLeagueTask(RELAYTASK_LEAGUEID, szModuleName, nTaskID, nAppendValue) 
end 
