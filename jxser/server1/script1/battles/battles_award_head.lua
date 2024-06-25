--ËÎ½ð½áÊø»ñµÃ½±Àø
--edit by Ð¡ÀË¶à¶à
--2007.12.10
--¸öÈË»ñµÃ½±Àø
--ËùÓÐÍæ¼Ò,°üÀ¨Ê¤¸ºÆ½ battles_award_all_singleplayer(Íæ¼Òindex,½áÊø»ñµÃµÄ¸öÈË×Ü»ý·Ö,ËÎ½ð¼¶±ð[1,³õ¼¶,2ÖÐ¼¶,3¸ß¼¶])
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\vonghoa\\item\\head.lua");
Include("\\script\\baoruongthanbi\\head.lua");
--[DinhHQ]
--[20101216]:event ngu thai ket tinh
Include("\\script\\vng_event\\ngusackettinh\\script\\nskt_SongJin.lua");
--new lunar year 2011
Include("\\script\\vng_event\\LunarYear2011\\mission_award.lua")
--[20110225]: 8/3/2011
Include("\\script\\vng_event\\20110225_8_thang_3\\mission_award.lua")


local tbItem ={
	--	{szName="B¶o r­¬ng Giíi H¹n Random(2 Ngµy)",tbProp={6,1,4365,1,0,0},nCount=1},



}
function battles_award_all_singleplayer(nplayerindex,nplayer_point,ngame_level)
	if ngame_level == 3 or ngame_level == 2 or ngame_level == 1 then --¸ß¼¶ËÎ½ð
		if nplayer_point >= 3000 then
						--Haint code add vong hoa
			if (VH_ActiveDay() == 1) then
				local nVar = random(1,3)
				AddMaterial(nVar)--add vong hoa event 08/2010
			end
			--ADD Key and box
			if (KeyBox_ActiveDropItem() == 1) then
				for i=1, 5 do--add 2 ruong va 2 key
					local nRandomBoxVar = random(10000, 99999)
					local nRandomKeyVar = random(10000, 99999)
					
					local itemindx = AddItem(6,1,30036,1,0,0)
					ITEM_SetExpiredTime(itemindx, 4320);
					SetSpecItemParam(itemindx, 1, nRandomBoxVar)
					SyncItem(itemindx)
					local itemindx = AddItem(6,1,30037,1,0,0)
					ITEM_SetExpiredTime(itemindx, 4320);
					SetSpecItemParam(itemindx, 1, nRandomKeyVar)
					SyncItem(itemindx)
				end
			end
			--dinhhq: event ngu sac ket tinh - tong kim >=3000 diem	
			if (tb_NSKT_SongJin)then
				tb_NSKT_SongJin:giveAward(3000);
			end
			--dinhhq: new lunar year 2011
			tbVNG_LY2011Mission:SongJinAward(3000)
			--[20110225]: 8/3/2011
			tbVNGWD2011_Mission:SongJinAward(3000)

			local noldplayindex = PlayerIndex
			PlayerIndex = nplayerindex
			local nHour = tonumber(GetLocalDate("%H%M"))
                            if nHour>=2100 and nHour<=2230 then
							--		battles_award_singleplayer_AddItem2(nplayer_point)	
									
									else
							--	battles_award_singleplayer_AddItem(nplayer_point)
								end
			--battles_award_singleplayer_AddItem(nplayer_point)
			PlayerIndex = noldplayindex
			return
		end -- >= 3000 point
		
		
			--dinhhq: event ngu sac ket tinh - tong kim >=1000 diem
		if(nplayer_point >= 1000) then				
				if (tb_NSKT_SongJin)then
					tb_NSKT_SongJin:giveAward(1000);
				end
				--dinhhq: new lunar year 2011
				tbVNG_LY2011Mission:SongJinAward(1000)				
				--[20110225]: 8/3/2011
				tbVNGWD2011_Mission:SongJinAward(1000)
		end -- >= 1000 point		
	end
end

function battles_award_singleplayer_AddItem(nplayer_point)

	if nplayer_point < 1000 then
		return
	end
	
	if nplayer_point >= 1000 and nplayer_point < 3000 then 
