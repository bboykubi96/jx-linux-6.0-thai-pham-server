Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	PlayerFunLib:AddSkillState(980,2,3,10886400,1)--18*60*60*24*7
	PlayerFunLib:AddSkillState(966,2,3,10886400,1)--18*60*60*24*7
	WriteLog(date("%Y%m%d %H%M%S").."\t".."S� d�ng C�n Kh�n Song Tuy�t B�i".."\t".. GetAccount().."\t"..GetName())
end

