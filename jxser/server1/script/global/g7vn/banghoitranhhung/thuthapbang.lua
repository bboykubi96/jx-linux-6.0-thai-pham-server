IncludeLib("SPREADER")
IncludeLib("SETTING")
IncludeLib("LEAGUE")
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\citywar_global\\ladder.lua")


nCityWar_Item_ID_G = 6	--lo�i
nCityWar_Item_ID_D = 1	--lo�i
nCityWar_Item_ID_P = 4448	--id v�t ph�m
TIAOZHANLING_TASK_DATE = 2018 -- kkl h�ng ng�y
TIAOZHANLING_TASK_COUNT = 2019 -- s� kkl h�ng ng�y
TIAOZHANLING_LGTYPEE= 539
TIAOZHANLING_LGNameE = "tiaozhanling"
LGTSK_TIAOZHANLING_COUNTT = 1

function main()
      -- dofile("script/global/g7vn/banghoitranhhung/thuthapbang.lua");
	local tbSay = {}
	tinsert(tbSay,"Ta ��n giao Khi�u Chi�n  L�nh./GiveTiaoZhanLing")
	tinsert(tbSay,"Xem s� l��ng Khi�u Chi�n  L�nh c�a bang./ViewTiaoZhanLing")
	tinsert(tbSay,"Tho�t/OnCancel")
	Say("    Bang h�i tranh �o�t ch�a bao gi� l� mu�n\nT�m huy�t ��i trai quy�t tr�i tr�m ngh�n tr�n th�ng", getn(tbSay), tbSay)
end

function citywar_CheckVotes()
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec>B�ng x�p h�ng Tranh �o�t Khi�u Chi�n  L�nh: <enter>%s%s%s<enter>", strfill_center("STT",4, " "), strfill_center("Bang h�i", 20, " "), strfill_center("S� l��ng", 20, " "))
	local res = {}
	for i = 1, getn(tbVotes) do
		tinsert(res, strfill_center(i, 4, " "))
		tinsert(res, strfill_center(tbVotes[i].szName, 20, " "))
		tinsert(res, strfill_center(tbVotes[i].nValue, 20, " "))
		tinsert(res, "<enter>")
	end
	PushString(szMsg)
	for i = 1, getn(res) do
		AppendString(res[i])
	end
	szMsg = PopString()
	TaskSayList(szMsg, "C�m �n! Ta �� r� r�i./OnCancel")
end

function checkBangHuiLimit()
	local TongName,TongID = GetTongName();
	if TongName == "" or TongName == nil then
		return 0;
	else
		return 1;
	end
end


function checkCreatLG(szlgname)
	local nlid = LG_GetLeagueObj(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)
	if nlid == 0 or nlid == nil then
		local nNewLeagueID = LG_CreateLeagueObj()
		LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)	--����������Ϣ(���͡�����)
		local ret = LG_ApplyAddLeague(nNewLeagueID, "", "") 
		LG_FreeLeagueObj(nNewLeagueID)
	end
end

function checkJoinLG(szlgname)
	local roleid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPEE,szlgname);
	if roleid == 0 or roleid == nil then
		local nMemberID = LGM_CreateMemberObj()
		LGM_SetMemberInfo(nMemberID,szlgname, 0, TIAOZHANLING_LGTYPEE, TIAOZHANLING_LGNameE) 
		local ret = LGM_ApplyAddMember(nMemberID, "", "") 
		LGM_FreeMemberObj(nMemberID)
	end
end

function GiveTiaoZhanLing()
	if checkBangHuiLimit() == 0 then
			Say("Xin l�i! ��i hi�p ch�a gia nh�p bang h�i n�o c�!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCount >= 300) then
			Say("M�i ng�y giao n�p t�i �a 300 l�nh b�i. H�m nay ng��i �� giao 300 l�nh b�i r�i, ng�y mai h�y ti�p t�c.",0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	----------------- gi�i h�n s� l��ng Khi�u Chi�n  L�nh-------------------
--	local szlgname = GetTongName();
--	checkCreatLG(szlgname);	
--	checkJoinLG(szlgname);
--	local szTongName, nTongID = GetTongName();
--	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
--	if nsum >= 2000000000 then   --���޴�20���������ύ
--		Say("T�ng s� v� l�m l�nh �� ��t gi�i h�n. L�c kh�c th� l�i v�y.",0)
--		return 0;
--	end
	---------------------m� ra giao di�n giao n�p
	GiveItemUI("Giao n�p Khi�u Chi�n  L�nh", "1 Khi�u Chi�n  L�nh = 30000 Exp.", "sure_GiveTiaoZhanLing", "OnCancel");
end

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("Th�t ��ng ti�c, ng��i ch�a giao v�t ph�m nhi�m v� cho ta",2,"Giao l�i v�t ph�m/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
		return 0;
	end
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh�ng nh�n nh�ng th� kh�c, ch� c�n ��a ta <color=yellow>Khi�u Chi�n  L�nh<color> l� ���c r�i.", 2,"Giao l�i v�t ph�m/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
			return 0;
		end;
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+nCount > 300) then
			Say(format("Th�t ��ng ti�c, h�m nay ng��i �� n�p v�o %d Khi�u Chi�n  L�nh, ch� c�n n�p %d l�nh b�i n�a l� ���c r�i.",nCountall,300-nCountall),0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	local nCityId = getSigningUpCity(1);
	local szTongName, nTongID = GetTongName();
	local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		RemoveItemByIndex(nItemidx)
	end;
	SetTask(TIAOZHANLING_TASK_COUNT,nCountall+nCount);	
	LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE, szTongName, LGTSK_TIAOZHANLING_COUNTT, nCount, "", "");
	nAddExp = nCount * 30000
	AddOwnExp(nAddExp)
	Msg2Player(format("B�n �� n�p v�o %d Khi�u Chi�n  L�nh, nh�n ���c %d �i�m kinh nghi�m",nCount,nAddExp))
	WriteLog(format("[C�ng th�nh chi�n_giao Khi�u Chi�n  L�nh]Date:%s Account:%s Name:%s Tong:%s Count:%d Exp:%d",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szTongName,nCount,nAddExp))
end;

function ViewTiaoZhanLing()
		local szTongName, nTongID = GetTongName();
		if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER)) then
			Say("Th�t ��ng ti�c, ch� c� bang ch� v� tr��ng l�o m�i c� th� xem th�ng tin s� l��ng Khi�u Chi�n  L�nh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)		
		Say(format("Qu� bang �� n�p v�o <color=yellow>%d<color> Khi�u Chi�n  L�nh.",nCurCount),0)
end

function OnCancel()
end;