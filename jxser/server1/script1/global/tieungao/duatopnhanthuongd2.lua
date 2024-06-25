IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\lib\\awardtemplet.lua")

--Script by mcteam

--=============DS nhan thuong ten nv=================

local tbGMAccount = {"tamquoc01", "tamquoc02", "tamquoc03", "tamquoc04"}

function isgm()
local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		return 1
		end
	end
return 0
end;

local top1all =  {
	{"", 1 },
	{"", 1 },
}

function istop1all()
local aName = GetName()
	for i=1, getn(%top1all) do
		if aName == %top1all[i][1] then
			return %top1all[i][2]
		end
	end
return 0
end;


local top2all =  {
	{"", 1 },
	{"", 1 },
}

function istop2all()
local aName = GetName()
	for i=1, getn(%top2all) do
		if aName == %top2all[i][1] then
		return %top2all[i][2]
		end
	end
return 0
end;

local top3all =  {
	{"", 1 },
	{"", 1 },
}

function istop3all()
local aName = GetName()
	for i=1, getn(%top3all) do
		if aName == %top3all[i][1] then
		return %top3all[i][2]
		end
	end
return 0
end;

local top4den6all =  {
	{"", 1 },
	{"­", 1 },
	{"", 1 },
	{"", 1 },
}

function istop4den6all()
local aName = GetName()
	for i=1, getn(%top4den6all) do
		if aName == %top4den6all[i][1] then
		return %top4den6all[i][2]
		end
	end
return 0
end;

local top7den10all =  {
	{"", 1 },
	{"", 1},
	{"", 1},
	{"", 1},
	{"", 1 },
}

function istop7den10all()
local aName = GetName()
	for i=1, getn(%top7den10all) do
		if aName == %top7den10all[i][1] then
		return %top7den10all[i][2]
		end
	end
return 0
end;
Include("\\script\\global\\g7vn\\g7configall.lua")
function main()

	--dofile("script/global/tieungao/duatopnhanthuongd2.lua");
	--dofile("script/global/g7vn/g7configall.lua");
	do Say("Hìi thÕ gian t×nh lµ chi") return end
	--do Say("KÕt qu¶ ®ua TOP ®ît 2 ch­a cã") return end

	local tbSay = {}

	local resultisgm = isgm();
	if resultisgm == 1 then
		tinsert(tbSay,"Thèng kª top LV server ./GetRankListTop10")
	end
	tinsert(tbSay,"NhËn thuëng ®ua top ®ît 2 ./chontop10all")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("§¹i hiÖp cÇn g×?", getn(tbSay), tbSay)

end;

function chontop10all()

	if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local tbSay = {}
	tinsert(tbSay,"NhËn thuëng Top 1 server ./top1sv")
	tinsert(tbSay,"NhËn thuëng Top 2 server ./top2sv")
	tinsert(tbSay,"NhËn thuëng Top 3 server ./top3sv")
	tinsert(tbSay,"NhËn thuëng Top 4 -> 6 server ./top4den6sv")
	tinsert(tbSay,"NhËn thuëng Top 7 -> 10 server ./top7den10sv")
	tinsert(tbSay,"KÕ thóc ®èi tho¹i ./Quit")
	Say("§¹i hiÖp cÇn g×?", getn(tbSay), tbSay)
end;

function top1sv()
	local istop = istop1all();
	
	if istop == 0 then
		Say("H·y cè g¾ng lªn nhÐ, danh hiÖu nµy ®· thuéc vÒ ng­ßi kh¸c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta muèn nhËn  ./nhantop1all")
	tinsert(tbOpt,"§Ó sau ./Quit")
	Say("NhËn thuëng: ", getn(tbOpt), tbOpt)

end;

function nhantop1all()
	
