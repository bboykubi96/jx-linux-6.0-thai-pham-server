Include("\\script\\missions\\bw\\bwhead.lua");

function main()
	Say("C�c h� mu�n g� . . . ",2,"Ta l� ��i tr��ng, ta mu�n bi�t th� t� thi ��u./OnShowKey","Kh�ng c�n/no")
end;

function yes()
	LeaveGame();
	NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
end

function no()
end
