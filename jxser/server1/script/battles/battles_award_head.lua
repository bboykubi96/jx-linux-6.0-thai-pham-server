Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua")
-----------------------------------------------
function battles_award_all_singleplayer(nplayerindex,nplayer_point,ngame_level)
	if ngame_level == 3 then
		local noldplayindex = PlayerIndex
		PlayerIndex = nplayerindex
		battles_award_singleplayer_AddItem(nplayer_point)
		PlayerIndex = noldplayindex
		return
	end
	SetTask(TASKID_RECIEVE_BONUS_TK,0)
end
----------------------------------Ph«n Th≠Îng TËng Kim--------------------------------------------------------
function battles_award_singleplayer_AddItem(nplayer_point)
	if (nplayer_point >= 1000) and (nplayer_point < 3000) then
		-- tbAwardTemplet:GiveAwardByList(tbAward[1],"Ph«n Th≠Îng TËng Kim")
               -- SetTask(5138,GetTask(5138)+1)
	elseif (nplayer_point >= 3000) and (nplayer_point < 6000) then
		-- tbAwardTemplet:GiveAwardByList(tbAward[2],"Ph«n Th≠Îng TËng Kim")
                -- SetTask(5138,GetTask(5138)+1)
	elseif (nplayer_point >= 6000) and (nplayer_point < 50000) then
		-- tbAwardTemplet:GiveAwardByList(tbAward[3],"Ph«n Th≠Îng TËng Kim")
               -- SetTask(5138,GetTask(5138)+1)
	elseif (nplayer_point >= 50000) then
		-- tbAwardTemplet:GiveAwardByList(tbAward[4],"Ph«n Th≠Îng TËng Kim")
                --SetTask(5138,GetTask(5138)+1)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		--{nExp_tl = 3e8},
             	{szName="Ti“n Xu ",tbProp={4,417,1,1,0,0},nCount=5000},
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=50},
             
--{szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},
	},
	[2] = {
		--{nExp_tl = 4e8},
             	{szName="Ti“n Xu ",tbProp={4,417,1,1,0,0},nCount=5000},
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=100},
               
--{szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},
	},
	[3] = {
		--{nExp_tl = 5e8},
             	{szName="Ti“n Xu ",tbProp={4,417,1,1,0,0},nCount=5000},
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=100},

--{szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},
	},
	[4] = {
		--{nExp_tl = 9e8},
             	{szName="Ti“n Xu ",tbProp={4,417,1,1,0,0},nCount=5000},
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=100},

--{szName="even fee",tbProp={6,1,30335,1,0,0},nCount=10,nExpiredTime=20220729},

	},
	
}
--------------------------------------------------------------------------------------------------------------------------