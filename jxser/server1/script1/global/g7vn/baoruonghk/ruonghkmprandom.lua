Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
--------------------------------------------------------

function main()
dofile("script/global/g7vn/baoruonghk/ruonghkmprandom.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
sethkmp()
return 1; 	
end

function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu l©m/#AddHoangKim(1,15)",
		"Thiªn V­¬ng/#AddHoangKim(16,30)",
		"Nga My/#AddHoangKim(31,45)",
		"Thóy Yªn/#AddHoangKim(46,55)",
		"Ngñ §éc/#AddHoangKim(56,70)",
		"§­êng M«n/#AddHoangKim(71,90)",
		"C¸i Bang/#AddHoangKim(91,100)",
		"Thiªn NhÉn/#AddHoangKim(101,115)",
		"Vâ §ang/#AddHoangKim(116,125)",
		"C«n L«n/#AddHoangKim(126,140)",
		"Hoa S¬n/#AddHoangKim(682,685)",
			"Rêi khái/no",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end




function AddHoangKim(x,y)
tbCD_ID = {2,5,6,7,11,12,16,21,26,31,32,35,38, 39, 41,44,45,46,51,56,61,63,66,68,70,71,76,81,86,87,88,89,90,94,96,101,105,106,108,110,112,113,115,116,121,126,131,136,137,138}
	if CalcFreeItemCellCount() < 4 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 4 « trèng råi h·y më.",0);
		return 1;
	end
local item = random(x,y)
		for i = 0, getn(tbCD_ID) do			
			if (item == tbCD_ID[i]) then
			Msg2Player("Më lÇn nµy thÊt b¹i, xin h·y thö l¹i");
			return 1	
		end
		end
local tbVnNewItemDropAward = {

			{szName="",tbProp={0,item},nCount=1,nQuality=1,CallBack = _Message},

	}
	if ConsumeEquiproomItem(1, 6,1, 4381,-1)>0 then
	tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng");
	return 0;
	end
end

_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o  r­¬ng HKMP", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

