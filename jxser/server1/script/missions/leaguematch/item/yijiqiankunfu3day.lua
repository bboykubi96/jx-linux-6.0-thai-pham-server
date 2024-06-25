
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	local th = GetSkillState(979)
	if th >= 1 then Say("B¹n ®ang cã NhÊt Kû råi, ko nªn ¨n thªm") 
	return 
	end
			local checkcankhon = GetSkillState(980)
		local checkcankhon1 = GetSkillState(966)
		if checkcankhon >= 1 and checkcankhon1 >= 1then Say("B¹n ®ang cã Cµn Kh«n Song TuyÖt Béi Råi,\n Kh«ng nªn tham lam") return 1 end
	if PlayerFunLib:CheckLevel(80,"default",">=") ~= 1 then
		return 1
	end
	PlayerFunLib:AddSkillState(966,1,3,18*60*60*24*3,1)
	PlayerFunLib:AddSkillState(979,1,3,18*60*60*24*3,1)
	WriteLog(date("%Y%m%d %H%M%S").."\t".."Sö dông NhÊt Kû Cµn Kh«n Phï".."\t".. GetAccount().."\t"..GetName())
end