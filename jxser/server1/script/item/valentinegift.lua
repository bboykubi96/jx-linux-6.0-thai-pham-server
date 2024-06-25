-- script viet hoa By http://tranhba.com #ÐÌ##óµ#º#
-- script viet hoa By http://tranhba.com 2006Äª2¤¢14Ìâ~2006Äª2¤¢21Ìâ 50###°ß¤Ð# ³###Ý##ß¿Ðß¤###·
-- script viet hoa By http://tranhba.com #µ£¿##Ä####µÅ#¤ï#Ý#°#ÐÅ#·######±
-- script viet hoa By http://tranhba.com #µÅ###Ä####µ£¿¤ï#Ý#°#Äß©#Ð¿#¸##±
-- script viet hoa By http://tranhba.com ß¤±#¸¿µ´##
-- script viet hoa By http://tranhba.com ²####¯########ã#
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
	"<#>´º##Ì#·######ý##ºÛ#######Ä#Ä##Ä###ß##Äß##ýÅ#Å##Ä######",
	"<#>##¢Û#´µ´#Ä¢##ß·#Ä###ß##ð##Ýª#####ß#¸ß##±°#Ä·#±##Ðó·##¸£###",
	"<#>¿â°##ÄÌâ#ãã#Ä·µ´×#¢ó####¢Û###²##£#²ãµ·###ß###²####",
	"<#>Ì#Ðó#Ä¢·Ý#ã#Ä·µ´##°Ð##²###¿²¿µßµ#ß##×####ß###Ð¤###",
	"<#>#¸#####ß######°#¸#²#ßÐ####ãÐ¤ó#######µÝ##°¸#£±##",
	"<#>###ÐÌ##ó¿×µ###¤##ÐÌ#ºÝ¿×µ#ãµ¤#°Ð##Ä·ÐÝ±#######",
	-- script viet hoa By http://tranhba.com "<#>Ì·¤#ÐãÌ#¢ó#Ä#Ä#######·#ºÄ·×ð·Û#Ä·###¤#Ä·ã#ã#ß####ß##¿×µ##Ä#¢Äª##",
}

function main()
if (gb_GetModule("#ÐÌ##óµ#º#") == 1) then
	if (GetSex() == 0) then	-- script viet hoa By http://tranhba.com Ä#
		Say("<#>    £#ã·#°#ÐÌ##óµ#º##±¿Ðß¤#Ý##Äó##ß©#Ä<color=yellow>#ý<color>ß###<color=yellow>#°#ÐÅ#·######±<color>²##ÝÐ#Äó#Ä######", 2, "<#>¤ï#Ý·#####/want2present", "<#>Ì###/OnCancel")
	elseif (GetSex() == 1) then	-- script viet hoa By http://tranhba.com Å#
		Say("<#>    £#ã·#°#ÐÌ##óµ#º##±¿Ðß¤#Ý##Äó##ß©#Ä<color=yellow>##<color>ß#¿Ð<color=yellow>#°#Äß©#Ð¿#¸##±<color>²##ÝÐ#Äó#Ä######", 2, "<#>¤ï#Ý#Ð¿#¸#/want2present", "<#>Ì###/OnCancel")
	end
end
	return 1
end

function want2present()
	AskClientForString("PlayerSelect", "", 1, 16, "##£#Ì##¤##·###");
end

function PlayerSelect(rolename)
	if (ST_CheckTextFilter(rolename) ~= 1) then
		Say("#¤²##ð##Äó#ï£#Ì##Ä·###º#ã#######´£######£¤ß#´###", 0)
		return
	end
	
	for i = 1, getn(TB_FORBIDWORD) do
		local bp = strfind(rolename, TB_FORBIDWORD[i])
		if (bp ~= nil) then
			Say("#¤²##ð##Äó#ï£#Ì##Ä·###º#ã#######´£######£¤ß#´###", 0)
			return
		end
	end
	
	SetStringTask(STSK_OTHERNAME,rolename)
	QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename);
end

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	if (nSex == GetSex()) then
		if (nSex == 0) then
			Say("<#>#°#ÐÅ#·######±##Ä##Ý###µÅ#Å###", 0)
		elseif (nSex == 1) then
			Say("<#>#°#Äß©#Ð¿#¸##±##Ä##Ý###µ£¿Å###", 0)
		end
		return
	end
	SetTaskTemp(TEMPSK_MAPID, nSubWorldID)
	Say("<#>##£#Ì#Äó#Ä####ã####ßâ###¤#¤#ÐÌ####ã##º", 3, "£#Ì#####ã#/inputmsg", "##¤#¤#ÐÌ####ã#/selectmsg", "Ì###/OnCancel")
end

function inputmsg()
	AskClientForString("BlessPlayer", "", 1, 100, "##£#Ì#####ã#");
end

function selectmsg()
	local tbOpp = {}
	for  i = 1, getn(Bless) do
		tbOpp[i] = Bless[i].."/BlessPlayer"
	end
	tbOpp[getn(tbOpp) + 1] = "Ì###/OnCancel"
	Say("<#>####¤#####ã##º", getn(tbOpp), tbOpp)
end

function BlessPlayer(szBless)
	if (type(szBless) == "number") then
		szBless = Bless[szBless + 1]
	end
	if (ST_CheckTextFilter(szBless) ~= 1) then
		Say("#¤²##ð##Äó#Ä####ã###º#ã#######´£######£¤ß#´###", 0)
		return
	end
	
	for i = 1, getn(TB_FORBIDWORD) do
		local bp = strfind(szBless, TB_FORBIDWORD[i])
		if (bp ~= nil) then
			Say("#¤²##ð##Äó#ï£#Ì##Ä·###º#ã#######´£######£¤ß#´###", 0)
			return
		end
	end
	if (GetStringTask(STSK_OTHERNAME) == nil or GetStringTask(STSK_OTHERNAME) == "" or GetTaskTemp(TEMPSK_MAPID) == 0) then
		return
	end
	
	if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then
		ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1)
		local szMsg = ""
		szMsg = GetName().." <#>#¤ "..GetStringTask(STSK_OTHERNAME).." <#>###º"..szBless
		AddGlobalNews(szMsg)
		local szParam = GetStringTask(STSK_OTHERNAME).." "..GetTaskTemp(TEMPSK_MAPID).." "..GetName()
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "valentine_bless_anywhere", szParam, "", "")
	else
		Say("<#>âß²####ÐÌ##óµ#º#######£¤ß#´###", 0)
	end
end

function BlessPlayerOffline(TargetName)
	Say("<#>#¤²##ð##"..TargetName.."Ä¿#°²#¤ó#######·#######ý###Ä#¢¢###",0)
end

function OnCancel()
end
