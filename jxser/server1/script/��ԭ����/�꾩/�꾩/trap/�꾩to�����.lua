--中原北区 汴京to临渝关.lua	
--Trap ID：中原北区 49

function main(sel)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H穣 gia nh藀 m玭 ph秈  ti誴 t鬰 b玭 t萿 !!!");
		return
	end
	SetFightState(1);		
	NewWorld(319, 1612, 3612);
	AddTermini(196);
end;

