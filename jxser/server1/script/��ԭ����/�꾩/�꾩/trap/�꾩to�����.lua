--��ԭ���� �꾩to�����.lua	
--Trap ID����ԭ���� 49

function main(sel)
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end
	SetFightState(1);		
	NewWorld(319, 1612, 3612);
	AddTermini(196);
end;

