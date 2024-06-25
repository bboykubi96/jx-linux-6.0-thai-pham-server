Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")


function main()
--dofile("script\item\tuitichluytongkim.lua")
nt_setTask(747, floor(nt_getTask(747) + 3000));
Say("ChÛc Mıng Bπn ß∑ NhÀn ß≠Óc 3000 ßi”m T›ch LÚy TËng Kim, ßi”m T›ch LÚy Hi÷n Tπi Lµ "..nt_getTask(747).."",0)
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end