--AddOwnExp(200000)
	--	tbAwardTemplet:GiveAwardByList({{nExp = 2000000}}, "test", 1);
		--tbAwardTemplet:GiveAwardByList({{szName = "H?Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=1},}, "test", 1);
		--tbAwardTemplet:GiveAwardByList({{szName = "Tói Qu?S?KiÖn",tbProp={6,1,30324,1,0,0},nCount=50},}, "test", 1);
return
	end
	
	if nplayer_point >= 3000 and nplayer_point < 6000 then 
--AddOwnExp(400000)
	--	tbAwardTemplet:GiveAwardByList({{szName = "Hé Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=1},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{nExp = 4000000}}, "test", 1);
		return
		--tbAwardTemplet:GiveAwardByList({{szName = "Tói Qu?S?KiÖn",tbProp={6,1,30324,1,0,0},nCount=50},}, "test", 1);
	end
	
	if nplayer_point >= 5000 then 
--AddOwnExp(600000)
	--	tbAwardTemplet:GiveAwardByList({{nExp = 8000000}}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=1},}, "test", 1);
		--		tbAwardTemplet:GiveAwardByList({{szName = "Bã Cá",tbProp={6,1,4415,1,1},nCount=5},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4409,1,1},nCount=5},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName="Ng©n L­îng",nJxb=5000000,nCount=1}}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "Hé Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=2},}, "test", 1);
	--		tbAwardTemplet:GiveAwardByList({{szName = "CÇn c©u",tbProp={6,1,4342,1,0,0},nCount=2},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "Viªm §Õ LÖnh",tbProp={6,1,1617,1,0,0},nCount=1},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Hu©n C«ng Tèng Kim",tbProp={6,1,1773,1,1},nCount=1},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "B?C?,tbProp={6,1,4415,1,0,0},nCount=1},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "D©y Thõng",tbProp={6,1,4416,1,0,0},nCount=1},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "TÝn VËt Tèng Kim",tbProp={6,1,4425,1,0,0},nCount=1},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "Tói Qu?S?KiÖn",tbProp={6,1,30324,1,0,0},nCount=50},}, "test", 1);
		return
	end
	
		
	--	tbAwardTemplet:GiveAwardByList(%tbItem, "Tèng Kim ®iÓm tÝch lòy 3000 tr?lªn");
	--local nTime = tonumber(GetLocalDate("%H%M"));
		--if (nTime>=2100 and nTime<=2300) or (nTime>=1300 and nTime<=1430) then 	--09Ê¥µ®»î¶¯
		--	tbAwardTemplet:GiveAwardByList({{szName = "B¶o r­¬ng v­ît ¶i", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=3, nBindState = -2}},
	--end
end
function battles_award_singleplayer_AddItem2(nplayer_point)

	if nplayer_point < 1000 then
		return
	end
	
	if nplayer_point >= 1000 and nplayer_point < 3000 then 
--AddOwnExp(20000000)
	--	tbAwardTemplet:GiveAwardByList({{nExp = 5000000}}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "Hé Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=1},}, "test", 1);
		--tbAwardTemplet:GiveAwardByList({{szName = "Tói Qu?S?KiÖn",tbProp={6,1,1627,1,0,0},nCount=50},}, "test", 1);
		return
	end
	
	if nplayer_point >= 3000 and nplayer_point < 6000 then 
--AddOwnExp(50000000)
		--tbAwardTemplet:GiveAwardByList({{szName = "Hé Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=2},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{nExp = 10000000}}, "test", 1);
		return
		---	tbAwardTemplet:GiveAwardByList({{szName = "Tói Qu?S?KiÖn",tbProp={6,1,1627,1,0,0},nCount=50},}, "test", 1);
	end
	
	if nplayer_point >= 5000 then 
		--AddOwnExp(150000000)
	--	tbAwardTemplet:GiveAwardByList({{nExp = 15000000}}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName="Ng©n L­îng",nJxb=5000000,nCount=1}}, "test", 1);
--		tbAwardTemplet:GiveAwardByList({{szName = "Hé Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=3},}, "test", 1);
	--	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=1},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName = "Hu©n C«ng Tèng Kim",tbProp={6,1,1773,1,1},nCount=1},}, "test", 1);
	--		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4409,1,1},nCount=5},}, "test", 1);
	--		tbAwardTemplet:GiveAwardByList({{szName = "R­¬ng M¶nh thiªn th¹ch",tbProp={6,1,4455,1,0,0},nCount=15},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "CÇn c©u",tbProp={6,1,4342,1,0,0},nCount=2},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "M·nh N?Oa",tbProp={6,1,4420,1,0,0},nCount=1},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "D©y Thõng",tbProp={6,1,4416,1,0,0},nCount=3},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "TÝn VËt Tèng Kim",tbProp={6,1,4425,1,0,0},nCount=1},}, "test", 1);
		return
	end
	
		
	--	tbAwardTemplet:GiveAwardByList(%tbItem, "Tèng Kim ®iÓm tÝch lòy 10000 tr?lªn");
	--local nTime = tonumber(GetLocalDate("%H%M"));
		--if (nTime>=2100 and nTime<=2300) or (nTime>=1300 and nTime<=1430) then 	--09Ê¥µ®»î¶¯
		--	tbAwardTemplet:GiveAwardByList({{szName = "B¶o r­¬ng v­ît ¶i", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=3, nBindState = -2}},
	--end
end