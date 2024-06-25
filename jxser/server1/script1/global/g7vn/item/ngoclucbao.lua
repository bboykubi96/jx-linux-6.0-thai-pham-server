Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/ngoclucbao.lua")

	local ntime = 18*60*60*24*2
	--local n_title = 190
	--Title_AddTitle(n_title, 2, nTime)
	--Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1686,20,3,ntime,1)
	PlayerFunLib:AddSkillState(1687,20,3,ntime,1)
	Msg2Player("NhËn Vßng S¸ng Thµnh C«ng")
	ConsumeEquiproomItem(1, 6,1, 30352,-1)
	return 1;
end
