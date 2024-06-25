-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##npc_enter.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-05-03 16:50:24 

-- script viet hoa By http://tranhba.com  ====================================================== 
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\log.lua")

function bairen_dialog() 

local tbOpt = {}; 
tinsert(tbOpt, {"Ta muèn ®i hoµng thµnh ti l«i ®µi ",onEnterHunbredArena}); 
tinsert(tbOpt, {" liªn quan tíi hoµng thµnh ti l«i ®µi ",onHelpHunbredArena}) 
tinsert(tbOpt, {"KÕt thóc ®èi tho¹i ", oncancel}) 
CreateNewSayEx("<npc> hoµng thµnh ti l«i ®µi cho giang hå cao thñ mét næi tiÕng thiªn h¹ ®Ých c¬ héi . nÕu nh­ lµm ®µi chñ liªn tôc ®¸nh b¹i ng­êi khiªu chiÕn sÏ næi danh thiªn h¹ , thËm chÝ cã thÓ trùc tiÕp ®Õn hoµng thµnh ra søc v× n­íc . ", tbOpt) 
end 

function onEnterHunbredArena() 

	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:NpcEnter")	
tbLog:PlayerActionLog("TinhNangKey","BaoDanhBachNhanLoiDai") 
end 

function onHelpHunbredArena() 
local tbOpt = {}; 
tinsert(tbOpt, {"Ta muèn ®i hoµng thµnh ti l«i ®µi ",onEnterHunbredArena}); 
tinsert(tbOpt, {"KÕt thóc ®èi tho¹i ", oncancel}); 

CreateNewSayEx("<npc> hoµng thµnh ti l«i ®µi {{ ®em víi mçi ngµy 12:00 khai khëi , ®Õn 0:00 kÕt thóc }}. <enter> hoµng thµnh ti l«i ®µi t¹m thêi thiÕt cã 5 c¸ l«i ®µi , trong ®ã {{ l«i ®µi 1 }} lµ chñ l«i ®µi , chØ cã ë n¬i nµy trªn l«i ®µi lÊy ®­îc th¾ng lîi míi cã thÓ lÊy ®­îc vâ l©m nh©n sÜ ®Ých thõa nhËn ." 
.." mçi lÇn lªn ®µi lµ {{3 phót }}, nÕu nh­ trong lóc ë chç nµy song ph­¬ng bÊt ph©n th¾ng phô , ®Õn lóc ®ã {{ ®em ®i bÞ giÕt th­¬ng gi¸c khinh ®Ých nhÊt ph­¬ng }} lµm ®µi chñ , tiÕp tôc tiÕp nhËn nh÷ng kh¸c cao thñ khiªu chiÕn ." 
.." nÕu nh­ kh«ng cã cao thñ d¸m khiªu chiÕn ®µi chñ , hoµng thµnh ti sÏ ph¸i ra thËp ®¹i m«n ph¸i cao thñ lªn ®µi khiªu chiÕn , ®µi chñ muèn ë {{ 3 phót }} bªn trong ®¸nh b¹i , nÕu kh«ng còng sÏ bÞ nhËn ®Þnh v× thÊt b¹i " 
.."<enter> chó ý # muèn dïng khinh c«ng ch¹y lªn l«i ®µi tû vâ ", 
tbOpt); 
end 
