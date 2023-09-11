--情人节礼盒
--2006年2月14日~2006年2月21日 50级及以上 冲值玩家可以获得
--侠士只能给侠女赠送“情浓玫瑰花”
--侠女只能给侠士赠送“心意巧克力”
--以变量来计
--并滚动公告祝福语
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
	"<#> M閚g nh� gi� xu﹏, l祅 gi� qua 甶 kh玭g  l筰 d蕌 v誸, ch� v� n鏸 nh� trong l遪g, xin g雐 m閠 l阨 ch骳 ph骳 n錸g n祅.",
	"<#> D� tng lai c� th� n祇 甶 n鱝 t玦 c騨g s� y猽 n祅g cho n h琲 th� cu鑙 c飊g.",
	"<#> Ng祔 r秐h r鏸 c� b筺 n h祅 huy猲, d� cu閏 s鑞g c� th� n祇 t玦 c騨g u th輈h.",
	"<#> Con 阯g t玦 甶 c� b筺 ng h祅h d� ch玭g gai t玦 c騨g cam l遪g.",
	"<#> K誸 duy猲 th祅h phu th�, m穒 b猲 nhau tr鋘 i.  ",
	"<#> Ch骳 l� t譶h nh﹏ vui v�! C莡 mong nh鱪g 甶襲 t鑤 l祅h nh蕋 s� n v韎 b筺!!",
	--"<#>让云捎去满心的祝福，点缀你甜蜜的梦，愿你拥有一个幸福快乐的新年！",
}

function main()
if (gb_GetModule("L� v藅 t譶h nh﹏") == 1) then
	if (GetSex() == 0) then	--男
		Say("<#>  S� d鬾g 'L� v藅 t譶h nh﹏' c� th� t苙g cho <color=yellow>'ngi 蕐'<color> m閠 a <color=yellow>'Hoa h錸g t譶h �'<color> ng th阨 n鉯 l猲 l阨 ch骳 ph骳 c馻 b筺.", 2, "<#> T苙g hoa h錸g/want2present", "<#> H駓 b� /OnCancel")
	elseif (GetSex() == 1) then	--女
		Say("<#>  S� d鬾g 'L� v藅 t譶h nh﹏' c� th� t苙g cho <color=yellow>'ngi 蕐'<color> m閠 mi課g <color=yellow>'S� c� la t譶h y猽'<color> ng th阨 n鉯 l猲 l阨 ch骳 ph骳 c馻 b筺.", 2, "<#> T苙g S� c� la/want2present", "<#> H駓 b� /OnCancel")
	end
end
	return 1
end

function want2present()
	AskClientForString("PlayerSelect", "", 1, 16, "Xin nh藀 t猲 i phng");
end

function PlayerSelect(rolename)
	if (ST_CheckTextFilter(rolename) ~= 1) then
		Say("Xin l鏸! T猲 b筺 nh藀 v祇 c� ch� kh玭g h頿 l�, h穣 th� l筰 l莕 n鱝!", 0)
		return
	end
	
	for i = 1, getn(TB_FORBIDWORD) do
		local bp = strfind(rolename, TB_FORBIDWORD[i])
		if (bp ~= nil) then
			Say("Xin l鏸! T猲 b筺 nh藀 v祇 c� ch� kh玭g h頿 l�, h穣 th� l筰 l莕 n鱝!", 0)
			return
		end
	end
	
	SetStringTask(STSK_OTHERNAME,rolename)
	QueryWiseManForSB("BlessPlayerOnline", "BlessPlayerOffline", 1000, rolename);
end

function BlessPlayerOnline(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	if (nSex == GetSex()) then
		if (nSex == 0) then
			Say("<#> 'Hoa h錸g t譶h �' ch� c� th� t苙g cho hi謕 n� th玦!", 0)
		elseif (nSex == 1) then
			Say("<#> 'S� c� la t譶h y猽' ch� c� th� t苙g cho tr竛g s� th玦!", 0)
		end
		return
	end
	SetTaskTemp(TEMPSK_MAPID, nSubWorldID)
	Say("<#> Xin nh藀 l阨 ch骳 ph骳 c馻 b筺 v祇 ho芻 ch鋘 nh鱪g l阨 ch骳 ph骳 c� s絥:", 3, "Nh藀 l阨 ch骳 ph骳 v祇/inputmsg", "Ch鋘 l阨 ch骳 ph骳 c� s絥/selectmsg", "H駓 b� /OnCancel")
end

function inputmsg()
	AskClientForString("BlessPlayer", "", 1, 100, "Xin nh藀 l阨 ch骳 ph骳 v祇");
end

function selectmsg()
	local tbOpp = {}
	for  i = 1, getn(Bless) do
		tbOpp[i] = Bless[i].."/BlessPlayer"
	end
	tbOpp[getn(tbOpp) + 1] = "H駓 b� /OnCancel"
	Say("<#> H穣 ch鋘 c﹗ ch骳:", getn(tbOpp), tbOpp)
end

function BlessPlayer(szBless)
	if (type(szBless) == "number") then
		szBless = Bless[szBless + 1]
	end
	if (ST_CheckTextFilter(szBless) ~= 1) then
		Say("Xin l鏸! L阨 ch骳 ph骳 c馻 b筺 c� ch� kh玭g h頿 l�, h穣 th� l筰 l莕 n鱝!", 0)
		return
	end
	
	for i = 1, getn(TB_FORBIDWORD) do
		local bp = strfind(szBless, TB_FORBIDWORD[i])
		if (bp ~= nil) then
			Say("Xin l鏸! T猲 b筺 nh藀 v祇 c� ch� kh玭g h頿 l�, h穣 th� l筰 l莕 n鱝!", 0)
			return
		end
	end
	if (GetStringTask(STSK_OTHERNAME) == nil or GetStringTask(STSK_OTHERNAME) == "" or GetTaskTemp(TEMPSK_MAPID) == 0) then
		return
	end
	
	if (CalcEquiproomItemCount(ITEM_GENRE,ITEM_DETAIL,ITEM_PARTI,-1) >= 1) then
		ConsumeEquiproomItem(1, ITEM_GENRE, ITEM_DETAIL, ITEM_PARTI, -1)
		local szMsg = ""
		szMsg = GetName().." <#> n鉯 "..GetStringTask(STSK_OTHERNAME).." <#> r籲g:"..szBless
		AddGlobalNews(szMsg)
		local szParam = GetStringTask(STSK_OTHERNAME).." "..GetTaskTemp(TEMPSK_MAPID).." "..GetName()
		LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "valentine_bless_anywhere", szParam, "", "")
	else
		Say("<#> Kh玭g t譵 ra l� v藅 t譶h nh﹏, xin h穣 th� l筰.", 0)
	end
end

function BlessPlayerOffline(TargetName)
	Say("<#> Xin l鏸! "..TargetName.."Hi謓 t筰 c� 蕐 (anh 蕐) kh玭g c� tr猲 m筺g.",0)
end

function OnCancel()
end