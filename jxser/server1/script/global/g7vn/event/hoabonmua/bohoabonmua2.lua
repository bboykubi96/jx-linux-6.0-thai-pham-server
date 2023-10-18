
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main(nItemIndex)
	dofile("script/global/g7vn/event/hoabonmua/bohoabonmua2.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P~=4500 then
	Say("Event ®· kÕt thóc.")
	return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate > 20221031 then
	Say("Event ®· kÕt thóc !!!")
	return 1
	end
	if CalcEquiproomItemCount(6,1,4500,-1) <1 then
	Say("Bug h¶??? Chim cót")
	return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
	local TSK_BoHoa=4999
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung >= 1000) then
	--Say("Sö dông event ®· ®¹t giíi h¹n 1000 c¸i, kh«ng thÓ sö dông n÷a.",0)
	--	return 1;
	end
	
	
----------------------------------------------------------------------------------------------------------------------------------------------
--tbAwardTemplet:GiveAwardByList({{nExp_tl = 1000000}}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp Chóc Mõng",tbProp={6,1,2621,1,1},nCount=1,},}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_BoHoa,GetTask(TSK_BoHoa)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung+1 .."<color>")
		SetTask(5335,GetTask(5335)+1)
	if GetTask(5335)>=10 then
		tbLogEvent:LuuDSNhanVat()
		--local check = tbLogEvent:checktopeventidnhan()
		tbLogEvent:SapXepDSXepHang()
	--	tbLogEvent:TopListFromFile()
	end
	return 0
end
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ Event B¸nh Ngät", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	--WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP C¸i Bang\n");
end