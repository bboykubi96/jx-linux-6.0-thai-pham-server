tbCD_MAP = {209, 210, 211,333,396.397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415}	
function main(nItemIndex) 
-- dofile("script/item/ib_shop/gongjizuliwan.lua")
-- if (GetLevel() > 5) then
-- Say("Kh�ng th� s� d�ng c�ng k�ch.....................")
-- return 1
-- end;
	local nSubWorldID = GetWorldPos();
	local nWeekday = tonumber(date("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))	
		-- if (nSubWorldID == 44 or nSubWorldID == 379 or nSubWorldID == 325 or nSubWorldID == 384 or nSubWorldID == 380 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 175 or ( nSubWorldID >= 396 and  nSubWorldID <= 415 ) )then 
		if (nSubWorldID == 44 or nSubWorldID == 379 or nSubWorldID == 325 or nSubWorldID == 384 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 175 or ( nSubWorldID >= 396 and  nSubWorldID <= 415 ) )then 
			Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng.");
			return 1
		end
		local nMapId,x,y  = GetWorldPos();
		-------------------
		for i = 0, getn(tbCD_MAP) do			
			if (nMapId == tbCD_MAP[i]) then
			Msg2Player("Map n�y Kh�ng S� D�ng ���c");
			return 1	
			end
		end
print("S� d�ng ") 
local nTime = 60*18*5
local tbSkill = { 1120,261,258,260,} 

for i=1,getn(tbSkill) do 
AddSkillState(tbSkill[i], 1, 1, nTime,1) 
end 

Msg2Player("Ng�i �� s� d�ng " .. " t�ch c�ng tr� l�c ho�n "..nSubWorldID.."") 
return 0 
end
