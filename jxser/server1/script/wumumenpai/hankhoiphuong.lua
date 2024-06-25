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
---------------------------------------
function main() 
dofile("script/wumumenpai/hankhoiphuong.lua")
	if (GetTask(12) == 360*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu1","Hµn Khëi Ph­îng: S­ ®Ö, S­ ®Ö",""..GetName()..": S­ huynh cÇn ta gióp g× kh«ng?","Hµn Khëi Ph­îng: Hoµn Nhan Hång LiÖt cã t©m ®ia bÊt chİnh, ®· ®Ó ı ®Õn bæn ®­êng chİ b¶o Vò Môc Di Th­, l·o tÆc th­êng xuyªn ph¸i ng­êi ®Õn trém",""..GetName()..": Bøc th­ nµy do t­íng qu©n Nh¹c Phi viÕt ra, liÖu cã ph¶i Kim Nh©n lÊy ®i kh«ng?")
	elseif (GetTask(12) == 380*256 and GetLevel() >= 50) then
		Talk(3,"nvxuatsu4",""..GetName()..": T«i kh«ng t×m thÊy Hµn s­ huynh, nh­ng t«i t×m thÊy 1 İt m¶nh giÊy bŞ ®èt cßn sãt l¹i, s­ huynh h·y xem qua","Hµn Khëi Ph­îng: nÕu gÆp ®­îc Kim Nh©n, nhÊt ®Şnh s­ thóc ta sÏ b¨m h¾n thµnh tr¨m m¶nh, ®Ó an ñi dong linh ®¹i ca ta")
	else
		Talk(1,"","Hµn Khëi Ph­îng: NÕu gÆp Kim Nh©n, nhÊt ®Şnh ph¶i giÕt chÕt chóng ®Ó an ñi vong linh cña anh ta trªn trêi.")
	end
end

function nvxuatsu1() 
Describe("Hµn Khëi Ph­îng: Nãi ®óng l¾m, cho nªn ta vµ hµn lªn Long s­ huyÒn thay phiªn nhau canh g¸c ë ®©y c¶ ngµy lÉn ®ªm. H«m nay ®Õn ®Õn phiªn h¾n lªn Long s­ thóc, ta tİnh t×nh nãng n¶y, h¾n vÉn ch­a tíi, ta kh«ng thÓ rêi ®i, ng­¬i h·y gióp ta t×m Long s­ thóc ®i",2,"§­îc råi, t«i sÏ ®Õn ®ã/nvxuatsu2","Ta cã viÖc kh¸c/no")
end 

function nvxuatsu2() 
SetTask(12,370*256)
Msg2Player("§Õn (196/200) t×m Manh Mèi.")  
end 

function nvxuatsu4() 
SetTask(12,390*256)
ConsumeEquiproomItem(1,6,1,4340,-1)
Msg2Player("§Õn gÆp Ch­ëng M«n Nh¹c L«i (211/190) th«ng b¸o t×nh h×nh.")  
end 