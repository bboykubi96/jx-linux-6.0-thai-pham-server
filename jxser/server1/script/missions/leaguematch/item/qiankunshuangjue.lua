Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	PlayerFunLib:AddSkillState(980,2,3,10886400,1)--18*60*60*24*7
	PlayerFunLib:AddSkillState(966,2,3,10886400,1)--18*60*60*24*7
	WriteLog(date("%Y%m%d %H%M%S").."\t".."Sö dông Cµn Kh«n Song TuyÖt Béi".."\t".. GetAccount().."\t"..GetName())
end

