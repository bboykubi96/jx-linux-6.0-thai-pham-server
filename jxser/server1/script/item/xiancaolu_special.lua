--ÌØÐ§ÏÉ²ÝÂ¶
--8Ð¡Ê±¾­ÑéË«±¶
IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â


function main()
	if GetLevel()  < 60 then
		Say("CÊp ®é nhá h¬n 60, kh«ng thÓ sö dông Tiªn Th¶o Lé")
		return 1
	end

	if GetSkillState(440) == 1 then 
		Say("C¸c h¹ vÉn thêi gian tõ hiÖu øng Tiªn th¶o lé, kh«ngthÓ dïng nhiÒu b×nh cïng lóc xin h·y chê ®îi cho ®Õn hÕt t¸c dông.!", 0, "Ta biÕt råi!/OnCancel")
		return 1
	else
		AddSkillState(440, 1, 1, 64800 * 8, 1);
		return 0
	end
end;

function OnCancel() return end