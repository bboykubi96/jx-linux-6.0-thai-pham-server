Include("\\script\\dailogsys\\g_dialog.lua")
-- Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\activitysys\\npcdailog.lua")







function main()
	if (CheckGlobalTradeFlag() == 0) then		-- È«¾Ö¾­¼·ÏµÝ³½»Ò×¿ª¹Ø
		return
	end
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<dec><npc>VÞ ®¹i hiÖp nµy t×m ta ph¶i ch¨ng cÇn trî gióp vÊn ®Ò g× sao,vËy h·y nhËn lÊy hç trî ®i nµo.Hi väng sau nµy ng­¬i trë thµnh<color=yellow>V« §Þch Thiªn H¹<color>kh«ng quªn sù gióp søc cña ta?"
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local aryDescribe =
	{
	"NhËn hæ trî t©n thñ/hotrotanthu",
	"Kich ho¹t Buff t©n thñ/kynangtanthu",	
	--"NhËn phÇn th­ëng theo cÊp/nhanthuongcap",	
	--"Ta muèn nhËn phÇn th­ëng ChuyÓn Sinh/phanthuongchuyensinh",
	--"Ta muèn nhËn ThÇn Hµnh Phï vµ Set Kim Phong/hotrokp",

	
	}	
	
	--ÖØ¸·×Ïòþ
	--tbDailog:AddOptEntry("ÎÒÏëÇëÈËÖØ¸·×Ïòþ×°±¸", tbVNG_RefineEquip.ShowDialog, {tbVNG_RefineEquip})	
	
	for i = 1, getn(aryDescribe) do
		local _,_, szOpt, szFun = strfind(aryDescribe[i], "([^/]+)/([^/]+)")
		local fn = getglobal(szFun)
		if fn then
			tbDailog:AddOptEntry(szOpt, fn);	
		end
	end
	
	--µ¯³ö¶Ô»°¿ò
	tbDailog:Show()
	

	
end
------------------------------------
function kynangtanthu()
	if GetLevel() < 160 then
		AddSkillState(512,20,1,60*60*18)
		AddSkillState(527,5,1,60*60*18)
		AddSkillState(313,5,1,60*60*18)
		AddSkillState(314,12,1,60*60*18)
		AddSkillState(546,1,1,60*60*18)
		Talk(1, "", "<color=yellow>B¹n nhËn ®­îc hæ trî kü n¨ng ®Æc biÖt vµ Tiªn Th¶o Lé trong kho¶ng thêi gian nhÊt ®Þnh !<color>");
		Msg2Player( "§Õn <color=yellow>Sø Gi¶ T©n Thñ<color> cã thÓ kÝch ho¹t <color=yellow>Buff Hæ Trî<color> giíi h¹n tíi level 160 !" );
	else
	Talk(1, "", "B¹n v­ît qu¸ cÊp ®é nhËn Buff hæ trî.")
	end
	
end
------------------------------------
function hotrotanthu()
	if GetTask(357,0) == 0 then
	if GetLevel() <= 10 then
       for i = 1,10 do 
        AddOwnExp(9999999999) 
        end 
	if CalcFreeItemCellCount() > 50 then
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,71,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddItem(6,1,1083,0,0,0)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	Earn(10000)
	AddRepute(500);

	local ItemIndex = AddItem(0,10,2,1,5,0) -- liet bach ma
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien

	local ItemIndex = AddGoldItem(0, 177)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 178)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 179)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 180)	
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 181)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 182)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 183)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 184)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	local ItemIndex = AddGoldItem(0, 185)
	SetItemBindState(ItemIndex,-2) ---khoa vinh vien

	AddSkillState(512,20,1,60*60*18)
	AddSkillState(527,5,1,60*60*18)
	AddSkillState(313,5,1,60*60*18)
	AddSkillState(314,12,1,60*60*18)
	AddSkillState(546,1,1,60*60*18)
	SetTask(357,GetTask(357,0)+1)
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc hæ trî kü n¨ng ®Æc biÖt vµ Tiªn Th¶o Lé ®Õn level 160,nÕu b¹n chÕt hiÖu øng sÏ biÕn mÊt.B¹n cã thÓ kÝch ho¹t l¹i t¹i ®©y !<color>");
	Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Hæ Trî T©n Thñ CÊp 1<color> Chóc b¹n ch¬i game vui vÎ" );
	else
	Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
	return
	end		
	else
	Talk(1, "", "B¹n ph¶i ®óng cÊp 1.")
	end
	else
	Talk(1, "", "B¹n chØ nhËn mét lÇn th«i.")
	end
