Include("\\script\\misc\\rank\\rank.lua")

function TaskShedule()
	TaskName("Bao tri server hang ngay 09h00");
	TaskInterval(1);
	TaskTime( 08, 55 );
	TaskCountLimit( 0 );
	OutputMsg("Bao tri server hang ngay 09h00");
end

function TaskContent()
	ThongBaoBaoTri()
end

thoigianbt = 5

function ThongBaoBaoTri()
	if tonumber(thoigianbt) > 0 then
		str = "Server chu�n b� b�o tr� sau "..thoigianbt.." ph�t n�a, th�i gian d� ki�n trong v�ng 30 ph�t";
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", str));
		thoigianbt = thoigianbt - 1
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end