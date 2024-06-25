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
---------------------------------------------------------------
function main() 
dofile("script/wumumenpai/thunhue.lua")
	if (GetTask(12) == 40*256) and GetLevel() >= 20  then
		Talk(13,"nv2x",""..GetName()..": Hai ng­êi ®ang tranh c·i vÒ viÖc g× vËy?","Th­ NhuÖ: T«i cã mét thanh kiÕm cùc k× s¾c bÐn vµ cã thÓ ph¸ vì mäi thø trªn ®åi nµy.","Th­ NhuÖ: T«i cã mét chiÕc khiªn cùc k× hiÕm cã, kh¶ n¨ng phßng thñ tuyÖt vêi, cã thÓ chèng l¹i mäi lo¹i vò khÝ.","Th­ NhuÖ: Thanh kiÕm cña t«i lµ mét b¶o vËt vµ chiÕc khiªn bÞ vì tr«ng thËt gi¶ t¹o.","Th­ NhuÖ: Ví vÈn! G­¬ng cña ng­¬i ®· r¸ch n¸t, l¸ ch¾n cña ta kh«ng sî ng­¬i.",""..GetName()..": T«i ®· hiÓu, kh«ng biÕt hai vÞ cã thÓ cho t«i m­în 2 mãn binh khÝ ®ã tham kh¶o ®­îc kh«ng.","Th­ NhuÖ: TÊt nhiªn.","Th­ NhuÖ: Ng­¬i h·y xem cÈn thËn.","Sau khi kiÓm tra, nhËn ra hai lo¹i binh khÝ nµy ®Òu lµ vò khÝ b×nh th­êng, t«i kh«ng biÕt ai chÞu tr¸ch nhiÖm cho viÖc nµy.",""..GetName()..": Tèt h¬n hÕt lµ hai vÞ h·y cïng t«i ®Õn diÔn vâ tr­êng ®Ó thi ®Êu, ai th¾ng sÏ chøng tá ng­êi ®ã ®óng.","Th­ NhuÖ: ®­îc ta ®i ngay.","Th­ NhuÖ: L­ìi kiÕm còa ta kh«ng cã m¾t, ta kh«ng chÞu tr¸ch nhiÖm khi lµm tæn th­¬ng ng­êi.") 
	elseif (GetTask(12) == 50*256) and GetLevel() >= 20 then
		Talk(1,"","Th­ NhuÖ: Chóng t«i ®ang ®îi b¹n ë s©n tËp")
	elseif GetTask(12) == 70*256 and GetLevel() >= 20 then
		Talk(3,"nv2x4","Th­ NhuÖ: T¹i sao l¹i nh­ vËy, t¹i sao kiÕm vµ khiªn cña chóng ta l¹i kh«ng chèng chÞu næi?","Th­ NhuÖ: Ng­¬i cã thÓ t×m thÊy th­¬ng gia giái ®i l¹i vµ b¸n hµng kh«ng?")	
	elseif GetTask(12) == 100*256 and GetLevel() >= 20 then
		Talk(1,"nv2x6",""..GetName()..": Du TÈu M¹i Hãa Lang ®· bÞ ta d¹y cho mét bµi häc, kh«ng d¸m lõa huynh n÷a ®©u","Th­ NhuÖ: thËt c¸m ¬n c¸c h¹, ®©y lµ cuèn bÝ kiÕp vâ c«ng mµ ta häc ®­îc, c¸c h¹ ®em vÒ luyÖn tËp, sau nµy sÏ rÊt cã Ých.")	
	else
		Talk(1,"","Th­ NhuÖ: H·y th­êng xuyªn gÆp ta.")
	end
end

function nv2x() 
SetTask(12,50*256)
Msg2Player("§Õn DiÔn Vâ Tr­êng (194/191) tØ thÝ vâ c«ng.") 
end 

function nv2x4() 
local nIndex2 = AddNpc(107,1,SubWorldID2Idx(179),1875*32,2634*32,0,"Th­¬ng Gia")
SetNpcScript(nIndex2,"\\script\\wumumenpai\\dutaumaihoalang.lua")
AddTimer(590* 18, "OnTimeout", nIndex2)
NewWorld(179, 1873, 2636)
SetFightState(1) 
SetTask(12,80*256)
Msg2Player("§Õn La Tiªu S¬n (233/164), T×m th­¬ng gia.")
SetTimer(20230,1)
end 

function nv2x6()
SetTask(12,110*256)
AddMagic(1851)
SetRank(92)
Msg2Player("Hoµn thµnh nhiÖm vô 20 Th­ NhuÖ.")
end

function OnTimeout(nIndex)
DelNpc(nIndex);
end