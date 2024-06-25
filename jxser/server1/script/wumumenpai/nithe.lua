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
dofile("script/wumumenpai/nithe.lua")
	if (GetTask(12) == 400*256 and GetLevel() >= 50)  then
		Talk(3,"nvxuatsu7","Ni ThÓ: Nh×n kh«n mÆt th× cã vÎ lµ H¹...thËt kh«ng may t«i kh«ng nh×n râ","Ni ThÓ: Nh×n qua Ni ThÓ t×nh cê t×m thÊy manh mèi ®Ó l¹i, nã chØ ®Õn Long Cung §éng.")
	else
		Talk(1,"","Ni ThÓ:... ...")
	end
end

function nvxuatsu7() 
SetTask(12,410*256) 
Msg2Player("§Õn Long Cung §éng (197/187) T×m Vò Môc Di Th­.")  
end 