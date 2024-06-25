Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\misc\\eventsys\\type\\map.lua")
Include("\\script\\lib\\awardtemplet.lua")


function OnTimer()
SetPKFlag(2)
NewWorld(1002,1787, 3099)
SetProtectTime(18*15) 
AddSkillState(963, 1, 0, 18*15) 
mautrogiup2()
end


function mautrogiup2()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
	return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end