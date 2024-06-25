Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/nangkinhnghiem.lua")

--	local ntime = 18*60*60*24*30
--	local n_title = 190
	--Title_AddTitle(n_title, 2, nTime)
	--Title_ActiveTitle(n_title)
--	PlayerFunLib:AddSkillState(1646,20,3,ntime,1)
	--Msg2Player("NhËn Vßng S¸ng Hång Ngäc Thµnh C«ng")
	ConsumeEquiproomItem(1, 6,1, 30353,-1)
	return 1;
	
end
