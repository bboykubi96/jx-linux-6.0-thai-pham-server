IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\lib\\awardtemplet.lua")

--Script by mcteam

--=============DS nhan thuong ten nv=================

local tbGMAccount = 
{
"tamquoc01", "tamquoc02", "", "",
"", "",
}

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
	{"", 1 },
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

	--dofile("script/global/tieungao/duatopnhanthuong.lua");
	--dofile("script/global/g7vn/g7configall.lua");

	do Say("Hìi thÕ gian t×nh lµ chi") return end

	local tbSay = {}

	local resultisgm = isgm();
	if resultisgm == 1 then
		tinsert(tbSay,"Thèng kª top LV server ./GetRankListTop10")
	end
	tinsert(tbSay,"NhËn thuëng ®ua top ®ît 1 ./chontop10all")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("§¹i hiÖp cÇn g×?", getn(tbSay), tbSay)

end;

function chontop10all()

	if CalcFreeItemCellCount() < 60 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 60 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local tbSay = {}
	tinsert(tbSay,"NhËn thuëng Top 1 server ./top1sv")
	tinsert(tbSay,"NhËn thuëng Top 2 server ./top2sv")
	tinsert(tbSay,"NhËn thuëng Top 3 server ./top3sv")
	--tinsert(tbSay,"NhËn thuëng Top 4 -> 6 server ./top4den6sv")
	--tinsert(tbSay,"NhËn thuëng Top 7 -> 10 server ./top7den10sv")
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

	local idtask = idtasktop1dot1 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop  then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		--{szName = "M· bµi ngùa Phi v©n", tbProp = {6, 1, 2396, 1, 0, 0}, nCount = 1},
		--{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 5000},
		--{szName = "Nh¹c v­¬ng hån th¹ch", tbProp = {4, 507, 1, 1, 0, 0}, nCount = 50},
		--{szName = "Nh¹c v­¬ng kiÕm lÔ bao", tbProp = {6, 1, 2340, 1, 0, 0}, nCount = 1},
		
		--[1]	={szName = "Phi Tèc hoµn", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		--[1]	={szName = "V« danh giíi chØ 1", tbProp={0,141},nCount=1,nQuality = 1},
		--[2]	={szName = "V« danh giíi chØ 2", tbProp={0,142},nCount=1,nQuality = 1},
		--[3]	={szName = "M· bµi ngùa Phiªn Vò", tbProp = {6, 1, 2334, 1,0,0}, nCount = 1},
		--[4]	={szName = "MÆt n¹ v­¬ng gi¶", tbProp = {0,11,561,1,0,0}, nCount = 1, nExpiredTime = 43200},
		--[5]	={szName = "Vâ l©m mËt tÞch", tbProp = {6, 1, 26, 1,0,0}, nCount = 5},
		--[6]	={szName = "TÈy tñy kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 5},
		--[7]	={szName = "NhÊt kû cµn kh«n phï", tbProp={6,1,2126,1,0,0},nExpiredTime=20160},
		{szName = "TÈy tñy kinh", tbProp = {6, 1, 22, 1, 0, 0}, nCount = 15},
		{szName = "Vâ l©m mËt tÞch", tbProp = {6, 1, 26, 1, 0, 0}, nCount = 15},
		{szName = "An bang liªn ®Êu", tbProp = {0,394}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "An bang liªn ®Êu", tbProp = {0,395}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "An bang liªn ®Êu", tbProp = {0,396}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "An bang liªn ®Êu", tbProp = {0,397}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "Bon Tieu", tbProp = {0,10,6,1,5,0}, nCount = 1,nExpiredTime=24*60*60},
		--{szName = "Phi Van", tbProp = {0,10,8,1,5,0}, nCount = 1,nExpiredTime=24*60*60},

	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 1 dot 1");
	--Earn(50000000)
	--Msg2Player("B¹n ®· nhËn ®­îc 5.000 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 1 trong lÇn ®ua TOP ®ît 1", 5)
	logplayer("dulieu/nhanthuongtopdot1.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 1 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

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
	local idtask = idtasktop2dot1 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "TÈy tñy kinh", tbProp = {6, 1, 22, 1, 0, 0}, nCount = 15},
		{szName = "Vâ l©m mËt tÞch", tbProp = {6, 1, 26, 1, 0, 0}, nCount = 15},
		{szName = "Phi Van", tbProp = {0,10,8,1,5,0}, nCount = 1,nExpiredTime=24*60*30},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,389}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,390}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,391}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,392}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,393}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 2 dot 1");
	--Earn(15000000)
	--Msg2Player("B¹n ®· nhËn ®­îc 1.500 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 2 trong lÇn ®ua TOP ®ît 1", 5)
	logplayer("dulieu/nhanthuongtopdot1.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 2 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
	local idtask = idtasktop3dot1 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "TÈy tñy kinh", tbProp = {6, 1, 22, 1, 0, 0}, nCount = 10},
		{szName = "Vâ l©m mËt tÞch", tbProp = {6, 1, 26, 1, 0, 0}, nCount = 10},
		{szName = "Phi Van", tbProp = {0,10,8,1,5,0}, nCount = 1,nExpiredTime=24*60*30},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,389}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,390}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,391}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,392}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
		{szName = "§Þnh Quèc liªn ®Êu", tbProp = {0,393}, nCount = 1,nQuality = 1,nExpiredTime=24*60*60},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 3 dot 1");
	--Earn(10000000)
	--Msg2Player("B¹n ®· nhËn ®­îc 1000 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 3 trong lÇn ®ua TOP ®ît 1", 5)
	logplayer("dulieu/nhanthuongtopdot1.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 3 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
	local idtask = idtasktop4den6dot1 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 1000},
		{szName = "Nh¹c v­¬ng hån th¹ch", tbProp = {4, 507, 1, 1, 0, 0}, nCount = 30},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 4 den 6 dot 1");
	--Earn(7000000)
	--Msg2Player("B¹n ®· nhËn ®­îc 700 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 4 ®Õn 6 trong lÇn ®ua TOP ®ît 1", 5)
	logplayer("dulieu/nhanthuongtopdot1.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 4 den 6 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
	local idtask = idtasktop7den10dot1 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("PhÇn th­ëng lÇn nµy ®¹i hiÖp ®· nhËn råi cßn g×!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "TiÒn ®ång", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 1000},
		{szName = "Nh¹c v­¬ng hån th¹ch", tbProp = {4, 507, 1, 1, 0, 0}, nCount = 20},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 7 den 10 dot 1");
	--Earn(5000000)
	--Msg2Player("B¹n ®· nhËn ®­îc 500 v¹n l­îng")

	SetTask(idtask, gt_task+1)
	Say("Chóc mõng ®¹i hiÖp ®· nhËn ®uîc tuyÖt phÈm nh­ ý")
	AddGlobalCountNews("Xin chóc mõng <color=red>"..GetName().."<color> ®· nhËn ®­îc gi¶i th­ëng TOP 7 ®Õn 10 trong lÇn ®ua TOP ®ît 1", 5)
	logplayer("dulieu/nhanthuongtopdot1.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] da nhan thµnh c«ng TOP 7 den 10 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
	local gm_Log = "dulieu/toplv.txt"
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