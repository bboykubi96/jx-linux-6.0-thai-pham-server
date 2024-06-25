IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\lib\\awardtemplet.lua")

--Script by mcteam

--=============DS nhan thuong ten nv=================

local tbGMAccount = {"minkiu", "colauhong", "tamquoc01", "tamquoc02"}

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
	{"", 2 },
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

function main()
	dofile("script/global/tieungao/duatopnhanthuongd3.lua");
	dofile("script/global/g7vn/g7configall.lua");

	--do Say("K�t qu� �ua TOP ��t 3 ch�a c�") return end
	do Say("H�i th� gian t�nh l� chi") return end

	local tbSay = {}

	local resultisgm = isgm();
	if resultisgm == 1 then
		--tinsert(tbSay,"Th�ng k� top LV server ./GetRankListTop10")
		tinsert(tbSay,"Th�ng k� top Event ./GetRankListTop3EV")
		tinsert(tbSay,"Delete top Event ./DeleteTOPEV")
	end
	--tinsert(tbSay,"Nh�n thu�ng �ua top ��t 3 ./chontop10all")
	--tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("��i hi�p c�n g�?", getn(tbSay), tbSay)

end;

function DeleteTOPEV()
		Ladder_ClearLadder(10282)
		Say("Deleted")
end

function chontop10all()

	if CalcFreeItemCellCount() < 60 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 60 � tr�ng r�i h�y nh�n.",0);
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

	local idtask = idtasktop1dot3 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop  then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		[1]	={szName = "V� danh gi�i ch� 1", tbProp={0,141},nCount=1,nQuality = 1},
		[2]	={szName = "V� danh gi�i ch� 2", tbProp={0,142},nCount=1,nQuality = 1},
		[3]	={szName = "M� b�i ng�a Phi�n V�", tbProp = {6, 1, 2334, 1,0,0}, nCount = 1},
		[4]	={szName = "M�t n� v��ng gi�", tbProp = {0,11,561,1,0,0}, nCount = 1, nExpiredTime = 43200},
		[5]	={szName = "V� l�m m�t t�ch", tbProp = {6, 1, 26, 1,0,0}, nCount = 5},
		[6]	={szName = "T�y t�y kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 5},
		[7]	={szName = "Nh�t k� c�n kh�n ph�", tbProp={6,1,2126,1,0,0},nExpiredTime=20160},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 1 dot 3");
	--Earn(100000000)
	--Msg2Player("B�n �� nh�n ���c 10.000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 1 trong l�n �ua TOP ��t 3", 5)

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
	local idtask = idtasktop2dot3 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		[1]	={szName = "An bang h�ng li�n", tbProp={0,164},nCount=1,nQuality = 1},
		[2]	={szName = "An bang ng�c b�i", tbProp={0,165},nCount=1,nQuality = 1},
		[3]	={szName = "An bang gi�i ch� 1", tbProp={0,166},nCount=1,nQuality = 1},
		[4]	={szName = "An bang gi�i ch� 2", tbProp={0,167},nCount=1,nQuality = 1},
		[5]	={szName = "M� b�i ng�a B�n Ti�u", tbProp = {6, 1, 2333, 1,0,0}, nCount = 1},
		[6]	={szName = "M�t n� v��ng gi�", tbProp = {0,11,561,1,0,0}, nCount = 1, nExpiredTime = 43200},
		[7]	={szName = "V� l�m m�t t�ch", tbProp = {6, 1, 26, 1,0,0}, nCount = 4},
		[8]	={szName = "T�y t�y kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 4},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 2 dot 3");
	--Earn(100000000)
	--Msg2Player("B�n �� nh�n ���c 10.000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 2 trong l�n �ua TOP ��t 3", 5)

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
	local idtask = idtasktop3dot3 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		[1]	={szName = "��nh qu�c ph�t qu�n", tbProp={0,159},nCount=1,nQuality = 1},
		[2]	={szName = "��nh qu�c y�u ��i", tbProp={0,160},nCount=1,nQuality = 1},
		[3]	={szName = "��nh qu�c h� uy�n", tbProp={0,161},nCount=1,nQuality = 1},
		[4]	={szName = "��nh qu�c h�i", tbProp={0,162},nCount=1,nQuality = 1},
		[5]	={szName = "��nh qu�c tr��ng sam", tbProp={0,163},nCount=1,nQuality = 1},
		[6]	={szName = "M� b�i ng�a B�n Ti�u", tbProp = {6, 1, 2333, 1,0,0}, nCount = 1},
		[7]	={szName = "M�t n� v��ng gi�", tbProp = {0,11,561,1,0,0}, nCount = 1, nExpiredTime = 43200},
		[8]	={szName = "V� l�m m�t t�ch", tbProp = {6, 1, 26, 1,0,0}, nCount = 3},
		[9]	={szName = "T�y t�y kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 3},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 3 dot 3");
	--Earn(100000000)
	--Msg2Player("B�n �� nh�n ���c 10.000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 3 trong l�n �ua TOP ��t 3", 5)

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
	local idtask = idtasktop4den6dot3 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		[1]	={szName = "Hi�p C�t Thi�t Huy�t Sam", tbProp={0,186},nCount=1,nQuality = 1},
		[2]	={szName = "Hi�p C�t �a T�nh Ho�n", tbProp={0,187},nCount=1,nQuality = 1},
		[3]	={szName = "Hi�p C�t �an T�m Gi�i", tbProp={0,188},nCount=1,nQuality = 1},
		[4]	={szName = "Hi�p C�t T�nh � K�t", tbProp={0,189},nCount=1,nQuality = 1},
		[5]	={szName = "M� b�i ng�a Phi v�n", tbProp = {6, 1, 2396, 1,0,0}, nCount = 1},
		[7]	={szName = "V� l�m m�t t�ch", tbProp = {6, 1, 26, 1,0,0}, nCount = 2},
		[8]	={szName = "T�y t�y kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 2},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 4 den 6 dot 3");
	--Earn(100000000)
	--Msg2Player("B�n �� nh�n ���c 10.000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 4 ��n 6 trong l�n �ua TOP ��t 3", 5)

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
	local idtask = idtasktop7den10dot3 -- id task thuong top1all
	local gt_task = GetTask(idtask);
		if gt_task >= istop then
			Say("Ph�n th��ng l�n n�y ��i hi�p �� nh�n r�i c�n g�!")
		return 1
	end

	local tbItemTop  =
	{
		--[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		[1]	={szName = "Hi�p C�t Thi�t Huy�t Sam", tbProp={0,186},nCount=1,nQuality = 1},
		[2]	={szName = "Hi�p C�t �a T�nh Ho�n", tbProp={0,187},nCount=1,nQuality = 1},
		[3]	={szName = "Hi�p C�t �an T�m Gi�i", tbProp={0,188},nCount=1,nQuality = 1},
		[4]	={szName = "Hi�p C�t T�nh � K�t", tbProp={0,189},nCount=1,nQuality = 1},
		[5]	={szName = "M� b�i ng�a Phi v�n", tbProp = {6, 1, 2396, 1,0,0}, nCount = 1},
		[7]	={szName = "V� l�m m�t t�ch", tbProp = {6, 1, 26, 1,0,0}, nCount = 1},
		[8]	={szName = "T�y t�y kinh", tbProp = {6, 1, 22, 1,0,0}, nCount = 1},
	}
	tbAwardTemplet:GiveAwardByList(tbItemTop, "Phan thuong Top 7 den 10 dot 3");
	--Earn(100000000)
	--Msg2Player("B�n �� nh�n ���c 10.000 v�n l��ng")

	SetTask(idtask, gt_task+1)
	Say("Ch�c m�ng ��i hi�p �� nh�n �u�c tuy�t ph�m nh� �")
	AddGlobalCountNews("Xin ch�c m�ng <color=red>"..GetName().."<color> �� nh�n ���c gi�i th��ng TOP 7 ��n 10 trong l�n �ua TOP ��t 3", 5)

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

function GetRankListTop3EV()
	local tbNum = {"1", "2 ", "3", "4", "5", "6 ", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 3 do
		local szname,nrank = Ladder_GetLadderInfo(10282, i);--top 3 event
		if szname ~= nil then	
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s x�p h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh�ng", 0);
		end

	end
	logWriteTopEV(szranklist)--Ghi log top tong kim
	Say(szranklist)
end

function logWriteTopEV(str)
	local gm_Log = "dulieu/topevent.txt"
	local fs_log = openfile(gm_Log, "a");
	write(fs_log, ""..str.."\n");
	closefile(fs_log);
end;

function GetRankListTop10()
	local tbNum = {"1", "2 ", "3", "4", "5", "6 ", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname,nrank = Ladder_GetLadderInfo(10287, i);--top 10 the gioi
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
	local gm_Log = "script/global/tieungao/toplv.txt"
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
