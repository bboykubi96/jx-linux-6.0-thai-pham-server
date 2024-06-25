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

function main(sel)
	if GetTask(12) == 410*256 and GetLevel() >= 50 then
		Talk(6,"nvxuatsu8","Ng­êi thÇn bİ: t¹i sao ng­¬i l¹i ®Õn muén nh­ vËy?","H¹ søc: T«i võa míi rêi ®i, ë héi tr­êng sÏ ph¸t hiÖn ra r»ng t«i ®· lµm ®iÒu ®ã, t«i kh«ng ph¶i sèng lo sî mçi ngµy, v× thÕ t«i trë thµnh mét con ma.","Ng­êi thÇn bİ: å!Xong ch­a?","H¹ Biªn: §ã lµ ®iÒu ®­¬ng nhiªn. Ta ®· cè t×nh ®Ó hµn lÊy ®­îc bøc th­ gia ch­a ®èt tõ ta, dÉn anh ta ®Õn BÕn Tµu phİa §«ng ®Ó ®uæi theo ta. TÊn c«ng h¾n, thay quÇn ¸o vµ hñy diÖn m¹o, ng­êi trong ®­êng sÏ nghÜ r»ng ta ®· chÕt, vµ quy cho h¾n ®¸nh c¾p bøc th­, haha.","Ng­êi thÇn bİ: Ai?")
	end
end;

function nvxuatsu8() 
SetTask(12,420*256)
Msg2Player("§¸nh B¹i ng­êi thÇn bİ.")  
end 