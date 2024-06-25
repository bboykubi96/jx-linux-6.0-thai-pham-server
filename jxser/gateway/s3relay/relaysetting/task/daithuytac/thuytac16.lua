function TaskShedule()
	TaskName("vantieubanghoi")
	TaskInterval(24 * 60)
	TaskTime(16,30)
	TaskCountLimit(0)
	OutputMsg("=====>thuytac16")
end

function TaskContent()
	RemoteExecute("\\script\\missions\\fengling_ferry\\boss.lua",	"thuytacdaulinh", 0)
	OutputMsg("=====> thuytac16")
	zMsg2SubWorld  = "<color=yellow>Nghe n„i <color=green>ßπi thÒy t∆c Æ«u l‹nh<color=yellow> Æ∑ xu t hi÷n tπi b’n thuy“n 1,ai gi’t Æ≠Óc hæn sœ c„ c¨ hÈi nh∆t Æ≠Óc nhi“u vÀt ph»m qu˝."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	szMsg = "<color=yellow>Nghe n„i <color=green>ßπi thÒy t∆c Æ«u l‹nh<color=yellow> Æ∑ xu t hi÷n tπi b’n thuy“n 1,ai gi’t Æ≠Óc hæn sœ c„ c¨ hÈi nh∆t Æ≠Óc nhi“u vÀt ph»m qu˝."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end


	function GameSvrConnected(dwGameSvrIP)
	end
	function GameSvrReady(dwGameSvrIP)
	end