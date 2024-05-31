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
	{"�", 1 },
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
	do Say("H�i th� gian t�nh l� chi") return end
	--do Say("K�t qu� �ua TOP ��t 2 ch�a c�") return end

	local tbSay = {}

	local resultisgm = isgm();
	if resultisgm == 1 then
		tinsert(tbSay,"Th�ng k� top LV server ./GetRankListTop10")
	end
	tinsert(tbSay,"Nh�n thu�ng �ua top ��t 2 ./chontop10all")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("��i hi�p c�n g�?", getn(tbSay), tbSay)

end;

function chontop10all()

	if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	local tbSay = {}
	tinsert(tbSay,"Nh�n thu�ng Top 1 server ./top1sv")
	tinsert(tbSay,"Nh�n thu�ng Top 2 server ./top2sv")
	tinsert(tbSay,"Nh�n thu�ng Top 3 server ./top3sv")
	tinsert(tbSay,"Nh�n thu�ng Top 4 -> 6 server ./top4den6sv")
	tinsert(tbSay,"Nh�n thu�ng Top 7 -> 10 server ./top7den10sv")
	tinsert(tbSay,"K� th�c ��i tho�i ./Quit")
	Say("��i hi�p c�n g�?", getn(tbSay), tbSay)
end;

function top1sv()
	local istop = istop1all();
	
	if istop == 0 then
		Say("H�y c� g�ng l�n nh�, danh hi�u n�y �� thu�c v� ng��i kh�c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta mu�n nh�n  ./nhantop1all")
	tinsert(tbOpt,"�� sau ./Quit")
	Say("Nh�n thu�ng: ", getn(tbOpt), tbOpt)

end;

function nhantop1all()
	
