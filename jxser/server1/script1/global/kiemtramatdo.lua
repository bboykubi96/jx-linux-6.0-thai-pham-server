Include("\\script\\lib\\awardtemplet.lua")


function KiemTraDo()

end

function GhiLogSetTask()
	if KiemTraDo() == 1 then
		SetTask(1401, 1) -- Bi mat do settak cho nhan lai do
	end
end