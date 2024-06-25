Include("\\script\\lib\\remoteexc.lua")

function TaskShedule()
	TaskName( "TieuBangChien" );
	TaskInterval(24 * 60);
	TaskTime( 20, 00 );
	TaskCountLimit(0);
	OutputMsg("===========================================================================================================");
	OutputMsg("                             Tieu Bang Chien - Chien truong bang hoi" );
	OutputMsg("                                   Bat dau vao 20h hang ngay" );
end

function TaskContent()
	local TimeForPreparing = 10
	RemoteExc("\\script\\update_feature\\tieubangchien\\m_mission.lua", "m_TieuBangChien:m_RemoteStart", {TimeForPreparing});
	OutputMsg(" =========================> Tieu Bang Chien 20 : 00 Bat dau")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end