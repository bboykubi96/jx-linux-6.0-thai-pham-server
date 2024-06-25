Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/ngocbich.lua")

	Add120SkillExp(10000000)
	Clear120SkillExpLimit ()
	ConsumeEquiproomItem(1, 6,1, 30350,-1)
	return 1;
end
