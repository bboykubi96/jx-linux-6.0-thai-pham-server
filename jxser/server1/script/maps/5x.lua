Include("\\script\\maps\\newworldscript_default.lua")



function OnNewWorld(szParam)
--local checkexp = GetExpPercent()
if GetLevel() < 40 then
Say("C�p �� th�p h�n 40 kh�ng th� di chuy�n l�n map 5x")
UseTownPortal();
--return 1
end
local checkexp = GetExpPercent()
if checkexp < -50 then
Say("Hi�n t�i �i�m kinh nghi�m v��t -50% kh�ng th� di chuy�n l�n map")
UseTownPortal();
end
--if checkexp < -50 then
--Say("Hi�n t�i �i�m kinh nghi�m v��t -50% kh�ng th� di chuy�n l�n map")
--NewWorld (53,1600,3200)
--return 1
RemoveSkillState(1525);
	ForbidChangePK(0);	-- khong duoc doi pk
	SetFightState(1)
	OnNewWorldDefault(szParam)
end



