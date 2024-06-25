Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\task\\random\\task_head.lua");
Include("\\script\\baoruongthanbi\\head.lua");
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\task_addplayerexp.lua");
IncludeLib("FILESYS")
Include("\\script\\global\\g7vn\\g7libgm.lua")


tbKandy = {}
tbKandy.szFile = "\\dulieu\\baodanh.ini"

server_loadfile(tbKandy.szFile)


function OnlineAward()


	 OnlineAward_ResetStillOnlineNewDay()
	
	local tbOpt = {};
		local szTitle = format("Khi online ®ñ 12 tiÕng ®¹i hiÖp b¸o danh ®Ó nhËn phÇn quµ hÊp dÉn khi Open Server:");
		tbOpt = 
		{
			"Ta muèn b¸o danh v× ®· online ®ñ 12h/OnlineAward_GetBonus",
			"KiÓm tra thêi gian Online/OnlineAward_ShowTimeNow",
			"KÕt thóc/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
end

function OnlineAward_GetBonus()
--if GetTask(3239) >= 1 then
		--Say("§¹i hiÖp ®· b¸o danh råi kh«ng cÇn b¸o danh n÷a.")
		--return
	--end
--	if CheckIPBonus() == 0 then
--		Say("HiÖn t¹i ®¹i hiÖp ch­a thÓ nhËn th­ëng, h·y thö l¹i sau!",0)
--		return
--	end
		--if GetLevel() < 105 then
	--	Say("§¼ng cÊp tõ 105 trë lªn míi cã thÓ nhËn.")
		--return
	--end
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("HiÖn t¹i ®¹i hiÖp ch­a thÓ xem tin tøc v× ch­a online ®­îc giê nµo xin h·y thö l¹i sau!",0)
		return		
	end

	OnlineAward_SummaryOnlineTime()
	OnlineAward_StartTime()
	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	if nHour < 12 then
		Say("§¹i hiÖp ch­a ®ñ 12 giê online trªn m¹ng kh«ng thÓ b¸o danh",0)
		return
	end
		if (PlayerFunLib:CheckTaskDaily(BNCQ_TASKID_GET_TIMES,1,"§¹i hiÖp ®· b¸o danh råi","<") ~= 1) then

	--if (PlayerFunLib:CheckTaskDaily(BNCQ_TASKID_GET_TIMES,1,"H«m nay ®¹i hiÖp ®· nhËn th­ëng 2 lÇn råi. Ngµy mai quay l¹i nhÐ!","<") ~= 1) then
			return
	end
	
--	if CalcFreeItemCellCount() < 30 then
		--Say("Kh«ng ®ñ 30 « trèng trong hµnh trang cña ®¹i hiÖp!",0)
		--return
--	end
	
	local tbOpt = {};
		local szTitle = format("§¹i hiÖp, xin h·y chän phÇn th­ëng:");
		tbOpt = 
		{
			"Ta ®· ®ñ ®iÒu kiÖn b¸o danh/#OnlineAward_ConfirmBonus()",
--			"NhËn phÇn th­ëng lo¹i 2/#OnlineAward_ConfirmBonus(2)",
			"KÕt thóc/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
	
	
--	if OnlineAward_PayTime(1*60*60) == 1 then	
--		PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
--		for i = 1, 10 do AddLenhBaiBH() end
--		for i = 1, 10 do AddMocNhan() end
--		tbAwardTemplet:GiveAwardByList({szName = "HuyÒn Thiªn Chïy", tbProp={6,1,2348,1,0,0}, nExpiredTime = 10080, nBindState = -2, nCount = 2}, "Online nhËn th­ëng");
--	end
	
end


function OnlineAward_ConfirmBonus()
	--if CalcFreeItemCellCount() < 30 then
	--	Say("Kh«ng ®ñ 30 « trèng trong hµnh trang cña ®¹i hiÖp!",0)
		--return
	--end
--	if (nType == 1) then
		if OnlineAward_PayTime(12*60*60) == 1 then	
			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
			batdaubaodanh()
--			for i = 1, 10 do AddLenhBaiBH() end
--			for i = 1, 10 do AddMocNhan() end
--			if (IsActiveGetHuyenTinh() == 1) then
--				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online nhËn th­ëng");
--			end
--tl_addPlayerExp(10000000)
--tbAwardTemplet:GiveAwardByList({{szName="Phó Quý CÈm H¹p",tbProp={6,1,2402,1,1,0,0}, nBindState=-2,nCount=2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Phó Quý CÈm H¹p",tbProp={6,1,2402,1,1,0,0}, nBindState=-2,nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="QuÕ Hoa Töu",tbProp={6,1,125,1,1,0,0}, nBindState=-2,nCount=2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thiªn S¬n b¶o Lé",tbProp={6,1,72,1,1,0,0}, nBindState=-2,nCount=2,},}, "test", 1);
--SetTask(5110,GetTask(5110)+5)
--SetTask(3239,1)
--tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 5 ®iÓm n¨ng ®éng.")	
	--local szNews = format("Chóc Mõng §¹i HiÖp <color=green>"..GetName().."<color=yellow> ®· b¸o danh thµnh c«ng khi ®¹t ®iÒu kiÖn online ®ñ 12 tiÕng");
	--AddGlobalNews(szNews);
--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		end
--	else
--		if OnlineAward_PayTime(1*60*60) == 1 then	
--			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
--			tbAwardTemplet:GiveAwardByList(tbOnlineAwardExp[1], "Online nhËn th­ëng");
--			if (IsActiveGetHuyenTinh() == 1) then
--				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online nhËn th­ëng");
--			end
--		end
--	end
end


function OnlineAward_ShowTimeNow()
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("HiÖn t¹i ®¹i hiÖp ch­a thÓ xem tin tøc, h·y thö l¹i sau!",0)
		return		
	end
	OnlineAward_SummaryOnlineTime()	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	local strMsg = format("Thêi gian trªn m¹ng cña ®¹i hiÖp lµ:\n\t<color=yellow> %d <color> giê <color=yellow> %d <color> phót <color=yellow> %d <color> gi©y.",nHour, nMin, nSec)
	OnlineAward_StartTime()
	Talk(1,"Online NhËn Th­ëng",strMsg)
end

function AddLenhBaiBH2222()
do return end
	--local nRandomTaskID = createRandomTask();
	local nRandomIndex = random(1, getn(tbRandomTask))
	local nRandomTaskID = tbRandomTask[nRandomIndex]
	
	nRandomItemIndex = AddItem(6, 2, 1020, 0, 1, 0, 0);
	SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
	nExpiredTime = BNCQ_OneDayTime
	ITEM_SetExpiredTime(nRandomItemIndex, nExpiredTime);
	SetItemBindState(nRandomItemIndex, -2);
	SyncItem(nRandomItemIndex);
	local strItem = GetItemName(nRandomItemIndex)
	Msg2Player("B¹n nhËn ®­îc "..strItem)
	WriteLog(date("%Y%m%d %H%M%S").."\t".." Online nhËn th­ëng "..GetAccount().."\t"..GetName().."\t".." Online nhËn th­ëng nhËn ®­îc "..strItem)
end

function AddMocNhan2222()
do return end
		local ndx = AddItem(6,1,1085,1,0,0)
		SetSpecItemParam(ndx, 2, 9)
		nExpiredTime = BNCQ_OneDayTime
		ITEM_SetExpiredTime(ndx, nExpiredTime);
		SetItemBindState(ndx, -2);
		SyncItem(ndx)
		local strItem = GetItemName(ndx)
		Msg2Player("B¹n nhËn ®­îc "..strItem)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Online nhËn th­ëng "..GetAccount().."\t"..GetName().."\t".." Online nhËn th­ëng "..strItem)
end

function Cancel()
end

function batdaubaodanh()
local szName = GetAccount()
local nBaoDanh = server_getdata(tbKandy.szFile,"BAO_DANH",szName);
if (tonumber(nBaoDanh) == 1 ) then
Say("Tµi kho¶n ®· b¸o danh råi")
return
end 
if ( nBaoDanh == "" ) or ( nBaoDanh == nil ) then
--Msg2Player("Tµi kho¶n ®· ch­a b¸o dang tiÕn hµnh b¸o danh")
local szName = GetAccount()
	server_setdata(tbKandy.szFile,"BAO_DANH",szName,1);
	server_savedata(tbKandy.szFile);
	Say("B¸o danh thµnh c«ng h·y chê ®îi ®Õn ngµy oppen dïng tµi kho¶n nµy ®Ó nhËn ®­îc quµ hÊp dÉn nhÐ")
end
end


function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end
