IL("TITLE"); -- quan li title


function main()
	dofile("script/item/lessmoneygift.lua")
	local ITEM_TO_CHECK = GetTaskTemp(168)
	if ITEM_TO_CHECK==0 then
		ITEM_TO_CHECK = 4
	end
	local nHelm, nArmor, nWeapon, nHorse, nMaskNPC = GetPlayerFeature(PlayerIndex)
	local nSettingsIdx = -1 - GetSex()
	local nChange = 0
	local step = -1
	local item_type = ""
	if ITEM_TO_CHECK == 4 then
		nChange = nHorse + step
		nHorse = nChange
		item_type = "ngùa"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse)
	elseif ITEM_TO_CHECK == 3 then
		nChange = nWeapon + step
		nWeapon = nChange	
		item_type = "vò khÝ"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse)
	elseif ITEM_TO_CHECK == 2 then
		nChange = nArmor + step
		nArmor = nChange	
		item_type = "¸o"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse)
	elseif ITEM_TO_CHECK == 1 then
		nChange = nHelm + step
		nHelm = nChange	
		item_type = "mò"
		ChangeOwnFeature(0, -1, nSettingsIdx,  nHelm, nArmor, nWeapon, nHorse)
	end
	Msg2Player("ID "..item_type..": <color=yellow>"..nChange)
	return 1
end