end
-------------------------------------------------
function nhanthuongcap()
	local tab_Content = {
		"NhËn th­ëng cÊp 80 /cap80",
		"NhËn th­ëng cÊp 100 /cap100",
		"NhËn th­ëng cÊp 120 /cap120",
		"NhËn th­ëng cÊp 140 /cap140",
		"NhËn th­ëng cÊp 160 /cap160",
		"NhËn th­ëng cÊp 180 /cap180",
		"Th«i kh«ng lÊy g× n÷a."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
-------------------------------------------------
function phanthuongchuyensinh()
	local tab_Content = {
		"Ta muèn nhËn phÇn th­ëng sau khi ®· trïng sinh lÇn 1 /cs1",
		"Ta muèn nhËn phÇn th­ëng sau khi ®· trïng sinh lÇn 2 /cs2",
		"Ta muèn nhËn phÇn th­ëng sau khi ®· trïng sinh lÇn 3 /cs3",
		"Ta muèn nhËn phÇn th­ëng sau khi ®· trïng sinh lÇn 4 /cs4",
		"Ta muèn nhËn phÇn th­ëng sau khi ®· trïng sinh lÇn 5 /cs5",
		"Th«i kh«ng lÊy g× n÷a."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
----------------------------------------------------
-------------------------------------------------
function cs1()
	local tab_Content = {
		"Ta muèn nhËn phÇn th­ëng cÊp 100 sau khi ®· trïng sinh lÇn 1 /cs1cap140",
		"Th«i kh«ng lÊy g× n÷a."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
----------------------------------------------------
-------------------------------------------------
function cs2()
	local tab_Content = {
		"Ta muèn nhËn phÇn th­ëng cÊp 100 sau khi ®· trïng sinh lÇn 2 /cs2cap140",
		"Th«i kh«ng lÊy g× n÷a."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
------------------------------------------------------------------------------------
function cap80()
		if GetTask(357,0) == 1 then
		if GetLevel() >= 80 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(0,10,5,10,5,0) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	

		
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,400,90,1,0,0) --tuimau
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 80<color> Chóc b¹n ch¬i game vui vÎ" );
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 80.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
function cap100()
		if GetTask(357,0) == 2 then
		if GetLevel() >= 100 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,71,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,71,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		
		local ItemIndex = AddItem(6,1,1617,0,0,0)
		
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		
		local ItemIndex = AddItem(6,1,2623,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(0,10,8,10,5,0) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,30146,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,3524,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien


	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 100<color> Chóc b¹n ch¬i game vui vÎ" );
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 100.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
function cap120()
		if GetTask(357,0) == 3 then
		if GetLevel() >= 120 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddGoldItem(0, 494)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 495)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 496)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 497)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

	

		local ItemIndex = AddItem(0,10,6,10,5,0) --bontieu
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddGoldItem(0, 3465) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddGoldItem(0, 3542) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddGoldItem(0, 3205) --phivan
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 120<color> Chóc b¹n ch¬i game vui vÎ" );
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 120.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
function cap140()
		if GetTask(357,0) == 4 then
		if GetLevel() >= 140 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
	
		
		local ItemIndex = AddEventItem(238) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(239) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(240) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddEventItem(353) 
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
			
		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(6,1,1157,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	

		
		local ItemIndex = AddGoldItem(0, 3466)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
	
		local ItemIndex = AddGoldItem(0, 3550)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddGoldItem(0, 3206)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		local ItemIndex = AddItem(6,1,2490,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,3525,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 140<color> Chóc b¹n ch¬i game vui vÎ" );
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 140.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
function cap160()
		if GetTask(357,0) == 5 then
		if GetLevel() >= 160 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,26,0,0,0)
	
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,26,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,22,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,22,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		


		local ItemIndex = AddItem(6,1,2951,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie


		local ItemIndex = AddGoldItem(0, 3467)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie


		local ItemIndex = AddGoldItem(0, 3551)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddGoldItem(0, 3207)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		
		

		local ItemIndex = AddItem(6,1,30147,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,3526,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 160<color> Chóc b¹n ch¬i game vui vÎ" );
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 160.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
function cap180()
		if GetTask(357,0) == 6 then
		if GetLevel() >= 180 and ST_GetTransLifeCount() <= 5 then
		if CalcFreeItemCellCount() > 50 then
		local ItemIndex = AddItem(6,1,2951,0,0,0)

		SetItemBindState(ItemIndex,-2) ---khoa vinh vie


		
		local ItemIndex = AddGoldItem(0, 3468)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddGoldItem(0, 3469)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie

		local ItemIndex = AddGoldItem(0, 3552)
		ITEM_SetExpiredTime(ItemIndex,7*24*60) ---set thoi gian het than
		SyncItem(ItemIndex); --ham nay dung de thuc thi cai thoi gian het han dai loai la an dinh thoi gian vao trang bi
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddGoldItem(0, 3208)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		

		local ItemIndex = AddItem(6,1,2349,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		local ItemIndex = AddItem(6,1,2349,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vie
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 180<color> Chóc b¹n ch¬i game vui vÎ" );
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 180.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end

----------------------------------------------------
function cs1cap140()
		if GetTask(357,0) == 7 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 1 then
		local ItemIndex = AddItem(6,1,2349,0,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 1<color> Chóc b¹n ch¬i game vui vÎ" );
		Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color> nhËn phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 1<color> kh«ng hæ danh anh hïng hµo kiÖt xuÊt chóng")	
		else
			Talk(1, "", "PhÇn th­ëng chØ dµnh cho ng­êi trïng sinh lÇn 1");
			return
		end
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 100.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
----------------------------------------------------
----------------------------------------------------
function cs2cap140()
		if GetTask(357,0) == 8 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 2 then
		local ItemIndex = AddItem(6,1,2349,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		local ItemIndex = AddItem(6,1,2349,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien

		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 2<color> Chóc b¹n ch¬i game vui vÎ" );
		Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color> nhËn phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 2<color> kh«ng hæ danh anh hïng hµo kiÖt xuÊt chóng")	

		else
			Talk(1, "", "PhÇn th­ëng chØ dµnh cho ng­êi trïng sinh lÇn 2");
			return
		end
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 100.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
----------------------------------------------------

----------------------------------------------------
function cs3()
		if GetTask(357,0) == 9 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 3 then
		local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 3<color> Chóc b¹n ch¬i game vui vÎ" );
		Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color> nhËn phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 3<color> kh«ng hæ danh anh hïng hµo kiÖt xuÊt chóng")	

		else
			Talk(1, "", "PhÇn th­ëng chØ dµnh cho ng­êi trïng sinh lÇn 2");
			return
		end
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 140.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end

----------------------------------------------------
function cs4()
		if GetTask(357,0) == 10 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 4 then
		local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
              local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien 
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 4<color> Chóc b¹n ch¬i game vui vÎ" );
		Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color> nhËn phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 4<color> kh«ng hæ danh anh hïng hµo kiÖt xuÊt chóng")	

		else
			Talk(1, "", "PhÇn th­ëng chØ dµnh cho ng­êi trïng sinh lÇn 4");
			return
		end
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 100.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
----------------------------------------------------
function cs5()
		if GetTask(357,0) == 11 then
		if GetLevel() >= 100 then
		if CalcFreeItemCellCount() > 50 then
		if ST_GetTransLifeCount() >= 5 then
		local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
              local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
              local ItemIndex = AddItem(6,1,2357,1,0,0)
		SetItemBindState(ItemIndex,-2) ---khoa vinh vien
		SetTask(357,GetTask(357,0)+1)
		Msg2Player( "B¹n nhËn ®­îc phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 5<color> Chóc b¹n ch¬i game vui vÎ" );
		Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color> nhËn phÇn th­ëng <color=yellow>Th¨ng CÊp 100 ChuyÓn Sinh LÇn 5<color> kh«ng hæ danh anh hïng hµo kiÖt xuÊt chóng")	

		else
			Talk(1, "", "PhÇn th­ëng chØ dµnh cho ng­êi trïng sinh lÇn 5");
			return
		end
		else
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 chç trèng.")
		return
		end
		else
			Talk(1, "", "B¹n ch­a ®¹t cÊp 100.")
		end
	else
		Talk(1, "", "B¹n ch­a nhËn c¸c phÇn th­ëng tr­íc kia nªn kh«ng thÓ nhËn phÇn th­ëng nµy.Mét phÇn th­ëng chØ nhËn mét lÇn duy nhÊt !")
	end
end
