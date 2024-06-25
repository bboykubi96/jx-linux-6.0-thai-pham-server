Include("\\script\\changefeature\\equip_tryon.lua")

local tb = tbEquipTryOn:NewTemplate("Vò khÝ")



tb.szFile_Male = "\\settings\\changefeature\\melee_weapon.txt"
tb.szFile_Female = "\\settings\\changefeature\\melee_weapon.txt"


function tb:TryOn(nNo)
	self:ChangeFeature(-1, -1,nNo,-1)
end

function tb:CheckEquip(nItemIndex,nGenre,nDetail,nParti)
	
	local nG, nD,nP = GetItemProp(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	-- if nQuality ~= 1 and nQuality ~= 4 then
		-- Talk(1, "", "§©y kh«ng ph¶i lµ trang bÞ hoµng kim.")
		-- return
	-- end
	if nG~=nGenre or nD~=nDetail or (nParti~=-1 and nP~=nParti) then
		Talk(1, "", "Kh«ng ®óng trang bÞ xin kiÓm tra l¹i")
		return	
	end
	-- if nG ~= 0 then
		-- Talk(1, "", "§©y kh«ng ph¶i lµ trang bÞ")
		-- return 
	-- end
	-- if nD ~= 0 then
		-- Talk(1, "", "Trang bÞ nµy kh«ng ph¶i lµ vò khÝ cËn chiÕn.")
		-- return 
	-- end
	return 1
end
tb:LoadFile()