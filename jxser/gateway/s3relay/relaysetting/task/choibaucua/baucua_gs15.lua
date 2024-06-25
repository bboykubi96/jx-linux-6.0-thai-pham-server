Include("\\script\\gb_taskfuncs.lua")

	function TaskShedule()
	TaskName( "Bau Cua")
	TaskTime(22, 00);
	TaskInterval(1440)
	TaskCountLimit(0)
	OutputMsg( "====================> BAUCUA 15:00 <====================");
	end
	function TaskContent()
	local strExecute = format( "dw BauCuaKhoiDong()");
	GlobalExecute(strExecute);
	szMsg = "<color=pink>Banh X¸c §¹i Nh©n<color=cyan> ®· më cöa sßng bµi BÇu Cua c¸c d©n ch¬i cã m¸u ®á ®en h·y nhanh tay ®Õn dù l¾c bÇu cua."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "Banh X¸c §¹i Nh©n<color=cyan> ®· më cöa sßng bµi BÇu Cua c¸c d©n ch¬i cã m¸u ®á ®en h·y nhanh tay ®Õn dù l¾c bÇu cua.."))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end
	function GameSvrConnected(dwGameSvrIP)
	end
	function GameSvrReady(dwGameSvrIP)
	end


