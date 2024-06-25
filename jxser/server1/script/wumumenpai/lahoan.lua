IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 
	if (GetTask(12) >= 280*256 and GetTask(12) <= 310*256 and GetLevel() >= 40) then
		local nIndex = AddNpc(1409,1,SubWorldID2Idx(101),1452*32,3273*32,0,"H푖 Y Nh쯰")
		SetNpcScript(nIndex,"\\script\\wumumenpai\\hacynhan.lua")
		local nIndex = AddNpc(1409,1,SubWorldID2Idx(101),1446*32,3273*32,0,"H푖 Y Nh쯰")
		SetNpcScript(nIndex,"\\script\\wumumenpai\\hacynhan.lua")
		local nIndex = AddNpc(1409,1,SubWorldID2Idx(101),1446*32,3281*32,0,"H푖 Y Nh쯰")
		SetNpcScript(nIndex,"\\script\\wumumenpai\\hacynhan.lua")
		local nIndex = AddNpc(1409,1,SubWorldID2Idx(101),1455*32,3278*32,0,"H푖 Y Nh쯰")
		SetNpcScript(nIndex,"\\script\\wumumenpai\\hacynhan.lua")
		AddTimer(590* 18, "OnTimeout", nIndex)
	end
end 

function OnTimeout(nIndex)
DelNpc(nIndex);
end