local istop = istop1all();

	local idtask = idtasktop1dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop  then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName="An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,164},nCount=1,nQuality = 1},
		{szName="An Bang Cóc Hoa Th¹ch ChØ hoµn	",tbProp={0,165},nCount=1,nQuality = 1},
		{szName="An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,166},nCount=1,nQuality = 1},
		{szName="An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,167},nCount=1,nQuality = 1},

		{szName = "MÆt n¹ V­¬ng Gi¶", tbProp = {0, 11, 561, 1, 0, 0}, nCount = 1,nExpiredTime = 60*24*15},
		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 2500},

		{szName = "Tinh hång b¶o th¹ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 5},
		{szName = "Tö thñy tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 5},
		{szName = "ThiÕt la h¸n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 5},
		{szName = "Tiªn th¶o lé ®Æc biÖt", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 8},

	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 1 dot 2");
	Earn(50000000)
	Msg2Player("B¹n ®· nhËn ®­îc 5.000 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 1 trong lÇn ®ua TOP ®ît 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 2 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;

function top2sv()

	local istop = istop2all();
	if istop == 0 then
		Say("H·y cè g¾ng lªn nhÐ, danh hiÖu nµy ®· thuéc vÒ ng­ßi kh¸c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta muèn nhËn  ./nhantop2all")
	tinsert(tbOpt,"§Ó sau ./Quit")
	Say("NhËn thuëng: ", getn(tbOpt), tbOpt)

end;

function nhantop2all()
	local istop = istop2all();
	local idtask = idtasktop2dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "§Þnh quèc ph¸t qu¸n", tbProp={0,159},nCount=1,nQuality = 1},
		{szName = "§Þnh quèc yªu ®¸i", tbProp={0,160},nCount=1,nQuality = 1},
		{szName = "§Þnh quèc hé uyÓn", tbProp={0,161},nCount=1,nQuality = 1},
		{szName = "§Þnh quèc hµi", tbProp={0,162},nCount=1,nQuality = 1},
		{szName = "§Þnh quèc tr­êng sam", tbProp={0,163},nCount=1,nQuality = 1},

		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 2000},
		{szName = "Tinh hång b¶o th¹ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 2},
		{szName = "Tö thñy tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 2},
		{szName = "ThiÕt la h¸n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 2},
		{szName = "Tiªn th¶o lé ®Æc biÖt", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 5},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 2 dot 2");
	Earn(15000000)
	Msg2Player("B¹n ®· nhËn ®­îc 1.500 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 2 trong lÇn ®ua TOP ®ît 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 2 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function top3sv()
	local istop = istop3all();
	if istop == 0 then
		Say("H·y cè g¾ng lªn nhÐ, danh hiÖu nµy ®· thuéc vÒ ng­ßi kh¸c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta muèn nhËn  ./nhantop3all")
	tinsert(tbOpt,"§Ó sau ./Quit")
	Say("NhËn thuëng: ", getn(tbOpt), tbOpt)
end;

function nhantop3all()
	local istop = istop3all();
	local idtask = idtasktop3dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "HiÖp Cèt ThiÕt HuyÕt Sam", tbProp={0,186},nCount=1,nQuality = 1},
		{szName = "HiÖp Cèt §a T×nh Hoµn", tbProp={0,187},nCount=1,nQuality = 1},
		{szName = "HiÖp Cèt §an T©m Giíi", tbProp={0,188},nCount=1,nQuality = 1},
		{szName = "HiÖp Cèt T×nh ý KÕt", tbProp={0,189},nCount=1,nQuality = 1},

		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 1000},
		{szName = "Tinh hång b¶o th¹ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 1},
		{szName = "Tö thñy tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 1},
		{szName = "ThiÕt la h¸n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 1},
		{szName = "Tiªn th¶o lé ®Æc biÖt", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 5},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 3 dot 2");
	Earn(10000000)
	Msg2Player("B¹n ®· nhËn ®­îc 1000 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 3 trong lÇn ®ua TOP ®ît 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 3 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function top4den6sv()
	local istop = istop4den6all();
	if istop == 0 then
		Say("H·y cè g¾ng lªn nhÐ, danh hiÖu nµy ®· thuéc vÒ ng­ßi kh¸c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta muèn nhËn  ./nhantop4den6all")
	tinsert(tbOpt,"§Ó sau ./Quit")
	Say("NhËn thuëng: ", getn(tbOpt), tbOpt)
end;

function nhantop4den6all()
	local istop = istop4den6all();
	local idtask = idtasktop4den6dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "Thiªn hoµng", tbProp={0,168},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,169},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,170},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,171},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,172},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,173},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,174},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,175},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,176},nCount=1,nQuality = 1},

		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 700},
		{szName = "Tinh hång b¶o th¹ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 1},
		{szName = "Tö thñy tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 1},
		{szName = "ThiÕt la h¸n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 1},
		{szName = "Tiªn th¶o lé ®Æc biÖt", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 3},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 4 den 6 dot 2");
	Earn(8000000)
	Msg2Player("B¹n ®· nhËn ®­îc 800 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 4 ®Õn 6 trong lÇn ®ua TOP ®ît 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 4 den 6 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function top7den10sv()
	local istop = istop7den10all();
	if istop == 0 then
		Say("H·y cè g¾ng lªn nhÐ, danh hiÖu nµy ®· thuéc vÒ ng­ßi kh¸c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta muèn nhËn  ./nhantop7den10all")
	tinsert(tbOpt,"§Ó sau ./Quit")
	Say("NhËn thuëng: ", getn(tbOpt), tbOpt)
end;

function nhantop7den10all()
	local istop = istop7den10all();
	local idtask = idtasktop7den10dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "Thiªn hoµng", tbProp={0,168},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,169},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,170},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,171},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,172},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,173},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,174},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,175},nCount=1,nQuality = 1},
		{szName = "Thiªn hoµng", tbProp={0,176},nCount=1,nQuality = 1},

		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 500},
		{szName = "Tinh hång b¶o th¹ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 1},
		{szName = "Tö thñy tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 1},
		{szName = "ThiÕt la h¸n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 1},
		{szName = "Tiªn th¶o lé ®Æc biÖt", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 2},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 7 den 10 dot 2");
	Earn(7000000)
	Msg2Player("B¹n ®· nhËn ®­îc 700 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 7 ®Õn 10 trong lÇn ®ua TOP ®ît 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 7 den 10 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function GetRankListTopTK()
	local tbNum = {"1", "2 ", "3", "4", "5", "6 ", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10250, i);
		--local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10287, i);
		--local szname,nrank = Ladder_GetLadderInfo(10287, i);

		if szname ~= nil then	
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end

	end
	logWriteTopTK(szranklist)--Ghi log top tong kim
	Say(szranklist)
end

function GetRankListTop10()
	local tbNum = {"1", "2 ", "3", "4", "5", "6 ", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname,nrank = Ladder_GetLadderInfo(10270, i);--top 10 the gioi
		if szname ~= nil then	
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end

	end
	logWriteTopLV(szranklist)--Ghi log top tong kim
	Say(szranklist)
end

function logWriteTopLV(str)
	local gm_Log = "dulieu/toplvdot2.txt"
	local fs_log = openfile(gm_Log, "a");
	write(fs_log, ""..str.."\n");
	closefile(fs_log);
end;

function logWriteTopTK(str)
	local gm_Log = "script/global/tieungao/toptk.txt"
	local fs_log = openfile(gm_Log, "a");
	write(fs_log, ""..str.."\n");
	closefile(fs_log);
end;

function GetRankListTopMP(idladder,url)
	local tbNum = {"1", "2 ", "3", "4", "5", "6 ", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname,nrank = Ladder_GetLadderInfo(idladder, i);--top 10 mon phai
		if szname ~= nil then	
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end

	end
	
	logWriteTopMP(szranklist,url)--Ghi log top tong kim
	Say(szranklist)
end

function logWriteTopMP(str, url)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."\n");
	closefile(fs_log);
end;

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end