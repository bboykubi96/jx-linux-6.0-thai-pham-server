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
------------------------------------------
function main(sel)
dofile("script/wumumenpai/nhacnhinuong.lua")
	if (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then
		Say("Nh¹c NhŞ N­¬ng: Cã rÊt nhiÒu trang bŞ quı ë ®©y, ng­¬i muèn chän c¸i nµo?.", 2,"Giao dŞch/yes", "Ta cã chuyÖn kh¸c/no");
	else
		Talk(1,"","Nh¹c NhŞ N­¬ng: Ch­ëng m«n cã dÆn r»ng trang bŞ chØ b¸n cho ®ång m«n bæn ph¸i.")
	end;
end

function yes()
Sale(58) 			
end

function no()
end
