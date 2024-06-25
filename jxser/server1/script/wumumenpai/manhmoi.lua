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
dofile("script/wumumenpai/manhmoi.lua")
	if (GetTask(12) == 370*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu3","B¹n ®Õn chæ Long s­ huyÒn nh­ng kh«ng thÊy g×. Nh÷ng m¶nh giÊt ch­a ch¸y hÕt khiÕn b¹n chó ı","Bªn trªn cã nh÷ng manh mèi mËp më: Vâ...S¸ch...Tay, nay...§«ng bÕn tµu...®i")
	end
end

function nvxuatsu3() 
SetTask(12,380*256)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4340,1,0,0}, nBindState = -2},"ChØ T­¬ng Tµn PhiÕn",1); 
Msg2Player("Quay l¹i t×m Hµn Khëi Ph­îng.")  
end 