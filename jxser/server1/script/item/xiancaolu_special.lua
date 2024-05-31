--ÌØÐ§ÏÉ²ÝÂ¶
--8Ð¡Ê±¾­ÑéË«±¶
IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main(nItemIndex)
--dofile("script/item/xiancaolu_special.lua")

	--do Say("HiÖn t¹i ch­a thÓ sö dông vËt phÈm nµy.") return end

	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P == 1181 then
		--Say("VËt PhÈm Lçi, §· Huû Bá")
		--return 1
	end
if GetSkillState(440)>=1 then
Say("Trªn ng­êi ®· cã Tiªn Th¶o Lé, Kh«ng thÓ sö dông thªm.")
		return 1
end
--	AddSkillState(440, 1, 1, 64800 * 8);
	PlayerFunLib:AddSkillState(440,2,3,64800*8,1)
end;