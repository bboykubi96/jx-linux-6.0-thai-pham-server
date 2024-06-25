Include("\\script\\maps\\newworldscript_default.lua")
--Include("\\script\\fwcloud\\limitactivity\\tb_limitactivity.lua")
MAX_COUNT_PC = 2
tbActivityHWUIDList = {

}



function OnNewWorld(szParam)
	OnNewWorldDefault(szParam)
--print("join map")
end

function OnLeaveWorld(szParam)
	OnLeaveWorldDefault(szParam)
--print("out map")
--remove_player()

end