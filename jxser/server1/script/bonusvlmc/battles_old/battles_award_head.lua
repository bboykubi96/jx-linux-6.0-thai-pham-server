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




function battles_award_all_singleplayer(nplayerindex,nplayer_point,ngame_level)
	if ngame_level == 3 then --¸ß¼¶ËÎ½ð
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
					
				--	local itemindx = AddItem(6,1,30036,1,0,0)
					ITEM_SetExpiredTime(itemindx, 4320);
					SetSpecItemParam(itemindx, 1, nRandomBoxVar)
					SyncItem(itemindx)
				--	local itemindx = AddItem(6,1,30037,1,0,0)
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
			battles_award_singleplayer_AddItem(nplayer_point)
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
	local tbAward =
	{
--{szName = "Xu Khoa", tbProp = {6,1,4893,1,0,0}, nCount = 2, nBindState = -2},
--{szName = "Hép LÔ VËt", tbProp = {6,1,30030,1,0,0}, nCount = 20, nExpiredTime=20191201}, 

	}
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
				if nDate <= 202007142359 then
			--tbAwardTemplet:GiveAwardByList({{szName = "Xoi", tbProp ={ 6, 1, 4950, 1, 0, 0}, nCount=20, nExpiredTime=20200716}},  "test", 1)
			end
	
	
	local nTime = tonumber(GetLocalDate("%H%M"));
	if nplayer_point < 3000 then
		return
	end
	
	if nplayer_point >= 3000 and nplayer_point < 6000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngoc",tbProp={6,1,4807,1,1},nCount=5},}, "test", 1);

	end
	
	if nplayer_point >= 6000 and nplayer_point < 10000  then 
		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngoc",tbProp={6,1,4807,1,1},nCount=10},}, "test", 1);
		--	tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))		
			if (nTime>=2100 and nTime<=2300) then
				tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))
				tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao HuyÕt ChiÕn", tbProp ={ 6, 1, 4897, 1, 0, 0, 0, 0}, nCount=1, nBindState = -2}}, format("Get %s", "LÔ Bao HuyÕt ChiÕn"))
					end

	end
	
	if nplayer_point >= 10000 and GetLastFactionNumber() ~= 0 then 


		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngoc",tbProp={6,1,4807,1,1},nCount=50},}, "test", 1);	
		--tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
				if (nTime>=2100 and nTime<=2300) then

				--tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))
				--tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao HuyÕt ChiÕn", tbProp ={ 6, 1, 4897, 1, 0, 0, 0, 0}, nCount=1, nBindState = -2}}, format("Get %s", "LÔ Bao HuyÕt ChiÕn"))
					end
	end
	
			if nplayer_point >= 10000 and nplayer_point < 20000 and GetLastFactionNumber() == 0  then 
				tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))		
			tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngoc",tbProp={6,1,4807,1,1},nCount=10},}, "test", 1);
							if (nTime>=2100 and nTime<=2300) then

				--tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))
					end
			end
			
			if nplayer_point >= 20000  and GetLastFactionNumber() == 0  then
				
				--if (nTime>=2100 and nTime<=2300) or  (nTime>=1300 and nTime<=1405) then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngoc",tbProp={6,1,4807,1,1},nCount=50},}, "test", 1);
					--	else 
				--		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngoc",tbProp={6,1,4807,1,1},nCount=20},}, "test", 1);
				--		end
				tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
					--		tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))
					if (nTime>=2100 and nTime<=2300) then

				--tbAwardTemplet:GiveAwardByList({{szName = "Xu Khoa", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=5, nBindState = -2}}, format("Get %s", "Xu Khoa"))
				--tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao HuyÕt ChiÕn", tbProp ={ 6, 1, 4897, 1, 0, 0, 0, 0}, nCount=1, nBindState = -2}}, format("Get %s", "LÔ Bao HuyÕt ChiÕn"))
					end
			
			end
		--tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng ")
end
