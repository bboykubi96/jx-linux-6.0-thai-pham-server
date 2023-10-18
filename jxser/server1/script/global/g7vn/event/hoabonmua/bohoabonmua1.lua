
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main(nItemIndex)
	dofile("script/global/g7vn/event/hoabonmua/bohoabonmua1.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P~=4527 then
	Say("Event ®· kÕt thóc.")
	return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate > 20220730 then
	Say("Event ®· kÕt thóc !!!")
	return 1
	end
	if CalcEquiproomItemCount(6,1,4527,-1) <1 then
	Say("Bug h¶??? Chim cót")
	return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
	local TSK_BoHoa=4996
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung >= 300) then
	Say("Sö dông event ®· ®¹t giíi h¹n 300 c¸i, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	
	local tbVnNewItemDropAward = {
	[1] = {
		--{szName="Ng©n L­îng",nJxb=20000000,nCount=1},
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=50},
--	{szName="R­¬ng m¶nh HKMP ",tbProp={6,1,4448,1,1},nCount=20},
--	{szName="M¶nh ¸o Nhu T×nh",tbProp={4,1619,1,1},nCount=1},
--	{szName="Thñy Tinh",tbProp={4,random(238,240),1,1},nCount=1},
--	{szName="B¶o r­¬ng HKMP random 1 Ngµy",tbProp={6,1,4472,1,1},nCount=1,nExpiredTime=60*24},
	},
	[2] = {
	{szName="§¹i Lùc Hoµn",tbProp={6,0,3,1,1},nCount=1,nRate=5,CallBack= _Message},
	{szName="Phi Tèc Hoµn",tbProp={6,0,6,1,1},nCount=1,nRate=5,CallBack= _Message},
	{szName="Phi Phong",tbProp={6,1,15,1,1},nCount=1,nRate=2,CallBack= _Message},
	},
	}
	tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"PhÇn th­ëng")	
----------------------------------------------------------------------------------------------------------------------------------------------
tbAwardTemplet:GiveAwardByList({{nExp_tl = 200000}}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp Chóc Mõng",tbProp={6,1,2621,1,1},nCount=1,},}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_BoHoa,GetTask(TSK_BoHoa)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung+1 .."<color>")
	--	SetTask(5333,GetTask(5333)+1)
	--if GetTask(5333)>=500 then
	--	tbLogEvent:LuuDSNhanVat()
		--local check = tbLogEvent:checktopeventidnhan()
	--	tbLogEvent:SapXepDSXepHang()
	--	tbLogEvent:TopListFromFile()
--	end
	return 0
end
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ <color=cyan>Phong Ph¸o Trung", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	--WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP C¸i Bang\n");
end