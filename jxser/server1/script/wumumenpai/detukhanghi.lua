--Edit by Youtube PGaming--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\basic.lua") 

function main()
	if GetTask(14) == 70*256 then
		Talk(6,"",""..GetName()..": Qu©n Kim thËt ®¸ng ghÐt, l¹i d¸m xem th­êng m«n ph¸i ta!","§Ö Tö Kh¶ Nghi: h¾n ë ®©u, ®Ó ta giÕt h¾n, thËt khã mµ bá qua nçi hËn nµy.",""..GetName()..": Ta hiÓu c¶m gi¸c cña ng­¬i, nh­ng mäi chuyÖn ®Òu ph¶i nghe theo sù chØ ®¹o cña Ch­ëng M«n.","§Ö tö kh¶ nghi: ®óng vËy, ta lµ Lç B×nh nÕu Ch­ëng m«n cã lÖnh, h·y cho ta biÕt!",""..GetName()..": tÊt nhiªn råi!")
	end
end;
