-------------------------------------------------***Edit*By*Heart*Doldly***-------------------------------------------------------
function TaskShedule()
	TaskName("PHONG LANG DO")
	TaskTime(0, 0);
	TaskInterval(1440)
	TaskCountLimit(0)
	OutputMsg("======================================================================================================")
	OutputMsg("          *** CUOC DUA THUYEN PHONG LANG DO - HOAT DONG TIEU DIET THUY TAC DAU LINH ***               ")
	OutputMsg("              0h:00 - 1h:00 - 2h:00 - 3h:00 - 4h:00 - 5h:00 - 6h:00 -7h:00 - 8h:00                    ")
	OutputMsg("              9h:00 - 11h:00 - 13h:00 - 15h:00 - 17h:00 - 19h:00 - 21h:00 - 23h:00                    ")
	OutputMsg("        *** CUOC DUA THUYEN PHONG LANG DO - HOAT DONG TIEU DIET THUY TAC DAI DAU LINH ***             ")
	OutputMsg("                      10h:00 - 14h:00 - 16h:00 - 18h:00 - 20h:00 - 22h:00                             ")
end

function TaskContent()
    GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end