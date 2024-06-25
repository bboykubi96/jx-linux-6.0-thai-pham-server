Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam)
	SetFightState(1)
	Msg2Player("NhËn tr¹ng th¸i chÕt tù ®éng vÒ thµnh....")
	SetDeathScript("\\script\\maps\\ondeath.lua")
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
	SetDeathScript("")
	TM_StopTimer(116);
	OnLeaveWorldDefault(szParam)
end
