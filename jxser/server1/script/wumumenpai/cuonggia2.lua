IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath() 
	if GetTask(13) == 10*256 and GetLevel() >= 50 then
		SetTask(13,20*256)
		NewWorld(989, 1554, 3065)
		SetFightState(0)
		Talk(1,"","Luy�n V� Tr�ng Gi�o Quan: ng��i �� v��t qua kh�o nghi�m, h�y quay v� g�p H�n Th��ng ��c.")
	end
end 