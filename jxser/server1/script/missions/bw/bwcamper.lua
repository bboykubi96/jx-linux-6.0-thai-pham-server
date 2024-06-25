Include("\\script\\missions\\bw\\bwhead.lua");

function main()
	Say("C¸c h¹ muèn g× . . . ",2,"Ta lµ ®éi tr­ëng, ta muèn biÕt thø tù thi ®Êu./OnShowKey","Kh«ng cÇn/no")
end;

function yes()
	LeaveGame();
	NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
end

function no()
end
