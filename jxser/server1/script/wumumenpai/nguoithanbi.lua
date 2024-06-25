IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 
	if GetTask(12) == 420*256 and GetLevel() >= 50 then
		SetTask(12,430*256)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,4341,1,0,0},nCount=1,nBindState = -2},"Vò Môc Di Th­")
		Msg2Player("LÊy ®­îc vò Môc Di Th­, quay vÒ gÆp Ch­ëng M«n Nh¹c L«i.")  
	end
end 
