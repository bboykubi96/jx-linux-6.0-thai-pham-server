IncludeLib("SETTING"); --‘ÿ»ÎSETTINGΩ≈±æ÷∏¡Óø‚

function main()
	--dofile("script/item/tongexpmedicine.lua")
		if (GetNpcExpRate() <= 250) then
		AddSkillState(440, 1, 1, 32400);
	else
		Say("Hi÷n tπi h÷ thËng Æang cho nh©n Æ´i kinh nghi÷m, tπm thÍi kh´ng th” sˆ dÙng Tu Th©n Hoµn.", 0)
		return 1
	end
	return 0
end