local istop = istop1all();

	local idtask = idtasktop1dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop  then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		{szName="An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,164},nCount=1,nQuality = 1},
		{szName="An Bang C�c Hoa Th�ch Ch� ho�n	",tbProp={0,165},nCount=1,nQuality = 1},
		{szName="An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,166},nCount=1,nQuality = 1},
		{szName="An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,167},nCount=1,nQuality = 1},

		{szName = "M�t n� V��ng Gi�", tbProp = {0, 11, 561, 1, 0, 0}, nCount = 1,nExpiredTime = 60*24*15},
		{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 2500},

		{szName = "Tinh h�ng b�o th�ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 5},
		{szName = "T� th�y tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 5},
		{szName = "Thi�t la h�n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 5},
		{szName = "Ti�n th�o l� ��c bi�t", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 8},

	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 1 dot 2");
	Earn(50000000)
	Msg2Player("B�n �� nh�n ���c 5.000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 1 trong l�n �ua TOP ��t 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] da nhan th�nh c�ng TOP 2 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end;

function top2sv()

	local istop = istop2all();
	if istop == 0 then
		Say("H�y c� g�ng l�n nh�, danh hi�u n�y �� thu�c v� ng��i kh�c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta mu�n nh�n  ./nhantop2all")
	tinsert(tbOpt,"�� sau ./Quit")
	Say("Nh�n thu�ng: ", getn(tbOpt), tbOpt)

end;

function nhantop2all()
	local istop = istop2all();
	local idtask = idtasktop2dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "��nh qu�c ph�t qu�n", tbProp={0,159},nCount=1,nQuality = 1},
		{szName = "��nh qu�c y�u ��i", tbProp={0,160},nCount=1,nQuality = 1},
		{szName = "��nh qu�c h� uy�n", tbProp={0,161},nCount=1,nQuality = 1},
		{szName = "��nh qu�c h�i", tbProp={0,162},nCount=1,nQuality = 1},
		{szName = "��nh qu�c tr��ng sam", tbProp={0,163},nCount=1,nQuality = 1},

		{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 2000},
		{szName = "Tinh h�ng b�o th�ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 2},
		{szName = "T� th�y tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 2},
		{szName = "Thi�t la h�n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 2},
		{szName = "Ti�n th�o l� ��c bi�t", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 5},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 2 dot 2");
	Earn(15000000)
	Msg2Player("B�n �� nh�n ���c 1.500 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 2 trong l�n �ua TOP ��t 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] da nhan th�nh c�ng TOP 2 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function top3sv()
	local istop = istop3all();
	if istop == 0 then
		Say("H�y c� g�ng l�n nh�, danh hi�u n�y �� thu�c v� ng��i kh�c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta mu�n nh�n  ./nhantop3all")
	tinsert(tbOpt,"�� sau ./Quit")
	Say("Nh�n thu�ng: ", getn(tbOpt), tbOpt)
end;

function nhantop3all()
	local istop = istop3all();
	local idtask = idtasktop3dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "Hi�p C�t Thi�t Huy�t Sam", tbProp={0,186},nCount=1,nQuality = 1},
		{szName = "Hi�p C�t �a T�nh Ho�n", tbProp={0,187},nCount=1,nQuality = 1},
		{szName = "Hi�p C�t �an T�m Gi�i", tbProp={0,188},nCount=1,nQuality = 1},
		{szName = "Hi�p C�t T�nh � K�t", tbProp={0,189},nCount=1,nQuality = 1},

		{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 1000},
		{szName = "Tinh h�ng b�o th�ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 1},
		{szName = "T� th�y tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 1},
		{szName = "Thi�t la h�n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 1},
		{szName = "Ti�n th�o l� ��c bi�t", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 5},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 3 dot 2");
	Earn(10000000)
	Msg2Player("B�n �� nh�n ���c 1000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 3 trong l�n �ua TOP ��t 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] da nhan th�nh c�ng TOP 3 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function top4den6sv()
	local istop = istop4den6all();
	if istop == 0 then
		Say("H�y c� g�ng l�n nh�, danh hi�u n�y �� thu�c v� ng��i kh�c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta mu�n nh�n  ./nhantop4den6all")
	tinsert(tbOpt,"�� sau ./Quit")
	Say("Nh�n thu�ng: ", getn(tbOpt), tbOpt)
end;

function nhantop4den6all()
	local istop = istop4den6all();
	local idtask = idtasktop4den6dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "Thi�n ho�ng", tbProp={0,168},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,169},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,170},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,171},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,172},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,173},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,174},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,175},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,176},nCount=1,nQuality = 1},

		{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 700},
		{szName = "Tinh h�ng b�o th�ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 1},
		{szName = "T� th�y tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 1},
		{szName = "Thi�t la h�n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 1},
		{szName = "Ti�n th�o l� ��c bi�t", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 3},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 4 den 6 dot 2");
	Earn(8000000)
	Msg2Player("B�n �� nh�n ���c 800 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 4 ��n 6 trong l�n �ua TOP ��t 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] da nhan th�nh c�ng TOP 4 den 6 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function top7den10sv()
	local istop = istop7den10all();
	if istop == 0 then
		Say("H�y c� g�ng l�n nh�, danh hi�u n�y �� thu�c v� ng��i kh�c.");
		return 1
	end

	local tbOpt = {}
	tinsert(tbOpt,"Ta mu�n nh�n  ./nhantop7den10all")
	tinsert(tbOpt,"�� sau ./Quit")
	Say("Nh�n thu�ng: ", getn(tbOpt), tbOpt)
end;

function nhantop7den10all()
	local istop = istop7den10all();
	local idtask = idtasktop7den10dot2 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		{szName = "Thi�n ho�ng", tbProp={0,168},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,169},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,170},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,171},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,172},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,173},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,174},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,175},nCount=1,nQuality = 1},
		{szName = "Thi�n ho�ng", tbProp={0,176},nCount=1,nQuality = 1},

		{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1, 0, 0}, nCount = 500},
		{szName = "Tinh h�ng b�o th�ch", tbProp = {4, 353, 1, 1, 0, 0}, nCount = 1},
		{szName = "T� th�y tinh", tbProp = {4, 239 ,1 , 1, 0, 0}, nCount = 1},
		{szName = "Thi�t la h�n", tbProp = {6, 1, 23, 1, 0, 0}, nCount = 1},
		{szName = "Ti�n th�o l� ��c bi�t", tbProp = {6, 1, 1181, 1, 0, 0}, nCount = 2},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 7 den 10 dot 2");
	Earn(7000000)
	Msg2Player("B�n �� nh�n ���c 700 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 7 ��n 10 trong l�n �ua TOP ��t 2", 5)
	logplayer("dulieu/nhanthuongtopdot2.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] da nhan th�nh c�ng TOP 7 den 10 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function GetRankListTopTK()
	local tbNum = {"1", "2 ", "3", "4", "5", "6 ", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10250, i);
		--local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10287, i);
		--local szname,nrank = Ladder_GetLadderInfo(10287, i);

		if szname ~= nil then	
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh�ng", 0);
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
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh�ng", 0);
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
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh�ng", 0);
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