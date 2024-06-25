function main()
	dofile("script/item/biggift.lua")
	switch_check_feature()
	return 1
end

function switch_check_feature()
	local szTitle = "Xin chµo! §¹i hiÖp muèn kiÓm ngo¹i trang g×?"
	local tbOpt =
	{
		"Ngùa/#choose_check_feature(4)",
		"Vò KhÝ/#choose_check_feature(3)",
		"Ao gi¸p/#choose_check_feature(2)",
		"Mò/#choose_check_feature(1)",
		"NhËn bao l× x×/nhanlixi",
		"check skill state/check_skill",
		"Tho¸t/no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function check_skill()
	local skill_id = {15,202,273,206}
	for i = 1, gentn(skill_id) do
		if GetSkillState(skill_id[i]) > 0 then
			Msg2Player("Có skill "..GetSkillName(skill_id[i]))
		--else
			--Msg2Player("không có skill")
		end
	end		
end

function nhanlixi()
	AddItem(6,1,13,1,0,0,0)
	AddItem(6,1,14,1,0,0,0)
	Msg2Player("§· nhËn 2 bao l× x×.")
end

function choose_check_feature(num)
	SetTaskTemp(168, num)
end