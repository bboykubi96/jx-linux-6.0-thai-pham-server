--�ν������ý���
--edit by С�˶��
--2007.12.10
--���˻�ý���
--�������,����ʤ��ƽ battles_award_all_singleplayer(���index,������õĸ����ܻ���,�ν𼶱�[1,����,2�м�,3�߼�])
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
	--	{szName="B�o r��ng Gi�i H�n Random(2 Ng�y)",tbProp={6,1,4365,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
--{szName="M�nh T�ng B�o ��",tbProp={4,random(490,501),1,1,0,0},nCount=1},
	{szName = "Th�t ch�",tbProp={6,1,4384,1,0,0},nCount=20},

}
function battles_award_all_singleplayer(nplayerindex,nplayer_point,ngame_level)
	if ngame_level == 3 then --�߼��ν�
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

	if nplayer_point < 3000 then
		return
	end
	
	if nplayer_point >= 3000 and nplayer_point < 6000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "B�nh ch�ng H�t d� ",tbProp={6,1,60,1,0,0},nCount=30},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 1e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "H� Ti�u L�nh",tbProp={6,1,30317,1,0,0},nCount=1},}, "test", 1);
	end
	
	if nplayer_point >= 6000 and nplayer_point < 10000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "B�nh ch�ng H�t d� ",tbProp={6,1,60,1,0,0},nCount=40},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "H� Ti�u L�nh",tbProp={6,1,30317,1,0,0},nCount=2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 2e9}}, "test", 1);
	end
	
	if nplayer_point >= 10000 then 
		tbAwardTemplet:GiveAwardByList({{szName = "B�nh ch�ng H�t d� ",tbProp={6,1,60,1,0,0},nCount=50},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 3e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName="Ng�n L��ng",nJxb=5000000,nCount=1}}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "H� Ti�u L�nh",tbProp={6,1,30317,1,0,0},nCount=4},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Th� C�p ��i T��ng",tbProp={6,1,4392,1,0,0},nCount=1},}, "test", 1);
	end
	
		
		tbAwardTemplet:GiveAwardByList(%tbItem, "T�ng Kim �i�m t�ch l�y 3000 tr� l�n");
	--local nTime = tonumber(GetLocalDate("%H%M"));
		--if (nTime>=2100 and nTime<=2300) or (nTime>=1300 and nTime<=1430) then 	--09ʥ���
		--	tbAwardTemplet:GiveAwardByList({{szName = "B�o r��ng v��t �i", tbProp ={ 6, 1, 4893, 1, 0, 0, 0, 0}, nCount=3, nBindState = -2}},
	--end
end