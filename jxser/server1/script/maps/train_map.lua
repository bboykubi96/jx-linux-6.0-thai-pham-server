Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam)
	SetFightState(1)
	Msg2Player("Nh�n tr�ng th�i ch�t t� ��ng v� th�nh....")
	SetDeathScript("\\script\\maps\\ondeath.lua")
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
	SetDeathScript("")
	TM_StopTimer(116);
	OnLeaveWorldDefault(szParam)
end
