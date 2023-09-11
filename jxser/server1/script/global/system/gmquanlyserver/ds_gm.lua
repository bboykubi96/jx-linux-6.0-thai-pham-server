tbAccountGM = 
{ 
	["1234567"] = 
	{ 
		"NamThiªn" 
	}, 
	["123456"] = 
	{ 
		"123456" 
	}, 
}
function CheckAccountGM()
	local szAccount = GetAccount() 
	local szName = GetName() 
	local tbRoleList = tbAccountGM[szAccount] 
	if tbRoleList then 
		for i=1, getn(tbRoleList) do 
			if tbRoleList[i] == szName then 
				return 1
			end 
		end 
	end 
end