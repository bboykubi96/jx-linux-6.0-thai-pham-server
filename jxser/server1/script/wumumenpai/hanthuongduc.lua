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
dofile("script/wumumenpai/hanthuongduc.lua")
	if GetCamp() == 4 and GetLevel() >= 50 and GetTask(13) == 0 then
		Describe("Hµn Th­îng §øc: muèn trë thµnh ®Ö tö giái nhÊt cña bæn ph¸i, ph¶i ®¸nh b¹i ®Ö tö cã tªn tuæi nhÊt. Ng­¬i cã muèn kiÓm tra kh«ng",2,"§­îc ta sÏ ®i ngay/nvkydanhdetu","§Ó ta suy nghÜ l¹i/no")
	elseif GetTask(13) == 20*256 then
		Talk(3,"nvkydanhdetu4",""..GetName()..": Ta ®· v­ît qua kh¶o nghiÖm.","Hµn Th­îng §øc: Ta thùc sù kh«ng nh×n lÇm ng­¬i, b©y giê ng­¬i lµ kı danh ®Ö tö cña bæn m«n, h·y ch¨m chØ luyÖn tËp.")
	else
		Talk(1,"","Hµn Th­îng §øc: Khiªn kh«ng thÓ b¶o vÖ ®­îc b¶n th©n, kiÕm tÊn c«ng vµ giÕt ng­êi v« h×nh.")
	end
end

function nvkydanhdetu() 
SetTask(13,10*256)
Msg2Player("§Õn DiÔn Vâ Tr­êng (194/191) tØ thİ vâ c«ng.") 
end


function nvkydanhdetu4() 
SetTask(13,30*256)
Msg2Player("Hoµn thµnh nhiÖm vô kı danh ®Ö tö. Ng­¬i ®· trë thµnh cao thñ ®Ö nhÊt trong ph¸i Vò hån vµ t¨ng thªm 1 ®iÓm danh tiÕng.") 
AddRepute(1) 
end 