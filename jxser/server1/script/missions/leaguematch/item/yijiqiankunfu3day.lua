
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	local th = GetSkillState(979)
	if th >= 1 then Say("B�n �ang c� Nh�t K� r�i, ko n�n �n th�m") 
	return 
	end
			local checkcankhon = GetSkillState(980)
		local checkcankhon1 = GetSkillState(966)
		if checkcankhon >= 1 and checkcankhon1 >= 1then Say("B�n �ang c� C�n Kh�n Song Tuy�t B�i R�i,\n Kh�ng n�n tham lam") return 1 end
	if PlayerFunLib:CheckLevel(80,"default",">=") ~= 1 then
		return 1
	end
	PlayerFunLib:AddSkillState(966,1,3,18*60*60*24*3,1)
	PlayerFunLib:AddSkillState(979,1,3,18*60*60*24*3,1)
	WriteLog(date("%Y%m%d %H%M%S").."\t".."S� d�ng Nh�t K� C�n Kh�n Ph�".."\t".. GetAccount().."\t"..GetName())
end