-- script viet hoa By http://tranhba.com #��##�#�#
-- script viet hoa By http://tranhba.com 2006Ī2��14��~2006Ī2��21�� 50###�ߤ�# �###�##߿�ߤ###�
-- script viet hoa By http://tranhba.com #���##�####��#��#�#�#��#�######�
-- script viet hoa By http://tranhba.com #��###�####�����#�#�#�ߩ#п#�##�
-- script viet hoa By http://tranhba.com ߤ�#����##
-- script viet hoa By http://tranhba.com �####�########�#
IL("SETTING")
IL("LEAGUE")
Include("\\script\\lib\\gb_modulefuncs.lua")

ITEM_GENRE = 6
ITEM_DETAIL = 1
ITEM_PARTI = 1058
STSK_OTHERNAME = 4
TEMPSK_MAPID = 192
TB_FORBIDWORD = {
	"<item=",
	"<link=",
	"<pic=",
	"<color=",
	"<bclr=",
	"<enter",
}

Bless=
{
	"<#>��##�#�######�##��#######�#�##�###�##��##��#�##�######",
	"<#>##��#���#Ģ##߷#�###�##�##ݪ#####�#��##��#ķ#�##��##��###",
	"<#>��##���#��#ķ���#��####��###�##�#�㵷###�###�####",
	"<#>�#��#Ģ��#�#ķ��##��##�###����ߵ#�##�####�###Ф###",
	"<#>#�#####�######�#�#�#��####�Ф�#######��##��#��##",
	"<#>###��##�׵###�##��#�ݿ׵#㵤#��##ķ�ݱ#######",
	-- script viet hoa By http://tranhba.com "<#>̷�#���#��#�#�#######�#�ķ���#ķ###�#ķ�#�#�####�##�׵##�#�Ī##",
}

function main()
if (gb_GetModule("#��##�#�#") == 1) then
	if (GetSex() == 0) then	-- script viet hoa By http://tranhba.com �#
		Say("<#>    �#�#�#��##�#�##���ߤ#�##��##ߩ#�<color=yellow>#�<color>�###<color=yellow>#�#��#�######�<color>�##��#��#�######", 2, "<#>��#ݷ#####/want2present", "<#>�###/OnCancel")
	elseif (GetSex() == 1) then	-- script viet hoa By http://tranhba.com �#
		Say("<#>    �#�#�#��##�#�##���ߤ#�##��##ߩ#�<color=yellow>##<color>�#��<color=yellow>#�#�ߩ#п#�##�<color>�##��#��#�######", 2, "<#>��#�#п#�#/want2present", "<#>�###/OnCancel")
	end
end
	return 1
end

function want2present()
	AskClientForString("PlayerSelect", "", 1, 16, "##�#�##�##�###");
end

function PlayerSelect(rolename)
	if (ST_CheckTextFilter(rolename) ~= 1) then
		Say("#��##�##��#�#�##ķ###�#�#######��######���#�###", 0)
		return
	end
	
	for i = 1, getn(TB_FORBIDWORD) do
		local bp = strfind(rolename, TB_FORBIDWORD[i])
		if (bp ~= nil) then
			Say("#��##�##��#�#�##ķ###�#�#######��######���#�###", 0)
			return
		end
	end
	
	SetStringTask(STSK_OTHERNAME,rolename)
	QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename);
end

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	if (nSex == GetSex()) then
		if (nSex == 0) then
			Say("<#>#�#��#�######�##�##�###��#�###", 0)
		elseif (nSex == 1) then
			Say("<#>#�#�ߩ#п#�##�##�##�###����###", 0)
		end
		return
	end
	SetTaskTemp(TEMPSK_MAPID, nSubWorldID)
	Say("<#>##�#�#��#�####�####��###�#�#��####�##�", 3, "�#�#####�#/inputmsg", "##�#�#��####�#/selectmsg", "�###/OnCancel")
end

function inputmsg()
	AskClientForString("BlessPlayer", "", 1, 100, "##�#�#####�#");
end

function selectmsg()
	local tbOpp = {}
	for  i = 1, getn(Bless) do
		tbOpp[i] = Bless[i].."/BlessPlayer"
	end
	tbOpp[getn(tbOpp) + 1] = "�###/OnCancel"
	Say("<#>####�#####�##�", getn(tbOpp), tbOpp)
end

function BlessPlayer(szBless)
	if (type(szBless) == "number") then
		szBless = Bless[szBless + 1]
	end
	if (ST_CheckTextFilter(szBless) ~= 1) then
		Say("#��##�##��#�####�###�#�#######��######���#�###", 0)
		return
	end
	
	for i = 1, getn(TB_FORBIDWORD) do
		local bp = strfind(szBless, TB_FORBIDWORD[i])
		if (bp ~= nil) then
			Say("#��##�##��#�#�##ķ###�#�#######��######���#�###", 0)
			return
		end
	end
	if (GetStringTask(STSK_OTHERNAME) == nil or GetStringTask(STSK_OTHERNAME) == "" or GetTaskTemp(TEMPSK_MAPID) == 0) then
		return
	end
	
	if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then
		ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1)
		local szMsg = ""
		szMsg = GetName().." <#>#� "..GetStringTask(STSK_OTHERNAME).." <#>###�"..szBless
		AddGlobalNews(szMsg)
		local szParam = GetStringTask(STSK_OTHERNAME).." "..GetTaskTemp(TEMPSK_MAPID).." "..GetName()
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "valentine_bless_anywhere", szParam, "", "")
	else
		Say("<#>�߲####��##�#�#######���#�###", 0)
	end
end

function BlessPlayerOffline(TargetName)
	Say("<#>#��##�##"..TargetName.."Ŀ#��#��#######�#######�###�#��###",0)
end

function OnCancel()
end
