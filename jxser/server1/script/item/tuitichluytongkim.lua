Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")


function main()
--dofile("script\item\tuitichluytongkim.lua")
nt_setTask(747, floor(nt_getTask(747) + 3000));
Say("Ch�c M�ng B�n �� Nh�n ���c 3000 �i�m T�ch L�y T�ng Kim, �i�m T�ch L�y Hi�n T�i L� "..nt_getTask(747).."",0)
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end