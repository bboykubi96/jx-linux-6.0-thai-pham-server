Include("\\script\\event\\funv_jieri\\200903\\class.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")

Include("\\script\\lib\\string.lua")
local tbExpAward = 
{ 
-- script viet hoa By http://tranhba.com [nSex] = {nExp = nExp} 
[0] = {nExp = 2000000}, 
[1] = {nExp = 3000000}, 

} 


local tbBless = 
{ 
" trªn m«i lu«n lµ lé ra th©n thiÕt mØm c­êi , ", 
" lu«n lµ vui vÎ cïng h¹nh phóc ", 
" lu«n lµ gÆp ph¶i rÊt nhiÒu may m¾n cïng h¹nh phóc ", 
" rÊt ®Ñp liÔu , muèn ®Ñp h¬n , ®Ó cho hoa h©m mé , tr¨ng s¸ng ghen tþ ", 
" mü h¶o ®å tæng ë bªn ng­êi ", 
" ë trong cuéc sèng lu«n lµ c­êng ®¹i cïng tù tin ", 
" ®i vÒ phÝa tr­íc ®Ých trªn ®­êng lu«n lµ quang minh tùa nh­ cöa hµng hoa hång ", 
" dÔ dµng l­ít qua trong cuéc sèng ®Ých khã kh¨n ", 
" thêi gian sÏ kh«ng thèn r¬i dung nhan ", 
" lu«n lµ c¶m thÊy vui vÎ cïng tho¶i m¸i ", 
" ®èi víi cuéc sèng trµn ®Çy tÝn niÖm ", 
" vÜnh viÔn xinh ®Ñp ", 
" vÜnh viÔn gièng nh­ b¸ch hoa mét d¹ng xinh ®Ñp ", 
" cuéc sèng ë b»ng h÷u hßa th©n ng­êi t×nh c¶m trung ", 
" tin t­ëng sù nghiÖp sÏ thµnh c«ng ", 
" vÜnh viÔn xinh ®Ñp cïng cã mÞ lùc ", 
" ng· nhµo ®Ých thêi ®iÓm tæng cã thÓ ®øng ®øng lªn , dòng c¶m l­ít qua khã kh¨n ", 
"3 th¸ng 8 sè thËt lµ vui vÎ cïng trµn ®Çy ý nghÜa mét ngµy ", 
" sím ngµy t×m ®­îc dùa vµo ®Þa ph­¬ng ë trong ®êi kiªn ®Þnh ®i vÒ phÝa tr­íc ", 
" c¶ nhµ vui vÎ # h¹nh phóc # kháe m¹nh ", 
} 
local _AddRoseCardExp = function (nItemIndex) 
local nSex = GetSex() 
if tbFunv0903.tbTask:CheckExpFromRose() ~= 1 then 
Msg2Player(format("Mçi ng­êi nhiÒu nhÊt chØ cã thÓ tõ hoa hång t¹p trung ®¹t ®­îc %u kinh nghiÖm ", tbFunv0903.tbTask.nMaxExpFromRose)) 
else 
local tbExp = %tbExpAward[nSex] 
tbAwardTemplet:GiveAwardByList(tbExp, "use "..GetItemName(nItemIndex)) 
tbFunv0903.tbTask:AddCurExpFromRose(tbExp.nExp) 
end 

end 

function main(nItemIndex) 

if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","Nªn vËt phÈm ®· qua kú ") 
return 0 
end 

local nTeamSize = GetTeamSize() 
if GetSex() ~= 0 then 
Talk(1, "","Nªn vËt phÈm chØ cã nam nh©n míi cã thÓ sö dông ") 
return 1 
end 
if nTeamSize ~= 2 then 
Talk(1, "","CÇn 1 nam 1 n÷ häp thµnh ®éi míi cã thÓ sö dông .") 
return 1 
end 
local nSexFlag = 0 
local szName_Male = GetName() 
local szName_Female = "" 
for i=1, nTeamSize do 
local nPlayerIndex = GetTeamMember(i) 
local nSex = doFunByPlayer(nPlayerIndex, GetSex) 
local szName = doFunByPlayer(nPlayerIndex, GetName) 
local bRet, szFailMsg = doFunByPlayer(nPlayerIndex, tbFunv0903.IsPlayerEligible, tbFunv0903) 
if bRet ~= 1 then 
local szMsg = format("<color=yellow>%s<color>%s",szName, szFailMsg) 
Msg2Team(szMsg) 
Talk(1, "", szMsg) 

return 1 
end 

		nSexFlag = nSexFlag + nSex
if szName ~= szName_Male then 
szName_Female = szName 
end 
end 

	if nSexFlag ~= 1 then -- script viet hoa By http://tranhba.com 2ÈË×é¶ÓµÄÇé¿öÏÂ£¬Í¬ÐÔ±ðÏà¼Ó±Ø¶¨Îª0+0=0»òÕß1+1=2£¬ÒìÐÍÎª0+1=1
Talk(1, "","CÇn 1 nam 1 n÷ häp thµnh ®éi míi cã thÓ sö dông .") 
return 1 
end 
local nColor = toColor(random(0,255), random(0,255), random(0,255)) 
local szBless = format("<color=%s>%s<color>", tostring(nColor), %tbBless[random(1, getn(%tbBless))]) 
local szMsg = format("<color=yellows>%s<color> chóc <color=yellows>%s<color>: %s", szName_Male, szName_Female, szBless) 
AddGlobalNews(szMsg) 
Msg2SubWorld(szMsg) 
for i=1, nTeamSize do 
local nPlayerIndex = GetTeamMember(i) 
doFunByPlayer(nPlayerIndex, %_AddRoseCardExp, nItemIndex) 
end 





end
