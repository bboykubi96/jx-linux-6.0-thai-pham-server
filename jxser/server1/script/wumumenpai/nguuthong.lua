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
---------------------------------------------------------
function main() 
dofile("script/wumumenpai/nguuthong.lua")
	if (GetTask(12) == 330*256 and GetLevel() >= 50)  then
		Talk(3,"nv5x1","Ng­u Th«ng: Ng­¬i muèn häc thªm vâ c«ng? H·y ®¸nh víi ta 1 trËn, ta sÏ d¹y cho ng­¬i",""..GetName()..": ®õng lµm t«i xÊu hæ, lµm sao t«i cã thÓ ®¸nh th¾ng, vâ c«ng cña ngµi thËt lµ th©m thóy.")
	elseif (GetTask(12) == 350*256 and GetLevel() >= 50) then
		Talk(3,"nv5x4",""..GetName()..": T«i ®· thµnh c«ng v­ît qua bµi kiÓm tra!","Ng­u Th«ng: kü n¨ng cña ng­¬i còng kh«ng tåi, h·y luyÖn tËp kÜ n¨ng nµy ®Ó n©ng cao vâ c«ng!")
	else
		Talk(1,"","Ng­u Th«ng: NÕu xuèng nói gÆp khã kh¨n, h·y kªu tªn ta, ®¶m b¶o nh÷ng ng­êi ®ã sÏ kh«ng d¸m ®éng ®Õn ng­¬i")
	end
end

function nv5x1() 
Describe("Ng­u Th«ng: Ng­¬i thËt qu¸ lêi, ta sÏ ®îi ng­¬i ta s©n tØ vâ",2,"§­îc råi, t«i sÏ ®Õn ®ã/nv5x2","Ta cã viÖc kh¸c/no")
end 

function nv5x2() 
SetTask(12,340*256) 
Msg2Player("§Õn s©n tØ vâ (194,191).")  
end 

function nv5x4() 
SetTask(12,360*256)
SetRank(95) AddMagic(1859)
Msg2Player("Hoµn thµnh nhiÖm 50 Ng­u Th«ng.")  
end 