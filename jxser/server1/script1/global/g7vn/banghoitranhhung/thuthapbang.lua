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


nCityWar_Item_ID_G = 6	--lo¹i
nCityWar_Item_ID_D = 1	--lo¹i
nCityWar_Item_ID_P = 4448	--id vËt phÈm
TIAOZHANLING_TASK_DATE = 2018 -- kkl h»ng ngµy
TIAOZHANLING_TASK_COUNT = 2019 -- sè kkl h»ng ngµy
TIAOZHANLING_LGTYPEE= 539
TIAOZHANLING_LGNameE = "tiaozhanling"
LGTSK_TIAOZHANLING_COUNTT = 1

function main()
      -- dofile("script/global/g7vn/banghoitranhhung/thuthapbang.lua");
	local tbSay = {}
	tinsert(tbSay,"Ta ®Õn giao Khiªu Chiªn  LÖnh./GiveTiaoZhanLing")
	tinsert(tbSay,"Xem sè l­îng Khiªu Chiªn  LÖnh cña bang./ViewTiaoZhanLing")
	tinsert(tbSay,"Tho¸t/OnCancel")
	Say("    Bang héi tranh ®o¹t ch­a bao giê lµ muén\nT©m huyÕt ®êi trai quyÕt tr¶i tr¨m ngh×n trËn th¾ng", getn(tbSay), tbSay)
end

function citywar_CheckVotes()
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec>B¶ng xÕp h¹ng Tranh ®o¹t Khiªu Chiªn  LÖnh: <enter>%s%s%s<enter>", strfill_center("STT",4, " "), strfill_center("Bang héi", 20, " "), strfill_center("Sè l­îng", 20, " "))
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
	TaskSayList(szMsg, "C¸m ¬n! Ta ®· râ råi./OnCancel")
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
		LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)	--ÉèÖÃÉçÍÅÐÅÏ¢(ÀàÐÍ¡¢Ãû³Æ)
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
			Say("Xin lçi! §¹i hiÖp ch­a gia nhËp bang héi nµo c¶!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCount >= 300) then
			Say("Mçi ngµy giao n¹p tèi ®a 300 lÖnh bµi. H«m nay ng­¬i ®· giao 300 lÖnh bµi råi, ngµy mai h·y tiÕp tôc.",0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	----------------- giíi h¹n sè l­îng Khiªu Chiªn  LÖnh-------------------
--	local szlgname = GetTongName();
--	checkCreatLG(szlgname);	
--	checkJoinLG(szlgname);
--	local szTongName, nTongID = GetTongName();
--	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
--	if nsum >= 2000000000 then   --ÉÏÏÞ´ï20ÒÚÔò²»ÄÜÔÙÌá½»
--		Say("Tæng sè vâ l©m lÖnh ®· ®¹t giíi h¹n. Lóc kh¸c thö l¹i vËy.",0)
--		return 0;
--	end
	---------------------më ra giao diÖn giao n¹p
	GiveItemUI("Giao nép Khiªu Chiªn  LÖnh", "1 Khiªu Chiªn  LÖnh = 30000 Exp.", "sure_GiveTiaoZhanLing", "OnCancel");
end

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("ThËt ®¸ng tiÕc, ng­¬i ch­a giao vËt phÈm nhiÖm vô cho ta",2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
		return 0;
	end
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh«ng nhËn nh÷ng thø kh¸c, chØ cÇn ®­a ta <color=yellow>Khiªu Chiªn  LÖnh<color> lµ ®­îc råi.", 2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
			return 0;
		end;
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+nCount > 300) then
			Say(format("ThËt ®¸ng tiÕc, h«m nay ng­¬i ®· nép vµo %d Khiªu Chiªn  LÖnh, chØ cÇn nép %d lÖnh bµi n÷a lµ ®­îc råi.",nCountall,300-nCountall),0)
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
	Msg2Player(format("B¹n ®· nép vµo %d Khiªu Chiªn  LÖnh, nhËn ®­îc %d ®iÓm kinh nghiÖm",nCount,nAddExp))
	WriteLog(format("[C«ng thµnh chiÕn_giao Khiªu Chiªn  LÖnh]Date:%s Account:%s Name:%s Tong:%s Count:%d Exp:%d",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szTongName,nCount,nAddExp))
end;

function ViewTiaoZhanLing()
		local szTongName, nTongID = GetTongName();
		if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER)) then
			Say("ThËt ®¸ng tiÕc, chØ cã bang chñ vµ tr­ëng l·o míi cã thÓ xem th«ng tin sè l­îng Khiªu Chiªn  LÖnh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)		
		Say(format("QuÝ bang ®· nép vµo <color=yellow>%d<color> Khiªu Chiªn  LÖnh.",nCurCount),0)
end

function OnCancel()
end;