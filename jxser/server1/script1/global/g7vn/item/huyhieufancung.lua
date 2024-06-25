Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/huyhieufancung.lua")

	local ntime = 18*60*60*24*1
	local n_title = 190
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(977,20,3,18*60*60*24*1,1)
	Msg2Player("Nhan Danh Hieu Thanh Cong")
	return 1;
end
