Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")


function main()
--dofile("script\item\huyetchienlebaotieu.lua")
nt_setTask(3002, floor(nt_getTask(3002) + 1000));
Say("Ch¨®c m?ng b1n ?¡¤ nh?n ?-?c 1000 ?i¨®m Huy?t Chi?n, ¡ìi¨®m tYch l¨°y hi?n t1i l¦Ì "..nt_getTask(3002).."",0)
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end