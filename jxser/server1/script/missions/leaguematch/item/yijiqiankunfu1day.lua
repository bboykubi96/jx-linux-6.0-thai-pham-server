
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	if PlayerFunLib:CheckLevel(80,"default",">=") ~= 1 then
		return 1
	end
			local checkcankhon = GetSkillState(980)
		local checkcankhon1 = GetSkillState(966)
		if checkcankhon >= 1 and checkcankhon1 >= 1then Say("B�n �ang c� C�n Kh�n Song Tuy�t B�i R�i,\n Kh�ng n�n tham lam") return 1 end
	PlayerFunLib:AddSkillState(966,1,3,18*60*60*24,1)
	PlayerFunLib:AddSkillState(979,1,3,18*60*60*24,1)
	WriteLog(date("%Y%m%d %H%M%S").."\t".."S� d�ng Nh�t K� C�n Kh�n Ph�".."\t".. GetAccount().."\t"..GetName())
end