--ÌØĞ§ÏÉ²İÂ¶
--8Ğ¡Ê±¾­ÑéË«±¶
IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â
Include("\\script\\global\\g7vn\\g7configall.lua")
function main()
--dofile("script/item/xiancaolu_special.lua")

	--do Say("HiÖn t¹i ch­a thÓ sö dông vËt phÈm nµy.") return end

	
	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ sö dông Tiªn Th¶o Lé")
		return 1
	end

	AddSkillState(440, 1, 1, 64800 * 8);
end;