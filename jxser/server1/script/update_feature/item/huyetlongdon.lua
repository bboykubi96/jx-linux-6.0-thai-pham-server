IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\item\\cuuduong.lua"); nSkillExp = 1000
------------------------------------------
function main()
	if (HaveMagic(IDSKILL1) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha1) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL2) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha2) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL3) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha3) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL4) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha4) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL5) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha5) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL6) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha6) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL7) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha7) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL8) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha8) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL9) >= 1) then
		if (GetTask(DiemTuLuyen) < nDotPha9) then
			SetTask(DiemTuLuyen,GetTask(DiemTuLuyen)+nSkillExp)
			Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc <color=yellow>"..nSkillExp.."<color> §iÓm Tu LuyÖn Kü N¨ng Cöu D­¬ng ThÇn C«ng")
		else
			Talk(1,"","<color=red>§iÓm Tu LuyÖn Cña Ng­¬i §· §¹t Giíi H¹n Råi") return 1
		end
	elseif (HaveMagic(IDSKILL10) >= 1) then
		Talk(1,"","<color=yellow>Kü N¨ng Cöu D­¬ng ThÇn C«ng §· §¹t Giíi H¹n Råi") return 1
	else
		Talk(1,"","<color=red>Ng­¬i Ch­a Häc Kü N¨ng Cöu D­¬ng ThÇn C«ng") return 1
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------