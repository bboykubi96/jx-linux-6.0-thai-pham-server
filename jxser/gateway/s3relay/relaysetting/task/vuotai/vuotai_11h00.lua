function TaskShedule()
	TaskName( "Thach Thuc Thoi Gian" );
	TaskInterval(24*60);
	TaskTime(11, 0);
	TaskCountLimit(0);	
	OutputMsg("====================  VUOT AI KHIEU CHIEN THOI GIAN GIO LE BAT DAU========================")
end

function TaskContent()
	OutputMsg("VUOT AI KHIEU CHIEN THOI GIAN DANG GHI DANH");
	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");
	szMsg = "'Th�ch th�c th�i gian' �� ��n gi� b�o danh. ��i tr��ng nhanh ch�n ��n Nhi�p Th� Tr�n �� ghi danh th�i gian ghi danh l� 10 ph�t."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
